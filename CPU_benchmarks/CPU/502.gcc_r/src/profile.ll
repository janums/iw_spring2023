; ModuleID = 'profile.bc'
source_filename = "profile.c"
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
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
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
%struct.profile_hooks = type { void ()*, void (i32, %struct.edge_def*)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)* }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%struct.anon = type { %union.tree_node*, %union.gimple_statement_d*, i64*, %struct.histogram_value_t* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_histogram_value_heap = type { %struct.VEC_histogram_value_base }
%struct.VEC_histogram_value_base = type { i32, i32, [1 x %struct.histogram_value_t*] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.edge_info = type { i8, [3 x i8] }
%struct.bb_info = type { i8, i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@total_num_times_called = internal unnamed_addr global i32 0, align 4, !dbg !0
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"Adding fake exit edge to bb %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Adding fake entry edge to bb %i\0A\00", align 1
@total_num_blocks = internal unnamed_addr global i32 0, align 4, !dbg !1868
@.str.2 = private unnamed_addr constant [17 x i8] c"%d basic blocks\0A\00", align 1
@total_num_edges = internal unnamed_addr global i32 0, align 4, !dbg !1870
@.str.3 = private unnamed_addr constant [10 x i8] c"%d edges\0A\00", align 1
@total_num_edges_ignored = internal unnamed_addr global i32 0, align 4, !dbg !1872
@.str.4 = private unnamed_addr constant [18 x i8] c"%d ignored edges\0A\00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@flag_profile_values = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@profile_arc_flag = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"profile.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@total_num_blocks_created = internal unnamed_addr global i32 0, align 4, !dbg !1876
@total_num_passes = internal unnamed_addr global i32 0, align 4, !dbg !1878
@total_num_branches = internal unnamed_addr global i32 0, align 4, !dbg !1885
@total_hist_br_prob = internal unnamed_addr global [20 x i32] zeroinitializer, align 16, !dbg !1880
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Total number of blocks: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Total number of edges: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Total number of ignored edges: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Total number of instrumented edges: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Total number of blocks created: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Total number of graph solution passes: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Average number of graph solution passes: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Total number of branches: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"%d%% branches in range %d-%d%%\0A\00", align 1
@tree_profile_hooks = external dso_local local_unnamed_addr global %struct.profile_hooks, align 8
@profile_info = common dso_local global %struct.gcov_ctr_summary* null, align 8, !dbg !1857
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@output_location.prev_file_name = internal unnamed_addr global i8* null, align 8, !dbg !1887
@output_location.prev_line = internal unnamed_addr global i32 0, align 4, !dbg !1901
@.str.18 = private unnamed_addr constant [49 x i8] c"corrupted profile info: run_max * runs < sum_max\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"corrupted profile info: sum_all is smaller than sum_max\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\0A%d edge counts read\0A\00", align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"Graph solving took %d passes.\0A\0A\00", align 1
@flag_profile_correction = external dso_local local_unnamed_addr global i32, align 4
@compute_branch_probabilities.informed = internal unnamed_addr global i1 false, align 4, !dbg !1971
@input_location = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"correcting inconsistent profile data\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"\0ACalling mcf_smooth_cfg\0A\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"corrupted profile info: profile data is not flow-consistent\00", align 1
@.str.25 = private unnamed_addr constant [81 x i8] c"corrupted profile info: number of iterations for basic block %d thought to be %i\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"corrupted profile info: number of executions for edge %d-%d thought to be %i\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"%d branches\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Merged %u profiles with maximal count %u.\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"corrupted profile info: edge from %i to %i exceeds maximal count\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"\0ARead edge from %i to %i, count:\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"BB %i count is negative %ld\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"BB %i count does not match sum of incoming edges %ld should be %ld\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"BB %i count does not match sum of outgoing edges %ld should be %ld\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Edge %i->%i is inconsistent, count%ld\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Edge %d to %d instrumented%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" (and split)\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"%d edges instrumented\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Abnormal edge %d to %d put to tree\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Critical edge %d to %d put to tree\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Normal edge %d to %d put to tree\0A\00", align 1

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
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1999
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2000
  ret i32 %call, !dbg !2001
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2002 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2055, metadata !DIExpression()), !dbg !2056
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2057
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2057
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2057
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2057
  %cmp = icmp uge i8* %0, %1, !dbg !2057
  %conv1 = zext i1 %cmp to i64, !dbg !2057
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2057
  %tobool = icmp eq i64 %expval, 0, !dbg !2057
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2057

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2057
  br label %cond.end, !dbg !2057

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2057
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2057
  %2 = load i8, i8* %0, align 1, !dbg !2057
  %conv3 = zext i8 %2 to i32, !dbg !2057
  br label %cond.end, !dbg !2057

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2057
  ret i32 %cond, !dbg !2058
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2061, metadata !DIExpression()), !dbg !2062
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2063
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2063
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2063
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2063
  %cmp = icmp uge i8* %0, %1, !dbg !2063
  %conv1 = zext i1 %cmp to i64, !dbg !2063
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2063
  %tobool = icmp eq i64 %expval, 0, !dbg !2063
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2063

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2063
  br label %cond.end, !dbg !2063

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2063
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2063
  %2 = load i8, i8* %0, align 1, !dbg !2063
  %conv3 = zext i8 %2 to i32, !dbg !2063
  br label %cond.end, !dbg !2063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2063
  ret i32 %cond, !dbg !2064
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2065 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2066
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2066
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2066
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2066
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2066
  %cmp = icmp uge i8* %1, %2, !dbg !2066
  %conv1 = zext i1 %cmp to i64, !dbg !2066
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2066
  %tobool = icmp eq i64 %expval, 0, !dbg !2066
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2066

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2066
  br label %cond.end, !dbg !2066

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2066
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2066
  %3 = load i8, i8* %1, align 1, !dbg !2066
  %conv3 = zext i8 %3 to i32, !dbg !2066
  br label %cond.end, !dbg !2066

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2066
  ret i32 %cond, !dbg !2067
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2072, metadata !DIExpression()), !dbg !2073
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2074
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2075
  ret i32 %call, !dbg !2076
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2081, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2082, metadata !DIExpression()), !dbg !2083
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2084
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2084
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2084
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2084
  %cmp = icmp uge i8* %0, %1, !dbg !2084
  %conv1 = zext i1 %cmp to i64, !dbg !2084
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2084
  %tobool = icmp eq i64 %expval, 0, !dbg !2084
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2084

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2084
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2084
  br label %cond.end, !dbg !2084

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2084
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2084
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2084
  store i8 %conv2, i8* %0, align 1, !dbg !2084
  %conv6 = and i32 %__c, 255, !dbg !2084
  br label %cond.end, !dbg !2084

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2084
  ret i32 %cond, !dbg !2085
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2089, metadata !DIExpression()), !dbg !2090
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2091
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2091
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2091
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2091
  %cmp = icmp uge i8* %0, %1, !dbg !2091
  %conv1 = zext i1 %cmp to i64, !dbg !2091
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2091
  %tobool = icmp eq i64 %expval, 0, !dbg !2091
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2091

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2091
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2091
  br label %cond.end, !dbg !2091

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2091
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2091
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2091
  store i8 %conv2, i8* %0, align 1, !dbg !2091
  %conv6 = and i32 %__c, 255, !dbg !2091
  br label %cond.end, !dbg !2091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2091
  ret i32 %cond, !dbg !2092
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2095, metadata !DIExpression()), !dbg !2096
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2097
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2097
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2097
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2097
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2097
  %cmp = icmp uge i8* %1, %2, !dbg !2097
  %conv1 = zext i1 %cmp to i64, !dbg !2097
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2097
  %tobool = icmp eq i64 %expval, 0, !dbg !2097
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2097

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2097
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2097
  br label %cond.end, !dbg !2097

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2097
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2097
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2097
  store i8 %conv4, i8* %1, align 1, !dbg !2097
  %conv6 = and i32 %__c, 255, !dbg !2097
  br label %cond.end, !dbg !2097

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2097
  ret i32 %cond, !dbg !2098
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2105, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2106, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2107, metadata !DIExpression()), !dbg !2108
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2109
  ret i64 %call, !dbg !2110
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2111 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2113, metadata !DIExpression()), !dbg !2114
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2115
  %0 = load i32, i32* %_flags, align 8, !dbg !2115
  %and = lshr i32 %0, 4, !dbg !2115
  %and.lobit = and i32 %and, 1, !dbg !2115
  ret i32 %and.lobit, !dbg !2116
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2117 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2119, metadata !DIExpression()), !dbg !2120
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2121
  %0 = load i32, i32* %_flags, align 8, !dbg !2121
  %and = lshr i32 %0, 5, !dbg !2121
  %and.lobit = and i32 %and, 1, !dbg !2121
  ret i32 %and.lobit, !dbg !2122
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2126, metadata !DIExpression()), !dbg !2127
  %__c.off = add i32 %__c, 128, !dbg !2128
  %0 = icmp ult i32 %__c.off, 384, !dbg !2128
  br i1 %0, label %cond.true, label %cond.end, !dbg !2128

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2129
  %1 = load i32*, i32** %call, align 8, !dbg !2130
  %idxprom = sext i32 %__c to i64, !dbg !2131
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2131
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2131
  br label %cond.end, !dbg !2132

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2132
  ret i32 %cond, !dbg !2133
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2136, metadata !DIExpression()), !dbg !2137
  %__c.off = add i32 %__c, 128, !dbg !2138
  %0 = icmp ult i32 %__c.off, 384, !dbg !2138
  br i1 %0, label %cond.true, label %cond.end, !dbg !2138

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2139
  %1 = load i32*, i32** %call, align 8, !dbg !2140
  %idxprom = sext i32 %__c to i64, !dbg !2141
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2141
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2141
  br label %cond.end, !dbg !2142

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2142
  ret i32 %cond, !dbg !2143
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2149, metadata !DIExpression()), !dbg !2150
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2151
  %conv = trunc i64 %call to i32, !dbg !2152
  ret i32 %conv, !dbg !2153
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2158, metadata !DIExpression()), !dbg !2159
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2160
  ret i64 %call, !dbg !2161
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2167, metadata !DIExpression()), !dbg !2168
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2169
  ret i64 %call, !dbg !2170
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2177, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2178, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2179, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2180, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2181, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 0, metadata !2182, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2183, metadata !DIExpression()), !dbg !2187
  br label %while.cond, !dbg !2188

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2189
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2187
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2183, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2182, metadata !DIExpression()), !dbg !2187
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2190
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2188

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2191
  %div = lshr i64 %add, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %div, metadata !2184, metadata !DIExpression()), !dbg !2187
  %mul = mul i64 %div, %__size, !dbg !2194
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2185, metadata !DIExpression()), !dbg !2187
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %call, metadata !2186, metadata !DIExpression()), !dbg !2187
  %cmp1 = icmp slt i32 %call, 0, !dbg !2197
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2199

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2200
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2202

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2182, metadata !DIExpression()), !dbg !2187
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2187
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2187
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2183, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2182, metadata !DIExpression()), !dbg !2187
  br label %while.cond, !dbg !2188, !llvm.loop !2204

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2187
  ret i8* %retval.0, !dbg !2206
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2207 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2213, metadata !DIExpression()), !dbg !2214
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2215
  ret double %call, !dbg !2216
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2217 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %base, metadata !2228, metadata !DIExpression()), !dbg !2229
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2230
  ret i64 %call, !dbg !2231
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2232 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2239, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i32 %base, metadata !2240, metadata !DIExpression()), !dbg !2241
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2242
  ret i64 %call, !dbg !2243
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2244 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2255, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2256, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i32 %base, metadata !2257, metadata !DIExpression()), !dbg !2258
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2259
  ret i64 %call, !dbg !2260
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2261 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2265, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2266, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i32 %base, metadata !2267, metadata !DIExpression()), !dbg !2268
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2269
  ret i64 %call, !dbg !2270
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2311, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2312, metadata !DIExpression()), !dbg !2313
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2314
  ret i32 %call, !dbg !2315
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2316 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2319, metadata !DIExpression()), !dbg !2320
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2321
  ret i32 %call, !dbg !2322
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2328, metadata !DIExpression()), !dbg !2329
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2330
  ret i32 %call, !dbg !2331
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2332 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2336, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2338, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2339, metadata !DIExpression()), !dbg !2340
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2341
  ret i32 %call, !dbg !2342
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2343 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2347, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2348, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2349, metadata !DIExpression()), !dbg !2350
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2349, metadata !DIExpression(DW_OP_deref)), !dbg !2350
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2351
  ret i32 %call, !dbg !2352
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2353 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2357, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2359, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2360, metadata !DIExpression()), !dbg !2361
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2360, metadata !DIExpression(DW_OP_deref)), !dbg !2361
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2362
  ret i32 %call, !dbg !2363
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2364 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2389, metadata !DIExpression()), !dbg !2390
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2391
  ret i32 %call, !dbg !2392
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2393 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2396, metadata !DIExpression()), !dbg !2397
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2398
  ret i32 %call, !dbg !2399
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2400 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2405, metadata !DIExpression()), !dbg !2406
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2407
  ret i32 %call, !dbg !2408
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2413, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2416, metadata !DIExpression()), !dbg !2417
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2418
  ret i32 %call, !dbg !2419
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @branch_prob() local_unnamed_addr #5 !dbg !2420 {
entry:
  %values = alloca %struct.VEC_histogram_value_heap*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp7 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp26 = alloca %struct.expanded_location, align 8
  %tmp28 = alloca %struct.expanded_location, align 8
  %tmp33 = alloca %struct.expanded_location, align 8
  %tmp35 = alloca %struct.expanded_location, align 8
  %tmp65 = alloca %struct.edge_iterator, align 8
  %e244 = alloca %struct.edge_def*, align 8
  %ei245 = alloca %struct.edge_iterator, align 8
  %tmp248 = alloca %struct.edge_iterator, align 8
  %offset307 = alloca i32, align 4
  %gsi319 = alloca %struct.gimple_stmt_iterator, align 8
  %curr_location = alloca %struct.expanded_location, align 8
  %tmp330 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp357 = alloca %struct.expanded_location, align 8
  %tmp359 = alloca %struct.expanded_location, align 8
  %0 = bitcast %struct.VEC_histogram_value_heap** %values to i8*, !dbg !2527
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap* null, metadata !2435, metadata !DIExpression()), !dbg !2528
  store %struct.VEC_histogram_value_heap* null, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !2529
  %1 = load i32, i32* @total_num_times_called, align 4, !dbg !2530
  %inc = add nsw i32 %1, 1, !dbg !2530
  store i32 %inc, i32* @total_num_times_called, align 4, !dbg !2530
  %call = tail call i32 @flow_call_edges_add(%struct.simple_bitmap_def* null) #6, !dbg !2531
  tail call void @add_noreturn_fake_exit_edges() #6, !dbg !2532
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2533
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2533
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2533
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2533
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2533
  %5 = bitcast %struct.edge_def** %e to i8*, !dbg !2534
  %6 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2534
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2535
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2535
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2535
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2536
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2536
  %12 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2537
  %13 = bitcast %struct.gimple_stmt_iterator* %tmp7 to i8*, !dbg !2538
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp26, i64 0, i32 0, !dbg !2540
  %file29 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp28, i64 0, i32 0, !dbg !2540
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp33, i64 0, i32 1, !dbg !2540
  %line36 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp35, i64 0, i32 1, !dbg !2540
  %14 = bitcast %struct.edge_iterator* %tmp65 to i8*, !dbg !2541
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp65, i64 0, i32 0, !dbg !2541
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp65, i64 0, i32 1, !dbg !2541
  br label %for.cond, !dbg !2533

for.cond:                                         ; preds = %if.end118, %entry
  %17 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre9, %if.end118 ], !dbg !2543
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %if.end118 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2544
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2422, metadata !DIExpression()), !dbg !2528
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 1, !dbg !2543
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2543
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %18, !dbg !2543
  br i1 %cmp, label %for.end121, label %for.body, !dbg !2533

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 0, metadata !2453, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 0, metadata !2454, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()), !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2547
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2547
  %call3 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2547
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 0, !dbg !2547
  store i32 %19, i32* %8, align 8, !dbg !2547
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 1, !dbg !2547
  store %struct.VEC_edge_gc** %20, %struct.VEC_edge_gc*** %9, align 8, !dbg !2547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2547
  br label %for.cond4, !dbg !2547

for.cond4:                                        ; preds = %if.end54, %for.body
  %have_exit_edge.0 = phi i32 [ 0, %for.body ], [ %spec.select1, %if.end54 ], !dbg !2534
  %need_exit_edge.0 = phi i32 [ 0, %for.body ], [ %need_exit_edge.1, %if.end54 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_exit_edge.0, metadata !2449, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_exit_edge.0, metadata !2454, metadata !DIExpression()), !dbg !2534
  %21 = load i32, i32* %10, align 8, !dbg !2548
  %22 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2534
  %call5 = call fastcc zeroext i8 @ei_cond(i32 %21, %struct.VEC_edge_gc** %22, %struct.edge_def** nonnull %e) #8, !dbg !2548
  %tobool = icmp eq i8 %call5, 0, !dbg !2547
  br i1 %tobool, label %for.end64, label %for.body6, !dbg !2547

for.body6:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7, !dbg !2549
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !2468, metadata !DIExpression()), !dbg !2537
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #7, !dbg !2550
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp7, %struct.basic_block_def* %bb.0) #8, !dbg !2550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !2550
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #7, !dbg !2550
  br label %for.cond8, !dbg !2551

for.cond8:                                        ; preds = %for.inc, %for.body6
  %last.0 = phi %union.gimple_statement_d* [ null, %for.body6 ], [ %call12, %for.inc ], !dbg !2537
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %last.0, metadata !2468, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2537
  %call9 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2552
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2554
  br i1 %tobool10, label %for.body11, label %for.end, !dbg !2555

for.body11:                                       ; preds = %for.cond8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2537
  %call12 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2556
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2468, metadata !DIExpression()), !dbg !2537
  %call13 = call fastcc zeroext i8 @gimple_has_location(%union.gimple_statement_d* %call12) #8, !dbg !2558
  %tobool14 = icmp eq i8 %call13, 0, !dbg !2558
  br i1 %tobool14, label %for.inc, label %for.end, !dbg !2560

for.inc:                                          ; preds = %for.body11
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2537
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2561
  br label %for.cond8, !dbg !2562, !llvm.loop !2563

for.end:                                          ; preds = %for.body11, %for.cond8
  %last.1 = phi %union.gimple_statement_d* [ %last.0, %for.cond8 ], [ %call12, %for.body11 ], !dbg !2537
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %last.1, metadata !2468, metadata !DIExpression()), !dbg !2537
  %tobool15 = icmp eq %union.gimple_statement_d* %last.1, null, !dbg !2565
  br i1 %tobool15, label %if.end45, label %land.lhs.true, !dbg !2566

land.lhs.true:                                    ; preds = %for.end
  %call16 = call fastcc zeroext i8 @gimple_has_location(%union.gimple_statement_d* nonnull %last.1) #8, !dbg !2567
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2567
  br i1 %tobool17, label %if.end45, label %land.lhs.true18, !dbg !2568

land.lhs.true18:                                  ; preds = %land.lhs.true
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !2456, metadata !DIExpression()), !dbg !2534
  %goto_locus = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 5, !dbg !2570
  %24 = load i32, i32* %goto_locus, align 8, !dbg !2570
  %cmp19 = icmp eq i32 %24, 0, !dbg !2571
  br i1 %cmp19, label %if.end45, label %land.lhs.true21, !dbg !2572

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %call22 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb.0) #8, !dbg !2573
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2573
  br i1 %tobool23, label %land.lhs.true24, label %if.end45, !dbg !2574

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !2456, metadata !DIExpression()), !dbg !2534
  %goto_locus25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 5, !dbg !2575
  %26 = load i32, i32* %goto_locus25, align 8, !dbg !2575
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp26, i32 %26) #6, !dbg !2575
  %27 = load i8*, i8** %file, align 8, !dbg !2575
  %call27 = call fastcc i32 @gimple_location(%union.gimple_statement_d* nonnull %last.1) #8, !dbg !2576
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp28, i32 %call27) #6, !dbg !2576
  %28 = load i8*, i8** %file29, align 8, !dbg !2576
  %cmp30 = icmp eq i8* %27, %28, !dbg !2577
  br i1 %cmp30, label %lor.lhs.false, label %if.then39, !dbg !2578

lor.lhs.false:                                    ; preds = %land.lhs.true24
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2456, metadata !DIExpression()), !dbg !2534
  %goto_locus32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 5, !dbg !2579
  %30 = load i32, i32* %goto_locus32, align 8, !dbg !2579
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp33, i32 %30) #6, !dbg !2579
  %31 = load i32, i32* %line, align 8, !dbg !2579
  %call34 = call fastcc i32 @gimple_location(%union.gimple_statement_d* nonnull %last.1) #8, !dbg !2580
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp35, i32 %call34) #6, !dbg !2580
  %32 = load i32, i32* %line36, align 8, !dbg !2580
  %cmp37 = icmp eq i32 %31, %32, !dbg !2581
  br i1 %cmp37, label %if.end45, label %if.then39, !dbg !2582

if.then39:                                        ; preds = %lor.lhs.false, %land.lhs.true24
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2583
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2456, metadata !DIExpression()), !dbg !2534
  %call40 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %33) #6, !dbg !2584
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call40, metadata !2469, metadata !DIExpression()), !dbg !2585
  %call41 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call40) #8, !dbg !2586
  call void @llvm.dbg.value(metadata %struct.edge_def* %call41, metadata !2472, metadata !DIExpression()), !dbg !2585
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2456, metadata !DIExpression()), !dbg !2534
  %goto_locus42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 5, !dbg !2588
  %35 = load i32, i32* %goto_locus42, align 8, !dbg !2588
  %goto_locus43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call41, i64 0, i32 5, !dbg !2589
  store i32 %35, i32* %goto_locus43, align 8, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2456, metadata !DIExpression()), !dbg !2534
  %goto_block = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 4, !dbg !2591
  %36 = bitcast %union.tree_node** %goto_block to i64*, !dbg !2591
  %37 = load i64, i64* %36, align 8, !dbg !2591
  %goto_block44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call41, i64 0, i32 4, !dbg !2592
  %38 = bitcast %union.tree_node** %goto_block44 to i64*, !dbg !2593
  store i64 %37, i64* %38, align 8, !dbg !2593
  br label %if.end45, !dbg !2594

if.end45:                                         ; preds = %lor.lhs.false, %land.lhs.true21, %land.lhs.true18, %land.lhs.true, %for.end, %if.then39
  %39 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.edge_def* %39, metadata !2456, metadata !DIExpression()), !dbg !2534
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i64 0, i32 7, !dbg !2597
  %40 = load i32, i32* %flags, align 8, !dbg !2597
  %and = and i32 %40, 6, !dbg !2598
  %tobool46 = icmp eq i32 %and, 0, !dbg !2598
  br i1 %tobool46, label %if.end45.if.end54_crit_edge, label %land.lhs.true47, !dbg !2599

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  %dest55.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i64 0, i32 1, !dbg !2600
  %.pre10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest55.phi.trans.insert, align 8, !dbg !2602
  %.pre11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2603
  %cfg57.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre11, i64 0, i32 1, !dbg !2600
  %.pre12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg57.phi.trans.insert, align 8, !dbg !2603
  %x_exit_block_ptr58.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre12, i64 0, i32 1, !dbg !2600
  %.pre13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr58.phi.trans.insert, align 8, !dbg !2603
  br label %if.end54, !dbg !2599

land.lhs.true47:                                  ; preds = %if.end45
  call void @llvm.dbg.value(metadata %struct.edge_def* %39, metadata !2456, metadata !DIExpression()), !dbg !2534
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i64 0, i32 1, !dbg !2604
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2604
  %42 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2605
  %cfg49 = getelementptr inbounds %struct.function, %struct.function* %42, i64 0, i32 1, !dbg !2605
  %43 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg49, align 8, !dbg !2605
  %x_exit_block_ptr50 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %43, i64 0, i32 1, !dbg !2605
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr50, align 8, !dbg !2605
  %cmp51 = icmp eq %struct.basic_block_def* %41, %44, !dbg !2606
  %spec.select = select i1 %cmp51, i32 %need_exit_edge.0, i32 1, !dbg !2607
  br label %if.end54, !dbg !2607

if.end54:                                         ; preds = %if.end45.if.end54_crit_edge, %land.lhs.true47
  %45 = phi %struct.basic_block_def* [ %.pre13, %if.end45.if.end54_crit_edge ], [ %44, %land.lhs.true47 ], !dbg !2603
  %46 = phi %struct.basic_block_def* [ %.pre10, %if.end45.if.end54_crit_edge ], [ %41, %land.lhs.true47 ], !dbg !2602
  %need_exit_edge.1 = phi i32 [ %need_exit_edge.0, %if.end45.if.end54_crit_edge ], [ %spec.select, %land.lhs.true47 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_exit_edge.1, metadata !2449, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata %struct.edge_def* %39, metadata !2456, metadata !DIExpression()), !dbg !2534
  %cmp59 = icmp eq %struct.basic_block_def* %46, %45, !dbg !2608
  %spec.select1 = select i1 %cmp59, i32 1, i32 %have_exit_edge.0, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2454, metadata !DIExpression()), !dbg !2534
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2534
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2548
  br label %for.cond4, !dbg !2548, !llvm.loop !2611

for.end64:                                        ; preds = %for.cond4
  %have_exit_edge.0.lcssa = phi i32 [ %have_exit_edge.0, %for.cond4 ], !dbg !2534
  %need_exit_edge.0.lcssa = phi i32 [ %need_exit_edge.0, %for.cond4 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_exit_edge.0.lcssa, metadata !2454, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_exit_edge.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_exit_edge.0.lcssa, metadata !2454, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_exit_edge.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_exit_edge.0.lcssa, metadata !2454, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_exit_edge.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2613
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !2613
  %call66 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2613
  %47 = extractvalue { i32, %struct.VEC_edge_gc** } %call66, 0, !dbg !2613
  store i32 %47, i32* %15, align 8, !dbg !2613
  %48 = extractvalue { i32, %struct.VEC_edge_gc** } %call66, 1, !dbg !2613
  store %struct.VEC_edge_gc** %48, %struct.VEC_edge_gc*** %16, align 8, !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2613
  br label %for.cond67, !dbg !2613

for.cond67:                                       ; preds = %if.end81, %for.end64
  %have_entry_edge.0 = phi i32 [ 0, %for.end64 ], [ %spec.select3, %if.end81 ], !dbg !2534
  %need_entry_edge.0 = phi i32 [ 0, %for.end64 ], [ %need_entry_edge.1, %if.end81 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_entry_edge.0, metadata !2453, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_entry_edge.0, metadata !2455, metadata !DIExpression()), !dbg !2534
  %49 = load i32, i32* %10, align 8, !dbg !2614
  %50 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2534
  %call68 = call fastcc zeroext i8 @ei_cond(i32 %49, %struct.VEC_edge_gc** %50, %struct.edge_def** nonnull %e) #8, !dbg !2614
  %tobool69 = icmp eq i8 %call68, 0, !dbg !2613
  br i1 %tobool69, label %for.end91, label %for.body70, !dbg !2613

for.body70:                                       ; preds = %for.cond67
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2456, metadata !DIExpression()), !dbg !2534
  %flags71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 7, !dbg !2619
  %52 = load i32, i32* %flags71, align 8, !dbg !2619
  %and72 = and i32 %52, 6, !dbg !2620
  %tobool73 = icmp eq i32 %and72, 0, !dbg !2620
  br i1 %tobool73, label %for.body70.if.end81_crit_edge, label %land.lhs.true74, !dbg !2621

for.body70.if.end81_crit_edge:                    ; preds = %for.body70
  %src82.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 0, !dbg !2622
  %.pre14 = load %struct.basic_block_def*, %struct.basic_block_def** %src82.phi.trans.insert, align 8, !dbg !2624
  %.pre15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2625
  %cfg84.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre15, i64 0, i32 1, !dbg !2622
  %.pre16 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg84.phi.trans.insert, align 8, !dbg !2625
  %x_entry_block_ptr85.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre16, i64 0, i32 0, !dbg !2622
  %.pre17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr85.phi.trans.insert, align 8, !dbg !2625
  br label %if.end81, !dbg !2621

land.lhs.true74:                                  ; preds = %for.body70
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2456, metadata !DIExpression()), !dbg !2534
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 0, !dbg !2626
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2626
  %54 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2627
  %cfg76 = getelementptr inbounds %struct.function, %struct.function* %54, i64 0, i32 1, !dbg !2627
  %55 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg76, align 8, !dbg !2627
  %x_entry_block_ptr77 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %55, i64 0, i32 0, !dbg !2627
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr77, align 8, !dbg !2627
  %cmp78 = icmp eq %struct.basic_block_def* %53, %56, !dbg !2628
  %spec.select2 = select i1 %cmp78, i32 %need_entry_edge.0, i32 1, !dbg !2629
  br label %if.end81, !dbg !2629

if.end81:                                         ; preds = %for.body70.if.end81_crit_edge, %land.lhs.true74
  %57 = phi %struct.basic_block_def* [ %.pre17, %for.body70.if.end81_crit_edge ], [ %56, %land.lhs.true74 ], !dbg !2625
  %58 = phi %struct.basic_block_def* [ %.pre14, %for.body70.if.end81_crit_edge ], [ %53, %land.lhs.true74 ], !dbg !2624
  %need_entry_edge.1 = phi i32 [ %need_entry_edge.0, %for.body70.if.end81_crit_edge ], [ %spec.select2, %land.lhs.true74 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_entry_edge.1, metadata !2453, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2456, metadata !DIExpression()), !dbg !2534
  %cmp86 = icmp eq %struct.basic_block_def* %58, %57, !dbg !2630
  %spec.select3 = select i1 %cmp86, i32 1, i32 %have_entry_edge.0, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %spec.select3, metadata !2455, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2534
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2614
  br label %for.cond67, !dbg !2614, !llvm.loop !2632

for.end91:                                        ; preds = %for.cond67
  %have_entry_edge.0.lcssa = phi i32 [ %have_entry_edge.0, %for.cond67 ], !dbg !2534
  %need_entry_edge.0.lcssa = phi i32 [ %need_entry_edge.0, %for.cond67 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_entry_edge.0.lcssa, metadata !2455, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_entry_edge.0.lcssa, metadata !2453, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_entry_edge.0.lcssa, metadata !2455, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_entry_edge.0.lcssa, metadata !2453, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %have_entry_edge.0.lcssa, metadata !2455, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %need_entry_edge.0.lcssa, metadata !2453, metadata !DIExpression()), !dbg !2534
  %tobool92 = icmp eq i32 %need_exit_edge.0.lcssa, 0, !dbg !2634
  %tobool94 = icmp ne i32 %have_exit_edge.0.lcssa, 0, !dbg !2636
  %or.cond = or i1 %tobool92, %tobool94, !dbg !2637
  br i1 %or.cond, label %if.end104, label %if.then95, !dbg !2637

if.then95:                                        ; preds = %for.end91
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2638
  %tobool96 = icmp eq %struct._IO_FILE* %59, null, !dbg !2638
  br i1 %tobool96, label %if.end99, label %if.then97, !dbg !2641

if.then97:                                        ; preds = %if.then95
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2642
  %60 = load i32, i32* %index, align 8, !dbg !2642
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %60) #6, !dbg !2643
  br label %if.end99, !dbg !2643

if.end99:                                         ; preds = %if.then95, %if.then97
  %61 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2644
  %cfg101 = getelementptr inbounds %struct.function, %struct.function* %61, i64 0, i32 1, !dbg !2644
  %62 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg101, align 8, !dbg !2644
  %x_exit_block_ptr102 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %62, i64 0, i32 1, !dbg !2644
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr102, align 8, !dbg !2644
  %call103 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %bb.0, %struct.basic_block_def* %63, i32 16) #6, !dbg !2645
  br label %if.end104, !dbg !2646

if.end104:                                        ; preds = %for.end91, %if.end99
  %tobool105 = icmp eq i32 %need_entry_edge.0.lcssa, 0, !dbg !2647
  %tobool107 = icmp ne i32 %have_entry_edge.0.lcssa, 0, !dbg !2649
  %or.cond4 = or i1 %tobool105, %tobool107, !dbg !2650
  br i1 %or.cond4, label %if.end118, label %if.then108, !dbg !2650

if.then108:                                       ; preds = %if.end104
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2651
  %tobool109 = icmp eq %struct._IO_FILE* %64, null, !dbg !2651
  br i1 %tobool109, label %if.end113, label %if.then110, !dbg !2654

if.then110:                                       ; preds = %if.then108
  %index111 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2655
  %65 = load i32, i32* %index111, align 8, !dbg !2655
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %65) #6, !dbg !2656
  br label %if.end113, !dbg !2656

if.end113:                                        ; preds = %if.then108, %if.then110
  %66 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2657
  %cfg115 = getelementptr inbounds %struct.function, %struct.function* %66, i64 0, i32 1, !dbg !2657
  %67 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg115, align 8, !dbg !2657
  %x_entry_block_ptr116 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %67, i64 0, i32 0, !dbg !2657
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr116, align 8, !dbg !2657
  %call117 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %68, %struct.basic_block_def* %bb.0, i32 16) #6, !dbg !2658
  br label %if.end118, !dbg !2659

if.end118:                                        ; preds = %if.end104, %if.end113
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2660
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2660
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2543
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2661
  %.pre9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2543
  br label %for.cond, !dbg !2543, !llvm.loop !2662

for.end121:                                       ; preds = %for.cond
  %call122 = call %struct.edge_list* @create_edge_list() #6, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.edge_list* %call122, metadata !2427, metadata !DIExpression()), !dbg !2528
  %num_edges123 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %call122, i64 0, i32 1, !dbg !2665
  %69 = load i32, i32* %num_edges123, align 4, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %69, metadata !2424, metadata !DIExpression()), !dbg !2528
  call void @alloc_aux_for_edges(i32 4) #6, !dbg !2666
  call void @compact_blocks() #6, !dbg !2667
  call void @llvm.dbg.value(metadata i32 0, metadata !2425, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()), !dbg !2528
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %call122, i64 0, i32 2, !dbg !2668
  %wide.trip.count30 = zext i32 %69 to i64, !dbg !2669
  br label %for.cond124, !dbg !2670

for.cond124:                                      ; preds = %for.inc149, %for.end121
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc149 ], [ 0, %for.end121 ], !dbg !2528
  %ignored_edges.0 = phi i32 [ %ignored_edges.1, %for.inc149 ], [ 0, %for.end121 ], !dbg !2528
  call void @llvm.dbg.value(metadata i64 %indvars.iv28, metadata !2423, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.0, metadata !2425, metadata !DIExpression()), !dbg !2528
  %exitcond31 = icmp eq i64 %indvars.iv28, %wide.trip.count30, !dbg !2669
  br i1 %exitcond31, label %for.end151, label %for.body127, !dbg !2671

for.body127:                                      ; preds = %for.cond124
  %70 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2672
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %70, i64 %indvars.iv28, !dbg !2672
  %71 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2672
  call void @llvm.dbg.value(metadata %struct.edge_def* %71, metadata !2473, metadata !DIExpression()), !dbg !2668
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i64 0, i32 9, !dbg !2673
  store i64 0, i64* %count, align 8, !dbg !2674
  %flags129 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i64 0, i32 7, !dbg !2675
  %72 = load i32, i32* %flags129, align 8, !dbg !2675
  %and130 = and i32 %72, 6, !dbg !2677
  %tobool131 = icmp eq i32 %and130, 0, !dbg !2677
  br i1 %tobool131, label %for.inc149, label %land.lhs.true132, !dbg !2678

land.lhs.true132:                                 ; preds = %for.body127
  %src133 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i64 0, i32 0, !dbg !2679
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %src133, align 8, !dbg !2679
  %74 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2680
  %cfg135 = getelementptr inbounds %struct.function, %struct.function* %74, i64 0, i32 1, !dbg !2680
  %75 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg135, align 8, !dbg !2680
  %x_entry_block_ptr136 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %75, i64 0, i32 0, !dbg !2680
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr136, align 8, !dbg !2680
  %cmp137 = icmp eq %struct.basic_block_def* %73, %76, !dbg !2681
  br i1 %cmp137, label %for.inc149, label %land.lhs.true139, !dbg !2682

land.lhs.true139:                                 ; preds = %land.lhs.true132
  %dest140 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i64 0, i32 1, !dbg !2683
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %dest140, align 8, !dbg !2683
  %x_exit_block_ptr143 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %75, i64 0, i32 1, !dbg !2684
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr143, align 8, !dbg !2684
  %cmp144 = icmp eq %struct.basic_block_def* %77, %78, !dbg !2685
  br i1 %cmp144, label %for.inc149, label %if.then146, !dbg !2686

if.then146:                                       ; preds = %land.lhs.true139
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i64 0, i32 3, !dbg !2687
  %79 = load i8*, i8** %aux, align 8, !dbg !2687
  %bf.load = load i8, i8* %79, align 4, !dbg !2689
  %bf.set = or i8 %bf.load, 4, !dbg !2689
  store i8 %bf.set, i8* %79, align 4, !dbg !2689
  %inc147 = add i32 %ignored_edges.0, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i32 %inc147, metadata !2425, metadata !DIExpression()), !dbg !2528
  br label %for.inc149, !dbg !2691

for.inc149:                                       ; preds = %land.lhs.true139, %land.lhs.true132, %for.body127, %if.then146
  %ignored_edges.1 = phi i32 [ %inc147, %if.then146 ], [ %ignored_edges.0, %land.lhs.true139 ], [ %ignored_edges.0, %land.lhs.true132 ], [ %ignored_edges.0, %for.body127 ], !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.1, metadata !2425, metadata !DIExpression()), !dbg !2528
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !2692
  br label %for.cond124, !dbg !2693, !llvm.loop !2694

for.end151:                                       ; preds = %for.cond124
  %ignored_edges.0.lcssa = phi i32 [ %ignored_edges.0, %for.cond124 ], !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.0.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.0.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.0.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2528
  call fastcc void @find_spanning_tree(%struct.edge_list* %call122) #8, !dbg !2696
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()), !dbg !2528
  %wide.trip.count = zext i32 %69 to i64, !dbg !2697
  br label %for.cond152, !dbg !2698

for.cond152:                                      ; preds = %for.inc183, %for.end151
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc183 ], [ 0, %for.end151 ], !dbg !2699
  %num_instrumented.0 = phi i32 [ %num_instrumented.2, %for.inc183 ], [ 0, %for.end151 ], !dbg !2699
  %ignored_edges.2 = phi i32 [ %ignored_edges.4, %for.inc183 ], [ %ignored_edges.0.lcssa, %for.end151 ], !dbg !2700
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2423, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.2, metadata !2425, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %num_instrumented.0, metadata !2426, metadata !DIExpression()), !dbg !2528
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2697
  br i1 %exitcond, label %for.end185, label %for.body155, !dbg !2701

for.body155:                                      ; preds = %for.cond152
  %80 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2702
  %arrayidx159 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %80, i64 %indvars.iv, !dbg !2702
  %81 = load %struct.edge_def*, %struct.edge_def** %arrayidx159, align 8, !dbg !2702
  call void @llvm.dbg.value(metadata %struct.edge_def* %81, metadata !2477, metadata !DIExpression()), !dbg !2703
  %aux160 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %81, i64 0, i32 3, !dbg !2704
  %82 = bitcast i8** %aux160 to %struct.edge_info**, !dbg !2704
  %83 = load %struct.edge_info*, %struct.edge_info** %82, align 8, !dbg !2704
  call void @llvm.dbg.value(metadata %struct.edge_info* %83, metadata !2481, metadata !DIExpression()), !dbg !2703
  %84 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %83, i64 0, i32 0, !dbg !2705
  %bf.load161 = load i8, i8* %84, align 4, !dbg !2705
  %bf.clear162 = and i8 %bf.load161, 4, !dbg !2705
  %tobool163 = icmp eq i8 %bf.clear162, 0, !dbg !2707
  br i1 %tobool163, label %lor.lhs.false164, label %for.inc183, !dbg !2708

lor.lhs.false164:                                 ; preds = %for.body155
  %bf.clear167 = and i8 %bf.load161, 2, !dbg !2709
  %tobool169 = icmp eq i8 %bf.clear167, 0, !dbg !2710
  br i1 %tobool169, label %if.else, label %for.inc183, !dbg !2711

if.else:                                          ; preds = %lor.lhs.false164
  %flags171 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %81, i64 0, i32 7, !dbg !2712
  %85 = load i32, i32* %flags171, align 8, !dbg !2712
  %and172 = and i32 %85, 16, !dbg !2714
  %tobool173 = icmp eq i32 %and172, 0, !dbg !2714
  br i1 %tobool173, label %if.else179, label %if.then174, !dbg !2715

if.then174:                                       ; preds = %if.else
  %bf.set177 = or i8 %bf.load161, 4, !dbg !2716
  store i8 %bf.set177, i8* %84, align 4, !dbg !2716
  %inc178 = add i32 %ignored_edges.2, 1, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %inc178, metadata !2425, metadata !DIExpression()), !dbg !2528
  br label %for.inc183, !dbg !2719

if.else179:                                       ; preds = %if.else
  %inc180 = add i32 %num_instrumented.0, 1, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %inc180, metadata !2426, metadata !DIExpression()), !dbg !2528
  br label %for.inc183

for.inc183:                                       ; preds = %lor.lhs.false164, %for.body155, %if.else179, %if.then174
  %num_instrumented.2 = phi i32 [ %num_instrumented.0, %lor.lhs.false164 ], [ %num_instrumented.0, %for.body155 ], [ %num_instrumented.0, %if.then174 ], [ %inc180, %if.else179 ], !dbg !2699
  %ignored_edges.4 = phi i32 [ %ignored_edges.2, %lor.lhs.false164 ], [ %ignored_edges.2, %for.body155 ], [ %inc178, %if.then174 ], [ %ignored_edges.2, %if.else179 ], !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.4, metadata !2425, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %num_instrumented.2, metadata !2426, metadata !DIExpression()), !dbg !2528
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2721
  br label %for.cond152, !dbg !2722, !llvm.loop !2723

for.end185:                                       ; preds = %for.cond152
  %num_instrumented.0.lcssa = phi i32 [ %num_instrumented.0, %for.cond152 ], !dbg !2699
  %ignored_edges.2.lcssa = phi i32 [ %ignored_edges.2, %for.cond152 ], !dbg !2700
  call void @llvm.dbg.value(metadata i32 %num_instrumented.0.lcssa, metadata !2426, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.2.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %num_instrumented.0.lcssa, metadata !2426, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.2.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %num_instrumented.0.lcssa, metadata !2426, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %ignored_edges.2.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2528
  %86 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2725
  %cfg187 = getelementptr inbounds %struct.function, %struct.function* %86, i64 0, i32 1, !dbg !2725
  %87 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg187, align 8, !dbg !2725
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %87, i64 0, i32 3, !dbg !2725
  %88 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2725
  %89 = load i32, i32* @total_num_blocks, align 4, !dbg !2726
  %add = add nsw i32 %89, %88, !dbg !2726
  store i32 %add, i32* @total_num_blocks, align 4, !dbg !2726
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2727
  %tobool188 = icmp eq %struct._IO_FILE* %90, null, !dbg !2727
  br i1 %tobool188, label %if.end194, label %if.then189, !dbg !2729

if.then189:                                       ; preds = %for.end185
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %88) #6, !dbg !2730
  %.pre18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2731
  br label %if.end194, !dbg !2730

if.end194:                                        ; preds = %for.end185, %if.then189
  %91 = phi %struct._IO_FILE* [ null, %for.end185 ], [ %.pre18, %if.then189 ], !dbg !2731
  %92 = load i32, i32* @total_num_edges, align 4, !dbg !2733
  %add195 = add i32 %92, %69, !dbg !2733
  store i32 %add195, i32* @total_num_edges, align 4, !dbg !2733
  %tobool196 = icmp eq %struct._IO_FILE* %91, null, !dbg !2731
  br i1 %tobool196, label %if.end199, label %if.then197, !dbg !2734

if.then197:                                       ; preds = %if.end194
  %call198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %69) #6, !dbg !2735
  %.pre19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2736
  br label %if.end199, !dbg !2735

if.end199:                                        ; preds = %if.end194, %if.then197
  %93 = phi %struct._IO_FILE* [ null, %if.end194 ], [ %.pre19, %if.then197 ], !dbg !2736
  %94 = load i32, i32* @total_num_edges_ignored, align 4, !dbg !2738
  %add200 = add i32 %94, %ignored_edges.2.lcssa, !dbg !2738
  store i32 %add200, i32* @total_num_edges_ignored, align 4, !dbg !2738
  %tobool201 = icmp eq %struct._IO_FILE* %93, null, !dbg !2736
  br i1 %tobool201, label %if.end204, label %if.then202, !dbg !2739

if.then202:                                       ; preds = %if.end199
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %ignored_edges.2.lcssa) #6, !dbg !2740
  br label %if.end204, !dbg !2740

if.end204:                                        ; preds = %if.end199, %if.then202
  %call205 = call i32 @coverage_begin_output() #6, !dbg !2741
  %tobool206 = icmp eq i32 %call205, 0, !dbg !2741
  br i1 %tobool206, label %if.end219, label %if.then207, !dbg !2742

if.then207:                                       ; preds = %if.end204
  %call208 = call i32 @gcov_write_tag(i32 21037056) #6, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %call208, metadata !2482, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()), !dbg !2528
  br label %for.cond209, !dbg !2745

for.cond209:                                      ; preds = %for.body215, %if.then207
  %i.2 = phi i32 [ 0, %if.then207 ], [ %inc217, %for.body215 ], !dbg !2747
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !2423, metadata !DIExpression()), !dbg !2528
  %95 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2748
  %cfg211 = getelementptr inbounds %struct.function, %struct.function* %95, i64 0, i32 1, !dbg !2748
  %96 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg211, align 8, !dbg !2748
  %x_n_basic_blocks212 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %96, i64 0, i32 3, !dbg !2748
  %97 = load i32, i32* %x_n_basic_blocks212, align 8, !dbg !2748
  %cmp213 = icmp eq i32 %i.2, %97, !dbg !2750
  br i1 %cmp213, label %for.end218, label %for.body215, !dbg !2751

for.body215:                                      ; preds = %for.cond209
  call void @gcov_write_unsigned(i32 0) #6, !dbg !2752
  %inc217 = add i32 %i.2, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %inc217, metadata !2423, metadata !DIExpression()), !dbg !2528
  br label %for.cond209, !dbg !2754, !llvm.loop !2755

for.end218:                                       ; preds = %for.cond209
  call void @gcov_write_length(i32 %call208) #6, !dbg !2757
  br label %if.end219, !dbg !2758

if.end219:                                        ; preds = %if.end204, %for.end218
  %98 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2759
  %cfg221 = getelementptr inbounds %struct.function, %struct.function* %98, i64 0, i32 1, !dbg !2759
  %99 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg221, align 8, !dbg !2759
  %x_entry_block_ptr222 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %99, i64 0, i32 0, !dbg !2759
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr222, align 8, !dbg !2759
  %index223 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %100, i64 0, i32 9, !dbg !2760
  store i32 1, i32* %index223, align 8, !dbg !2761
  %101 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg221, align 8, !dbg !2762
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %101, i64 0, i32 5, !dbg !2762
  %102 = load i32, i32* %x_last_basic_block, align 8, !dbg !2762
  %x_exit_block_ptr228 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %101, i64 0, i32 1, !dbg !2763
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr228, align 8, !dbg !2763
  %index229 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i64 0, i32 9, !dbg !2764
  store i32 %102, i32* %index229, align 8, !dbg !2765
  %call230 = call i32 @coverage_begin_output() #6, !dbg !2766
  %tobool231 = icmp eq i32 %call230, 0, !dbg !2766
  br i1 %tobool231, label %if.end303, label %if.then232, !dbg !2767

if.then232:                                       ; preds = %if.end219
  %104 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2768
  %cfg235 = getelementptr inbounds %struct.function, %struct.function* %104, i64 0, i32 1, !dbg !2768
  %105 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg235, align 8, !dbg !2768
  %x_entry_block_ptr236 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %105, i64 0, i32 0, !dbg !2768
  %106 = bitcast %struct.edge_def** %e244 to i8*, !dbg !2769
  %107 = bitcast %struct.edge_iterator* %ei245 to i8*, !dbg !2769
  %108 = bitcast %struct.edge_iterator* %tmp248 to i8*, !dbg !2770
  %109 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp248, i64 0, i32 0, !dbg !2770
  %110 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp248, i64 0, i32 1, !dbg !2770
  %111 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei245, i64 0, i32 0, !dbg !2771
  %112 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei245, i64 0, i32 1, !dbg !2771
  br label %for.cond237, !dbg !2768

for.cond237:                                      ; preds = %for.end299, %if.then232
  %113 = phi %struct.control_flow_graph* [ %105, %if.then232 ], [ %.pre21, %for.end299 ], !dbg !2772
  %bb.1.in = phi %struct.basic_block_def** [ %x_entry_block_ptr236, %if.then232 ], [ %next_bb301, %for.end299 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2422, metadata !DIExpression()), !dbg !2528
  %x_exit_block_ptr240 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %113, i64 0, i32 1, !dbg !2772
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr240, align 8, !dbg !2772
  %cmp241 = icmp eq %struct.basic_block_def* %bb.1, %114, !dbg !2772
  br i1 %cmp241, label %if.end303.loopexit, label %for.body243, !dbg !2768

for.body243:                                      ; preds = %for.cond237
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %106) #7, !dbg !2774
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %107) #7, !dbg !2775
  %call246 = call i32 @gcov_write_tag(i32 21168128) #6, !dbg !2776
  call void @llvm.dbg.value(metadata i32 %call246, metadata !2485, metadata !DIExpression()), !dbg !2777
  %index247 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2778
  %115 = load i32, i32* %index247, align 8, !dbg !2778
  %sub = add nsw i32 %115, -1, !dbg !2778
  call void @gcov_write_unsigned(i32 %sub) #6, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %108) #7, !dbg !2780
  %succs249 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !2780
  %call250 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs249) #8, !dbg !2780
  %116 = extractvalue { i32, %struct.VEC_edge_gc** } %call250, 0, !dbg !2780
  store i32 %116, i32* %109, align 8, !dbg !2780
  %117 = extractvalue { i32, %struct.VEC_edge_gc** } %call250, 1, !dbg !2780
  store %struct.VEC_edge_gc** %117, %struct.VEC_edge_gc*** %110, align 8, !dbg !2780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %107, i8* nonnull align 8 %108, i64 16, i1 false), !dbg !2780
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %108) #7, !dbg !2780
  br label %for.cond251, !dbg !2780

for.cond251:                                      ; preds = %for.inc298, %for.body243
  %118 = load i32, i32* %111, align 8, !dbg !2781
  %119 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %112, align 8, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.edge_def** %e244, metadata !2488, metadata !DIExpression(DW_OP_deref)), !dbg !2769
  %call252 = call fastcc zeroext i8 @ei_cond(i32 %118, %struct.VEC_edge_gc** %119, %struct.edge_def** nonnull %e244) #8, !dbg !2781
  %tobool253 = icmp eq i8 %call252, 0, !dbg !2780
  br i1 %tobool253, label %for.end299, label %for.body254, !dbg !2780

for.body254:                                      ; preds = %for.cond251
  %120 = load %struct.edge_def*, %struct.edge_def** %e244, align 8, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2488, metadata !DIExpression()), !dbg !2769
  %aux256 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i64 0, i32 3, !dbg !2782
  %121 = bitcast i8** %aux256 to %struct.edge_info**, !dbg !2782
  %122 = load %struct.edge_info*, %struct.edge_info** %121, align 8, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.edge_info* %122, metadata !2493, metadata !DIExpression()), !dbg !2783
  %123 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %122, i64 0, i32 0, !dbg !2784
  %bf.load257 = load i8, i8* %123, align 4, !dbg !2784
  %bf.clear259 = and i8 %bf.load257, 4, !dbg !2784
  %tobool261 = icmp eq i8 %bf.clear259, 0, !dbg !2785
  br i1 %tobool261, label %if.then262, label %for.inc298, !dbg !2786

if.then262:                                       ; preds = %for.body254
  call void @llvm.dbg.value(metadata i32 0, metadata !2497, metadata !DIExpression()), !dbg !2787
  %bf.clear265 = lshr i8 %bf.load257, 1, !dbg !2788
  %bf.clear265.lobit = and i8 %bf.clear265, 1, !dbg !2788
  %124 = zext i8 %bf.clear265.lobit to i32, !dbg !2788
  call void @llvm.dbg.value(metadata i32 %124, metadata !2497, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2488, metadata !DIExpression()), !dbg !2769
  %flags270 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i64 0, i32 7, !dbg !2789
  %125 = load i32, i32* %flags270, align 8, !dbg !2789
  %and271 = lshr i32 %125, 3, !dbg !2791
  %126 = and i32 %and271, 2, !dbg !2791
  %127 = or i32 %126, %124, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %127, metadata !2497, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2488, metadata !DIExpression()), !dbg !2769
  %and277 = shl i32 %125, 2, !dbg !2792
  %128 = and i32 %and277, 4, !dbg !2792
  %129 = or i32 %128, %127, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %129, metadata !2497, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2488, metadata !DIExpression()), !dbg !2769
  %and283 = and i32 %125, 3072, !dbg !2793
  %tobool284 = icmp eq i32 %and283, 0, !dbg !2793
  br i1 %tobool284, label %if.then262.if.end293_crit_edge, label %land.lhs.true285, !dbg !2795

if.then262.if.end293_crit_edge:                   ; preds = %if.then262
  %dest294.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i64 0, i32 1, !dbg !2787
  %.pre22 = load %struct.basic_block_def*, %struct.basic_block_def** %dest294.phi.trans.insert, align 8, !dbg !2796
  br label %if.end293, !dbg !2795

land.lhs.true285:                                 ; preds = %if.then262
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2488, metadata !DIExpression()), !dbg !2769
  %src286 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i64 0, i32 0, !dbg !2797
  %130 = load %struct.basic_block_def*, %struct.basic_block_def** %src286, align 8, !dbg !2797
  %next_bb287 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %130, i64 0, i32 6, !dbg !2798
  %131 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb287, align 8, !dbg !2798
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2488, metadata !DIExpression()), !dbg !2769
  %dest288 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i64 0, i32 1, !dbg !2799
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %dest288, align 8, !dbg !2799
  %cmp289 = icmp eq %struct.basic_block_def* %131, %132, !dbg !2800
  %or292 = or i32 %127, 4, !dbg !2801
  %spec.select7 = select i1 %cmp289, i32 %or292, i32 %129, !dbg !2802
  br label %if.end293, !dbg !2802

if.end293:                                        ; preds = %if.then262.if.end293_crit_edge, %land.lhs.true285
  %133 = phi %struct.basic_block_def* [ %.pre22, %if.then262.if.end293_crit_edge ], [ %132, %land.lhs.true285 ], !dbg !2796
  %flag_bits.3 = phi i32 [ %129, %if.then262.if.end293_crit_edge ], [ %spec.select7, %land.lhs.true285 ], !dbg !2787
  call void @llvm.dbg.value(metadata i32 %flag_bits.3, metadata !2497, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2488, metadata !DIExpression()), !dbg !2769
  %index295 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %133, i64 0, i32 9, !dbg !2796
  %134 = load i32, i32* %index295, align 8, !dbg !2796
  %sub296 = add nsw i32 %134, -1, !dbg !2796
  call void @gcov_write_unsigned(i32 %sub296) #6, !dbg !2803
  call void @gcov_write_unsigned(i32 %flag_bits.3) #6, !dbg !2804
  br label %for.inc298, !dbg !2805

for.inc298:                                       ; preds = %for.body254, %if.end293
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei245, metadata !2492, metadata !DIExpression(DW_OP_deref)), !dbg !2769
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei245) #8, !dbg !2781
  br label %for.cond251, !dbg !2781, !llvm.loop !2806

for.end299:                                       ; preds = %for.cond251
  call void @gcov_write_length(i32 %call246) #6, !dbg !2808
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %107) #7, !dbg !2809
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %106) #7, !dbg !2809
  %next_bb301 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !2772
  %.pre20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2772
  %cfg239.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre20, i64 0, i32 1, !dbg !2810
  %.pre21 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg239.phi.trans.insert, align 8, !dbg !2772
  br label %for.cond237, !dbg !2772, !llvm.loop !2811

if.end303.loopexit:                               ; preds = %for.cond237
  br label %if.end303, !dbg !2813

if.end303:                                        ; preds = %if.end303.loopexit, %if.end219
  %call304 = call i32 @coverage_begin_output() #6, !dbg !2813
  %tobool305 = icmp eq i32 %call304, 0, !dbg !2813
  br i1 %tobool305, label %if.end303.if.end368_crit_edge, label %if.then306, !dbg !2814

if.end303.if.end368_crit_edge:                    ; preds = %if.end303
  %.pre25 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2815
  %cfg370.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre25, i64 0, i32 1, !dbg !2528
  %.pre26 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg370.phi.trans.insert, align 8, !dbg !2815
  br label %if.end368, !dbg !2814

if.then306:                                       ; preds = %if.end303
  %135 = bitcast i32* %offset307 to i8*, !dbg !2816
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %135) #7, !dbg !2816
  call fastcc void @output_location(i8* null, i32 0, i32* null, %struct.basic_block_def* null) #8, !dbg !2817
  %136 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2818
  %cfg309 = getelementptr inbounds %struct.function, %struct.function* %136, i64 0, i32 1, !dbg !2818
  %137 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg309, align 8, !dbg !2818
  %x_entry_block_ptr310 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %137, i64 0, i32 0, !dbg !2818
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr310, align 8, !dbg !2818
  %139 = bitcast %struct.gimple_stmt_iterator* %gsi319 to i8*, !dbg !2819
  %140 = bitcast %struct.expanded_location* %curr_location to i8*, !dbg !2820
  %file327 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %curr_location, i64 0, i32 0, !dbg !2820
  %line328 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %curr_location, i64 0, i32 1, !dbg !2820
  %141 = bitcast %struct.gimple_stmt_iterator* %tmp330 to i8*, !dbg !2821
  %file358 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp357, i64 0, i32 0, !dbg !2822
  %line360 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp359, i64 0, i32 1, !dbg !2822
  br label %for.cond312, !dbg !2818

for.cond312:                                      ; preds = %if.end364, %if.then306
  %142 = phi %struct.control_flow_graph* [ %137, %if.then306 ], [ %.pre24, %if.end364 ], !dbg !2823
  %143 = phi %struct.function* [ %136, %if.then306 ], [ %.pre23, %if.end364 ], !dbg !2823
  %.pn8 = phi %struct.basic_block_def* [ %138, %if.then306 ], [ %bb.2, %if.end364 ]
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn8, i64 0, i32 6, !dbg !2824
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2422, metadata !DIExpression()), !dbg !2528
  %x_exit_block_ptr315 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %142, i64 0, i32 1, !dbg !2823
  %144 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr315, align 8, !dbg !2823
  %cmp316 = icmp eq %struct.basic_block_def* %bb.2, %144, !dbg !2823
  br i1 %cmp316, label %for.end367, label %for.body318, !dbg !2818

for.body318:                                      ; preds = %for.cond312
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %139) #7, !dbg !2825
  call void @llvm.dbg.value(metadata i32 0, metadata !2500, metadata !DIExpression()), !dbg !2826
  store i32 0, i32* %offset307, align 4, !dbg !2827
  %x_entry_block_ptr322 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %142, i64 0, i32 0, !dbg !2828
  %145 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr322, align 8, !dbg !2828
  %next_bb323 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %145, i64 0, i32 6, !dbg !2829
  %146 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb323, align 8, !dbg !2829
  %cmp324 = icmp eq %struct.basic_block_def* %bb.2, %146, !dbg !2830
  br i1 %cmp324, label %if.then326, label %if.end329, !dbg !2831

if.then326:                                       ; preds = %for.body318
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %140) #7, !dbg !2832
  %147 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_minimal**), align 8, !dbg !2833
  %locus = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %147, i64 0, i32 1, !dbg !2833
  %148 = load i32, i32* %locus, align 8, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.expanded_location* %curr_location, metadata !2507, metadata !DIExpression(DW_OP_deref)), !dbg !2820
  call void @expand_location(%struct.expanded_location* nonnull sret %curr_location, i32 %148) #6, !dbg !2834
  %149 = load i8*, i8** %file327, align 8, !dbg !2835
  %150 = load i32, i32* %line328, align 8, !dbg !2836
  call void @llvm.dbg.value(metadata i32* %offset307, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  call fastcc void @output_location(i8* %149, i32 %150, i32* nonnull %offset307, %struct.basic_block_def* %bb.2) #8, !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %140) #7, !dbg !2838
  br label %if.end329, !dbg !2839

if.end329:                                        ; preds = %if.then326, %for.body318
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %141) #7, !dbg !2840
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp330, %struct.basic_block_def* %bb.2) #8, !dbg !2840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %139, i8* nonnull align 8 %141, i64 24, i1 false), !dbg !2840
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %141) #7, !dbg !2840
  br label %for.cond331, !dbg !2841

for.cond331:                                      ; preds = %for.inc343, %if.end329
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi319, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  %call332 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi319) #8, !dbg !2842
  %tobool333 = icmp eq i8 %call332, 0, !dbg !2843
  br i1 %tobool333, label %for.body335, label %for.end344, !dbg !2844

for.body335:                                      ; preds = %for.cond331
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi319, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  %call336 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi319) #8, !dbg !2845
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call336, metadata !2517, metadata !DIExpression()), !dbg !2846
  %call337 = call fastcc zeroext i8 @gimple_has_location(%union.gimple_statement_d* %call336) #8, !dbg !2847
  %tobool338 = icmp eq i8 %call337, 0, !dbg !2847
  br i1 %tobool338, label %for.inc343, label %if.then339, !dbg !2849

if.then339:                                       ; preds = %for.body335
  %call340 = call fastcc i8* @gimple_filename(%union.gimple_statement_d* %call336) #8, !dbg !2850
  %call341 = call fastcc i32 @gimple_lineno(%union.gimple_statement_d* %call336) #8, !dbg !2851
  call void @llvm.dbg.value(metadata i32* %offset307, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  call fastcc void @output_location(i8* %call340, i32 %call341, i32* nonnull %offset307, %struct.basic_block_def* %bb.2) #8, !dbg !2852
  br label %for.inc343, !dbg !2852

for.inc343:                                       ; preds = %for.body335, %if.then339
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi319, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi319) #8, !dbg !2853
  br label %for.cond331, !dbg !2854, !llvm.loop !2855

for.end344:                                       ; preds = %for.cond331
  %call345 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb.2) #8, !dbg !2857
  %tobool347 = icmp eq i8 %call345, 0, !dbg !2857
  br i1 %tobool347, label %if.end361, label %land.lhs.true348, !dbg !2858

land.lhs.true348:                                 ; preds = %for.end344
  %call349 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb.2) #8, !dbg !2859
  %goto_locus350 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call349, i64 0, i32 5, !dbg !2860
  %151 = load i32, i32* %goto_locus350, align 8, !dbg !2860
  %cmp351 = icmp eq i32 %151, 0, !dbg !2861
  br i1 %cmp351, label %if.end361, label %if.then353, !dbg !2862

if.then353:                                       ; preds = %land.lhs.true348
  %call355 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb.2) #8, !dbg !2863
  %goto_locus356 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call355, i64 0, i32 5, !dbg !2864
  %152 = load i32, i32* %goto_locus356, align 8, !dbg !2864
  call void @llvm.dbg.value(metadata i32 %152, metadata !2521, metadata !DIExpression()), !dbg !2822
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp357, i32 %152) #6, !dbg !2865
  %153 = load i8*, i8** %file358, align 8, !dbg !2865
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp359, i32 %152) #6, !dbg !2866
  %154 = load i32, i32* %line360, align 8, !dbg !2866
  call void @llvm.dbg.value(metadata i32* %offset307, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  call fastcc void @output_location(i8* %153, i32 %154, i32* nonnull %offset307, %struct.basic_block_def* %bb.2) #8, !dbg !2867
  br label %if.end361, !dbg !2868

if.end361:                                        ; preds = %land.lhs.true348, %for.end344, %if.then353
  %155 = load i32, i32* %offset307, align 4, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %155, metadata !2500, metadata !DIExpression()), !dbg !2826
  %tobool362 = icmp eq i32 %155, 0, !dbg !2869
  br i1 %tobool362, label %if.end364, label %if.then363, !dbg !2871

if.then363:                                       ; preds = %if.end361
  call void @gcov_write_unsigned(i32 0) #6, !dbg !2872
  call void @gcov_write_string(i8* null) #6, !dbg !2874
  %156 = load i32, i32* %offset307, align 4, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %156, metadata !2500, metadata !DIExpression()), !dbg !2826
  call void @gcov_write_length(i32 %156) #6, !dbg !2876
  br label %if.end364, !dbg !2877

if.end364:                                        ; preds = %if.end361, %if.then363
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %139) #7, !dbg !2878
  %.pre23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2823
  %cfg314.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre23, i64 0, i32 1, !dbg !2879
  %.pre24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg314.phi.trans.insert, align 8, !dbg !2823
  br label %for.cond312, !dbg !2823, !llvm.loop !2880

for.end367:                                       ; preds = %for.cond312
  %.lcssa32 = phi %struct.control_flow_graph* [ %142, %for.cond312 ], !dbg !2823
  %.lcssa = phi %struct.function* [ %143, %for.cond312 ], !dbg !2823
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %135) #7, !dbg !2882
  br label %if.end368, !dbg !2883

if.end368:                                        ; preds = %if.end303.if.end368_crit_edge, %for.end367
  %157 = phi %struct.control_flow_graph* [ %.pre26, %if.end303.if.end368_crit_edge ], [ %.lcssa32, %for.end367 ], !dbg !2815
  %158 = phi %struct.function* [ %.pre25, %if.end303.if.end368_crit_edge ], [ %.lcssa, %for.end367 ], !dbg !2884
  %cfg370 = getelementptr inbounds %struct.function, %struct.function* %158, i64 0, i32 1, !dbg !2815
  %x_entry_block_ptr371 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %157, i64 0, i32 0, !dbg !2815
  %159 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr371, align 8, !dbg !2815
  %index372 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %159, i64 0, i32 9, !dbg !2885
  store i32 0, i32* %index372, align 8, !dbg !2886
  %160 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg370, align 8, !dbg !2884
  %x_exit_block_ptr375 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %160, i64 0, i32 1, !dbg !2884
  %161 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr375, align 8, !dbg !2884
  %index376 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %161, i64 0, i32 9, !dbg !2887
  store i32 1, i32* %index376, align 8, !dbg !2888
  %162 = load i32, i32* @flag_profile_values, align 4, !dbg !2889
  %tobool377 = icmp eq i32 %162, 0, !dbg !2889
  br i1 %tobool377, label %if.end379, label %if.then378, !dbg !2891

if.then378:                                       ; preds = %if.end368
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !2435, metadata !DIExpression(DW_OP_deref)), !dbg !2528
  call void @find_values_to_profile(%struct.VEC_histogram_value_heap** nonnull %values) #6, !dbg !2892
  br label %if.end379, !dbg !2892

if.end379:                                        ; preds = %if.end368, %if.then378
  %163 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2893
  %tobool380 = icmp eq i32 %163, 0, !dbg !2893
  br i1 %tobool380, label %if.end385, label %if.then381, !dbg !2895

if.then381:                                       ; preds = %if.end379
  call fastcc void @compute_branch_probabilities() #8, !dbg !2896
  %164 = load i32, i32* @flag_profile_values, align 4, !dbg !2898
  %tobool382 = icmp eq i32 %164, 0, !dbg !2898
  br i1 %tobool382, label %if.end385, label %if.then383, !dbg !2900

if.then383:                                       ; preds = %if.then381
  %165 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !2901
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap* %165, metadata !2435, metadata !DIExpression()), !dbg !2528
  call fastcc void @compute_value_histograms(%struct.VEC_histogram_value_heap* %165) #8, !dbg !2902
  br label %if.end385, !dbg !2902

if.end385:                                        ; preds = %if.then381, %if.end379, %if.then383
  call void @remove_fake_edges() #6, !dbg !2903
  %166 = load i32, i32* @profile_arc_flag, align 4, !dbg !2904
  %tobool386 = icmp eq i32 %166, 0, !dbg !2904
  br i1 %tobool386, label %if.end397, label %land.lhs.true387, !dbg !2905

land.lhs.true387:                                 ; preds = %if.end385
  %call388 = call i32 @coverage_counter_alloc(i32 0, i32 %num_instrumented.0.lcssa) #6, !dbg !2906
  %tobool389 = icmp eq i32 %call388, 0, !dbg !2906
  br i1 %tobool389, label %if.end397, label %if.then390, !dbg !2907

if.then390:                                       ; preds = %land.lhs.true387
  %167 = load void ()*, void ()** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 0), align 8, !dbg !2908
  call void %167() #6, !dbg !2909
  %call391 = call fastcc i32 @instrument_edges(%struct.edge_list* %call122) #8, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %call391, metadata !2524, metadata !DIExpression()), !dbg !2911
  %cmp392 = icmp eq i32 %call391, %num_instrumented.0.lcssa, !dbg !2912
  br i1 %cmp392, label %cond.end, label %cond.true, !dbg !2912

cond.true:                                        ; preds = %if.then390
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 1191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2912
  br label %cond.end, !dbg !2912

cond.end:                                         ; preds = %if.then390, %cond.true
  %168 = load i32, i32* @flag_profile_values, align 4, !dbg !2913
  %tobool394 = icmp eq i32 %168, 0, !dbg !2913
  br i1 %tobool394, label %if.end396, label %if.then395, !dbg !2915

if.then395:                                       ; preds = %cond.end
  %169 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !2916
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap* %169, metadata !2435, metadata !DIExpression()), !dbg !2528
  call fastcc void @instrument_values(%struct.VEC_histogram_value_heap* %169) #8, !dbg !2917
  br label %if.end396, !dbg !2917

if.end396:                                        ; preds = %cond.end, %if.then395
  call void @gsi_commit_edge_inserts() #6, !dbg !2918
  br label %if.end397, !dbg !2919

if.end397:                                        ; preds = %land.lhs.true387, %if.end385, %if.end396
  call void @free_aux_for_edges() #6, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !2435, metadata !DIExpression(DW_OP_deref)), !dbg !2528
  call fastcc void @VEC_histogram_value_heap_free(%struct.VEC_histogram_value_heap** nonnull %values) #8, !dbg !2921
  call void @free_edge_list(%struct.edge_list* %call122) #6, !dbg !2922
  call void @coverage_end_function() #6, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2924
  ret void, !dbg !2924
}

declare dso_local i32 @flow_call_edges_add(%struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local void @add_noreturn_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2925 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2929, metadata !DIExpression()), !dbg !2931
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2932
  store i32 0, i32* %index, align 8, !dbg !2933
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2934
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2935
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2936
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2936
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2936
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2937 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2942, metadata !DIExpression()), !dbg !2943
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2944
  %tobool = icmp eq i8 %call, 0, !dbg !2944
  br i1 %tobool, label %if.then, label %if.else, !dbg !2946

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2947
  br label %return, !dbg !2949

if.else:                                          ; preds = %entry
  br label %return, !dbg !2950

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2952
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2952
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2952
  ret i8 %retval.0, !dbg !2953
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2954 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2959, metadata !DIExpression()), !dbg !2962
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2963
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2960, metadata !DIExpression()), !dbg !2961
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !2964
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2965
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2966
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2967
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2968
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2969
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2970
  ret void, !dbg !2971
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2972 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2976, metadata !DIExpression()), !dbg !2977
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2978
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2978
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2979
  %conv1 = zext i1 %cmp to i8, !dbg !2980
  ret i8 %conv1, !dbg !2981
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2982 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2986, metadata !DIExpression()), !dbg !2987
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2988
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2988
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2989
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2989
  ret %union.gimple_statement_d* %1, !dbg !2990
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2991 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2998, metadata !DIExpression()), !dbg !2999
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %g) #8, !dbg !3000
  %cmp = icmp ne i32 %call, 0, !dbg !3001
  %conv1 = zext i1 %cmp to i8, !dbg !3000
  ret i8 %conv1, !dbg !3002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3003 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3008, metadata !DIExpression()), !dbg !3009
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3010
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3010
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !3011
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !3011
  %2 = load i64, i64* %1, align 8, !dbg !3011
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3012
  store i64 %2, i64* %3, align 8, !dbg !3012
  ret void, !dbg !3013
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3014 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3021, metadata !DIExpression()), !dbg !3022
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3023
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3023
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3023
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3023

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3023
  br label %cond.end, !dbg !3023

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3023
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3023
  %cmp = icmp eq i32 %call, 1, !dbg !3024
  %conv2 = zext i1 %cmp to i8, !dbg !3023
  ret i8 %conv2, !dbg !3025
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3030, metadata !DIExpression()), !dbg !3031
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3032
  %0 = load i32, i32* %location, align 8, !dbg !3032
  ret i32 %0, !dbg !3033
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3034 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3038, metadata !DIExpression()), !dbg !3039
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !3040
  %tobool = icmp eq i8 %call, 0, !dbg !3040
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3040

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3040
  br label %cond.end, !dbg !3040

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3041
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3041
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3041
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3041

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3041
  br label %cond.end5, !dbg !3041

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3041
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !3041
  ret %struct.edge_def* %call7, !dbg !3042
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3043 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3048, metadata !DIExpression()), !dbg !3049
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3050
  %0 = load i32, i32* %index, align 8, !dbg !3050
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3050
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3050
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3050
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3050
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3050

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3050
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3050
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3050
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3050
  br label %cond.end, !dbg !3050

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3050
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3050
  %cmp = icmp ult i32 %0, %call2, !dbg !3050
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3050

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3050
  br label %cond.end5, !dbg !3050

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3051
  %inc = add i32 %5, 1, !dbg !3051
  store i32 %inc, i32* %index, align 8, !dbg !3051
  ret void, !dbg !3052
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local %struct.edge_list* @create_edge_list() local_unnamed_addr #2

declare dso_local void @alloc_aux_for_edges(i32) local_unnamed_addr #2

declare dso_local void @compact_blocks() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_spanning_tree(%struct.edge_list* %el) unnamed_addr #5 !dbg !3053 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %el, metadata !3057, metadata !DIExpression()), !dbg !3073
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %el, i64 0, i32 1, !dbg !3074
  %0 = load i32, i32* %num_edges1, align 4, !dbg !3074
  call void @llvm.dbg.value(metadata i32 %0, metadata !3059, metadata !DIExpression()), !dbg !3073
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3075
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3075
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3075
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3075
  br label %for.cond, !dbg !3075

for.cond:                                         ; preds = %for.body, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.body ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3077
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3060, metadata !DIExpression()), !dbg !3073
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3078
  br i1 %cmp, label %for.end, label %for.body, !dbg !3075

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3080
  %3 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !3081
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %3, align 8, !dbg !3081
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3078
  br label %for.cond, !dbg !3078, !llvm.loop !3082

for.end:                                          ; preds = %for.cond
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3084
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3084
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3084
  %x_entry_block_ptr6 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !3085
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr6, align 8, !dbg !3085
  tail call fastcc void @union_groups(%struct.basic_block_def* %5, %struct.basic_block_def* %6) #8, !dbg !3086
  call void @llvm.dbg.value(metadata i32 0, metadata !3058, metadata !DIExpression()), !dbg !3073
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %el, i64 0, i32 2, !dbg !3087
  %7 = sext i32 %0 to i64, !dbg !3088
  br label %for.cond7, !dbg !3088

for.cond7:                                        ; preds = %for.inc32, %for.end
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc32 ], [ 0, %for.end ], !dbg !3089
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3058, metadata !DIExpression()), !dbg !3073
  %cmp8 = icmp slt i64 %indvars.iv3, %7, !dbg !3090
  br i1 %cmp8, label %for.body9, label %for.cond34.preheader, !dbg !3091

for.cond34.preheader:                             ; preds = %for.cond7
  %8 = sext i32 %0 to i64, !dbg !3092
  br label %for.cond34, !dbg !3092

for.body9:                                        ; preds = %for.cond7
  %9 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !3093
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %9, i64 %indvars.iv3, !dbg !3093
  %10 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3093
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !3061, metadata !DIExpression()), !dbg !3087
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 7, !dbg !3094
  %11 = load i32, i32* %flags, align 8, !dbg !3094
  %and = and i32 %11, 22, !dbg !3096
  %tobool = icmp eq i32 %and, 0, !dbg !3096
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !3097

lor.lhs.false:                                    ; preds = %for.body9
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 1, !dbg !3098
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3098
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3099
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !3099
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !3099
  %x_exit_block_ptr12 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 1, !dbg !3099
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr12, align 8, !dbg !3099
  %cmp13 = icmp eq %struct.basic_block_def* %12, %15, !dbg !3100
  br i1 %cmp13, label %land.lhs.true, label %for.inc32, !dbg !3101

land.lhs.true:                                    ; preds = %for.body9, %lor.lhs.false
  %aux14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 3, !dbg !3102
  %16 = load i8*, i8** %aux14, align 8, !dbg !3102
  %bf.load = load i8, i8* %16, align 4, !dbg !3103
  %bf.clear = and i8 %bf.load, 4, !dbg !3103
  %tobool15 = icmp eq i8 %bf.clear, 0, !dbg !3102
  br i1 %tobool15, label %land.lhs.true16, label %for.inc32, !dbg !3104

land.lhs.true16:                                  ; preds = %land.lhs.true
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 0, !dbg !3105
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3105
  %call = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %17) #8, !dbg !3106
  %dest17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 1, !dbg !3107
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %dest17, align 8, !dbg !3107
  %call18 = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %18) #8, !dbg !3108
  %cmp19 = icmp eq %struct.basic_block_def* %call, %call18, !dbg !3109
  br i1 %cmp19, label %for.inc32, label %if.then, !dbg !3110

if.then:                                          ; preds = %land.lhs.true16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3111
  %tobool20 = icmp eq %struct._IO_FILE* %19, null, !dbg !3111
  br i1 %tobool20, label %if.end, label %if.then21, !dbg !3114

if.then21:                                        ; preds = %if.then
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3115
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 9, !dbg !3116
  %21 = load i32, i32* %index, align 8, !dbg !3116
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %dest17, align 8, !dbg !3117
  %index24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i64 0, i32 9, !dbg !3118
  %23 = load i32, i32* %index24, align 8, !dbg !3118
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0), i32 %21, i32 %23) #6, !dbg !3119
  br label %if.end, !dbg !3119

if.end:                                           ; preds = %if.then, %if.then21
  %24 = load i8*, i8** %aux14, align 8, !dbg !3120
  %bf.load27 = load i8, i8* %24, align 4, !dbg !3121
  %bf.set = or i8 %bf.load27, 2, !dbg !3121
  store i8 %bf.set, i8* %24, align 4, !dbg !3121
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3122
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest17, align 8, !dbg !3123
  tail call fastcc void @union_groups(%struct.basic_block_def* %25, %struct.basic_block_def* %26) #8, !dbg !3124
  br label %for.inc32, !dbg !3125

for.inc32:                                        ; preds = %land.lhs.true16, %land.lhs.true, %lor.lhs.false, %if.end
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3126
  call void @llvm.dbg.value(metadata i32 undef, metadata !3058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3073
  br label %for.cond7, !dbg !3127, !llvm.loop !3128

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc88
  %indvars.iv1 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next2, %for.inc88 ], !dbg !3130
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3058, metadata !DIExpression()), !dbg !3073
  %cmp35 = icmp slt i64 %indvars.iv1, %8, !dbg !3131
  br i1 %cmp35, label %for.body36, label %for.cond91.preheader, !dbg !3092

for.cond91.preheader:                             ; preds = %for.cond34
  %27 = sext i32 %0 to i64, !dbg !3132
  br label %for.cond91, !dbg !3132

for.body36:                                       ; preds = %for.cond34
  %28 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !3133
  %arrayidx40 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %28, i64 %indvars.iv1, !dbg !3133
  %29 = load %struct.edge_def*, %struct.edge_def** %arrayidx40, align 8, !dbg !3133
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3065, metadata !DIExpression()), !dbg !3134
  %src41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 0, !dbg !3135
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src41, align 8, !dbg !3135
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 1, !dbg !3135
  %31 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3135
  %tobool42 = icmp eq %struct.VEC_edge_gc* %31, null, !dbg !3135
  br i1 %tobool42, label %cond.end, label %cond.true, !dbg !3135

cond.true:                                        ; preds = %for.body36
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %31, i64 0, i32 0, !dbg !3135
  br label %cond.end, !dbg !3135

cond.end:                                         ; preds = %for.body36, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body36 ], !dbg !3135
  %call45 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3135
  %cmp46 = icmp ugt i32 %call45, 1, !dbg !3135
  br i1 %cmp46, label %land.lhs.true47, label %for.inc88, !dbg !3135

land.lhs.true47:                                  ; preds = %cond.end
  %dest48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 1, !dbg !3135
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %dest48, align 8, !dbg !3135
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 0, !dbg !3135
  %33 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3135
  %tobool49 = icmp eq %struct.VEC_edge_gc* %33, null, !dbg !3135
  br i1 %tobool49, label %cond.end55, label %cond.true50, !dbg !3135

cond.true50:                                      ; preds = %land.lhs.true47
  %base53 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %33, i64 0, i32 0, !dbg !3135
  br label %cond.end55, !dbg !3135

cond.end55:                                       ; preds = %land.lhs.true47, %cond.true50
  %cond56 = phi %struct.VEC_edge_base* [ %base53, %cond.true50 ], [ null, %land.lhs.true47 ], !dbg !3135
  %call57 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond56) #8, !dbg !3135
  %cmp58 = icmp ugt i32 %call57, 1, !dbg !3135
  br i1 %cmp58, label %land.lhs.true59, label %for.inc88, !dbg !3137

land.lhs.true59:                                  ; preds = %cond.end55
  %aux60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 3, !dbg !3138
  %34 = load i8*, i8** %aux60, align 8, !dbg !3138
  %bf.load61 = load i8, i8* %34, align 4, !dbg !3139
  %bf.clear63 = and i8 %bf.load61, 4, !dbg !3139
  %tobool65 = icmp eq i8 %bf.clear63, 0, !dbg !3138
  br i1 %tobool65, label %land.lhs.true66, label %for.inc88, !dbg !3140

land.lhs.true66:                                  ; preds = %land.lhs.true59
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %src41, align 8, !dbg !3141
  %call68 = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %35) #8, !dbg !3142
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %dest48, align 8, !dbg !3143
  %call70 = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %36) #8, !dbg !3144
  %cmp71 = icmp eq %struct.basic_block_def* %call68, %call70, !dbg !3145
  br i1 %cmp71, label %for.inc88, label %if.then72, !dbg !3146

if.then72:                                        ; preds = %land.lhs.true66
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3147
  %tobool73 = icmp eq %struct._IO_FILE* %37, null, !dbg !3147
  br i1 %tobool73, label %if.end80, label %if.then74, !dbg !3150

if.then74:                                        ; preds = %if.then72
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %src41, align 8, !dbg !3151
  %index76 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i64 0, i32 9, !dbg !3152
  %39 = load i32, i32* %index76, align 8, !dbg !3152
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest48, align 8, !dbg !3153
  %index78 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i64 0, i32 9, !dbg !3154
  %41 = load i32, i32* %index78, align 8, !dbg !3154
  %call79 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i32 %39, i32 %41) #6, !dbg !3155
  br label %if.end80, !dbg !3155

if.end80:                                         ; preds = %if.then72, %if.then74
  %42 = load i8*, i8** %aux60, align 8, !dbg !3156
  %bf.load82 = load i8, i8* %42, align 4, !dbg !3157
  %bf.set84 = or i8 %bf.load82, 2, !dbg !3157
  store i8 %bf.set84, i8* %42, align 4, !dbg !3157
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %src41, align 8, !dbg !3158
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %dest48, align 8, !dbg !3159
  tail call fastcc void @union_groups(%struct.basic_block_def* %43, %struct.basic_block_def* %44) #8, !dbg !3160
  br label %for.inc88, !dbg !3161

for.inc88:                                        ; preds = %land.lhs.true66, %land.lhs.true59, %cond.end, %cond.end55, %if.end80
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3162
  call void @llvm.dbg.value(metadata i32 undef, metadata !3058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3073
  br label %for.cond34, !dbg !3163, !llvm.loop !3164

for.cond91:                                       ; preds = %for.cond91.preheader, %for.inc126
  %indvars.iv = phi i64 [ 0, %for.cond91.preheader ], [ %indvars.iv.next, %for.inc126 ], !dbg !3166
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3058, metadata !DIExpression()), !dbg !3073
  %cmp92 = icmp slt i64 %indvars.iv, %27, !dbg !3167
  br i1 %cmp92, label %for.body93, label %for.end128, !dbg !3132

for.body93:                                       ; preds = %for.cond91
  %45 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !3168
  %arrayidx97 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %45, i64 %indvars.iv, !dbg !3168
  %46 = load %struct.edge_def*, %struct.edge_def** %arrayidx97, align 8, !dbg !3168
  call void @llvm.dbg.value(metadata %struct.edge_def* %46, metadata !3069, metadata !DIExpression()), !dbg !3169
  %aux98 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i64 0, i32 3, !dbg !3170
  %47 = load i8*, i8** %aux98, align 8, !dbg !3170
  %bf.load99 = load i8, i8* %47, align 4, !dbg !3172
  %bf.clear101 = and i8 %bf.load99, 4, !dbg !3172
  %tobool103 = icmp eq i8 %bf.clear101, 0, !dbg !3170
  br i1 %tobool103, label %land.lhs.true104, label %for.inc126, !dbg !3173

land.lhs.true104:                                 ; preds = %for.body93
  %src105 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i64 0, i32 0, !dbg !3174
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %src105, align 8, !dbg !3174
  %call106 = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %48) #8, !dbg !3175
  %dest107 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i64 0, i32 1, !dbg !3176
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %dest107, align 8, !dbg !3176
  %call108 = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %49) #8, !dbg !3177
  %cmp109 = icmp eq %struct.basic_block_def* %call106, %call108, !dbg !3178
  br i1 %cmp109, label %for.inc126, label %if.then110, !dbg !3179

if.then110:                                       ; preds = %land.lhs.true104
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3180
  %tobool111 = icmp eq %struct._IO_FILE* %50, null, !dbg !3180
  br i1 %tobool111, label %if.end118, label %if.then112, !dbg !3183

if.then112:                                       ; preds = %if.then110
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %src105, align 8, !dbg !3184
  %index114 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i64 0, i32 9, !dbg !3185
  %52 = load i32, i32* %index114, align 8, !dbg !3185
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %dest107, align 8, !dbg !3186
  %index116 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i64 0, i32 9, !dbg !3187
  %54 = load i32, i32* %index116, align 8, !dbg !3187
  %call117 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i32 %52, i32 %54) #6, !dbg !3188
  br label %if.end118, !dbg !3188

if.end118:                                        ; preds = %if.then110, %if.then112
  %55 = load i8*, i8** %aux98, align 8, !dbg !3189
  %bf.load120 = load i8, i8* %55, align 4, !dbg !3190
  %bf.set122 = or i8 %bf.load120, 2, !dbg !3190
  store i8 %bf.set122, i8* %55, align 4, !dbg !3190
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %src105, align 8, !dbg !3191
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %dest107, align 8, !dbg !3192
  tail call fastcc void @union_groups(%struct.basic_block_def* %56, %struct.basic_block_def* %57) #8, !dbg !3193
  br label %for.inc126, !dbg !3194

for.inc126:                                       ; preds = %land.lhs.true104, %for.body93, %if.end118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i32 undef, metadata !3058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3073
  br label %for.cond91, !dbg !3196, !llvm.loop !3197

for.end128:                                       ; preds = %for.cond91
  %58 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3199
  %cfg130 = getelementptr inbounds %struct.function, %struct.function* %58, i64 0, i32 1, !dbg !3199
  %59 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg130, align 8, !dbg !3199
  %x_entry_block_ptr131 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %59, i64 0, i32 0, !dbg !3199
  br label %for.cond132, !dbg !3199

for.cond132:                                      ; preds = %for.body134, %for.end128
  %bb.1.in = phi %struct.basic_block_def** [ %x_entry_block_ptr131, %for.end128 ], [ %next_bb137, %for.body134 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3060, metadata !DIExpression()), !dbg !3073
  %cmp133 = icmp eq %struct.basic_block_def* %bb.1, null, !dbg !3202
  br i1 %cmp133, label %for.end138, label %for.body134, !dbg !3199

for.body134:                                      ; preds = %for.cond132
  %aux135 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3204
  store i8* null, i8** %aux135, align 8, !dbg !3205
  %next_bb137 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !3202
  br label %for.cond132, !dbg !3202, !llvm.loop !3206

for.end138:                                       ; preds = %for.cond132
  ret void, !dbg !3208
}

declare dso_local i32 @coverage_begin_output() local_unnamed_addr #2

declare dso_local i32 @gcov_write_tag(i32) local_unnamed_addr #2

declare dso_local void @gcov_write_unsigned(i32) local_unnamed_addr #2

declare dso_local void @gcov_write_length(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @output_location(i8* %file_name, i32 %line, i32* %offset, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !1889 {
entry:
  call void @llvm.dbg.value(metadata i8* %file_name, metadata !1895, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %line, metadata !1896, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32* %offset, metadata !1897, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !1898, metadata !DIExpression()), !dbg !3209
  %tobool = icmp eq i8* %file_name, null, !dbg !3210
  br i1 %tobool, label %if.then, label %if.end, !dbg !3212

if.then:                                          ; preds = %entry
  store i8* null, i8** @output_location.prev_file_name, align 8, !dbg !3213
  store i32 -1, i32* @output_location.prev_line, align 4, !dbg !3215
  br label %cleanup.cont, !dbg !3216

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @output_location.prev_file_name, align 8, !dbg !3217
  %tobool1 = icmp eq i8* %0, null, !dbg !3217
  br i1 %tobool1, label %lor.end, label %lor.rhs, !dbg !3218

lor.rhs:                                          ; preds = %if.end
  %call = tail call i32 @strcmp(i8* nonnull %file_name, i8* nonnull %0) #6, !dbg !3219
  %tobool2 = icmp ne i32 %call, 0, !dbg !3218
  %phitmp = zext i1 %tobool2 to i8, !dbg !3218
  br label %lor.end, !dbg !3218

lor.end:                                          ; preds = %if.end, %lor.rhs
  %1 = phi i8 [ 1, %if.end ], [ %phitmp, %lor.rhs ]
  call void @llvm.dbg.value(metadata i8 %1, metadata !1899, metadata !DIExpression()), !dbg !3209
  %2 = load i32, i32* @output_location.prev_line, align 4, !dbg !3220
  %cmp = icmp ne i32 %2, %line, !dbg !3221
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !1900, metadata !DIExpression()), !dbg !3209
  %tobool6 = icmp ne i8 %1, 0, !dbg !3222
  %or.cond = or i1 %tobool6, %cmp, !dbg !3224
  br i1 %or.cond, label %if.then9, label %cleanup.cont, !dbg !3224

if.then9:                                         ; preds = %lor.end
  %conv4 = zext i1 %cmp to i8, !dbg !3220
  call void @llvm.dbg.value(metadata i8 %conv4, metadata !1900, metadata !DIExpression()), !dbg !3209
  %3 = load i32, i32* %offset, align 4, !dbg !3225
  %tobool10 = icmp eq i32 %3, 0, !dbg !3225
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !3228

if.then11:                                        ; preds = %if.then9
  %call12 = tail call i32 @gcov_write_tag(i32 21299200) #6, !dbg !3229
  store i32 %call12, i32* %offset, align 4, !dbg !3231
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3232
  %4 = load i32, i32* %index, align 8, !dbg !3232
  %sub = add nsw i32 %4, -1, !dbg !3232
  tail call void @gcov_write_unsigned(i32 %sub) #6, !dbg !3233
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8 1, metadata !1899, metadata !DIExpression()), !dbg !3209
  br label %if.end13, !dbg !3234

if.end13:                                         ; preds = %if.then9, %if.then11
  %name_differs.0 = phi i8 [ %1, %if.then9 ], [ 1, %if.then11 ], !dbg !3209
  %line_differs.0 = phi i8 [ %conv4, %if.then9 ], [ 1, %if.then11 ], !dbg !3209
  call void @llvm.dbg.value(metadata i8 %line_differs.0, metadata !1900, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8 %name_differs.0, metadata !1899, metadata !DIExpression()), !dbg !3209
  %tobool14 = icmp eq i8 %name_differs.0, 0, !dbg !3235
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3237

if.then15:                                        ; preds = %if.end13
  store i8* %file_name, i8** @output_location.prev_file_name, align 8, !dbg !3238
  tail call void @gcov_write_unsigned(i32 0) #6, !dbg !3240
  %5 = load i8*, i8** @output_location.prev_file_name, align 8, !dbg !3241
  tail call void @gcov_write_string(i8* %5) #6, !dbg !3242
  br label %if.end16, !dbg !3243

if.end16:                                         ; preds = %if.end13, %if.then15
  %tobool17 = icmp eq i8 %line_differs.0, 0, !dbg !3244
  br i1 %tobool17, label %cleanup.cont, label %if.then18, !dbg !3246

if.then18:                                        ; preds = %if.end16
  tail call void @gcov_write_unsigned(i32 %line) #6, !dbg !3247
  store i32 %line, i32* @output_location.prev_line, align 4, !dbg !3249
  br label %cleanup.cont, !dbg !3250

cleanup.cont:                                     ; preds = %if.end16, %if.then, %if.then18, %lor.end
  ret void, !dbg !3251
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3252 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3255, metadata !DIExpression()), !dbg !3258
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3259
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3256, metadata !DIExpression()), !dbg !3257
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !3260
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3261
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3262
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3263
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3264
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3265
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3266
  ret void, !dbg !3267
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @gimple_filename(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3268 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3272, metadata !DIExpression()), !dbg !3273
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #8, !dbg !3274
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %call) #6, !dbg !3274
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 0, !dbg !3274
  %0 = load i8*, i8** %file, align 8, !dbg !3274
  ret i8* %0, !dbg !3275
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_lineno(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3276 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3280, metadata !DIExpression()), !dbg !3281
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #8, !dbg !3282
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %call) #6, !dbg !3282
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 1, !dbg !3282
  %0 = load i32, i32* %line, align 8, !dbg !3282
  ret i32 %0, !dbg !3283
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3284 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3286, metadata !DIExpression()), !dbg !3287
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3288
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3288
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3289
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3289
  %2 = load i64, i64* %1, align 8, !dbg !3289
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3290
  store i64 %2, i64* %3, align 8, !dbg !3290
  ret void, !dbg !3291
}

declare dso_local void @gcov_write_string(i8*) local_unnamed_addr #2

declare dso_local void @find_values_to_profile(%struct.VEC_histogram_value_heap**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_branch_probabilities() unnamed_addr #5 !dbg !1905 {
entry:
  %hist_br_prob = alloca [20 x i32], align 16
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp20 = alloca %struct.edge_iterator, align 8
  %e73 = alloca %struct.edge_def*, align 8
  %ei74 = alloca %struct.edge_iterator, align 8
  %tmp75 = alloca %struct.edge_iterator, align 8
  %e91 = alloca %struct.edge_def*, align 8
  %ei92 = alloca %struct.edge_iterator, align 8
  %tmp94 = alloca %struct.edge_iterator, align 8
  %e121 = alloca %struct.edge_def*, align 8
  %ei122 = alloca %struct.edge_iterator, align 8
  %tmp124 = alloca %struct.edge_iterator, align 8
  %tmp135 = alloca %struct.edge_iterator, align 8
  %e173 = alloca %struct.edge_def*, align 8
  %ei174 = alloca %struct.edge_iterator, align 8
  %tmp176 = alloca %struct.edge_iterator, align 8
  %tmp187 = alloca %struct.edge_iterator, align 8
  %e297 = alloca %struct.edge_def*, align 8
  %ei298 = alloca %struct.edge_iterator, align 8
  %tmp307 = alloca %struct.edge_iterator, align 8
  %tmp373 = alloca %struct.edge_iterator, align 8
  %e409 = alloca %struct.edge_def*, align 8
  %tmp411 = alloca %struct.edge_iterator, align 8
  %tmp442 = alloca %struct.edge_iterator, align 8
  %tmp459 = alloca %struct.edge_iterator, align 8
  %tmp488 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !1909, metadata !DIExpression()), !dbg !3292
  %0 = bitcast [20 x i32]* %hist_br_prob to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7, !dbg !3293
  call void @llvm.dbg.declare(metadata [20 x i32]* %hist_br_prob, metadata !1912, metadata !DIExpression()), !dbg !3294
  %call = tail call fastcc i64* @get_exec_counts() #8, !dbg !3295
  call void @llvm.dbg.value(metadata i64* %call, metadata !1914, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !1915, metadata !DIExpression()), !dbg !3292
  %1 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3296
  %tobool = icmp eq %struct.gcov_ctr_summary* %1, null, !dbg !3296
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3298

if.end:                                           ; preds = %entry
  %run_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %1, i64 0, i32 3, !dbg !3299
  %2 = load i64, i64* %run_max, align 8, !dbg !3299
  %runs = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %1, i64 0, i32 1, !dbg !3301
  %3 = load i32, i32* %runs, align 4, !dbg !3301
  %conv = zext i32 %3 to i64, !dbg !3302
  %mul = mul nsw i64 %2, %conv, !dbg !3303
  %sum_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %1, i64 0, i32 4, !dbg !3304
  %4 = load i64, i64* %sum_max, align 8, !dbg !3304
  %cmp = icmp slt i64 %mul, %4, !dbg !3305
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3306

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3307
  call void @llvm.dbg.value(metadata i64* null, metadata !1914, metadata !DIExpression()), !dbg !3292
  %.pre = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3309
  %sum_max4.phi.trans.insert = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %.pre, i64 0, i32 4, !dbg !3311
  %.pre4 = load i64, i64* %sum_max4.phi.trans.insert, align 8, !dbg !3312
  br label %if.end3, !dbg !3313

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = phi i64 [ %.pre4, %if.then2 ], [ %4, %if.end ], !dbg !3312
  %6 = phi %struct.gcov_ctr_summary* [ %.pre, %if.then2 ], [ %1, %if.end ], !dbg !3309
  %exec_counts.0 = phi i64* [ null, %if.then2 ], [ %call, %if.end ], !dbg !3292
  call void @llvm.dbg.value(metadata i64* %exec_counts.0, metadata !1914, metadata !DIExpression()), !dbg !3292
  %sum_all = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %6, i64 0, i32 2, !dbg !3314
  %7 = load i64, i64* %sum_all, align 8, !dbg !3314
  %cmp5 = icmp slt i64 %7, %5, !dbg !3315
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !3316

if.then7:                                         ; preds = %if.end3
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !3317
  call void @llvm.dbg.value(metadata i64* null, metadata !1914, metadata !DIExpression()), !dbg !3292
  br label %if.end8, !dbg !3319

if.end8:                                          ; preds = %if.then7, %if.end3
  %exec_counts.1 = phi i64* [ null, %if.then7 ], [ %exec_counts.0, %if.end3 ], !dbg !3292
  call void @llvm.dbg.value(metadata i64* %exec_counts.1, metadata !1914, metadata !DIExpression()), !dbg !3292
  tail call void @alloc_aux_for_blocks(i32 24) #6, !dbg !3320
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3321
  %cfg = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3321
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3321
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3321
  %10 = bitcast %struct.edge_def** %e to i8*, !dbg !3322
  %11 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3322
  %12 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3323
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3323
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3323
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3325
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3325
  %17 = bitcast %struct.edge_iterator* %tmp20 to i8*, !dbg !3327
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp20, i64 0, i32 0, !dbg !3327
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp20, i64 0, i32 1, !dbg !3327
  br label %for.cond, !dbg !3321

for.cond:                                         ; preds = %for.end37, %if.end8
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.end8 ], [ %next_bb, %for.end37 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !1907, metadata !DIExpression()), !dbg !3292
  %cmp9 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3330
  br i1 %cmp9, label %for.end39, label %for.body, !dbg !3321

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3331
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !3332
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3333
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3333
  %call11 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3333
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 0, !dbg !3333
  store i32 %20, i32* %13, align 8, !dbg !3333
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 1, !dbg !3333
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %14, align 8, !dbg !3333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !3333
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3333
  %aux18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3334
  %22 = bitcast i8** %aux18 to %struct.bb_info**, !dbg !3334
  br label %for.cond12, !dbg !3333

for.cond12:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %15, align 8, !dbg !3336
  %24 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1916, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  %call13 = call fastcc zeroext i8 @ei_cond(i32 %23, %struct.VEC_edge_gc** %24, %struct.edge_def** nonnull %e) #8, !dbg !3336
  %tobool14 = icmp eq i8 %call13, 0, !dbg !3333
  br i1 %tobool14, label %for.end, label %for.body15, !dbg !3333

for.body15:                                       ; preds = %for.cond12
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !1916, metadata !DIExpression()), !dbg !3322
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 3, !dbg !3337
  %26 = load i8*, i8** %aux, align 8, !dbg !3337
  %bf.load = load i8, i8* %26, align 4, !dbg !3338
  %bf.clear = and i8 %bf.load, 4, !dbg !3338
  %tobool16 = icmp eq i8 %bf.clear, 0, !dbg !3337
  br i1 %tobool16, label %if.then17, label %for.inc, !dbg !3339

if.then17:                                        ; preds = %for.body15
  %27 = load %struct.bb_info*, %struct.bb_info** %22, align 8, !dbg !3340
  %succ_count = getelementptr inbounds %struct.bb_info, %struct.bb_info* %27, i64 0, i32 1, !dbg !3341
  %28 = load i64, i64* %succ_count, align 8, !dbg !3342
  %inc = add nsw i64 %28, 1, !dbg !3342
  store i64 %inc, i64* %succ_count, align 8, !dbg !3342
  br label %for.inc, !dbg !3340

for.inc:                                          ; preds = %for.body15, %if.then17
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1920, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3336
  br label %for.cond12, !dbg !3336, !llvm.loop !3343

for.end:                                          ; preds = %for.cond12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3345
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !3345
  %call21 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds) #8, !dbg !3345
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 0, !dbg !3345
  store i32 %29, i32* %18, align 8, !dbg !3345
  %30 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 1, !dbg !3345
  store %struct.VEC_edge_gc** %30, %struct.VEC_edge_gc*** %19, align 8, !dbg !3345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %17, i64 16, i1 false), !dbg !3345
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3345
  br label %for.cond22, !dbg !3345

for.cond22:                                       ; preds = %for.inc36, %for.end
  %31 = load i32, i32* %15, align 8, !dbg !3346
  %32 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1916, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  %call23 = call fastcc zeroext i8 @ei_cond(i32 %31, %struct.VEC_edge_gc** %32, %struct.edge_def** nonnull %e) #8, !dbg !3346
  %tobool24 = icmp eq i8 %call23, 0, !dbg !3345
  br i1 %tobool24, label %for.end37, label %for.body25, !dbg !3345

for.body25:                                       ; preds = %for.cond22
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3348
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !1916, metadata !DIExpression()), !dbg !3322
  %aux26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i64 0, i32 3, !dbg !3348
  %34 = load i8*, i8** %aux26, align 8, !dbg !3348
  %bf.load27 = load i8, i8* %34, align 4, !dbg !3350
  %bf.clear29 = and i8 %bf.load27, 4, !dbg !3350
  %tobool31 = icmp eq i8 %bf.clear29, 0, !dbg !3348
  br i1 %tobool31, label %if.then32, label %for.inc36, !dbg !3351

if.then32:                                        ; preds = %for.body25
  %35 = load %struct.bb_info*, %struct.bb_info** %22, align 8, !dbg !3352
  %pred_count = getelementptr inbounds %struct.bb_info, %struct.bb_info* %35, i64 0, i32 2, !dbg !3353
  %36 = load i64, i64* %pred_count, align 8, !dbg !3354
  %inc34 = add nsw i64 %36, 1, !dbg !3354
  store i64 %inc34, i64* %pred_count, align 8, !dbg !3354
  br label %for.inc36, !dbg !3352

for.inc36:                                        ; preds = %for.body25, %if.then32
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1920, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3346
  br label %for.cond22, !dbg !3346, !llvm.loop !3355

for.end37:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3357
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3330
  br label %for.cond, !dbg !3330, !llvm.loop !3358

for.end39:                                        ; preds = %for.cond
  %37 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3360
  %cfg41 = getelementptr inbounds %struct.function, %struct.function* %37, i64 0, i32 1, !dbg !3360
  %38 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg41, align 8, !dbg !3360
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %38, i64 0, i32 1, !dbg !3360
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3360
  %aux42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i64 0, i32 2, !dbg !3360
  %40 = bitcast i8** %aux42 to %struct.bb_info**, !dbg !3360
  %41 = load %struct.bb_info*, %struct.bb_info** %40, align 8, !dbg !3360
  %succ_count43 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %41, i64 0, i32 1, !dbg !3361
  store i64 2, i64* %succ_count43, align 8, !dbg !3362
  %42 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg41, align 8, !dbg !3363
  %x_entry_block_ptr46 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %42, i64 0, i32 0, !dbg !3363
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr46, align 8, !dbg !3363
  %aux47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i64 0, i32 2, !dbg !3363
  %44 = bitcast i8** %aux47 to %struct.bb_info**, !dbg !3363
  %45 = load %struct.bb_info*, %struct.bb_info** %44, align 8, !dbg !3363
  %pred_count48 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %45, i64 0, i32 2, !dbg !3364
  store i64 2, i64* %pred_count48, align 8, !dbg !3365
  %call49 = call fastcc i32 @read_profile_edge_counts(i64* %exec_counts.1) #8, !dbg !3366
  call void @llvm.dbg.value(metadata i32 %call49, metadata !1909, metadata !DIExpression()), !dbg !3292
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3367
  %tobool50 = icmp eq %struct._IO_FILE* %46, null, !dbg !3367
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !3369

if.then51:                                        ; preds = %for.end39
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %call49) #6, !dbg !3370
  br label %if.end53, !dbg !3370

if.end53:                                         ; preds = %for.end39, %if.then51
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !1911, metadata !DIExpression()), !dbg !3292
  %47 = bitcast %struct.edge_def** %e91 to i8*, !dbg !3371
  %48 = bitcast %struct.edge_iterator* %ei92 to i8*, !dbg !3371
  %49 = bitcast %struct.edge_iterator* %tmp94 to i8*, !dbg !3372
  %50 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp94, i64 0, i32 0, !dbg !3372
  %51 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp94, i64 0, i32 1, !dbg !3372
  %52 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei92, i64 0, i32 0, !dbg !3374
  %53 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei92, i64 0, i32 1, !dbg !3374
  %54 = bitcast %struct.edge_def** %e73 to i8*, !dbg !3376
  %55 = bitcast %struct.edge_iterator* %ei74 to i8*, !dbg !3376
  %56 = bitcast %struct.edge_iterator* %tmp75 to i8*, !dbg !3377
  %57 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp75, i64 0, i32 0, !dbg !3377
  %58 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp75, i64 0, i32 1, !dbg !3377
  %59 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei74, i64 0, i32 0, !dbg !3379
  %60 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei74, i64 0, i32 1, !dbg !3379
  %61 = bitcast %struct.edge_def** %e121 to i8*, !dbg !3381
  %62 = bitcast %struct.edge_iterator* %ei122 to i8*, !dbg !3381
  %63 = bitcast %struct.edge_iterator* %tmp124 to i8*, !dbg !3382
  %64 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp124, i64 0, i32 0, !dbg !3382
  %65 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp124, i64 0, i32 1, !dbg !3382
  %66 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei122, i64 0, i32 0, !dbg !3384
  %67 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei122, i64 0, i32 1, !dbg !3384
  %68 = bitcast %struct.edge_iterator* %tmp135 to i8*, !dbg !3386
  %69 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp135, i64 0, i32 0, !dbg !3386
  %70 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp135, i64 0, i32 1, !dbg !3386
  %71 = bitcast %struct.edge_def** %e173 to i8*, !dbg !3388
  %72 = bitcast %struct.edge_iterator* %ei174 to i8*, !dbg !3388
  %73 = bitcast %struct.edge_iterator* %tmp176 to i8*, !dbg !3389
  %74 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp176, i64 0, i32 0, !dbg !3389
  %75 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp176, i64 0, i32 1, !dbg !3389
  %76 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei174, i64 0, i32 0, !dbg !3391
  %77 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei174, i64 0, i32 1, !dbg !3391
  %78 = bitcast %struct.edge_iterator* %tmp187 to i8*, !dbg !3393
  %79 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp187, i64 0, i32 0, !dbg !3393
  %80 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp187, i64 0, i32 1, !dbg !3393
  br label %while.cond, !dbg !3395

while.cond.loopexit:                              ; preds = %for.cond59
  %changes.1.lcssa = phi i32 [ %changes.1, %for.cond59 ], !dbg !3396
  call void @llvm.dbg.value(metadata i32 %changes.1.lcssa, metadata !1910, metadata !DIExpression()), !dbg !3292
  %inc55 = add nuw nsw i32 %passes.0, 1, !dbg !3397
  call void @llvm.dbg.value(metadata i32 %changes.1.lcssa, metadata !1910, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %changes.1.lcssa, metadata !1910, metadata !DIExpression()), !dbg !3292
  br label %while.cond, !dbg !3395

while.cond:                                       ; preds = %while.cond.loopexit, %if.end53
  %passes.0 = phi i32 [ 0, %if.end53 ], [ %inc55, %while.cond.loopexit ], !dbg !3292
  %changes.0 = phi i32 [ 1, %if.end53 ], [ %changes.1.lcssa, %while.cond.loopexit ], !dbg !3292
  call void @llvm.dbg.value(metadata i32 %changes.0, metadata !1910, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %passes.0, metadata !1911, metadata !DIExpression()), !dbg !3292
  %tobool54 = icmp eq i32 %changes.0, 0, !dbg !3395
  br i1 %tobool54, label %while.end, label %while.body, !dbg !3395

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 %inc55, metadata !1911, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !1910, metadata !DIExpression()), !dbg !3292
  %81 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3398
  %cfg57 = getelementptr inbounds %struct.function, %struct.function* %81, i64 0, i32 1, !dbg !3398
  %82 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg57, align 8, !dbg !3398
  %x_exit_block_ptr58 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %82, i64 0, i32 1, !dbg !3398
  br label %for.cond59, !dbg !3398

for.cond59:                                       ; preds = %for.inc231, %while.body
  %changes.1 = phi i32 [ 0, %while.body ], [ %changes.7, %for.inc231 ], !dbg !3396
  %bb.1.in = phi %struct.basic_block_def** [ %x_exit_block_ptr58, %while.body ], [ %prev_bb, %for.inc231 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3399
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !1907, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %changes.1, metadata !1910, metadata !DIExpression()), !dbg !3292
  %cmp60 = icmp eq %struct.basic_block_def* %bb.1, null, !dbg !3400
  br i1 %cmp60, label %while.cond.loopexit, label %for.body62, !dbg !3398, !llvm.loop !3401

for.body62:                                       ; preds = %for.cond59
  %aux63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3403
  %83 = bitcast i8** %aux63 to %struct.bb_info**, !dbg !3403
  %84 = load %struct.bb_info*, %struct.bb_info** %83, align 8, !dbg !3403
  call void @llvm.dbg.value(metadata %struct.bb_info* %84, metadata !1927, metadata !DIExpression()), !dbg !3404
  %85 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %84, i64 0, i32 0, !dbg !3405
  %bf.load64 = load i8, i8* %85, align 8, !dbg !3405
  %bf.clear65 = and i8 %bf.load64, 1, !dbg !3405
  %tobool67 = icmp eq i8 %bf.clear65, 0, !dbg !3406
  br i1 %tobool67, label %if.then68, label %if.end111, !dbg !3407

if.then68:                                        ; preds = %for.body62
  %succ_count69 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %84, i64 0, i32 1, !dbg !3408
  %86 = load i64, i64* %succ_count69, align 8, !dbg !3408
  %cmp70 = icmp eq i64 %86, 0, !dbg !3409
  br i1 %cmp70, label %if.then72, label %if.else, !dbg !3410

if.then72:                                        ; preds = %if.then68
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #7, !dbg !3411
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %55) #7, !dbg !3412
  call void @llvm.dbg.value(metadata i64 0, metadata !1938, metadata !DIExpression()), !dbg !3376
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #7, !dbg !3413
  %succs76 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !3413
  %call77 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs76) #8, !dbg !3413
  %87 = extractvalue { i32, %struct.VEC_edge_gc** } %call77, 0, !dbg !3413
  store i32 %87, i32* %57, align 8, !dbg !3413
  %88 = extractvalue { i32, %struct.VEC_edge_gc** } %call77, 1, !dbg !3413
  store %struct.VEC_edge_gc** %88, %struct.VEC_edge_gc*** %58, align 8, !dbg !3413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %55, i8* nonnull align 8 %56, i64 16, i1 false), !dbg !3413
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #7, !dbg !3413
  br label %for.cond78, !dbg !3413

for.cond78:                                       ; preds = %for.body81, %if.then72
  %total.0 = phi i64 [ 0, %if.then72 ], [ %add, %for.body81 ], !dbg !3376
  call void @llvm.dbg.value(metadata i64 %total.0, metadata !1938, metadata !DIExpression()), !dbg !3376
  %89 = load i32, i32* %59, align 8, !dbg !3414
  %90 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %60, align 8, !dbg !3414
  call void @llvm.dbg.value(metadata %struct.edge_def** %e73, metadata !1932, metadata !DIExpression(DW_OP_deref)), !dbg !3376
  %call79 = call fastcc zeroext i8 @ei_cond(i32 %89, %struct.VEC_edge_gc** %90, %struct.edge_def** nonnull %e73) #8, !dbg !3414
  %tobool80 = icmp eq i8 %call79, 0, !dbg !3413
  br i1 %tobool80, label %for.end83, label %for.body81, !dbg !3413

for.body81:                                       ; preds = %for.cond78
  %91 = load %struct.edge_def*, %struct.edge_def** %e73, align 8, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.edge_def* %91, metadata !1932, metadata !DIExpression()), !dbg !3376
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i64 0, i32 9, !dbg !3416
  %92 = load i64, i64* %count, align 8, !dbg !3416
  %add = add nsw i64 %total.0, %92, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %add, metadata !1938, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei74, metadata !1937, metadata !DIExpression(DW_OP_deref)), !dbg !3376
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei74) #8, !dbg !3414
  br label %for.cond78, !dbg !3414, !llvm.loop !3418

for.end83:                                        ; preds = %for.cond78
  %total.0.lcssa = phi i64 [ %total.0, %for.cond78 ], !dbg !3376
  call void @llvm.dbg.value(metadata i64 %total.0.lcssa, metadata !1938, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %total.0.lcssa, metadata !1938, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %total.0.lcssa, metadata !1938, metadata !DIExpression()), !dbg !3376
  %count84 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 8, !dbg !3420
  store i64 %total.0.lcssa, i64* %count84, align 8, !dbg !3421
  %bf.load85 = load i8, i8* %85, align 8, !dbg !3422
  %bf.set = or i8 %bf.load85, 1, !dbg !3422
  store i8 %bf.set, i8* %85, align 8, !dbg !3422
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %55) #7, !dbg !3423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #7, !dbg !3423
  br label %if.end111, !dbg !3424

if.else:                                          ; preds = %if.then68
  %pred_count87 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %84, i64 0, i32 2, !dbg !3425
  %93 = load i64, i64* %pred_count87, align 8, !dbg !3425
  %cmp88 = icmp eq i64 %93, 0, !dbg !3426
  br i1 %cmp88, label %if.then90, label %if.end111, !dbg !3427

if.then90:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #7, !dbg !3428
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #7, !dbg !3429
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !3371
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #7, !dbg !3430
  %preds95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 0, !dbg !3430
  %call96 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds95) #8, !dbg !3430
  %94 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 0, !dbg !3430
  store i32 %94, i32* %50, align 8, !dbg !3430
  %95 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 1, !dbg !3430
  store %struct.VEC_edge_gc** %95, %struct.VEC_edge_gc*** %51, align 8, !dbg !3430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %48, i8* nonnull align 8 %49, i64 16, i1 false), !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #7, !dbg !3430
  br label %for.cond97, !dbg !3430

for.cond97:                                       ; preds = %for.body100, %if.then90
  %total93.0 = phi i64 [ 0, %if.then90 ], [ %add102, %for.body100 ], !dbg !3371
  call void @llvm.dbg.value(metadata i64 %total93.0, metadata !1943, metadata !DIExpression()), !dbg !3371
  %96 = load i32, i32* %52, align 8, !dbg !3431
  %97 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %53, align 8, !dbg !3431
  call void @llvm.dbg.value(metadata %struct.edge_def** %e91, metadata !1939, metadata !DIExpression(DW_OP_deref)), !dbg !3371
  %call98 = call fastcc zeroext i8 @ei_cond(i32 %96, %struct.VEC_edge_gc** %97, %struct.edge_def** nonnull %e91) #8, !dbg !3431
  %tobool99 = icmp eq i8 %call98, 0, !dbg !3430
  br i1 %tobool99, label %for.end104, label %for.body100, !dbg !3430

for.body100:                                      ; preds = %for.cond97
  %98 = load %struct.edge_def*, %struct.edge_def** %e91, align 8, !dbg !3432
  call void @llvm.dbg.value(metadata %struct.edge_def* %98, metadata !1939, metadata !DIExpression()), !dbg !3371
  %count101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %98, i64 0, i32 9, !dbg !3433
  %99 = load i64, i64* %count101, align 8, !dbg !3433
  %add102 = add nsw i64 %total93.0, %99, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %add102, metadata !1943, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei92, metadata !1942, metadata !DIExpression(DW_OP_deref)), !dbg !3371
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei92) #8, !dbg !3431
  br label %for.cond97, !dbg !3431, !llvm.loop !3435

for.end104:                                       ; preds = %for.cond97
  %total93.0.lcssa = phi i64 [ %total93.0, %for.cond97 ], !dbg !3371
  call void @llvm.dbg.value(metadata i64 %total93.0.lcssa, metadata !1943, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %total93.0.lcssa, metadata !1943, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %total93.0.lcssa, metadata !1943, metadata !DIExpression()), !dbg !3371
  %count105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 8, !dbg !3437
  store i64 %total93.0.lcssa, i64* %count105, align 8, !dbg !3438
  %bf.load106 = load i8, i8* %85, align 8, !dbg !3439
  %bf.set108 = or i8 %bf.load106, 1, !dbg !3439
  store i8 %bf.set108, i8* %85, align 8, !dbg !3439
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #7, !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #7, !dbg !3440
  br label %if.end111, !dbg !3441

if.end111:                                        ; preds = %for.body62, %for.end83, %for.end104, %if.else
  %changes.4 = phi i32 [ %changes.1, %for.body62 ], [ 1, %for.end83 ], [ 1, %for.end104 ], [ %changes.1, %if.else ], !dbg !3396
  call void @llvm.dbg.value(metadata i32 %changes.4, metadata !1910, metadata !DIExpression()), !dbg !3292
  %bf.load112 = load i8, i8* %85, align 8, !dbg !3442
  %bf.clear113 = and i8 %bf.load112, 1, !dbg !3442
  %tobool115 = icmp eq i8 %bf.clear113, 0, !dbg !3443
  br i1 %tobool115, label %for.inc231, label %if.then116, !dbg !3444

if.then116:                                       ; preds = %if.end111
  %succ_count117 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %84, i64 0, i32 1, !dbg !3445
  %100 = load i64, i64* %succ_count117, align 8, !dbg !3445
  %cmp118 = icmp eq i64 %100, 1, !dbg !3446
  br i1 %cmp118, label %if.then120, label %if.end168, !dbg !3447

if.then120:                                       ; preds = %if.then116
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #7, !dbg !3448
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #7, !dbg !3449
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %63) #7, !dbg !3450
  %succs125 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !3450
  %call126 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs125) #8, !dbg !3450
  %101 = extractvalue { i32, %struct.VEC_edge_gc** } %call126, 0, !dbg !3450
  store i32 %101, i32* %64, align 8, !dbg !3450
  %102 = extractvalue { i32, %struct.VEC_edge_gc** } %call126, 1, !dbg !3450
  store %struct.VEC_edge_gc** %102, %struct.VEC_edge_gc*** %65, align 8, !dbg !3450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %62, i8* nonnull align 8 %63, i64 16, i1 false), !dbg !3450
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %63) #7, !dbg !3450
  br label %for.cond127, !dbg !3450

for.cond127:                                      ; preds = %for.body130, %if.then120
  %total123.0 = phi i64 [ 0, %if.then120 ], [ %add132, %for.body130 ], !dbg !3381
  call void @llvm.dbg.value(metadata i64 %total123.0, metadata !1950, metadata !DIExpression()), !dbg !3381
  %103 = load i32, i32* %66, align 8, !dbg !3451
  %104 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %67, align 8, !dbg !3451
  call void @llvm.dbg.value(metadata %struct.edge_def** %e121, metadata !1944, metadata !DIExpression(DW_OP_deref)), !dbg !3381
  %call128 = call fastcc zeroext i8 @ei_cond(i32 %103, %struct.VEC_edge_gc** %104, %struct.edge_def** nonnull %e121) #8, !dbg !3451
  %tobool129 = icmp eq i8 %call128, 0, !dbg !3450
  br i1 %tobool129, label %for.end134, label %for.body130, !dbg !3450

for.body130:                                      ; preds = %for.cond127
  %105 = load %struct.edge_def*, %struct.edge_def** %e121, align 8, !dbg !3452
  call void @llvm.dbg.value(metadata %struct.edge_def* %105, metadata !1944, metadata !DIExpression()), !dbg !3381
  %count131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %105, i64 0, i32 9, !dbg !3453
  %106 = load i64, i64* %count131, align 8, !dbg !3453
  %add132 = add nsw i64 %total123.0, %106, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %add132, metadata !1950, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei122, metadata !1949, metadata !DIExpression(DW_OP_deref)), !dbg !3381
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei122) #8, !dbg !3451
  br label %for.cond127, !dbg !3451, !llvm.loop !3455

for.end134:                                       ; preds = %for.cond127
  %total123.0.lcssa = phi i64 [ %total123.0, %for.cond127 ], !dbg !3381
  call void @llvm.dbg.value(metadata i64 %total123.0.lcssa, metadata !1950, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %total123.0.lcssa, metadata !1950, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %total123.0.lcssa, metadata !1950, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #7, !dbg !3457
  %call137 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs125) #8, !dbg !3457
  %107 = extractvalue { i32, %struct.VEC_edge_gc** } %call137, 0, !dbg !3457
  store i32 %107, i32* %69, align 8, !dbg !3457
  %108 = extractvalue { i32, %struct.VEC_edge_gc** } %call137, 1, !dbg !3457
  store %struct.VEC_edge_gc** %108, %struct.VEC_edge_gc*** %70, align 8, !dbg !3457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %62, i8* nonnull align 8 %68, i64 16, i1 false), !dbg !3457
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #7, !dbg !3457
  br label %for.cond138, !dbg !3457

for.cond138:                                      ; preds = %for.inc155, %for.end134
  %109 = load i32, i32* %66, align 8, !dbg !3458
  %110 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %67, align 8, !dbg !3458
  call void @llvm.dbg.value(metadata %struct.edge_def** %e121, metadata !1944, metadata !DIExpression(DW_OP_deref)), !dbg !3381
  %call139 = call fastcc zeroext i8 @ei_cond(i32 %109, %struct.VEC_edge_gc** %110, %struct.edge_def** nonnull %e121) #8, !dbg !3458
  %tobool140 = icmp eq i8 %call139, 0, !dbg !3457
  br i1 %tobool140, label %for.cond138.for.end156_crit_edge, label %for.body141, !dbg !3457

for.cond138.for.end156_crit_edge:                 ; preds = %for.cond138
  %.pre5 = load %struct.edge_def*, %struct.edge_def** %e121, align 8, !dbg !3460
  br label %for.end156, !dbg !3457

for.body141:                                      ; preds = %for.cond138
  %111 = load %struct.edge_def*, %struct.edge_def** %e121, align 8, !dbg !3461
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !1944, metadata !DIExpression()), !dbg !3381
  %aux142 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %111, i64 0, i32 3, !dbg !3461
  %112 = load i8*, i8** %aux142, align 8, !dbg !3461
  %bf.load143 = load i8, i8* %112, align 4, !dbg !3463
  %bf.clear144 = and i8 %bf.load143, 1, !dbg !3463
  %tobool146 = icmp eq i8 %bf.clear144, 0, !dbg !3461
  br i1 %tobool146, label %land.lhs.true, label %for.inc155, !dbg !3464

land.lhs.true:                                    ; preds = %for.body141
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !1944, metadata !DIExpression()), !dbg !3381
  %bf.clear150 = and i8 %bf.load143, 4, !dbg !3465
  %tobool152 = icmp eq i8 %bf.clear150, 0, !dbg !3466
  br i1 %tobool152, label %for.end156.loopexit, label %for.inc155, !dbg !3467

for.inc155:                                       ; preds = %land.lhs.true, %for.body141
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei122, metadata !1949, metadata !DIExpression(DW_OP_deref)), !dbg !3381
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei122) #8, !dbg !3458
  br label %for.cond138, !dbg !3458, !llvm.loop !3468

for.end156.loopexit:                              ; preds = %land.lhs.true
  %.lcssa28 = phi %struct.edge_def* [ %111, %land.lhs.true ], !dbg !3461
  br label %for.end156, !dbg !3470

for.end156:                                       ; preds = %for.end156.loopexit, %for.cond138.for.end156_crit_edge
  %113 = phi %struct.edge_def* [ %.pre5, %for.cond138.for.end156_crit_edge ], [ %.lcssa28, %for.end156.loopexit ], !dbg !3460
  %count157 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 8, !dbg !3470
  %114 = load i64, i64* %count157, align 8, !dbg !3470
  %sub = sub nsw i64 %114, %total123.0.lcssa, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1950, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata %struct.edge_def* %113, metadata !1944, metadata !DIExpression()), !dbg !3381
  %tobool158 = icmp eq %struct.edge_def* %113, null, !dbg !3460
  br i1 %tobool158, label %cond.true, label %cond.end, !dbg !3460

cond.true:                                        ; preds = %for.end156
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 566, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3460
  %.pre6 = load %struct.edge_def*, %struct.edge_def** %e121, align 8, !dbg !3472
  br label %cond.end, !dbg !3460

cond.end:                                         ; preds = %for.end156, %cond.true
  %115 = phi %struct.edge_def* [ %113, %for.end156 ], [ %.pre6, %cond.true ], !dbg !3472
  call void @llvm.dbg.value(metadata %struct.edge_def* %115, metadata !1944, metadata !DIExpression()), !dbg !3381
  %aux159 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %115, i64 0, i32 3, !dbg !3472
  %116 = load i8*, i8** %aux159, align 8, !dbg !3472
  %bf.load160 = load i8, i8* %116, align 4, !dbg !3473
  %bf.set162 = or i8 %bf.load160, 1, !dbg !3473
  store i8 %bf.set162, i8* %116, align 4, !dbg !3473
  %117 = load %struct.edge_def*, %struct.edge_def** %e121, align 8, !dbg !3474
  call void @llvm.dbg.value(metadata %struct.edge_def* %117, metadata !1944, metadata !DIExpression()), !dbg !3381
  %count163 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %117, i64 0, i32 9, !dbg !3475
  store i64 %sub, i64* %count163, align 8, !dbg !3476
  %118 = load i64, i64* %succ_count117, align 8, !dbg !3477
  %dec = add nsw i64 %118, -1, !dbg !3477
  store i64 %dec, i64* %succ_count117, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.edge_def* %117, metadata !1944, metadata !DIExpression()), !dbg !3381
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %117, i64 0, i32 1, !dbg !3478
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3478
  %aux165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i64 0, i32 2, !dbg !3478
  %120 = bitcast i8** %aux165 to %struct.bb_info**, !dbg !3478
  %121 = load %struct.bb_info*, %struct.bb_info** %120, align 8, !dbg !3478
  %pred_count166 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %121, i64 0, i32 2, !dbg !3479
  %122 = load i64, i64* %pred_count166, align 8, !dbg !3480
  %dec167 = add nsw i64 %122, -1, !dbg !3480
  store i64 %dec167, i64* %pred_count166, align 8, !dbg !3480
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #7, !dbg !3481
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #7, !dbg !3481
  br label %if.end168, !dbg !3482

if.end168:                                        ; preds = %cond.end, %if.then116
  %changes.5 = phi i32 [ 1, %cond.end ], [ %changes.4, %if.then116 ], !dbg !3396
  call void @llvm.dbg.value(metadata i32 %changes.5, metadata !1910, metadata !DIExpression()), !dbg !3292
  %pred_count169 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %84, i64 0, i32 2, !dbg !3483
  %123 = load i64, i64* %pred_count169, align 8, !dbg !3483
  %cmp170 = icmp eq i64 %123, 1, !dbg !3484
  br i1 %cmp170, label %if.then172, label %for.inc231, !dbg !3485

if.then172:                                       ; preds = %if.end168
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #7, !dbg !3486
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %72) #7, !dbg !3487
  call void @llvm.dbg.value(metadata i64 0, metadata !1955, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %73) #7, !dbg !3488
  %preds177 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 0, !dbg !3488
  %call178 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds177) #8, !dbg !3488
  %124 = extractvalue { i32, %struct.VEC_edge_gc** } %call178, 0, !dbg !3488
  store i32 %124, i32* %74, align 8, !dbg !3488
  %125 = extractvalue { i32, %struct.VEC_edge_gc** } %call178, 1, !dbg !3488
  store %struct.VEC_edge_gc** %125, %struct.VEC_edge_gc*** %75, align 8, !dbg !3488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %72, i8* nonnull align 8 %73, i64 16, i1 false), !dbg !3488
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %73) #7, !dbg !3488
  br label %for.cond179, !dbg !3488

for.cond179:                                      ; preds = %for.body182, %if.then172
  %total175.0 = phi i64 [ 0, %if.then172 ], [ %add184, %for.body182 ], !dbg !3388
  call void @llvm.dbg.value(metadata i64 %total175.0, metadata !1955, metadata !DIExpression()), !dbg !3388
  %126 = load i32, i32* %76, align 8, !dbg !3489
  %127 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %77, align 8, !dbg !3489
  call void @llvm.dbg.value(metadata %struct.edge_def** %e173, metadata !1951, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  %call180 = call fastcc zeroext i8 @ei_cond(i32 %126, %struct.VEC_edge_gc** %127, %struct.edge_def** nonnull %e173) #8, !dbg !3489
  %tobool181 = icmp eq i8 %call180, 0, !dbg !3488
  br i1 %tobool181, label %for.end186, label %for.body182, !dbg !3488

for.body182:                                      ; preds = %for.cond179
  %128 = load %struct.edge_def*, %struct.edge_def** %e173, align 8, !dbg !3490
  call void @llvm.dbg.value(metadata %struct.edge_def* %128, metadata !1951, metadata !DIExpression()), !dbg !3388
  %count183 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %128, i64 0, i32 9, !dbg !3491
  %129 = load i64, i64* %count183, align 8, !dbg !3491
  %add184 = add nsw i64 %total175.0, %129, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %add184, metadata !1955, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei174, metadata !1954, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei174) #8, !dbg !3489
  br label %for.cond179, !dbg !3489, !llvm.loop !3493

for.end186:                                       ; preds = %for.cond179
  %total175.0.lcssa = phi i64 [ %total175.0, %for.cond179 ], !dbg !3388
  call void @llvm.dbg.value(metadata i64 %total175.0.lcssa, metadata !1955, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %total175.0.lcssa, metadata !1955, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %total175.0.lcssa, metadata !1955, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #7, !dbg !3495
  %call189 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds177) #8, !dbg !3495
  %130 = extractvalue { i32, %struct.VEC_edge_gc** } %call189, 0, !dbg !3495
  store i32 %130, i32* %79, align 8, !dbg !3495
  %131 = extractvalue { i32, %struct.VEC_edge_gc** } %call189, 1, !dbg !3495
  store %struct.VEC_edge_gc** %131, %struct.VEC_edge_gc*** %80, align 8, !dbg !3495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %72, i8* nonnull align 8 %78, i64 16, i1 false), !dbg !3495
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #7, !dbg !3495
  br label %for.cond190, !dbg !3495

for.cond190:                                      ; preds = %for.inc208, %for.end186
  %132 = load i32, i32* %76, align 8, !dbg !3496
  %133 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %77, align 8, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.edge_def** %e173, metadata !1951, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  %call191 = call fastcc zeroext i8 @ei_cond(i32 %132, %struct.VEC_edge_gc** %133, %struct.edge_def** nonnull %e173) #8, !dbg !3496
  %tobool192 = icmp eq i8 %call191, 0, !dbg !3495
  br i1 %tobool192, label %for.cond190.for.end209_crit_edge, label %for.body193, !dbg !3495

for.cond190.for.end209_crit_edge:                 ; preds = %for.cond190
  %.pre7 = load %struct.edge_def*, %struct.edge_def** %e173, align 8, !dbg !3498
  br label %for.end209, !dbg !3495

for.body193:                                      ; preds = %for.cond190
  %134 = load %struct.edge_def*, %struct.edge_def** %e173, align 8, !dbg !3499
  call void @llvm.dbg.value(metadata %struct.edge_def* %134, metadata !1951, metadata !DIExpression()), !dbg !3388
  %aux194 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %134, i64 0, i32 3, !dbg !3499
  %135 = load i8*, i8** %aux194, align 8, !dbg !3499
  %bf.load195 = load i8, i8* %135, align 4, !dbg !3501
  %bf.clear196 = and i8 %bf.load195, 1, !dbg !3501
  %tobool198 = icmp eq i8 %bf.clear196, 0, !dbg !3499
  br i1 %tobool198, label %land.lhs.true199, label %for.inc208, !dbg !3502

land.lhs.true199:                                 ; preds = %for.body193
  call void @llvm.dbg.value(metadata %struct.edge_def* %134, metadata !1951, metadata !DIExpression()), !dbg !3388
  %bf.clear203 = and i8 %bf.load195, 4, !dbg !3503
  %tobool205 = icmp eq i8 %bf.clear203, 0, !dbg !3504
  br i1 %tobool205, label %for.end209.loopexit, label %for.inc208, !dbg !3505

for.inc208:                                       ; preds = %land.lhs.true199, %for.body193
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei174, metadata !1954, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei174) #8, !dbg !3496
  br label %for.cond190, !dbg !3496, !llvm.loop !3506

for.end209.loopexit:                              ; preds = %land.lhs.true199
  %.lcssa29 = phi %struct.edge_def* [ %134, %land.lhs.true199 ], !dbg !3499
  br label %for.end209, !dbg !3508

for.end209:                                       ; preds = %for.end209.loopexit, %for.cond190.for.end209_crit_edge
  %136 = phi %struct.edge_def* [ %.pre7, %for.cond190.for.end209_crit_edge ], [ %.lcssa29, %for.end209.loopexit ], !dbg !3498
  %count210 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 8, !dbg !3508
  %137 = load i64, i64* %count210, align 8, !dbg !3508
  %sub211 = sub nsw i64 %137, %total175.0.lcssa, !dbg !3509
  call void @llvm.dbg.value(metadata %struct.edge_def* %136, metadata !1951, metadata !DIExpression()), !dbg !3388
  %count212 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %136, i64 0, i32 9, !dbg !3510
  %138 = load i64, i64* %count212, align 8, !dbg !3510
  %add213 = add nsw i64 %sub211, %138, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %add213, metadata !1955, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %struct.edge_def* %136, metadata !1951, metadata !DIExpression()), !dbg !3388
  %tobool214 = icmp eq %struct.edge_def* %136, null, !dbg !3512
  br i1 %tobool214, label %cond.true215, label %cond.end217, !dbg !3512

cond.true215:                                     ; preds = %for.end209
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 593, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3512
  %.pre8 = load %struct.edge_def*, %struct.edge_def** %e173, align 8, !dbg !3513
  br label %cond.end217, !dbg !3512

cond.end217:                                      ; preds = %for.end209, %cond.true215
  %139 = phi %struct.edge_def* [ %136, %for.end209 ], [ %.pre8, %cond.true215 ], !dbg !3513
  call void @llvm.dbg.value(metadata %struct.edge_def* %139, metadata !1951, metadata !DIExpression()), !dbg !3388
  %aux219 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %139, i64 0, i32 3, !dbg !3513
  %140 = load i8*, i8** %aux219, align 8, !dbg !3513
  %bf.load220 = load i8, i8* %140, align 4, !dbg !3514
  %bf.set222 = or i8 %bf.load220, 1, !dbg !3514
  store i8 %bf.set222, i8* %140, align 4, !dbg !3514
  %141 = load %struct.edge_def*, %struct.edge_def** %e173, align 8, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.edge_def* %141, metadata !1951, metadata !DIExpression()), !dbg !3388
  %count223 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i64 0, i32 9, !dbg !3516
  store i64 %add213, i64* %count223, align 8, !dbg !3517
  %142 = load i64, i64* %pred_count169, align 8, !dbg !3518
  %dec225 = add nsw i64 %142, -1, !dbg !3518
  store i64 %dec225, i64* %pred_count169, align 8, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.edge_def* %141, metadata !1951, metadata !DIExpression()), !dbg !3388
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i64 0, i32 0, !dbg !3519
  %143 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3519
  %aux226 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %143, i64 0, i32 2, !dbg !3519
  %144 = bitcast i8** %aux226 to %struct.bb_info**, !dbg !3519
  %145 = load %struct.bb_info*, %struct.bb_info** %144, align 8, !dbg !3519
  %succ_count227 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %145, i64 0, i32 1, !dbg !3520
  %146 = load i64, i64* %succ_count227, align 8, !dbg !3521
  %dec228 = add nsw i64 %146, -1, !dbg !3521
  store i64 %dec228, i64* %succ_count227, align 8, !dbg !3521
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %72) #7, !dbg !3522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #7, !dbg !3522
  br label %for.inc231, !dbg !3523

for.inc231:                                       ; preds = %if.end111, %cond.end217, %if.end168
  %changes.7 = phi i32 [ %changes.4, %if.end111 ], [ 1, %cond.end217 ], [ %changes.5, %if.end168 ], !dbg !3396
  call void @llvm.dbg.value(metadata i32 %changes.7, metadata !1910, metadata !DIExpression()), !dbg !3292
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 5, !dbg !3400
  br label %for.cond59, !dbg !3400, !llvm.loop !3524

while.end:                                        ; preds = %while.cond
  %passes.0.lcssa = phi i32 [ %passes.0, %while.cond ], !dbg !3292
  call void @llvm.dbg.value(metadata i32 %passes.0.lcssa, metadata !1911, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %passes.0.lcssa, metadata !1911, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %passes.0.lcssa, metadata !1911, metadata !DIExpression()), !dbg !3292
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3526
  %tobool233 = icmp eq %struct._IO_FILE* %147, null, !dbg !3526
  br i1 %tobool233, label %if.end235, label %if.then234, !dbg !3528

if.then234:                                       ; preds = %while.end
  %148 = load i32, i32* @dump_flags, align 4, !dbg !3529
  call void @dump_flow_info(%struct._IO_FILE* nonnull %147, i32 %148) #6, !dbg !3530
  %.pre9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3531
  br label %if.end235, !dbg !3530

if.end235:                                        ; preds = %while.end, %if.then234
  %149 = phi %struct._IO_FILE* [ null, %while.end ], [ %.pre9, %if.then234 ], !dbg !3531
  %150 = load i32, i32* @total_num_passes, align 4, !dbg !3533
  %add236 = add nsw i32 %150, %passes.0.lcssa, !dbg !3533
  store i32 %add236, i32* @total_num_passes, align 4, !dbg !3533
  %tobool237 = icmp eq %struct._IO_FILE* %149, null, !dbg !3531
  br i1 %tobool237, label %if.end240, label %if.then238, !dbg !3534

if.then238:                                       ; preds = %if.end235
  %call239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 %passes.0.lcssa) #6, !dbg !3535
  br label %if.end240, !dbg !3535

if.end240:                                        ; preds = %if.end235, %if.then238
  %151 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3536
  %cfg242 = getelementptr inbounds %struct.function, %struct.function* %151, i64 0, i32 1, !dbg !3536
  %152 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg242, align 8, !dbg !3536
  %x_entry_block_ptr243 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %152, i64 0, i32 0, !dbg !3536
  %153 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr243, align 8, !dbg !3536
  br label %for.cond245, !dbg !3536

for.cond245:                                      ; preds = %for.inc263, %if.end240
  %.pre1012 = phi %struct.function* [ %151, %if.end240 ], [ %.pre10, %for.inc263 ]
  %154 = phi %struct.control_flow_graph* [ %152, %if.end240 ], [ %.pre11, %for.inc263 ], !dbg !3538
  %.pn = phi %struct.basic_block_def* [ %153, %if.end240 ], [ %bb.2, %for.inc263 ]
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3540
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !1907, metadata !DIExpression()), !dbg !3292
  %x_exit_block_ptr248 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %154, i64 0, i32 1, !dbg !3538
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr248, align 8, !dbg !3538
  %cmp249 = icmp eq %struct.basic_block_def* %bb.2, %155, !dbg !3538
  br i1 %cmp249, label %for.end265, label %for.body251, !dbg !3536

for.body251:                                      ; preds = %for.cond245
  %aux252 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 2, !dbg !3541
  %156 = bitcast i8** %aux252 to %struct.bb_info**, !dbg !3541
  %157 = load %struct.bb_info*, %struct.bb_info** %156, align 8, !dbg !3541
  %succ_count253 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %157, i64 0, i32 1, !dbg !3541
  %158 = load i64, i64* %succ_count253, align 8, !dbg !3541
  %tobool254 = icmp eq i64 %158, 0, !dbg !3541
  br i1 %tobool254, label %land.lhs.true255, label %cond.true259, !dbg !3541

land.lhs.true255:                                 ; preds = %for.body251
  %pred_count257 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %157, i64 0, i32 2, !dbg !3541
  %159 = load i64, i64* %pred_count257, align 8, !dbg !3541
  %tobool258 = icmp eq i64 %159, 0, !dbg !3541
  br i1 %tobool258, label %for.inc263, label %cond.true259, !dbg !3541

cond.true259:                                     ; preds = %land.lhs.true255, %for.body251
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 615, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3541
  %.pre10.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3538
  br label %for.inc263, !dbg !3541

for.inc263:                                       ; preds = %land.lhs.true255, %cond.true259
  %.pre10 = phi %struct.function* [ %.pre1012, %land.lhs.true255 ], [ %.pre10.pre, %cond.true259 ], !dbg !3538
  %cfg247.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre10, i64 0, i32 1, !dbg !3543
  %.pre11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg247.phi.trans.insert, align 8, !dbg !3538
  br label %for.cond245, !dbg !3538, !llvm.loop !3544

for.end265:                                       ; preds = %for.cond245
  %call266 = call fastcc zeroext i8 @is_inconsistent() #8, !dbg !3546
  call void @llvm.dbg.value(metadata i8 %call266, metadata !1915, metadata !DIExpression()), !dbg !3292
  %tobool268 = icmp eq i8 %call266, 0, !dbg !3547
  br i1 %tobool268, label %if.end282, label %if.then269, !dbg !3549

if.then269:                                       ; preds = %for.end265
  %160 = load i32, i32* @flag_profile_correction, align 4, !dbg !3550
  %tobool270 = icmp eq i32 %160, 0, !dbg !3550
  br i1 %tobool270, label %if.else280, label %if.then271, !dbg !3553

if.then271:                                       ; preds = %if.then269
  %.b = load i1, i1* @compute_branch_probabilities.informed, align 4, !dbg !3554
  br i1 %.b, label %if.end275, label %if.then274, !dbg !3557

if.then274:                                       ; preds = %if.then271
  store i1 true, i1* @compute_branch_probabilities.informed, align 4, !dbg !3558
  %161 = load i32, i32* @input_location, align 4, !dbg !3560
  call void (i32, i8*, ...) @inform(i32 %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !3561
  br label %if.end275, !dbg !3562

if.end275:                                        ; preds = %if.then271, %if.then274
  call fastcc void @correct_negative_edge_counts() #8, !dbg !3563
  call fastcc void @set_bb_counts() #8, !dbg !3564
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3565
  %tobool276 = icmp eq %struct._IO_FILE* %162, null, !dbg !3565
  br i1 %tobool276, label %if.end279, label %if.then277, !dbg !3567

if.then277:                                       ; preds = %if.end275
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3568
  br label %if.end279, !dbg !3568

if.end279:                                        ; preds = %if.end275, %if.then277
  call void @mcf_smooth_cfg() #6, !dbg !3569
  br label %if.end282, !dbg !3570

if.else280:                                       ; preds = %if.then269
  call void (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !3571
  br label %if.end282

if.end282:                                        ; preds = %for.end265, %if.end279, %if.else280
  call void @llvm.dbg.value(metadata i32 0, metadata !1908, metadata !DIExpression()), !dbg !3292
  br label %for.cond283, !dbg !3572

for.cond283:                                      ; preds = %for.body286, %if.end282
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body286 ], [ 0, %if.end282 ], !dbg !3574
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !1908, metadata !DIExpression()), !dbg !3292
  %exitcond27 = icmp eq i64 %indvars.iv25, 20, !dbg !3575
  br i1 %exitcond27, label %for.end289, label %for.body286, !dbg !3577

for.body286:                                      ; preds = %for.cond283
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i64 0, i64 %indvars.iv25, !dbg !3578
  store i32 0, i32* %arrayidx, align 4, !dbg !3579
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !3580
  call void @llvm.dbg.value(metadata i32 undef, metadata !1908, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3292
  br label %for.cond283, !dbg !3581, !llvm.loop !3582

for.end289:                                       ; preds = %for.cond283
  call void @llvm.dbg.value(metadata i32 0, metadata !1913, metadata !DIExpression()), !dbg !3292
  %163 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3584
  %cfg291 = getelementptr inbounds %struct.function, %struct.function* %163, i64 0, i32 1, !dbg !3584
  %164 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg291, align 8, !dbg !3584
  %x_entry_block_ptr292 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %164, i64 0, i32 0, !dbg !3584
  %165 = bitcast %struct.edge_def** %e297 to i8*, !dbg !3585
  %166 = bitcast %struct.edge_iterator* %ei298 to i8*, !dbg !3585
  %167 = bitcast %struct.edge_iterator* %tmp307 to i8*, !dbg !3586
  %168 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp307, i64 0, i32 0, !dbg !3586
  %169 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp307, i64 0, i32 1, !dbg !3586
  %170 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei298, i64 0, i32 0, !dbg !3588
  %171 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei298, i64 0, i32 1, !dbg !3588
  %172 = bitcast %struct.edge_iterator* %tmp373 to i8*, !dbg !3590
  %173 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp373, i64 0, i32 0, !dbg !3590
  %174 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp373, i64 0, i32 1, !dbg !3590
  %175 = bitcast %struct.edge_def** %e409 to i8*, !dbg !3592
  %176 = bitcast %struct.edge_iterator* %tmp411 to i8*, !dbg !3593
  %177 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp411, i64 0, i32 0, !dbg !3593
  %178 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp411, i64 0, i32 1, !dbg !3593
  %179 = bitcast %struct.edge_iterator* %tmp442 to i8*, !dbg !3595
  %180 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp442, i64 0, i32 0, !dbg !3595
  %181 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp442, i64 0, i32 1, !dbg !3595
  %182 = bitcast %struct.edge_iterator* %tmp459 to i8*, !dbg !3597
  %183 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp459, i64 0, i32 0, !dbg !3597
  %184 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp459, i64 0, i32 1, !dbg !3597
  %185 = bitcast %struct.edge_iterator* %tmp488 to i8*, !dbg !3601
  %186 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp488, i64 0, i32 0, !dbg !3601
  %187 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp488, i64 0, i32 1, !dbg !3601
  br label %for.cond293, !dbg !3584

for.cond293:                                      ; preds = %if.end523, %for.end289
  %num_branches.0 = phi i32 [ 0, %for.end289 ], [ %num_branches.4, %if.end523 ], !dbg !3292
  %bb.3.in = phi %struct.basic_block_def** [ %x_entry_block_ptr292, %for.end289 ], [ %next_bb525, %if.end523 ]
  %bb.3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.3.in, align 8, !dbg !3604
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !1907, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %num_branches.0, metadata !1913, metadata !DIExpression()), !dbg !3292
  %cmp294 = icmp eq %struct.basic_block_def* %bb.3, null, !dbg !3605
  br i1 %cmp294, label %for.end526, label %for.body296, !dbg !3584

for.body296:                                      ; preds = %for.cond293
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %165) #7, !dbg !3606
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %166) #7, !dbg !3607
  %count299 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 8, !dbg !3608
  %188 = load i64, i64* %count299, align 8, !dbg !3608
  %cmp300 = icmp slt i64 %188, 0, !dbg !3610
  br i1 %cmp300, label %if.then302, label %if.end306, !dbg !3611

if.then302:                                       ; preds = %for.body296
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 9, !dbg !3612
  %189 = load i32, i32* %index, align 8, !dbg !3612
  %conv304 = trunc i64 %188 to i32, !dbg !3614
  call void (i8*, ...) @error(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.25, i64 0, i64 0), i32 %189, i32 %conv304) #6, !dbg !3615
  store i64 0, i64* %count299, align 8, !dbg !3616
  br label %if.end306, !dbg !3617

if.end306:                                        ; preds = %if.then302, %for.body296
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %167) #7, !dbg !3618
  %succs308 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 1, !dbg !3618
  %call309 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs308) #8, !dbg !3618
  %190 = extractvalue { i32, %struct.VEC_edge_gc** } %call309, 0, !dbg !3618
  store i32 %190, i32* %168, align 8, !dbg !3618
  %191 = extractvalue { i32, %struct.VEC_edge_gc** } %call309, 1, !dbg !3618
  store %struct.VEC_edge_gc** %191, %struct.VEC_edge_gc*** %169, align 8, !dbg !3618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %166, i8* nonnull align 8 %167, i64 16, i1 false), !dbg !3618
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %167) #7, !dbg !3618
  br label %for.cond310, !dbg !3618

for.cond310:                                      ; preds = %for.inc368, %if.end306
  %192 = load i32, i32* %170, align 8, !dbg !3619
  %193 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %171, align 8, !dbg !3619
  call void @llvm.dbg.value(metadata %struct.edge_def** %e297, metadata !1956, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  %call311 = call fastcc zeroext i8 @ei_cond(i32 %192, %struct.VEC_edge_gc** %193, %struct.edge_def** nonnull %e297) #8, !dbg !3619
  %tobool312 = icmp eq i8 %call311, 0, !dbg !3618
  br i1 %tobool312, label %for.end369, label %for.body313, !dbg !3618

for.body313:                                      ; preds = %for.cond310
  %194 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3620
  call void @llvm.dbg.value(metadata %struct.edge_def* %194, metadata !1956, metadata !DIExpression()), !dbg !3585
  %count314 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %194, i64 0, i32 9, !dbg !3623
  %195 = load i64, i64* %count314, align 8, !dbg !3623
  %cmp315 = icmp slt i64 %195, 0, !dbg !3624
  br i1 %cmp315, label %land.lhs.true317, label %lor.lhs.false, !dbg !3625

land.lhs.true317:                                 ; preds = %for.body313
  call void @llvm.dbg.value(metadata %struct.edge_def* %194, metadata !1956, metadata !DIExpression()), !dbg !3585
  %dest318 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %194, i64 0, i32 1, !dbg !3626
  %196 = load %struct.basic_block_def*, %struct.basic_block_def** %dest318, align 8, !dbg !3626
  %197 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3627
  %cfg320 = getelementptr inbounds %struct.function, %struct.function* %197, i64 0, i32 1, !dbg !3627
  %198 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg320, align 8, !dbg !3627
  %x_exit_block_ptr321 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %198, i64 0, i32 1, !dbg !3627
  %199 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr321, align 8, !dbg !3627
  %cmp322 = icmp eq %struct.basic_block_def* %196, %199, !dbg !3628
  br i1 %cmp322, label %if.then335, label %lor.lhs.false, !dbg !3629

lor.lhs.false:                                    ; preds = %land.lhs.true317, %for.body313
  call void @llvm.dbg.value(metadata %struct.edge_def* %194, metadata !1956, metadata !DIExpression()), !dbg !3585
  %200 = load i64, i64* %count299, align 8, !dbg !3630
  %cmp326 = icmp sgt i64 %195, %200, !dbg !3631
  br i1 %cmp326, label %land.lhs.true328, label %if.end349, !dbg !3632

land.lhs.true328:                                 ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.edge_def* %194, metadata !1956, metadata !DIExpression()), !dbg !3585
  %dest329 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %194, i64 0, i32 1, !dbg !3633
  %201 = load %struct.basic_block_def*, %struct.basic_block_def** %dest329, align 8, !dbg !3633
  %202 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3634
  %cfg331 = getelementptr inbounds %struct.function, %struct.function* %202, i64 0, i32 1, !dbg !3634
  %203 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg331, align 8, !dbg !3634
  %x_exit_block_ptr332 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %203, i64 0, i32 1, !dbg !3634
  %204 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr332, align 8, !dbg !3634
  %cmp333 = icmp eq %struct.basic_block_def* %201, %204, !dbg !3635
  br i1 %cmp333, label %if.end349, label %if.then335, !dbg !3636

if.then335:                                       ; preds = %land.lhs.true328, %land.lhs.true317
  %call336 = call zeroext i8 @block_ends_with_call_p(%struct.basic_block_def* nonnull %bb.3) #6, !dbg !3637
  %tobool337 = icmp eq i8 %call336, 0, !dbg !3637
  br i1 %tobool337, label %if.then335.if.end349_crit_edge, label %if.then338, !dbg !3640

if.then335.if.end349_crit_edge:                   ; preds = %if.then335
  %.pre14 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3641
  %count350.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre14, i64 0, i32 9, !dbg !3643
  %.pre15 = load i64, i64* %count350.phi.trans.insert, align 8, !dbg !3644
  br label %if.end349, !dbg !3640

if.then338:                                       ; preds = %if.then335
  %205 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3645
  call void @llvm.dbg.value(metadata %struct.edge_def* %205, metadata !1956, metadata !DIExpression()), !dbg !3585
  %count339 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %205, i64 0, i32 9, !dbg !3646
  %206 = load i64, i64* %count339, align 8, !dbg !3646
  %cmp340 = icmp slt i64 %206, 0, !dbg !3647
  br i1 %cmp340, label %cond.end345, label %cond.false343, !dbg !3645

cond.false343:                                    ; preds = %if.then338
  %207 = load i64, i64* %count299, align 8, !dbg !3648
  br label %cond.end345, !dbg !3645

cond.end345:                                      ; preds = %if.then338, %cond.false343
  %cond346 = phi i64 [ %207, %cond.false343 ], [ 0, %if.then338 ], !dbg !3645
  call void @llvm.dbg.value(metadata %struct.edge_def* %205, metadata !1956, metadata !DIExpression()), !dbg !3585
  store i64 %cond346, i64* %count339, align 8, !dbg !3649
  br label %if.end349, !dbg !3650

if.end349:                                        ; preds = %if.then335.if.end349_crit_edge, %land.lhs.true328, %cond.end345, %lor.lhs.false
  %208 = phi i64 [ %.pre15, %if.then335.if.end349_crit_edge ], [ %195, %land.lhs.true328 ], [ %cond346, %cond.end345 ], [ %195, %lor.lhs.false ], !dbg !3644
  %209 = phi %struct.edge_def* [ %.pre14, %if.then335.if.end349_crit_edge ], [ %194, %land.lhs.true328 ], [ %205, %cond.end345 ], [ %194, %lor.lhs.false ], !dbg !3641
  call void @llvm.dbg.value(metadata %struct.edge_def* %209, metadata !1956, metadata !DIExpression()), !dbg !3585
  %cmp351 = icmp slt i64 %208, 0, !dbg !3651
  br i1 %cmp351, label %if.then358, label %lor.lhs.false353, !dbg !3652

lor.lhs.false353:                                 ; preds = %if.end349
  call void @llvm.dbg.value(metadata %struct.edge_def* %209, metadata !1956, metadata !DIExpression()), !dbg !3585
  %210 = load i64, i64* %count299, align 8, !dbg !3653
  %cmp356 = icmp sgt i64 %208, %210, !dbg !3654
  br i1 %cmp356, label %if.then358, label %for.inc368, !dbg !3655

if.then358:                                       ; preds = %lor.lhs.false353, %if.end349
  call void @llvm.dbg.value(metadata %struct.edge_def* %209, metadata !1956, metadata !DIExpression()), !dbg !3585
  %src359 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %209, i64 0, i32 0, !dbg !3656
  %211 = load %struct.basic_block_def*, %struct.basic_block_def** %src359, align 8, !dbg !3656
  %index360 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %211, i64 0, i32 9, !dbg !3658
  %212 = load i32, i32* %index360, align 8, !dbg !3658
  call void @llvm.dbg.value(metadata %struct.edge_def* %209, metadata !1956, metadata !DIExpression()), !dbg !3585
  %dest361 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %209, i64 0, i32 1, !dbg !3659
  %213 = load %struct.basic_block_def*, %struct.basic_block_def** %dest361, align 8, !dbg !3659
  %index362 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %213, i64 0, i32 9, !dbg !3660
  %214 = load i32, i32* %index362, align 8, !dbg !3660
  call void @llvm.dbg.value(metadata %struct.edge_def* %209, metadata !1956, metadata !DIExpression()), !dbg !3585
  %conv364 = trunc i64 %208 to i32, !dbg !3661
  call void (i8*, ...) @error(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i64 0, i64 0), i32 %212, i32 %214, i32 %conv364) #6, !dbg !3662
  %215 = load i64, i64* %count299, align 8, !dbg !3663
  %div = sdiv i64 %215, 2, !dbg !3664
  %216 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3665
  call void @llvm.dbg.value(metadata %struct.edge_def* %216, metadata !1956, metadata !DIExpression()), !dbg !3585
  %count366 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %216, i64 0, i32 9, !dbg !3666
  store i64 %div, i64* %count366, align 8, !dbg !3667
  br label %for.inc368, !dbg !3668

for.inc368:                                       ; preds = %lor.lhs.false353, %if.then358
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei298, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei298) #8, !dbg !3619
  br label %for.cond310, !dbg !3619, !llvm.loop !3669

for.end369:                                       ; preds = %for.cond310
  %217 = load i64, i64* %count299, align 8, !dbg !3671
  %tobool371 = icmp eq i64 %217, 0, !dbg !3672
  br i1 %tobool371, label %if.else435, label %if.then372, !dbg !3673

if.then372:                                       ; preds = %for.end369
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %172) #7, !dbg !3674
  %call375 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs308) #8, !dbg !3674
  %218 = extractvalue { i32, %struct.VEC_edge_gc** } %call375, 0, !dbg !3674
  store i32 %218, i32* %173, align 8, !dbg !3674
  %219 = extractvalue { i32, %struct.VEC_edge_gc** } %call375, 1, !dbg !3674
  store %struct.VEC_edge_gc** %219, %struct.VEC_edge_gc*** %174, align 8, !dbg !3674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %166, i8* nonnull align 8 %172, i64 16, i1 false), !dbg !3674
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %172) #7, !dbg !3674
  br label %for.cond376, !dbg !3674

for.cond376:                                      ; preds = %for.body379, %if.then372
  %220 = load i32, i32* %170, align 8, !dbg !3675
  %221 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %171, align 8, !dbg !3675
  call void @llvm.dbg.value(metadata %struct.edge_def** %e297, metadata !1956, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  %call377 = call fastcc zeroext i8 @ei_cond(i32 %220, %struct.VEC_edge_gc** %221, %struct.edge_def** nonnull %e297) #8, !dbg !3675
  %tobool378 = icmp eq i8 %call377, 0, !dbg !3674
  br i1 %tobool378, label %for.end389, label %for.body379, !dbg !3674

for.body379:                                      ; preds = %for.cond376
  %222 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.edge_def* %222, metadata !1956, metadata !DIExpression()), !dbg !3585
  %count380 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %222, i64 0, i32 9, !dbg !3678
  %223 = load i64, i64* %count380, align 8, !dbg !3678
  %mul381 = mul nsw i64 %223, 10000, !dbg !3679
  %224 = load i64, i64* %count299, align 8, !dbg !3680
  %div383 = sdiv i64 %224, 2, !dbg !3681
  %add384 = add nsw i64 %mul381, %div383, !dbg !3682
  %div386 = sdiv i64 %add384, %224, !dbg !3683
  %conv387 = trunc i64 %div386 to i32, !dbg !3684
  call void @llvm.dbg.value(metadata %struct.edge_def* %222, metadata !1956, metadata !DIExpression()), !dbg !3585
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %222, i64 0, i32 8, !dbg !3685
  store i32 %conv387, i32* %probability, align 4, !dbg !3686
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei298, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei298) #8, !dbg !3675
  br label %for.cond376, !dbg !3675, !llvm.loop !3687

for.end389:                                       ; preds = %for.cond376
  %index390 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 9, !dbg !3689
  %225 = load i32, i32* %index390, align 8, !dbg !3689
  %cmp391 = icmp sgt i32 %225, 1, !dbg !3690
  br i1 %cmp391, label %land.lhs.true393, label %if.end523, !dbg !3691

land.lhs.true393:                                 ; preds = %for.end389
  %call394 = call zeroext i8 @block_ends_with_condjump_p(%struct.basic_block_def* nonnull %bb.3) #6, !dbg !3692
  %tobool396 = icmp eq i8 %call394, 0, !dbg !3692
  br i1 %tobool396, label %if.end523, label %land.lhs.true397, !dbg !3693

land.lhs.true397:                                 ; preds = %land.lhs.true393
  %226 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs308, align 8, !dbg !3694
  %tobool399 = icmp eq %struct.VEC_edge_gc* %226, null, !dbg !3694
  br i1 %tobool399, label %cond.end403, label %cond.true400, !dbg !3694

cond.true400:                                     ; preds = %land.lhs.true397
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %226, i64 0, i32 0, !dbg !3694
  br label %cond.end403, !dbg !3694

cond.end403:                                      ; preds = %land.lhs.true397, %cond.true400
  %cond404 = phi %struct.VEC_edge_base* [ %base, %cond.true400 ], [ null, %land.lhs.true397 ], !dbg !3694
  %call405 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond404) #8, !dbg !3694
  %cmp406 = icmp ugt i32 %call405, 1, !dbg !3695
  br i1 %cmp406, label %if.then408, label %if.end523, !dbg !3696

if.then408:                                       ; preds = %cond.end403
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %175) #7, !dbg !3697
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %176) #7, !dbg !3698
  %call413 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs308) #8, !dbg !3698
  %227 = extractvalue { i32, %struct.VEC_edge_gc** } %call413, 0, !dbg !3698
  store i32 %227, i32* %177, align 8, !dbg !3698
  %228 = extractvalue { i32, %struct.VEC_edge_gc** } %call413, 1, !dbg !3698
  store %struct.VEC_edge_gc** %228, %struct.VEC_edge_gc*** %178, align 8, !dbg !3698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %166, i8* nonnull align 8 %176, i64 16, i1 false), !dbg !3698
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %176) #7, !dbg !3698
  br label %for.cond414, !dbg !3698

for.cond414:                                      ; preds = %for.inc421, %if.then408
  %229 = load i32, i32* %170, align 8, !dbg !3699
  %230 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %171, align 8, !dbg !3699
  call void @llvm.dbg.value(metadata %struct.edge_def** %e409, metadata !1966, metadata !DIExpression(DW_OP_deref)), !dbg !3592
  %call415 = call fastcc zeroext i8 @ei_cond(i32 %229, %struct.VEC_edge_gc** %230, %struct.edge_def** nonnull %e409) #8, !dbg !3699
  %tobool416 = icmp eq i8 %call415, 0, !dbg !3698
  br i1 %tobool416, label %for.cond414.for.end422_crit_edge, label %for.body417, !dbg !3698

for.cond414.for.end422_crit_edge:                 ; preds = %for.cond414
  %.pre16 = load %struct.edge_def*, %struct.edge_def** %e409, align 8, !dbg !3701
  br label %for.end422, !dbg !3698

for.body417:                                      ; preds = %for.cond414
  %231 = load %struct.edge_def*, %struct.edge_def** %e409, align 8, !dbg !3702
  call void @llvm.dbg.value(metadata %struct.edge_def* %231, metadata !1966, metadata !DIExpression()), !dbg !3592
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %231, i64 0, i32 7, !dbg !3704
  %232 = load i32, i32* %flags, align 8, !dbg !3704
  %and = and i32 %232, 17, !dbg !3705
  %tobool418 = icmp eq i32 %and, 0, !dbg !3705
  br i1 %tobool418, label %for.end422.loopexit, label %for.inc421, !dbg !3706

for.inc421:                                       ; preds = %for.body417
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei298, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei298) #8, !dbg !3699
  br label %for.cond414, !dbg !3699, !llvm.loop !3707

for.end422.loopexit:                              ; preds = %for.body417
  %.lcssa = phi %struct.edge_def* [ %231, %for.body417 ], !dbg !3702
  br label %for.end422, !dbg !3709

for.end422:                                       ; preds = %for.end422.loopexit, %for.cond414.for.end422_crit_edge
  %233 = phi %struct.edge_def* [ %.pre16, %for.cond414.for.end422_crit_edge ], [ %.lcssa, %for.end422.loopexit ], !dbg !3701
  call void @llvm.dbg.value(metadata %struct.edge_def* %233, metadata !1966, metadata !DIExpression()), !dbg !3592
  %probability423 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %233, i64 0, i32 8, !dbg !3709
  %234 = load i32, i32* %probability423, align 4, !dbg !3709
  call void @llvm.dbg.value(metadata i32 %234, metadata !1961, metadata !DIExpression()), !dbg !3592
  %div425 = sdiv i32 %234, 500, !dbg !3710
  call void @llvm.dbg.value(metadata i32 %div425, metadata !1967, metadata !DIExpression()), !dbg !3592
  %.off = add i32 %234, -10000, !dbg !3711
  %235 = icmp ult i32 %.off, 500, !dbg !3711
  %spec.select = select i1 %235, i32 19, i32 %div425, !dbg !3713
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1967, metadata !DIExpression()), !dbg !3592
  %idxprom430 = sext i32 %spec.select to i64, !dbg !3714
  %arrayidx431 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i64 0, i64 %idxprom430, !dbg !3714
  %236 = load i32, i32* %arrayidx431, align 4, !dbg !3715
  %inc432 = add nsw i32 %236, 1, !dbg !3715
  store i32 %inc432, i32* %arrayidx431, align 4, !dbg !3715
  %inc433 = add nsw i32 %num_branches.0, 1, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %inc433, metadata !1913, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %175) #7, !dbg !3717
  br label %if.end523, !dbg !3718

if.else435:                                       ; preds = %for.end369
  %237 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3719
  %cfg437 = getelementptr inbounds %struct.function, %struct.function* %237, i64 0, i32 1, !dbg !3719
  %238 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg437, align 8, !dbg !3719
  %x_profile_status = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %238, i64 0, i32 7, !dbg !3719
  %239 = load i32, i32* %x_profile_status, align 8, !dbg !3719
  %cmp438 = icmp eq i32 %239, 0, !dbg !3720
  br i1 %cmp438, label %if.then440, label %if.end523, !dbg !3721

if.then440:                                       ; preds = %if.else435
  call void @llvm.dbg.value(metadata i32 0, metadata !1968, metadata !DIExpression()), !dbg !3722
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %179) #7, !dbg !3723
  %call444 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs308) #8, !dbg !3723
  %240 = extractvalue { i32, %struct.VEC_edge_gc** } %call444, 0, !dbg !3723
  store i32 %240, i32* %180, align 8, !dbg !3723
  %241 = extractvalue { i32, %struct.VEC_edge_gc** } %call444, 1, !dbg !3723
  store %struct.VEC_edge_gc** %241, %struct.VEC_edge_gc*** %181, align 8, !dbg !3723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %166, i8* nonnull align 8 %179, i64 16, i1 false), !dbg !3723
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %179) #7, !dbg !3723
  br label %for.cond445, !dbg !3723

for.cond445:                                      ; preds = %for.body448, %if.then440
  %total441.0 = phi i32 [ 0, %if.then440 ], [ %spec.select1, %for.body448 ], !dbg !3724
  call void @llvm.dbg.value(metadata i32 %total441.0, metadata !1968, metadata !DIExpression()), !dbg !3722
  %242 = load i32, i32* %170, align 8, !dbg !3725
  %243 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %171, align 8, !dbg !3725
  call void @llvm.dbg.value(metadata %struct.edge_def** %e297, metadata !1956, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  %call446 = call fastcc zeroext i8 @ei_cond(i32 %242, %struct.VEC_edge_gc** %243, %struct.edge_def** nonnull %e297) #8, !dbg !3725
  %tobool447 = icmp eq i8 %call446, 0, !dbg !3723
  br i1 %tobool447, label %for.end456, label %for.body448, !dbg !3723

for.body448:                                      ; preds = %for.cond445
  %244 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3727
  call void @llvm.dbg.value(metadata %struct.edge_def* %244, metadata !1956, metadata !DIExpression()), !dbg !3585
  %flags449 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %244, i64 0, i32 7, !dbg !3729
  %245 = load i32, i32* %flags449, align 8, !dbg !3729
  %and450 = and i32 %245, 30, !dbg !3730
  %tobool451 = icmp eq i32 %and450, 0, !dbg !3730
  %inc453 = zext i1 %tobool451 to i32, !dbg !3731
  %spec.select1 = add nuw nsw i32 %total441.0, %inc453, !dbg !3731
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !1968, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei298, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei298) #8, !dbg !3725
  br label %for.cond445, !dbg !3725, !llvm.loop !3732

for.end456:                                       ; preds = %for.cond445
  %total441.0.lcssa = phi i32 [ %total441.0, %for.cond445 ], !dbg !3724
  call void @llvm.dbg.value(metadata i32 %total441.0.lcssa, metadata !1968, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 %total441.0.lcssa, metadata !1968, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 %total441.0.lcssa, metadata !1968, metadata !DIExpression()), !dbg !3722
  %tobool457 = icmp eq i32 %total441.0.lcssa, 0, !dbg !3734
  br i1 %tobool457, label %if.else477, label %if.then458, !dbg !3735

if.then458:                                       ; preds = %for.end456
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %182) #7, !dbg !3736
  %call461 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs308) #8, !dbg !3736
  %246 = extractvalue { i32, %struct.VEC_edge_gc** } %call461, 0, !dbg !3736
  store i32 %246, i32* %183, align 8, !dbg !3736
  %247 = extractvalue { i32, %struct.VEC_edge_gc** } %call461, 1, !dbg !3736
  store %struct.VEC_edge_gc** %247, %struct.VEC_edge_gc*** %184, align 8, !dbg !3736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %166, i8* nonnull align 8 %182, i64 16, i1 false), !dbg !3736
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %182) #7, !dbg !3736
  br label %for.cond462, !dbg !3736

for.cond462:                                      ; preds = %for.inc475, %if.then458
  %248 = load i32, i32* %170, align 8, !dbg !3737
  %249 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %171, align 8, !dbg !3737
  call void @llvm.dbg.value(metadata %struct.edge_def** %e297, metadata !1956, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  %call463 = call fastcc zeroext i8 @ei_cond(i32 %248, %struct.VEC_edge_gc** %249, %struct.edge_def** nonnull %e297) #8, !dbg !3737
  %tobool464 = icmp eq i8 %call463, 0, !dbg !3736
  br i1 %tobool464, label %if.end499.loopexit3, label %for.body465, !dbg !3736

for.body465:                                      ; preds = %for.cond462
  %250 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3739
  call void @llvm.dbg.value(metadata %struct.edge_def* %250, metadata !1956, metadata !DIExpression()), !dbg !3585
  %flags466 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %250, i64 0, i32 7, !dbg !3741
  %251 = load i32, i32* %flags466, align 8, !dbg !3741
  %and467 = and i32 %251, 30, !dbg !3742
  %tobool468 = icmp eq i32 %and467, 0, !dbg !3742
  br i1 %tobool468, label %if.then469, label %if.else472, !dbg !3743

if.then469:                                       ; preds = %for.body465
  %div470 = udiv i32 10000, %total441.0.lcssa, !dbg !3744
  call void @llvm.dbg.value(metadata %struct.edge_def* %250, metadata !1956, metadata !DIExpression()), !dbg !3585
  %probability471 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %250, i64 0, i32 8, !dbg !3745
  store i32 %div470, i32* %probability471, align 4, !dbg !3746
  br label %for.inc475, !dbg !3747

if.else472:                                       ; preds = %for.body465
  call void @llvm.dbg.value(metadata %struct.edge_def* %250, metadata !1956, metadata !DIExpression()), !dbg !3585
  %probability473 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %250, i64 0, i32 8, !dbg !3748
  store i32 0, i32* %probability473, align 4, !dbg !3749
  br label %for.inc475

for.inc475:                                       ; preds = %if.then469, %if.else472
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei298, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei298) #8, !dbg !3737
  br label %for.cond462, !dbg !3737, !llvm.loop !3750

if.else477:                                       ; preds = %for.end456
  %252 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs308, align 8, !dbg !3752
  %tobool479 = icmp eq %struct.VEC_edge_gc* %252, null, !dbg !3752
  br i1 %tobool479, label %cond.end484, label %cond.true480, !dbg !3752

cond.true480:                                     ; preds = %if.else477
  %base482 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %252, i64 0, i32 0, !dbg !3752
  br label %cond.end484, !dbg !3752

cond.end484:                                      ; preds = %if.else477, %cond.true480
  %cond485 = phi %struct.VEC_edge_base* [ %base482, %cond.true480 ], [ null, %if.else477 ], !dbg !3752
  %call486 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond485) #8, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %call486, metadata !1968, metadata !DIExpression()), !dbg !3722
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %185) #7, !dbg !3753
  %call490 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs308) #8, !dbg !3753
  %253 = extractvalue { i32, %struct.VEC_edge_gc** } %call490, 0, !dbg !3753
  store i32 %253, i32* %186, align 8, !dbg !3753
  %254 = extractvalue { i32, %struct.VEC_edge_gc** } %call490, 1, !dbg !3753
  store %struct.VEC_edge_gc** %254, %struct.VEC_edge_gc*** %187, align 8, !dbg !3753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %166, i8* nonnull align 8 %185, i64 16, i1 false), !dbg !3753
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %185) #7, !dbg !3753
  br label %for.cond491, !dbg !3753

for.cond491:                                      ; preds = %for.body494, %cond.end484
  %255 = load i32, i32* %170, align 8, !dbg !3754
  %256 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %171, align 8, !dbg !3754
  call void @llvm.dbg.value(metadata %struct.edge_def** %e297, metadata !1956, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  %call492 = call fastcc zeroext i8 @ei_cond(i32 %255, %struct.VEC_edge_gc** %256, %struct.edge_def** nonnull %e297) #8, !dbg !3754
  %tobool493 = icmp eq i8 %call492, 0, !dbg !3753
  br i1 %tobool493, label %if.end499.loopexit, label %for.body494, !dbg !3753

for.body494:                                      ; preds = %for.cond491
  %div495 = sdiv i32 10000, %call486, !dbg !3756
  %257 = load %struct.edge_def*, %struct.edge_def** %e297, align 8, !dbg !3757
  call void @llvm.dbg.value(metadata %struct.edge_def* %257, metadata !1956, metadata !DIExpression()), !dbg !3585
  %probability496 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %257, i64 0, i32 8, !dbg !3758
  store i32 %div495, i32* %probability496, align 4, !dbg !3759
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei298, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei298) #8, !dbg !3754
  br label %for.cond491, !dbg !3754, !llvm.loop !3760

if.end499.loopexit:                               ; preds = %for.cond491
  br label %if.end499, !dbg !3762

if.end499.loopexit3:                              ; preds = %for.cond462
  br label %if.end499, !dbg !3762

if.end499:                                        ; preds = %if.end499.loopexit3, %if.end499.loopexit
  %index500 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 9, !dbg !3762
  %258 = load i32, i32* %index500, align 8, !dbg !3762
  %cmp501 = icmp sgt i32 %258, 1, !dbg !3764
  br i1 %cmp501, label %land.lhs.true503, label %if.end523, !dbg !3765

land.lhs.true503:                                 ; preds = %if.end499
  %call504 = call zeroext i8 @block_ends_with_condjump_p(%struct.basic_block_def* nonnull %bb.3) #6, !dbg !3766
  %tobool506 = icmp eq i8 %call504, 0, !dbg !3766
  br i1 %tobool506, label %if.end523, label %land.lhs.true507, !dbg !3767

land.lhs.true507:                                 ; preds = %land.lhs.true503
  %259 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs308, align 8, !dbg !3768
  %tobool509 = icmp eq %struct.VEC_edge_gc* %259, null, !dbg !3768
  br i1 %tobool509, label %cond.end514, label %cond.true510, !dbg !3768

cond.true510:                                     ; preds = %land.lhs.true507
  %base512 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %259, i64 0, i32 0, !dbg !3768
  br label %cond.end514, !dbg !3768

cond.end514:                                      ; preds = %land.lhs.true507, %cond.true510
  %cond515 = phi %struct.VEC_edge_base* [ %base512, %cond.true510 ], [ null, %land.lhs.true507 ], !dbg !3768
  %call516 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond515) #8, !dbg !3768
  %cmp517 = icmp ugt i32 %call516, 1, !dbg !3769
  %inc520 = zext i1 %cmp517 to i32, !dbg !3770
  %spec.select2 = add nsw i32 %num_branches.0, %inc520, !dbg !3770
  br label %if.end523, !dbg !3770

if.end523:                                        ; preds = %land.lhs.true393, %land.lhs.true503, %cond.end514, %if.else435, %if.end499, %for.end389, %cond.end403, %for.end422
  %num_branches.4 = phi i32 [ %inc433, %for.end422 ], [ %num_branches.0, %cond.end403 ], [ %num_branches.0, %land.lhs.true393 ], [ %num_branches.0, %for.end389 ], [ %num_branches.0, %if.else435 ], [ %num_branches.0, %land.lhs.true503 ], [ %num_branches.0, %if.end499 ], [ %spec.select2, %cond.end514 ], !dbg !3771
  call void @llvm.dbg.value(metadata i32 %num_branches.4, metadata !1913, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %166) #7, !dbg !3772
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %165) #7, !dbg !3772
  %next_bb525 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 6, !dbg !3605
  br label %for.cond293, !dbg !3605, !llvm.loop !3773

for.end526:                                       ; preds = %for.cond293
  %num_branches.0.lcssa = phi i32 [ %num_branches.0, %for.cond293 ], !dbg !3292
  call void @llvm.dbg.value(metadata i32 %num_branches.0.lcssa, metadata !1913, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %num_branches.0.lcssa, metadata !1913, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %num_branches.0.lcssa, metadata !1913, metadata !DIExpression()), !dbg !3292
  %call527 = call i32 @counts_to_freqs() #6, !dbg !3775
  %260 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3776
  %cfg529 = getelementptr inbounds %struct.function, %struct.function* %260, i64 0, i32 1, !dbg !3776
  %261 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg529, align 8, !dbg !3776
  %x_profile_status530 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %261, i64 0, i32 7, !dbg !3776
  store i32 2, i32* %x_profile_status530, align 8, !dbg !3777
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3778
  %tobool531 = icmp eq %struct._IO_FILE* %262, null, !dbg !3778
  br i1 %tobool531, label %if.end571, label %if.then532, !dbg !3780

if.then532:                                       ; preds = %for.end526
  %call533 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %262, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 %num_branches.0.lcssa) #6, !dbg !3781
  %tobool534 = icmp eq i32 %num_branches.0.lcssa, 0, !dbg !3783
  br i1 %tobool534, label %if.end555, label %for.cond536.preheader, !dbg !3785

for.cond536.preheader:                            ; preds = %if.then532
  br label %for.cond536, !dbg !3786

for.cond536:                                      ; preds = %for.cond536.preheader, %for.body539
  %indvars.iv19 = phi i64 [ 0, %for.cond536.preheader ], [ %indvars.iv.next20, %for.body539 ], !dbg !3788
  %i.1 = phi i32 [ 0, %for.cond536.preheader ], [ %inc553, %for.body539 ], !dbg !3788
  call void @llvm.dbg.value(metadata i64 %indvars.iv19, metadata !1908, metadata !DIExpression()), !dbg !3292
  %exitcond24 = icmp eq i64 %indvars.iv19, 10, !dbg !3789
  br i1 %exitcond24, label %if.end555.loopexit, label %for.body539, !dbg !3786

for.body539:                                      ; preds = %for.cond536
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3791
  %arrayidx541 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i64 0, i64 %indvars.iv19, !dbg !3792
  %264 = load i32, i32* %arrayidx541, align 4, !dbg !3792
  %265 = sub nuw nsw i64 19, %indvars.iv19, !dbg !3793
  %arrayidx544 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i64 0, i64 %265, !dbg !3794
  %266 = load i32, i32* %arrayidx544, align 4, !dbg !3794
  %add545 = add nsw i32 %264, %266, !dbg !3795
  %mul546 = mul nsw i32 %add545, 100, !dbg !3796
  %div547 = sdiv i32 %mul546, %num_branches.0.lcssa, !dbg !3797
  %mul548 = mul nuw nsw i32 %i.1, 5, !dbg !3798
  %add550 = add nuw nsw i32 %mul548, 5, !dbg !3799
  %267 = trunc i64 %indvars.iv19 to i32, !dbg !3800
  %268 = mul i32 %267, 5, !dbg !3800
  %call551 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %263, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %div547, i32 %268, i32 %add550) #6, !dbg !3800
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !3801
  %inc553 = add nuw nsw i32 %i.1, 1, !dbg !3801
  call void @llvm.dbg.value(metadata i32 %inc553, metadata !1908, metadata !DIExpression()), !dbg !3292
  br label %for.cond536, !dbg !3802, !llvm.loop !3803

if.end555.loopexit:                               ; preds = %for.cond536
  br label %if.end555, !dbg !3805

if.end555:                                        ; preds = %if.end555.loopexit, %if.then532
  %269 = load i32, i32* @total_num_branches, align 4, !dbg !3805
  %add556 = add nsw i32 %269, %num_branches.0.lcssa, !dbg !3805
  store i32 %add556, i32* @total_num_branches, align 4, !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !1908, metadata !DIExpression()), !dbg !3292
  br label %for.cond557, !dbg !3806

for.cond557:                                      ; preds = %for.body560, %if.end555
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body560 ], [ 0, %if.end555 ], !dbg !3808
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1908, metadata !DIExpression()), !dbg !3292
  %exitcond = icmp eq i64 %indvars.iv, 20, !dbg !3809
  br i1 %exitcond, label %for.end568, label %for.body560, !dbg !3811

for.body560:                                      ; preds = %for.cond557
  %arrayidx562 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i64 0, i64 %indvars.iv, !dbg !3812
  %270 = load i32, i32* %arrayidx562, align 4, !dbg !3812
  %arrayidx564 = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i64 0, i64 %indvars.iv, !dbg !3813
  %271 = load i32, i32* %arrayidx564, align 4, !dbg !3814
  %add565 = add nsw i32 %271, %270, !dbg !3814
  store i32 %add565, i32* %arrayidx564, align 4, !dbg !3814
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3815
  call void @llvm.dbg.value(metadata i32 undef, metadata !1908, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3292
  br label %for.cond557, !dbg !3816, !llvm.loop !3817

for.end568:                                       ; preds = %for.cond557
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3819
  %call569 = call i32 @fputc(i32 10, %struct._IO_FILE* %272) #6, !dbg !3820
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3821
  %call570 = call i32 @fputc(i32 10, %struct._IO_FILE* %273) #6, !dbg !3822
  br label %if.end571, !dbg !3823

if.end571:                                        ; preds = %for.end526, %for.end568
  call void @free_aux_for_blocks() #6, !dbg !3824
  br label %cleanup, !dbg !3825

cleanup:                                          ; preds = %entry, %if.end571
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7, !dbg !3825
  ret void, !dbg !3825
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_value_histograms(%struct.VEC_histogram_value_heap* %values) unnamed_addr #5 !dbg !3826 {
entry:
  %n_histogram_counters = alloca [7 x i32], align 16
  %histogram_counts = alloca [7 x i64*], align 16
  %act_count = alloca [7 x i64*], align 16
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap* %values, metadata !3830, metadata !DIExpression()), !dbg !3852
  %0 = bitcast [7 x i32]* %n_histogram_counters to i8*, !dbg !3853
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #7, !dbg !3853
  call void @llvm.dbg.declare(metadata [7 x i32]* %n_histogram_counters, metadata !3835, metadata !DIExpression()), !dbg !3854
  %1 = bitcast [7 x i64*]* %histogram_counts to i8*, !dbg !3855
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #7, !dbg !3855
  call void @llvm.dbg.declare(metadata [7 x i64*]* %histogram_counts, metadata !3839, metadata !DIExpression()), !dbg !3856
  %2 = bitcast [7 x i64*]* %act_count to i8*, !dbg !3857
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #7, !dbg !3857
  call void @llvm.dbg.declare(metadata [7 x i64*]* %act_count, metadata !3841, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32 0, metadata !3833, metadata !DIExpression()), !dbg !3852
  br label %for.cond, !dbg !3859

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body ], [ 0, %entry ], !dbg !3861
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3833, metadata !DIExpression()), !dbg !3852
  %exitcond5 = icmp eq i64 %indvars.iv3, 7, !dbg !3862
  br i1 %exitcond5, label %for.cond1.preheader, label %for.body, !dbg !3864

for.cond1.preheader:                              ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %values, i64 0, i32 0, !dbg !3865
  br label %for.cond1, !dbg !3866

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %n_histogram_counters, i64 0, i64 %indvars.iv3, !dbg !3867
  store i32 0, i32* %arrayidx, align 4, !dbg !3868
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3869
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3852
  br label %for.cond, !dbg !3870, !llvm.loop !3871

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %i.0 = phi i32 [ %inc14, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !3873
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3831, metadata !DIExpression()), !dbg !3852
  %call = tail call fastcc i32 @VEC_histogram_value_base_length(%struct.VEC_histogram_value_base* %base) #8, !dbg !3874
  %cmp2 = icmp ult i32 %i.0, %call, !dbg !3875
  br i1 %cmp2, label %for.body3, label %for.cond16.preheader, !dbg !3866

for.cond16.preheader:                             ; preds = %for.cond1
  br label %for.cond16, !dbg !3876

for.body3:                                        ; preds = %for.cond1
  %call10 = tail call fastcc %struct.histogram_value_t* @VEC_histogram_value_base_index(%struct.VEC_histogram_value_base* %base, i32 %i.0) #8, !dbg !3878
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call10, metadata !3843, metadata !DIExpression()), !dbg !3879
  %n_counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call10, i64 0, i32 2, !dbg !3880
  %3 = load i32, i32* %n_counters, align 4, !dbg !3880
  %type = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call10, i64 0, i32 1, !dbg !3881
  %4 = load i32, i32* %type, align 8, !dbg !3881
  %idxprom11 = sext i32 %4 to i64, !dbg !3882
  %arrayidx12 = getelementptr inbounds [7 x i32], [7 x i32]* %n_histogram_counters, i64 0, i64 %idxprom11, !dbg !3882
  %5 = load i32, i32* %arrayidx12, align 4, !dbg !3883
  %add = add i32 %5, %3, !dbg !3883
  store i32 %add, i32* %arrayidx12, align 4, !dbg !3883
  %inc14 = add i32 %i.0, 1, !dbg !3884
  call void @llvm.dbg.value(metadata i32 %inc14, metadata !3831, metadata !DIExpression()), !dbg !3852
  br label %for.cond1, !dbg !3885, !llvm.loop !3886

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc39
  %any.0 = phi i32 [ %any.2, %for.inc39 ], [ 0, %for.cond16.preheader ], !dbg !3852
  %t.1 = phi i32 [ %inc40.pre-phi, %for.inc39 ], [ 0, %for.cond16.preheader ], !dbg !3888
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !3833, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i32 %any.0, metadata !3834, metadata !DIExpression()), !dbg !3852
  %cmp17 = icmp ult i32 %t.1, 7, !dbg !3889
  br i1 %cmp17, label %for.body18, label %for.end41, !dbg !3876

for.body18:                                       ; preds = %for.cond16
  %idxprom19 = zext i32 %t.1 to i64, !dbg !3891
  %arrayidx20 = getelementptr inbounds [7 x i32], [7 x i32]* %n_histogram_counters, i64 0, i64 %idxprom19, !dbg !3891
  %6 = load i32, i32* %arrayidx20, align 4, !dbg !3891
  %tobool21 = icmp eq i32 %6, 0, !dbg !3891
  br i1 %tobool21, label %if.then, label %if.end, !dbg !3894

if.then:                                          ; preds = %for.body18
  %arrayidx23 = getelementptr inbounds [7 x i64*], [7 x i64*]* %histogram_counts, i64 0, i64 %idxprom19, !dbg !3895
  store i64* null, i64** %arrayidx23, align 8, !dbg !3897
  %.pre = add i32 %t.1, 1, !dbg !3898
  br label %for.inc39, !dbg !3899

if.end:                                           ; preds = %for.body18
  %add24 = add i32 %t.1, 1, !dbg !3900
  %call27 = tail call i64* @get_coverage_counts(i32 %add24, i32 %6, %struct.gcov_ctr_summary** null) #6, !dbg !3901
  %arrayidx29 = getelementptr inbounds [7 x i64*], [7 x i64*]* %histogram_counts, i64 0, i64 %idxprom19, !dbg !3902
  store i64* %call27, i64** %arrayidx29, align 8, !dbg !3903
  %tobool32 = icmp eq i64* %call27, null, !dbg !3904
  %spec.select = select i1 %tobool32, i32 %any.0, i32 1, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3834, metadata !DIExpression()), !dbg !3852
  %7 = ptrtoint i64* %call27 to i64, !dbg !3907
  %arrayidx38 = getelementptr inbounds [7 x i64*], [7 x i64*]* %act_count, i64 0, i64 %idxprom19, !dbg !3908
  %8 = bitcast i64** %arrayidx38 to i64*, !dbg !3909
  store i64 %7, i64* %8, align 8, !dbg !3909
  br label %for.inc39, !dbg !3910

for.inc39:                                        ; preds = %if.end, %if.then
  %inc40.pre-phi = phi i32 [ %add24, %if.end ], [ %.pre, %if.then ], !dbg !3898
  %any.2 = phi i32 [ %spec.select, %if.end ], [ %any.0, %if.then ], !dbg !3852
  call void @llvm.dbg.value(metadata i32 %any.2, metadata !3834, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i32 %inc40.pre-phi, metadata !3833, metadata !DIExpression()), !dbg !3852
  br label %for.cond16, !dbg !3911, !llvm.loop !3912

for.end41:                                        ; preds = %for.cond16
  %any.0.lcssa = phi i32 [ %any.0, %for.cond16 ], !dbg !3852
  call void @llvm.dbg.value(metadata i32 %any.0.lcssa, metadata !3834, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i32 %any.0.lcssa, metadata !3834, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i32 %any.0.lcssa, metadata !3834, metadata !DIExpression()), !dbg !3852
  %tobool42 = icmp eq i32 %any.0.lcssa, 0, !dbg !3914
  br i1 %tobool42, label %cleanup, label %for.cond45.preheader, !dbg !3916

for.cond45.preheader:                             ; preds = %for.end41
  br label %for.cond45, !dbg !3917

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc88
  %i.1 = phi i32 [ %inc89, %for.inc88 ], [ 0, %for.cond45.preheader ], !dbg !3918
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3831, metadata !DIExpression()), !dbg !3852
  %call52 = tail call fastcc i32 @VEC_histogram_value_base_length(%struct.VEC_histogram_value_base* %base) #8, !dbg !3919
  %cmp53 = icmp ult i32 %i.1, %call52, !dbg !3920
  br i1 %cmp53, label %for.body54, label %for.cond91.preheader, !dbg !3917

for.cond91.preheader:                             ; preds = %for.cond45
  br label %for.cond91, !dbg !3921

for.body54:                                       ; preds = %for.cond45
  %call62 = tail call fastcc %struct.histogram_value_t* @VEC_histogram_value_base_index(%struct.VEC_histogram_value_base* %base, i32 %i.1) #8, !dbg !3923
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call62, metadata !3847, metadata !DIExpression()), !dbg !3924
  %stmt63 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call62, i64 0, i32 0, i32 1, !dbg !3925
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt63, align 8, !dbg !3925
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %9, metadata !3851, metadata !DIExpression()), !dbg !3924
  %type64 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call62, i64 0, i32 1, !dbg !3926
  %10 = load i32, i32* %type64, align 8, !dbg !3926
  call void @llvm.dbg.value(metadata i32 %10, metadata !3833, metadata !DIExpression()), !dbg !3852
  %idxprom65 = zext i32 %10 to i64, !dbg !3927
  %arrayidx66 = getelementptr inbounds [7 x i64*], [7 x i64*]* %act_count, i64 0, i64 %idxprom65, !dbg !3927
  %11 = load i64*, i64** %arrayidx66, align 8, !dbg !3927
  call void @llvm.dbg.value(metadata i64* %11, metadata !3842, metadata !DIExpression()), !dbg !3852
  %n_counters67 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call62, i64 0, i32 2, !dbg !3928
  %12 = load i32, i32* %n_counters67, align 4, !dbg !3928
  %idx.ext = zext i32 %12 to i64, !dbg !3929
  %add.ptr = getelementptr inbounds i64, i64* %11, i64 %idx.ext, !dbg !3929
  store i64* %add.ptr, i64** %arrayidx66, align 8, !dbg !3929
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3930
  tail call void @gimple_add_histogram_value(%struct.function* %13, %union.gimple_statement_d* %9, %struct.histogram_value_t* %call62) #6, !dbg !3931
  %14 = load i32, i32* %n_counters67, align 4, !dbg !3932
  %conv = zext i32 %14 to i64, !dbg !3932
  %mul = shl nuw nsw i64 %conv, 3, !dbg !3932
  %call72 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3932
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call62, i64 0, i32 0, i32 2, !dbg !3933
  %15 = bitcast i64** %counters to i8**, !dbg !3934
  store i8* %call72, i8** %15, align 8, !dbg !3934
  call void @llvm.dbg.value(metadata i32 0, metadata !3832, metadata !DIExpression()), !dbg !3852
  br label %for.cond74, !dbg !3935

for.cond74:                                       ; preds = %for.body78, %for.body54
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body78 ], [ 0, %for.body54 ], !dbg !3937
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3832, metadata !DIExpression()), !dbg !3852
  %16 = load i32, i32* %n_counters67, align 4, !dbg !3938
  %17 = zext i32 %16 to i64, !dbg !3940
  %cmp76 = icmp ult i64 %indvars.iv1, %17, !dbg !3940
  br i1 %cmp76, label %for.body78, label %for.inc88, !dbg !3941

for.body78:                                       ; preds = %for.cond74
  %arrayidx80 = getelementptr inbounds i64, i64* %11, i64 %indvars.iv1, !dbg !3942
  %18 = load i64, i64* %arrayidx80, align 8, !dbg !3942
  %19 = load i64*, i64** %counters, align 8, !dbg !3943
  %arrayidx84 = getelementptr inbounds i64, i64* %19, i64 %indvars.iv1, !dbg !3944
  store i64 %18, i64* %arrayidx84, align 8, !dbg !3945
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3946
  br label %for.cond74, !dbg !3947, !llvm.loop !3948

for.inc88:                                        ; preds = %for.cond74
  %inc89 = add i32 %i.1, 1, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %inc89, metadata !3831, metadata !DIExpression()), !dbg !3852
  br label %for.cond45, !dbg !3951, !llvm.loop !3952

for.cond91:                                       ; preds = %for.cond91.preheader, %for.inc102
  %indvars.iv = phi i64 [ 0, %for.cond91.preheader ], [ %indvars.iv.next, %for.inc102 ], !dbg !3954
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3833, metadata !DIExpression()), !dbg !3852
  %exitcond = icmp eq i64 %indvars.iv, 7, !dbg !3955
  br i1 %exitcond, label %cleanup.loopexit, label %for.body94, !dbg !3921

for.body94:                                       ; preds = %for.cond91
  %arrayidx96 = getelementptr inbounds [7 x i64*], [7 x i64*]* %histogram_counts, i64 0, i64 %indvars.iv, !dbg !3957
  %20 = load i64*, i64** %arrayidx96, align 8, !dbg !3957
  %tobool97 = icmp eq i64* %20, null, !dbg !3957
  br i1 %tobool97, label %for.inc102, label %if.then98, !dbg !3959

if.then98:                                        ; preds = %for.body94
  %21 = bitcast i64* %20 to i8*, !dbg !3959
  tail call void @free(i8* nonnull %21) #6, !dbg !3960
  br label %for.inc102, !dbg !3960

for.inc102:                                       ; preds = %for.body94, %if.then98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3961
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3852
  br label %for.cond91, !dbg !3962, !llvm.loop !3963

cleanup.loopexit:                                 ; preds = %for.cond91
  br label %cleanup, !dbg !3965

cleanup:                                          ; preds = %cleanup.loopexit, %for.end41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #7, !dbg !3965
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #7, !dbg !3965
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #7, !dbg !3965
  ret void, !dbg !3965
}

declare dso_local void @remove_fake_edges() local_unnamed_addr #2

declare dso_local i32 @coverage_counter_alloc(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @instrument_edges(%struct.edge_list* %el) unnamed_addr #5 !dbg !3966 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_list* %el, metadata !3970, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 0, metadata !3971, metadata !DIExpression()), !dbg !3983
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %el, i64 0, i32 1, !dbg !3984
  %0 = load i32, i32* %num_edges1, align 4, !dbg !3984
  call void @llvm.dbg.value(metadata i32 %0, metadata !3972, metadata !DIExpression()), !dbg !3983
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3985
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3985
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3985
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3985
  %3 = bitcast %struct.edge_def** %e to i8*, !dbg !3986
  %4 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3986
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3987
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3987
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3987
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3988
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3988
  br label %for.cond, !dbg !3985

for.cond:                                         ; preds = %for.end, %entry
  %num_instr_edges.0 = phi i32 [ 0, %entry ], [ %num_instr_edges.1.lcssa, %for.end ], !dbg !3989
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.end ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3990
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3973, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.0, metadata !3971, metadata !DIExpression()), !dbg !3983
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3991
  br i1 %cmp, label %for.end41, label %for.body, !dbg !3985

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !3992
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3993
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3994
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3994
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3994
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3994
  store i32 %10, i32* %6, align 8, !dbg !3994
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3994
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %7, align 8, !dbg !3994
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3994
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3994
  br label %for.cond2, !dbg !3994

for.cond2:                                        ; preds = %for.inc, %for.body
  %num_instr_edges.1 = phi i32 [ %num_instr_edges.0, %for.body ], [ %num_instr_edges.2, %for.inc ], !dbg !3989
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.1, metadata !3971, metadata !DIExpression()), !dbg !3983
  %12 = load i32, i32* %8, align 8, !dbg !3995
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !3995
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3974, metadata !DIExpression(DW_OP_deref)), !dbg !3986
  %call3 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #8, !dbg !3995
  %tobool = icmp eq i8 %call3, 0, !dbg !3994
  br i1 %tobool, label %for.end, label %for.body4, !dbg !3994

for.body4:                                        ; preds = %for.cond2
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3996
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3974, metadata !DIExpression()), !dbg !3986
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 3, !dbg !3996
  %15 = bitcast i8** %aux to %struct.edge_info**, !dbg !3996
  %16 = load %struct.edge_info*, %struct.edge_info** %15, align 8, !dbg !3996
  call void @llvm.dbg.value(metadata %struct.edge_info* %16, metadata !3979, metadata !DIExpression()), !dbg !3997
  %17 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %16, i64 0, i32 0, !dbg !3998
  %bf.load = load i8, i8* %17, align 4, !dbg !3998
  %bf.clear = and i8 %bf.load, 4, !dbg !3998
  %tobool5 = icmp eq i8 %bf.clear, 0, !dbg !4000
  br i1 %tobool5, label %land.lhs.true, label %for.inc, !dbg !4001

land.lhs.true:                                    ; preds = %for.body4
  %bf.clear8 = and i8 %bf.load, 2, !dbg !4002
  %tobool10 = icmp eq i8 %bf.clear8, 0, !dbg !4003
  br i1 %tobool10, label %if.then, label %for.inc, !dbg !4004

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3974, metadata !DIExpression()), !dbg !3986
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 7, !dbg !4005
  %18 = load i32, i32* %flags, align 8, !dbg !4005
  %and = and i32 %18, 2, !dbg !4005
  %tobool11 = icmp eq i32 %and, 0, !dbg !4005
  br i1 %tobool11, label %cond.end, label %cond.true, !dbg !4005

cond.true:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4005
  br label %cond.end, !dbg !4005

cond.end:                                         ; preds = %if.then, %cond.true
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4007
  %tobool12 = icmp eq %struct._IO_FILE* %19, null, !dbg !4007
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !4009

if.then13:                                        ; preds = %cond.end
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4010
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3974, metadata !DIExpression()), !dbg !3986
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 0, !dbg !4011
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4011
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 9, !dbg !4012
  %22 = load i32, i32* %index, align 8, !dbg !4012
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3974, metadata !DIExpression()), !dbg !3986
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 1, !dbg !4013
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4013
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 9, !dbg !4014
  %24 = load i32, i32* %index14, align 8, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3974, metadata !DIExpression()), !dbg !3986
  %succs16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 1, !dbg !4015
  %25 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs16, align 8, !dbg !4015
  %tobool17 = icmp eq %struct.VEC_edge_gc* %25, null, !dbg !4015
  br i1 %tobool17, label %cond.end22, label %cond.true18, !dbg !4015

cond.true18:                                      ; preds = %if.then13
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3974, metadata !DIExpression()), !dbg !3986
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %25, i64 0, i32 0, !dbg !4015
  br label %cond.end22, !dbg !4015

cond.end22:                                       ; preds = %if.then13, %cond.true18
  %cond23 = phi %struct.VEC_edge_base* [ %base, %cond.true18 ], [ null, %if.then13 ], !dbg !4015
  %call24 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond23) #8, !dbg !4015
  %cmp25 = icmp ugt i32 %call24, 1, !dbg !4015
  br i1 %cmp25, label %land.rhs, label %land.end, !dbg !4015

land.rhs:                                         ; preds = %cond.end22
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4015
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !3974, metadata !DIExpression()), !dbg !3986
  %dest26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 1, !dbg !4015
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest26, align 8, !dbg !4015
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 0, !dbg !4015
  %28 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4015
  %tobool27 = icmp eq %struct.VEC_edge_gc* %28, null, !dbg !4015
  br i1 %tobool27, label %cond.end33, label %cond.true28, !dbg !4015

cond.true28:                                      ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !3974, metadata !DIExpression()), !dbg !3986
  %base31 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %28, i64 0, i32 0, !dbg !4015
  br label %cond.end33, !dbg !4015

cond.end33:                                       ; preds = %land.rhs, %cond.true28
  %cond34 = phi %struct.VEC_edge_base* [ %base31, %cond.true28 ], [ null, %land.rhs ], !dbg !4015
  %call35 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond34) #8, !dbg !4015
  %cmp36 = icmp ugt i32 %call35, 1, !dbg !4015
  br label %land.end

land.end:                                         ; preds = %cond.end33, %cond.end22
  %29 = phi i1 [ false, %cond.end22 ], [ %cmp36, %cond.end33 ], !dbg !4016
  %cond37 = select i1 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0), !dbg !4015
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i32 %22, i32 %24, i8* %cond37) #6, !dbg !4017
  br label %if.end, !dbg !4017

if.end:                                           ; preds = %cond.end, %land.end
  %30 = load void (i32, %struct.edge_def*)*, void (i32, %struct.edge_def*)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 1), align 8, !dbg !4018
  %inc = add i32 %num_instr_edges.1, 1, !dbg !4019
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3971, metadata !DIExpression()), !dbg !3983
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4020
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !3974, metadata !DIExpression()), !dbg !3986
  call void %30(i32 %num_instr_edges.1, %struct.edge_def* %31) #6, !dbg !4021
  br label %for.inc, !dbg !4022

for.inc:                                          ; preds = %land.lhs.true, %for.body4, %if.end
  %num_instr_edges.2 = phi i32 [ %num_instr_edges.1, %for.body4 ], [ %num_instr_edges.1, %land.lhs.true ], [ %inc, %if.end ], !dbg !3983
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.2, metadata !3971, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3978, metadata !DIExpression(DW_OP_deref)), !dbg !3986
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3995
  br label %for.cond2, !dbg !3995, !llvm.loop !4023

for.end:                                          ; preds = %for.cond2
  %num_instr_edges.1.lcssa = phi i32 [ %num_instr_edges.1, %for.cond2 ], !dbg !3989
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.1.lcssa, metadata !3971, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.1.lcssa, metadata !3971, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.1.lcssa, metadata !3971, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4025
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !4025
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3991
  br label %for.cond, !dbg !3991, !llvm.loop !4026

for.end41:                                        ; preds = %for.cond
  %num_instr_edges.0.lcssa = phi i32 [ %num_instr_edges.0, %for.cond ], !dbg !3989
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.0.lcssa, metadata !3971, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.0.lcssa, metadata !3971, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %num_instr_edges.0.lcssa, metadata !3971, metadata !DIExpression()), !dbg !3983
  %32 = load i32, i32* @total_num_blocks_created, align 4, !dbg !4028
  %add = add nsw i32 %32, %0, !dbg !4028
  store i32 %add, i32* @total_num_blocks_created, align 4, !dbg !4028
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4029
  %tobool42 = icmp eq %struct._IO_FILE* %33, null, !dbg !4029
  br i1 %tobool42, label %if.end45, label %if.then43, !dbg !4031

if.then43:                                        ; preds = %for.end41
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 %num_instr_edges.0.lcssa) #6, !dbg !4032
  br label %if.end45, !dbg !4032

if.end45:                                         ; preds = %for.end41, %if.then43
  ret i32 %num_instr_edges.0.lcssa, !dbg !4033
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @instrument_values(%struct.VEC_histogram_value_heap* %values) unnamed_addr #5 !dbg !4034 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap* %values, metadata !4036, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 0, metadata !4037, metadata !DIExpression()), !dbg !4043
  %base = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %values, i64 0, i32 0, !dbg !4044
  br label %for.cond, !dbg !4045

for.cond:                                         ; preds = %cleanup, %entry
  %t.0 = phi i32 [ undef, %entry ], [ %t.1, %cleanup ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %cleanup ], !dbg !4046
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4037, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !4038, metadata !DIExpression()), !dbg !4043
  %call = tail call fastcc i32 @VEC_histogram_value_base_length(%struct.VEC_histogram_value_base* %base) #8, !dbg !4047
  %cmp = icmp ult i32 %i.0, %call, !dbg !4048
  br i1 %cmp, label %for.body, label %for.end, !dbg !4049

for.body:                                         ; preds = %for.cond
  %call7 = tail call fastcc %struct.histogram_value_t* @VEC_histogram_value_base_index(%struct.VEC_histogram_value_base* %base, i32 %i.0) #8, !dbg !4050
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call7, metadata !4039, metadata !DIExpression()), !dbg !4051
  %type = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call7, i64 0, i32 1, !dbg !4052
  %0 = load i32, i32* %type, align 8, !dbg !4052
  switch i32 %0, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
    i32 4, label %sw.bb11
    i32 5, label %sw.bb12
    i32 6, label %sw.bb13
  ], !dbg !4053

sw.bb8:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()), !dbg !4043
  br label %sw.epilog, !dbg !4054

sw.bb9:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 3, metadata !4038, metadata !DIExpression()), !dbg !4043
  br label %sw.epilog, !dbg !4056

sw.bb10:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 4, metadata !4038, metadata !DIExpression()), !dbg !4043
  br label %sw.epilog, !dbg !4057

sw.bb11:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 5, metadata !4038, metadata !DIExpression()), !dbg !4043
  br label %sw.epilog, !dbg !4058

sw.bb12:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 6, metadata !4038, metadata !DIExpression()), !dbg !4043
  br label %sw.epilog, !dbg !4059

sw.bb13:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 7, metadata !4038, metadata !DIExpression()), !dbg !4043
  br label %sw.epilog, !dbg !4060

sw.default:                                       ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4061
  br label %sw.epilog, !dbg !4062

sw.epilog:                                        ; preds = %for.body, %sw.default, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8
  %t.1 = phi i32 [ %t.0, %sw.default ], [ 7, %sw.bb13 ], [ 6, %sw.bb12 ], [ 5, %sw.bb11 ], [ 4, %sw.bb10 ], [ 3, %sw.bb9 ], [ 2, %sw.bb8 ], [ 1, %for.body ]
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !4038, metadata !DIExpression()), !dbg !4043
  %n_counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call7, i64 0, i32 2, !dbg !4063
  %1 = load i32, i32* %n_counters, align 4, !dbg !4063
  %call14 = tail call i32 @coverage_counter_alloc(i32 %t.1, i32 %1) #6, !dbg !4065
  %tobool15 = icmp eq i32 %call14, 0, !dbg !4065
  br i1 %tobool15, label %cleanup, label %if.end, !dbg !4066

if.end:                                           ; preds = %sw.epilog
  %2 = load i32, i32* %type, align 8, !dbg !4067
  switch i32 %2, label %sw.default24 [
    i32 0, label %sw.bb17
    i32 1, label %sw.bb18
    i32 2, label %sw.bb19
    i32 3, label %sw.bb20
    i32 4, label %sw.bb21
    i32 5, label %sw.bb22
    i32 6, label %sw.bb23
  ], !dbg !4068

sw.bb17:                                          ; preds = %if.end
  %3 = load void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 2), align 8, !dbg !4069
  tail call void %3(%struct.histogram_value_t* %call7, i32 %t.1, i32 0) #6, !dbg !4071
  br label %cleanup, !dbg !4072

sw.bb18:                                          ; preds = %if.end
  %4 = load void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 3), align 8, !dbg !4073
  tail call void %4(%struct.histogram_value_t* %call7, i32 %t.1, i32 0) #6, !dbg !4074
  br label %cleanup, !dbg !4075

sw.bb19:                                          ; preds = %if.end
  %5 = load void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 4), align 8, !dbg !4076
  tail call void %5(%struct.histogram_value_t* %call7, i32 %t.1, i32 0) #6, !dbg !4077
  br label %cleanup, !dbg !4078

sw.bb20:                                          ; preds = %if.end
  %6 = load void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 5), align 8, !dbg !4079
  tail call void %6(%struct.histogram_value_t* %call7, i32 %t.1, i32 0) #6, !dbg !4080
  br label %cleanup, !dbg !4081

sw.bb21:                                          ; preds = %if.end
  %7 = load void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 6), align 8, !dbg !4082
  tail call void %7(%struct.histogram_value_t* %call7, i32 %t.1, i32 0) #6, !dbg !4083
  br label %cleanup, !dbg !4084

sw.bb22:                                          ; preds = %if.end
  %8 = load void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 7), align 8, !dbg !4085
  tail call void %8(%struct.histogram_value_t* %call7, i32 %t.1, i32 0) #6, !dbg !4086
  br label %cleanup, !dbg !4087

sw.bb23:                                          ; preds = %if.end
  %9 = load void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)** getelementptr inbounds (%struct.profile_hooks, %struct.profile_hooks* @tree_profile_hooks, i64 0, i32 8), align 8, !dbg !4088
  tail call void %9(%struct.histogram_value_t* %call7, i32 %t.1, i32 0) #6, !dbg !4089
  br label %cleanup, !dbg !4090

sw.default24:                                     ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4091
  br label %cleanup, !dbg !4092

cleanup:                                          ; preds = %sw.epilog, %sw.bb17, %sw.bb18, %sw.bb19, %sw.bb20, %sw.bb21, %sw.bb22, %sw.bb23, %sw.default24
  %inc = add i32 %i.0, 1, !dbg !4093
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4037, metadata !DIExpression()), !dbg !4043
  br label %for.cond, !dbg !4094, !llvm.loop !4095

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4097
}

declare dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #2

declare dso_local void @free_aux_for_edges() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_histogram_value_heap_free(%struct.VEC_histogram_value_heap** %vec_) unnamed_addr #0 !dbg !4098 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %vec_, metadata !4103, metadata !DIExpression()), !dbg !4104
  %0 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %vec_, align 8, !dbg !4105
  %tobool = icmp eq %struct.VEC_histogram_value_heap* %0, null, !dbg !4105
  br i1 %tobool, label %if.end, label %if.then, !dbg !4107

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_histogram_value_heap* %0 to i8*, !dbg !4107
  tail call void @free(i8* nonnull %1) #6, !dbg !4105
  br label %if.end, !dbg !4105

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_histogram_value_heap* null, %struct.VEC_histogram_value_heap** %vec_, align 8, !dbg !4107
  ret void, !dbg !4107
}

declare dso_local void @free_edge_list(%struct.edge_list*) local_unnamed_addr #2

declare dso_local void @coverage_end_function() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_branch_prob() local_unnamed_addr #5 !dbg !4108 {
entry:
  store i32 0, i32* @total_num_blocks, align 4, !dbg !4111
  store i32 0, i32* @total_num_edges, align 4, !dbg !4112
  store i32 0, i32* @total_num_edges_ignored, align 4, !dbg !4113
  store i32 0, i32* @total_num_blocks_created, align 4, !dbg !4114
  store i32 0, i32* @total_num_passes, align 4, !dbg !4115
  store i32 0, i32* @total_num_times_called, align 4, !dbg !4116
  store i32 0, i32* @total_num_branches, align 4, !dbg !4117
  call void @llvm.dbg.value(metadata i32 0, metadata !4110, metadata !DIExpression()), !dbg !4118
  br label %for.cond, !dbg !4119

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !4121
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4110, metadata !DIExpression()), !dbg !4118
  %exitcond = icmp eq i64 %indvars.iv, 20, !dbg !4122
  br i1 %exitcond, label %for.end, label %for.body, !dbg !4124

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i64 0, i64 %indvars.iv, !dbg !4125
  store i32 0, i32* %arrayidx, align 4, !dbg !4126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4127
  call void @llvm.dbg.value(metadata i32 undef, metadata !4110, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4118
  br label %for.cond, !dbg !4128, !llvm.loop !4129

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4131
}

; Function Attrs: nounwind uwtable
define dso_local void @end_branch_prob() local_unnamed_addr #5 !dbg !4132 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4139
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !4139
  br i1 %tobool, label %if.end22, label %if.then, !dbg !4140

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !4141
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4142
  %2 = load i32, i32* @total_num_blocks, align 4, !dbg !4143
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %2) #6, !dbg !4144
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4145
  %4 = load i32, i32* @total_num_edges, align 4, !dbg !4146
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %4) #6, !dbg !4147
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4148
  %6 = load i32, i32* @total_num_edges_ignored, align 4, !dbg !4149
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %6) #6, !dbg !4150
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4151
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 0) #6, !dbg !4152
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4153
  %9 = load i32, i32* @total_num_blocks_created, align 4, !dbg !4154
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %9) #6, !dbg !4155
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4156
  %11 = load i32, i32* @total_num_passes, align 4, !dbg !4157
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %11) #6, !dbg !4158
  %12 = load i32, i32* @total_num_times_called, align 4, !dbg !4159
  %cmp = icmp eq i32 %12, 0, !dbg !4161
  br i1 %cmp, label %if.end, label %if.then7, !dbg !4162

if.then7:                                         ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4163
  %14 = load i32, i32* @total_num_passes, align 4, !dbg !4164
  %shr = ashr i32 %12, 1, !dbg !4165
  %add = add nsw i32 %14, %shr, !dbg !4166
  %div = sdiv i32 %add, %12, !dbg !4167
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %div) #6, !dbg !4168
  br label %if.end, !dbg !4168

if.end:                                           ; preds = %if.then, %if.then7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4169
  %16 = load i32, i32* @total_num_branches, align 4, !dbg !4170
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %16) #6, !dbg !4171
  %17 = load i32, i32* @total_num_branches, align 4, !dbg !4172
  %tobool10 = icmp eq i32 %17, 0, !dbg !4172
  br i1 %tobool10, label %if.end22, label %for.cond.preheader, !dbg !4173

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !4174

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !4176
  %i.0 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body ], !dbg !4176
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4134, metadata !DIExpression()), !dbg !4177
  %exitcond = icmp eq i64 %indvars.iv, 10, !dbg !4178
  br i1 %exitcond, label %if.end22.loopexit, label %for.body, !dbg !4174

for.body:                                         ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4180
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i64 0, i64 %indvars.iv, !dbg !4181
  %19 = load i32, i32* %arrayidx, align 4, !dbg !4181
  %20 = sub nuw nsw i64 19, %indvars.iv, !dbg !4182
  %arrayidx14 = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i64 0, i64 %20, !dbg !4183
  %21 = load i32, i32* %arrayidx14, align 4, !dbg !4183
  %add15 = add nsw i32 %19, %21, !dbg !4184
  %mul = mul nsw i32 %add15, 100, !dbg !4185
  %22 = load i32, i32* @total_num_branches, align 4, !dbg !4186
  %div16 = sdiv i32 %mul, %22, !dbg !4187
  %mul17 = mul nuw nsw i32 %i.0, 5, !dbg !4188
  %add19 = add nuw nsw i32 %mul17, 5, !dbg !4189
  %23 = trunc i64 %indvars.iv to i32, !dbg !4190
  %24 = mul i32 %23, 5, !dbg !4190
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %div16, i32 %24, i32 %add19) #6, !dbg !4190
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4191
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4191
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4134, metadata !DIExpression()), !dbg !4177
  br label %for.cond, !dbg !4192, !llvm.loop !4193

if.end22.loopexit:                                ; preds = %for.cond
  br label %if.end22, !dbg !4195

if.end22:                                         ; preds = %if.end22.loopexit, %if.end, %entry
  ret void, !dbg !4195
}

; Function Attrs: nounwind uwtable
define dso_local void @tree_register_profile_hooks() local_unnamed_addr #5 !dbg !4196 {
entry:
  %call = tail call i32 @current_ir_type() #6, !dbg !4197
  %cmp = icmp eq i32 %call, 0, !dbg !4197
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4197

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 1377, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4197
  br label %cond.end, !dbg !4197

cond.end:                                         ; preds = %entry, %cond.true
  ret void, !dbg !4198
}

declare dso_local i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4199 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4204
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4204
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4204

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4204
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4204
  br label %cond.end, !dbg !4204

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4204
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4204
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4205
  %conv3 = zext i1 %cmp to i8, !dbg !4206
  ret i8 %conv3, !dbg !4207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4208 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4213
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4213
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4213

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4213
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4213
  br label %cond.end, !dbg !4213

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4213
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !4213
  ret %struct.edge_def* %call2, !dbg !4214
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4215 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4221, metadata !DIExpression()), !dbg !4222
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4223
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4223

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4223
  %0 = load i32, i32* %num, align 8, !dbg !4223
  br label %cond.end, !dbg !4223

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4223
  ret i32 %cond, !dbg !4223
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4224 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4229
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4229

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4229
  br label %cond.end, !dbg !4229

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4230
  ret %struct.VEC_edge_gc* %0, !dbg !4231
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4232 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4236, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4237, metadata !DIExpression()), !dbg !4238
  br label %land.end, !dbg !4239

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4239
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4239
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4239
  ret %struct.edge_def* %0, !dbg !4239
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4240 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4244, metadata !DIExpression()), !dbg !4245
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4246
  %0 = load i32, i32* %flags, align 8, !dbg !4246
  %and = and i32 %0, 512, !dbg !4247
  %tobool = icmp eq i32 %and, 0, !dbg !4247
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4248

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4249
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4249
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4250
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4251

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4252
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4252
  br label %cond.end, !dbg !4251

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4251
  ret %struct.gimple_seq_d* %cond, !dbg !4253
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4254 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4261, metadata !DIExpression()), !dbg !4262
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4263
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4263

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !4264
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !4264
  br label %cond.end, !dbg !4263

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4263
  ret %struct.gimple_seq_node_d* %cond, !dbg !4265
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4266 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4268, metadata !DIExpression()), !dbg !4269
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4270
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4270

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4271
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4271
  br label %cond.end, !dbg !4270

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4270
  ret %struct.gimple_seq_node_d* %cond, !dbg !4272
}

; Function Attrs: nounwind uwtable
define internal fastcc i64* @get_exec_counts() unnamed_addr #5 !dbg !4273 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !4277, metadata !DIExpression()), !dbg !4285
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4286
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4286
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4286
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4286
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !4287
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4287
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4288
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4288
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4288
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4290
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4290
  br label %for.cond, !dbg !4286

for.cond:                                         ; preds = %for.end, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.end ]
  %num_edges.0 = phi i32 [ 0, %entry ], [ %num_edges.1.lcssa, %for.end ], !dbg !4292
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4293
  call void @llvm.dbg.value(metadata i32 %num_edges.0, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4278, metadata !DIExpression()), !dbg !4285
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !4294
  br i1 %cmp, label %for.end12, label %for.body, !dbg !4286

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4295
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4296
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4297
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !4297
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4297
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4297
  store i32 %9, i32* %5, align 8, !dbg !4297
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4297
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %6, align 8, !dbg !4297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !4297
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4297
  br label %for.cond1, !dbg !4297

for.cond1:                                        ; preds = %for.inc, %for.body
  %num_edges.1 = phi i32 [ %num_edges.0, %for.body ], [ %num_edges.2, %for.inc ], !dbg !4292
  call void @llvm.dbg.value(metadata i32 %num_edges.1, metadata !4277, metadata !DIExpression()), !dbg !4285
  %11 = load i32, i32* %7, align 8, !dbg !4298
  %12 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4298
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4280, metadata !DIExpression(DW_OP_deref)), !dbg !4287
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %11, %struct.VEC_edge_gc** %12, %struct.edge_def** nonnull %e) #8, !dbg !4298
  %tobool = icmp eq i8 %call2, 0, !dbg !4297
  br i1 %tobool, label %for.end, label %for.body3, !dbg !4297

for.body3:                                        ; preds = %for.cond1
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4299
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !4280, metadata !DIExpression()), !dbg !4287
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i64 0, i32 3, !dbg !4299
  %14 = load i8*, i8** %aux, align 8, !dbg !4299
  %bf.load = load i8, i8* %14, align 4, !dbg !4301
  %bf.clear = and i8 %bf.load, 4, !dbg !4301
  %tobool4 = icmp eq i8 %bf.clear, 0, !dbg !4299
  br i1 %tobool4, label %land.lhs.true, label %for.inc, !dbg !4302

land.lhs.true:                                    ; preds = %for.body3
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !4280, metadata !DIExpression()), !dbg !4287
  %bf.clear8 = lshr i8 %bf.load, 1, !dbg !4303
  %bf.clear8.lobit = and i8 %bf.clear8, 1, !dbg !4303
  %15 = xor i8 %bf.clear8.lobit, 1, !dbg !4303
  %16 = zext i8 %15 to i32, !dbg !4303
  %spec.select = add i32 %num_edges.1, %16, !dbg !4303
  br label %for.inc, !dbg !4303

for.inc:                                          ; preds = %for.body3, %land.lhs.true
  %num_edges.2 = phi i32 [ %num_edges.1, %for.body3 ], [ %spec.select, %land.lhs.true ], !dbg !4285
  call void @llvm.dbg.value(metadata i32 %num_edges.2, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4284, metadata !DIExpression(DW_OP_deref)), !dbg !4287
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4298
  br label %for.cond1, !dbg !4298, !llvm.loop !4304

for.end:                                          ; preds = %for.cond1
  %num_edges.1.lcssa = phi i32 [ %num_edges.1, %for.cond1 ], !dbg !4292
  call void @llvm.dbg.value(metadata i32 %num_edges.1.lcssa, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 %num_edges.1.lcssa, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 %num_edges.1.lcssa, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4306
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4306
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !4294
  br label %for.cond, !dbg !4294, !llvm.loop !4307

for.end12:                                        ; preds = %for.cond
  %num_edges.0.lcssa = phi i32 [ %num_edges.0, %for.cond ], !dbg !4292
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !4277, metadata !DIExpression()), !dbg !4285
  %call13 = call i64* @get_coverage_counts(i32 0, i32 %num_edges.0.lcssa, %struct.gcov_ctr_summary** nonnull @profile_info) #6, !dbg !4309
  call void @llvm.dbg.value(metadata i64* %call13, metadata !4279, metadata !DIExpression()), !dbg !4285
  %tobool14 = icmp eq i64* %call13, null, !dbg !4310
  br i1 %tobool14, label %cleanup, label %if.end16, !dbg !4312

if.end16:                                         ; preds = %for.end12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4313
  %tobool17 = icmp ne %struct._IO_FILE* %17, null, !dbg !4313
  %18 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !4315
  %tobool19 = icmp ne %struct.gcov_ctr_summary* %18, null, !dbg !4315
  %or.cond = and i1 %tobool17, %tobool19, !dbg !4316
  br i1 %or.cond, label %if.then20, label %cleanup, !dbg !4316

if.then20:                                        ; preds = %if.end16
  %runs = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %18, i64 0, i32 1, !dbg !4317
  %19 = load i32, i32* %runs, align 4, !dbg !4317
  %sum_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %18, i64 0, i32 4, !dbg !4318
  %20 = load i64, i64* %sum_max, align 8, !dbg !4318
  %conv = trunc i64 %20 to i32, !dbg !4319
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 %19, i32 %conv) #6, !dbg !4320
  br label %cleanup, !dbg !4320

cleanup:                                          ; preds = %for.end12, %if.end16, %if.then20
  %retval.0 = phi i64* [ null, %for.end12 ], [ %call13, %if.then20 ], [ %call13, %if.end16 ], !dbg !4285
  ret i64* %retval.0, !dbg !4321
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

declare dso_local void @alloc_aux_for_blocks(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_profile_edge_counts(i64* %exec_counts) unnamed_addr #5 !dbg !4322 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i64* %exec_counts, metadata !4326, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 0, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 0, metadata !4329, metadata !DIExpression()), !dbg !4335
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4336
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4336
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4336
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4336
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !4337
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4337
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4338
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4338
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4338
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4340
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4340
  %tobool11 = icmp eq i64* %exec_counts, null, !dbg !4342
  br label %for.cond, !dbg !4336

for.cond:                                         ; preds = %for.end, %entry
  %num_edges.0 = phi i32 [ 0, %entry ], [ %num_edges.1.lcssa, %for.end ], !dbg !4346
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.end ]
  %exec_counts_pos.0 = phi i32 [ 0, %entry ], [ %exec_counts_pos.1.lcssa, %for.end ], !dbg !4347
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4348
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.0, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4327, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.0, metadata !4328, metadata !DIExpression()), !dbg !4335
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !4349
  br i1 %cmp, label %for.end38, label %for.body, !dbg !4336

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4350
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4352
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !4352
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4352
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4352
  store i32 %9, i32* %5, align 8, !dbg !4352
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4352
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %6, align 8, !dbg !4352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !4352
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4352
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !4353
  %aux23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !4357
  %11 = bitcast i8** %aux23 to %struct.bb_info**, !dbg !4357
  br i1 %tobool11, label %for.body.split.us, label %for.body.for.body.split_crit_edge, !dbg !4352

for.body.for.body.split_crit_edge:                ; preds = %for.body
  br label %for.cond1, !dbg !4352

for.body.split.us:                                ; preds = %for.body
  br label %for.cond1.us, !dbg !4352

for.cond1.us:                                     ; preds = %for.inc.us, %for.body.split.us
  %num_edges.1.us = phi i32 [ %num_edges.0, %for.body.split.us ], [ %num_edges.2.us, %for.inc.us ], !dbg !4346
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.0, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.1.us, metadata !4328, metadata !DIExpression()), !dbg !4335
  %12 = load i32, i32* %7, align 8, !dbg !4358
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4358
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4330, metadata !DIExpression(DW_OP_deref)), !dbg !4337
  %call2.us = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #8, !dbg !4358
  %tobool.us = icmp eq i8 %call2.us, 0, !dbg !4352
  br i1 %tobool.us, label %for.end.us-lcssa.us, label %for.body3.us, !dbg !4352

for.body3.us:                                     ; preds = %for.cond1.us
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4359
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !4330, metadata !DIExpression()), !dbg !4337
  %aux.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 3, !dbg !4359
  %15 = load i8*, i8** %aux.us, align 8, !dbg !4359
  %bf.load.us = load i8, i8* %15, align 4, !dbg !4360
  %bf.clear.us = and i8 %bf.load.us, 4, !dbg !4360
  %tobool4.us = icmp eq i8 %bf.clear.us, 0, !dbg !4359
  br i1 %tobool4.us, label %land.lhs.true.us, label %for.inc.us, !dbg !4361

land.lhs.true.us:                                 ; preds = %for.body3.us
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !4330, metadata !DIExpression()), !dbg !4337
  %bf.clear8.us = and i8 %bf.load.us, 2, !dbg !4362
  %tobool10.us = icmp eq i8 %bf.clear8.us, 0, !dbg !4363
  br i1 %tobool10.us, label %if.then.us, label %for.inc.us, !dbg !4364

if.then.us:                                       ; preds = %land.lhs.true.us
  %inc.us = add nsw i32 %num_edges.1.us, 1, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !4330, metadata !DIExpression()), !dbg !4337
  %count18.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 9, !dbg !4366
  store i64 0, i64* %count18.us, align 8, !dbg !4367
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.0, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !4330, metadata !DIExpression()), !dbg !4337
  %bf.load21.us = load i8, i8* %15, align 4, !dbg !4368
  %bf.set.us = or i8 %bf.load21.us, 1, !dbg !4368
  store i8 %bf.set.us, i8* %15, align 4, !dbg !4368
  %16 = load %struct.bb_info*, %struct.bb_info** %11, align 8, !dbg !4369
  %succ_count.us = getelementptr inbounds %struct.bb_info, %struct.bb_info* %16, i64 0, i32 1, !dbg !4370
  %17 = load i64, i64* %succ_count.us, align 8, !dbg !4371
  %dec.us = add nsw i64 %17, -1, !dbg !4371
  store i64 %dec.us, i64* %succ_count.us, align 8, !dbg !4371
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4372
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !4330, metadata !DIExpression()), !dbg !4337
  %dest24.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i64 0, i32 1, !dbg !4372
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %dest24.us, align 8, !dbg !4372
  %aux25.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 2, !dbg !4372
  %20 = bitcast i8** %aux25.us to %struct.bb_info**, !dbg !4372
  %21 = load %struct.bb_info*, %struct.bb_info** %20, align 8, !dbg !4372
  %pred_count.us = getelementptr inbounds %struct.bb_info, %struct.bb_info* %21, i64 0, i32 2, !dbg !4373
  %22 = load i64, i64* %pred_count.us, align 8, !dbg !4374
  %dec26.us = add nsw i64 %22, -1, !dbg !4374
  store i64 %dec26.us, i64* %pred_count.us, align 8, !dbg !4374
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4375
  %tobool27.us = icmp eq %struct._IO_FILE* %23, null, !dbg !4375
  br i1 %tobool27.us, label %for.inc.us, label %if.then28.us, !dbg !4377

if.then28.us:                                     ; preds = %if.then.us
  %24 = load i32, i32* %index, align 8, !dbg !4378
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !4330, metadata !DIExpression()), !dbg !4337
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest24.us, align 8, !dbg !4380
  %index31.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 9, !dbg !4381
  %26 = load i32, i32* %index31.us, align 8, !dbg !4381
  %call32.us = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %24, i32 %26) #6, !dbg !4382
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4383
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4384
  call void @llvm.dbg.value(metadata %struct.edge_def* %28, metadata !4330, metadata !DIExpression()), !dbg !4337
  %count33.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i64 0, i32 9, !dbg !4385
  %29 = load i64, i64* %count33.us, align 8, !dbg !4385
  %call34.us = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 %29) #6, !dbg !4386
  br label %for.inc.us, !dbg !4387

for.inc.us:                                       ; preds = %if.then28.us, %if.then.us, %land.lhs.true.us, %for.body3.us
  %num_edges.2.us = phi i32 [ %num_edges.1.us, %for.body3.us ], [ %num_edges.1.us, %land.lhs.true.us ], [ %inc.us, %if.then28.us ], [ %inc.us, %if.then.us ], !dbg !4335
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.0, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.2.us, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4334, metadata !DIExpression(DW_OP_deref)), !dbg !4337
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4358
  br label %for.cond1.us, !dbg !4358, !llvm.loop !4388

for.end.us-lcssa.us:                              ; preds = %for.cond1.us
  %num_edges.1.us.lcssa = phi i32 [ %num_edges.1.us, %for.cond1.us ], !dbg !4346
  call void @llvm.dbg.value(metadata i32 %num_edges.1.us.lcssa, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.1.us.lcssa, metadata !4328, metadata !DIExpression()), !dbg !4335
  br label %for.end, !dbg !4390

for.cond1:                                        ; preds = %for.inc, %for.body.for.body.split_crit_edge
  %num_edges.1 = phi i32 [ %num_edges.0, %for.body.for.body.split_crit_edge ], [ %num_edges.2, %for.inc ], !dbg !4346
  %exec_counts_pos.1 = phi i32 [ %exec_counts_pos.0, %for.body.for.body.split_crit_edge ], [ %exec_counts_pos.3, %for.inc ], !dbg !4347
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.1, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.1, metadata !4328, metadata !DIExpression()), !dbg !4335
  %30 = load i32, i32* %7, align 8, !dbg !4358
  %31 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4358
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4330, metadata !DIExpression(DW_OP_deref)), !dbg !4337
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %30, %struct.VEC_edge_gc** %31, %struct.edge_def** nonnull %e) #8, !dbg !4358
  %tobool = icmp eq i8 %call2, 0, !dbg !4352
  br i1 %tobool, label %for.end.us-lcssa, label %for.body3, !dbg !4352

for.body3:                                        ; preds = %for.cond1
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4359
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4330, metadata !DIExpression()), !dbg !4337
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 3, !dbg !4359
  %33 = load i8*, i8** %aux, align 8, !dbg !4359
  %bf.load = load i8, i8* %33, align 4, !dbg !4360
  %bf.clear = and i8 %bf.load, 4, !dbg !4360
  %tobool4 = icmp eq i8 %bf.clear, 0, !dbg !4359
  br i1 %tobool4, label %land.lhs.true, label %for.inc, !dbg !4361

land.lhs.true:                                    ; preds = %for.body3
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4330, metadata !DIExpression()), !dbg !4337
  %bf.clear8 = and i8 %bf.load, 2, !dbg !4362
  %tobool10 = icmp eq i8 %bf.clear8, 0, !dbg !4363
  br i1 %tobool10, label %if.then, label %for.inc, !dbg !4364

if.then:                                          ; preds = %land.lhs.true
  %inc = add nsw i32 %num_edges.1, 1, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4328, metadata !DIExpression()), !dbg !4335
  %inc13 = add nsw i32 %exec_counts_pos.1, 1, !dbg !4391
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !4329, metadata !DIExpression()), !dbg !4335
  %idxprom = sext i32 %exec_counts_pos.1 to i64, !dbg !4392
  %arrayidx = getelementptr inbounds i64, i64* %exec_counts, i64 %idxprom, !dbg !4392
  %34 = load i64, i64* %arrayidx, align 8, !dbg !4392
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4330, metadata !DIExpression()), !dbg !4337
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 9, !dbg !4393
  store i64 %34, i64* %count, align 8, !dbg !4394
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4330, metadata !DIExpression()), !dbg !4337
  %35 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !4395
  %sum_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %35, i64 0, i32 4, !dbg !4396
  %36 = load i64, i64* %sum_max, align 8, !dbg !4396
  %cmp15 = icmp sgt i64 %34, %36, !dbg !4397
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !4398

if.then16:                                        ; preds = %if.then
  %37 = load i32, i32* %index, align 8, !dbg !4399
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4330, metadata !DIExpression()), !dbg !4337
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 1, !dbg !4400
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4400
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i64 0, i32 9, !dbg !4401
  %39 = load i32, i32* %index17, align 8, !dbg !4401
  call void (i8*, ...) @error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i64 0, i64 0), i32 %37, i32 %39) #6, !dbg !4402
  %.pre = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4403
  %aux20.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre, i64 0, i32 3, !dbg !4357
  %.pre1 = load i8*, i8** %aux20.phi.trans.insert, align 8, !dbg !4403
  br label %if.end19, !dbg !4404

if.end19:                                         ; preds = %if.then, %if.then16
  %40 = phi i8* [ %33, %if.then ], [ %.pre1, %if.then16 ], !dbg !4403
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !4329, metadata !DIExpression()), !dbg !4335
  %bf.load21 = load i8, i8* %40, align 4, !dbg !4368
  %bf.set = or i8 %bf.load21, 1, !dbg !4368
  store i8 %bf.set, i8* %40, align 4, !dbg !4368
  %41 = load %struct.bb_info*, %struct.bb_info** %11, align 8, !dbg !4369
  %succ_count = getelementptr inbounds %struct.bb_info, %struct.bb_info* %41, i64 0, i32 1, !dbg !4370
  %42 = load i64, i64* %succ_count, align 8, !dbg !4371
  %dec = add nsw i64 %42, -1, !dbg !4371
  store i64 %dec, i64* %succ_count, align 8, !dbg !4371
  %43 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4372
  call void @llvm.dbg.value(metadata %struct.edge_def* %43, metadata !4330, metadata !DIExpression()), !dbg !4337
  %dest24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i64 0, i32 1, !dbg !4372
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %dest24, align 8, !dbg !4372
  %aux25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 2, !dbg !4372
  %45 = bitcast i8** %aux25 to %struct.bb_info**, !dbg !4372
  %46 = load %struct.bb_info*, %struct.bb_info** %45, align 8, !dbg !4372
  %pred_count = getelementptr inbounds %struct.bb_info, %struct.bb_info* %46, i64 0, i32 2, !dbg !4373
  %47 = load i64, i64* %pred_count, align 8, !dbg !4374
  %dec26 = add nsw i64 %47, -1, !dbg !4374
  store i64 %dec26, i64* %pred_count, align 8, !dbg !4374
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4375
  %tobool27 = icmp eq %struct._IO_FILE* %48, null, !dbg !4375
  br i1 %tobool27, label %for.inc, label %if.then28, !dbg !4377

if.then28:                                        ; preds = %if.end19
  %49 = load i32, i32* %index, align 8, !dbg !4378
  call void @llvm.dbg.value(metadata %struct.edge_def* %43, metadata !4330, metadata !DIExpression()), !dbg !4337
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %dest24, align 8, !dbg !4380
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i64 0, i32 9, !dbg !4381
  %51 = load i32, i32* %index31, align 8, !dbg !4381
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %49, i32 %51) #6, !dbg !4382
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4383
  %53 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4384
  call void @llvm.dbg.value(metadata %struct.edge_def* %53, metadata !4330, metadata !DIExpression()), !dbg !4337
  %count33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i64 0, i32 9, !dbg !4385
  %54 = load i64, i64* %count33, align 8, !dbg !4385
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 %54) #6, !dbg !4386
  br label %for.inc, !dbg !4387

for.inc:                                          ; preds = %if.end19, %land.lhs.true, %for.body3, %if.then28
  %num_edges.2 = phi i32 [ %num_edges.1, %for.body3 ], [ %num_edges.1, %land.lhs.true ], [ %inc, %if.then28 ], [ %inc, %if.end19 ], !dbg !4335
  %exec_counts_pos.3 = phi i32 [ %exec_counts_pos.1, %for.body3 ], [ %exec_counts_pos.1, %land.lhs.true ], [ %inc13, %if.then28 ], [ %inc13, %if.end19 ], !dbg !4335
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.3, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.2, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4334, metadata !DIExpression(DW_OP_deref)), !dbg !4337
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4358
  br label %for.cond1, !dbg !4358, !llvm.loop !4388

for.end.us-lcssa:                                 ; preds = %for.cond1
  %num_edges.1.lcssa5 = phi i32 [ %num_edges.1, %for.cond1 ], !dbg !4346
  %exec_counts_pos.1.lcssa4 = phi i32 [ %exec_counts_pos.1, %for.cond1 ], !dbg !4347
  call void @llvm.dbg.value(metadata i32 %num_edges.1.lcssa5, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.1.lcssa4, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.1.lcssa5, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.1.lcssa4, metadata !4329, metadata !DIExpression()), !dbg !4335
  br label %for.end, !dbg !4390

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %num_edges.1.lcssa = phi i32 [ %num_edges.1.lcssa5, %for.end.us-lcssa ], [ %num_edges.1.us.lcssa, %for.end.us-lcssa.us ], !dbg !4346
  %exec_counts_pos.1.lcssa = phi i32 [ %exec_counts_pos.1.lcssa4, %for.end.us-lcssa ], [ %exec_counts_pos.0, %for.end.us-lcssa.us ], !dbg !4347
  call void @llvm.dbg.value(metadata i32 %num_edges.1.lcssa, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %exec_counts_pos.1.lcssa, metadata !4329, metadata !DIExpression()), !dbg !4335
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4390
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4390
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !4349
  br label %for.cond, !dbg !4349, !llvm.loop !4405

for.end38:                                        ; preds = %for.cond
  %num_edges.0.lcssa = phi i32 [ %num_edges.0, %for.cond ], !dbg !4346
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !4328, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !4328, metadata !DIExpression()), !dbg !4335
  ret i32 %num_edges.0.lcssa, !dbg !4407
}

declare dso_local void @dump_flow_info(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @is_inconsistent() unnamed_addr #5 !dbg !4408 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !4413, metadata !DIExpression()), !dbg !4414
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4415
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4415
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4415
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4415
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4415
  br label %for.cond, !dbg !4415

for.cond:                                         ; preds = %for.inc, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre5, %for.inc ], !dbg !4417
  %inconsistent.0 = phi i8 [ 0, %entry ], [ %inconsistent.3, %for.inc ], !dbg !4414
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4419
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4419
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4412, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i8 %inconsistent.0, metadata !4413, metadata !DIExpression()), !dbg !4414
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !4417
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4417
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !4417
  br i1 %cmp, label %cleanup, label %for.body, !dbg !4415

for.body:                                         ; preds = %for.cond
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !4420
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4420
  %call = tail call fastcc zeroext i8 @is_edge_inconsistent(%struct.VEC_edge_gc* %5) #8, !dbg !4422
  %or3 = or i8 %inconsistent.0, %call, !dbg !4423
  call void @llvm.dbg.value(metadata i8 %or3, metadata !4413, metadata !DIExpression()), !dbg !4414
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4424
  %tobool = icmp eq %struct._IO_FILE* %6, null, !dbg !4424
  %tobool6 = icmp ne i8 %or3, 0, !dbg !4426
  %or.cond = and i1 %tobool, %tobool6, !dbg !4427
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !4427

if.end:                                           ; preds = %for.body
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !4428
  %7 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4428
  %call7 = tail call fastcc zeroext i8 @is_edge_inconsistent(%struct.VEC_edge_gc* %7) #8, !dbg !4429
  %or104 = or i8 %or3, %call7, !dbg !4430
  call void @llvm.dbg.value(metadata i8 %or104, metadata !4413, metadata !DIExpression()), !dbg !4414
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4431
  %tobool12 = icmp eq %struct._IO_FILE* %8, null, !dbg !4431
  %tobool15 = icmp ne i8 %or104, 0, !dbg !4433
  %or.cond1 = and i1 %tobool12, %tobool15, !dbg !4434
  br i1 %or.cond1, label %cleanup, label %if.end17, !dbg !4434

if.end17:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !4435
  %9 = load i64, i64* %count, align 8, !dbg !4435
  %cmp18 = icmp slt i64 %9, 0, !dbg !4437
  br i1 %cmp18, label %if.then20, label %if.end26, !dbg !4438

if.then20:                                        ; preds = %if.end17
  br i1 %tobool12, label %if.end26, label %if.then22, !dbg !4439

if.then22:                                        ; preds = %if.then20
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !4441
  %10 = load i32, i32* %index, align 8, !dbg !4441
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i32 %10, i64 %9) #6, !dbg !4444
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4445
  tail call void @dump_bb(%struct.basic_block_def* %bb.0, %struct._IO_FILE* %11, i32 0) #6, !dbg !4446
  %.pre6 = load i64, i64* %count, align 8, !dbg !4447
  br label %if.end26, !dbg !4449

if.end26:                                         ; preds = %if.then20, %if.then22, %if.end17
  %12 = phi i64 [ %9, %if.end17 ], [ %.pre6, %if.then22 ], [ %9, %if.then20 ], !dbg !4447
  %inconsistent.1 = phi i8 [ %or104, %if.end17 ], [ 1, %if.then22 ], [ 1, %if.then20 ], !dbg !4450
  call void @llvm.dbg.value(metadata i8 %inconsistent.1, metadata !4413, metadata !DIExpression()), !dbg !4414
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4451
  %call29 = tail call i64 @sum_edge_counts(%struct.VEC_edge_gc* %13) #6, !dbg !4452
  %cmp30 = icmp eq i64 %12, %call29, !dbg !4453
  br i1 %cmp30, label %if.end41, label %if.then32, !dbg !4454

if.then32:                                        ; preds = %if.end26
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4455
  %tobool33 = icmp eq %struct._IO_FILE* %14, null, !dbg !4455
  br i1 %tobool33, label %if.end41, label %if.then34, !dbg !4458

if.then34:                                        ; preds = %if.then32
  %index35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !4459
  %15 = load i32, i32* %index35, align 8, !dbg !4459
  %16 = load i64, i64* %count, align 8, !dbg !4461
  %17 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4462
  %call38 = tail call i64 @sum_edge_counts(%struct.VEC_edge_gc* %17) #6, !dbg !4463
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.33, i64 0, i64 0), i32 %15, i64 %16, i64 %call38) #6, !dbg !4464
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4465
  tail call void @dump_bb(%struct.basic_block_def* %bb.0, %struct._IO_FILE* %18, i32 0) #6, !dbg !4466
  br label %if.end41, !dbg !4467

if.end41:                                         ; preds = %if.then32, %if.end26, %if.then34
  %inconsistent.2 = phi i8 [ %inconsistent.1, %if.end26 ], [ 1, %if.then34 ], [ 1, %if.then32 ], !dbg !4450
  call void @llvm.dbg.value(metadata i8 %inconsistent.2, metadata !4413, metadata !DIExpression()), !dbg !4414
  %19 = load i64, i64* %count, align 8, !dbg !4468
  %20 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4470
  %call44 = tail call i64 @sum_edge_counts(%struct.VEC_edge_gc* %20) #6, !dbg !4471
  %cmp45 = icmp eq i64 %19, %call44, !dbg !4472
  br i1 %cmp45, label %if.end67, label %land.lhs.true47, !dbg !4473

land.lhs.true47:                                  ; preds = %if.end41
  %21 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4474
  %cfg49 = getelementptr inbounds %struct.function, %struct.function* %21, i64 0, i32 1, !dbg !4474
  %22 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg49, align 8, !dbg !4474
  %x_exit_block_ptr50 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 1, !dbg !4474
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr50, align 8, !dbg !4474
  %call51 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %bb.0, %struct.basic_block_def* %23) #6, !dbg !4475
  %cmp52 = icmp eq %struct.edge_def* %call51, null, !dbg !4476
  br i1 %cmp52, label %if.then58, label %land.lhs.true54, !dbg !4477

land.lhs.true54:                                  ; preds = %land.lhs.true47
  %call55 = tail call zeroext i8 @block_ends_with_call_p(%struct.basic_block_def* %bb.0) #6, !dbg !4478
  %tobool57 = icmp eq i8 %call55, 0, !dbg !4478
  br i1 %tobool57, label %if.then58, label %if.end67, !dbg !4479

if.then58:                                        ; preds = %land.lhs.true54, %land.lhs.true47
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4480
  %tobool59 = icmp eq %struct._IO_FILE* %24, null, !dbg !4480
  br i1 %tobool59, label %if.end67, label %if.then60, !dbg !4483

if.then60:                                        ; preds = %if.then58
  %index61 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !4484
  %25 = load i32, i32* %index61, align 8, !dbg !4484
  %26 = load i64, i64* %count, align 8, !dbg !4486
  %27 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4487
  %call64 = tail call i64 @sum_edge_counts(%struct.VEC_edge_gc* %27) #6, !dbg !4488
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.34, i64 0, i64 0), i32 %25, i64 %26, i64 %call64) #6, !dbg !4489
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4490
  tail call void @dump_bb(%struct.basic_block_def* %bb.0, %struct._IO_FILE* %28, i32 0) #6, !dbg !4491
  br label %if.end67, !dbg !4492

if.end67:                                         ; preds = %land.lhs.true54, %if.then58, %if.end41, %if.then60
  %inconsistent.3 = phi i8 [ %inconsistent.2, %land.lhs.true54 ], [ %inconsistent.2, %if.end41 ], [ 1, %if.then60 ], [ 1, %if.then58 ], !dbg !4450
  call void @llvm.dbg.value(metadata i8 %inconsistent.3, metadata !4413, metadata !DIExpression()), !dbg !4414
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4493
  %tobool68 = icmp eq %struct._IO_FILE* %29, null, !dbg !4493
  %tobool71 = icmp ne i8 %inconsistent.3, 0, !dbg !4495
  %or.cond2 = and i1 %tobool68, %tobool71, !dbg !4496
  br i1 %or.cond2, label %cleanup, label %for.inc, !dbg !4496

for.inc:                                          ; preds = %if.end67
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4417
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4497
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4417
  br label %for.cond, !dbg !4417, !llvm.loop !4498

cleanup:                                          ; preds = %for.cond, %if.end67, %if.end, %for.body
  %retval.0 = phi i8 [ 1, %for.body ], [ 1, %if.end ], [ 1, %if.end67 ], [ %inconsistent.0, %for.cond ], !dbg !4414
  ret i8 %retval.0, !dbg !4500
}

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @correct_negative_edge_counts() unnamed_addr #5 !dbg !4501 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4506
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4506
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4507
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4507
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4508
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4508
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4508
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !4508
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4510
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4510
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4510
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4514
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4514
  br label %for.cond, !dbg !4508

for.cond:                                         ; preds = %for.inc6, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.inc6 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4516
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4503, metadata !DIExpression()), !dbg !4517
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !4518
  br i1 %cmp, label %for.end7, label %for.body, !dbg !4508

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4519
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !4519
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4519
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4519
  store i32 %9, i32* %5, align 8, !dbg !4519
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4519
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %6, align 8, !dbg !4519
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !4519
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4519
  br label %for.cond1, !dbg !4519

for.cond1:                                        ; preds = %for.inc, %for.body
  %11 = load i32, i32* %7, align 8, !dbg !4520
  %12 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4520
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4504, metadata !DIExpression(DW_OP_deref)), !dbg !4517
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %11, %struct.VEC_edge_gc** %12, %struct.edge_def** nonnull %e) #8, !dbg !4520
  %tobool = icmp eq i8 %call2, 0, !dbg !4519
  br i1 %tobool, label %for.inc6, label %for.body3, !dbg !4519

for.body3:                                        ; preds = %for.cond1
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4521
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !4504, metadata !DIExpression()), !dbg !4517
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i64 0, i32 9, !dbg !4524
  %14 = load i64, i64* %count, align 8, !dbg !4524
  %cmp4 = icmp slt i64 %14, 0, !dbg !4525
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !4526

if.then:                                          ; preds = %for.body3
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !4504, metadata !DIExpression()), !dbg !4517
  store i64 0, i64* %count, align 8, !dbg !4527
  br label %for.inc, !dbg !4528

for.inc:                                          ; preds = %for.body3, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4505, metadata !DIExpression(DW_OP_deref)), !dbg !4517
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4520
  br label %for.cond1, !dbg !4520, !llvm.loop !4529

for.inc6:                                         ; preds = %for.cond1
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !4518
  br label %for.cond, !dbg !4518, !llvm.loop !4531

for.end7:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4533
  ret void, !dbg !4533
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_bb_counts() unnamed_addr #5 !dbg !4534 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4537
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4537
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4537
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4537
  br label %for.cond, !dbg !4537

for.cond:                                         ; preds = %for.inc, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.inc ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4539
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4536, metadata !DIExpression()), !dbg !4540
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !4541
  br i1 %cmp, label %for.end, label %for.body, !dbg !4537

for.body:                                         ; preds = %for.cond
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !4543
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4543
  %call = tail call i64 @sum_edge_counts(%struct.VEC_edge_gc* %2) #6, !dbg !4545
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !4546
  store i64 %call, i64* %count, align 8, !dbg !4547
  %cmp2 = icmp sgt i64 %call, -1, !dbg !4548
  br i1 %cmp2, label %for.inc, label %cond.true, !dbg !4548

cond.true:                                        ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 384, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4548
  br label %for.inc, !dbg !4548

for.inc:                                          ; preds = %cond.true, %for.body
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !4541
  br label %for.cond, !dbg !4541, !llvm.loop !4549

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4551
}

declare dso_local void @mcf_smooth_cfg() local_unnamed_addr #2

declare dso_local zeroext i8 @block_ends_with_call_p(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @block_ends_with_condjump_p(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @counts_to_freqs() local_unnamed_addr #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @free_aux_for_blocks() local_unnamed_addr #2

declare dso_local i64* @get_coverage_counts(i32, i32, %struct.gcov_ctr_summary**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @is_edge_inconsistent(%struct.VEC_edge_gc* %edges) unnamed_addr #5 !dbg !4552 {
entry:
  %edges.addr = alloca %struct.VEC_edge_gc*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc* %edges, metadata !4556, metadata !DIExpression()), !dbg !4559
  store %struct.VEC_edge_gc* %edges, %struct.VEC_edge_gc** %edges.addr, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4560
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4561
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4561
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4562
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4562
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %edges.addr, metadata !4556, metadata !DIExpression(DW_OP_deref)), !dbg !4559
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %edges.addr) #8, !dbg !4562
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4562
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4562
  store i32 %4, i32* %3, align 8, !dbg !4562
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4562
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4562
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !4562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !4562
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4562
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4564
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4564
  br label %for.cond, !dbg !4562

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !4566
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4566
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4557, metadata !DIExpression(DW_OP_deref)), !dbg !4559
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #8, !dbg !4566
  %tobool = icmp eq i8 %call1, 0, !dbg !4562
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !4562

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4567
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !4557, metadata !DIExpression()), !dbg !4559
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 3, !dbg !4567
  %12 = load i8*, i8** %aux, align 8, !dbg !4567
  %bf.load = load i8, i8* %12, align 4, !dbg !4570
  %bf.clear = and i8 %bf.load, 4, !dbg !4570
  %tobool2 = icmp eq i8 %bf.clear, 0, !dbg !4567
  br i1 %tobool2, label %if.then, label %for.inc, !dbg !4571

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !4557, metadata !DIExpression()), !dbg !4559
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 9, !dbg !4572
  %13 = load i64, i64* %count, align 8, !dbg !4572
  %cmp = icmp slt i64 %13, 0, !dbg !4575
  br i1 %cmp, label %land.lhs.true, label %for.inc, !dbg !4576

land.lhs.true:                                    ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !4557, metadata !DIExpression()), !dbg !4559
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !4577
  %14 = load i32, i32* %flags, align 8, !dbg !4577
  %and = and i32 %14, 16, !dbg !4578
  %tobool3 = icmp eq i32 %and, 0, !dbg !4578
  br i1 %tobool3, label %if.then6, label %lor.lhs.false, !dbg !4579

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !4557, metadata !DIExpression()), !dbg !4559
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 0, !dbg !4580
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4580
  %call4 = call zeroext i8 @block_ends_with_call_p(%struct.basic_block_def* %15) #6, !dbg !4581
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4581
  br i1 %tobool5, label %if.then6, label %for.inc, !dbg !4582

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4583
  %tobool7 = icmp eq %struct._IO_FILE* %16, null, !dbg !4583
  br i1 %tobool7, label %cleanup, label %if.then8, !dbg !4586

if.then8:                                         ; preds = %if.then6
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4587
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !4557, metadata !DIExpression()), !dbg !4559
  %src9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 0, !dbg !4589
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src9, align 8, !dbg !4589
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 9, !dbg !4590
  %19 = load i32, i32* %index, align 8, !dbg !4590
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !4557, metadata !DIExpression()), !dbg !4559
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 1, !dbg !4591
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4591
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 9, !dbg !4592
  %21 = load i32, i32* %index10, align 8, !dbg !4592
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !4557, metadata !DIExpression()), !dbg !4559
  %count11 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 9, !dbg !4593
  %22 = load i64, i64* %count11, align 8, !dbg !4593
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), i32 %19, i32 %21, i64 %22) #6, !dbg !4594
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4595
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !4557, metadata !DIExpression()), !dbg !4559
  %src13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 0, !dbg !4596
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src13, align 8, !dbg !4596
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4597
  call void @dump_bb(%struct.basic_block_def* %24, %struct._IO_FILE* %25, i32 0) #6, !dbg !4598
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4599
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !4557, metadata !DIExpression()), !dbg !4559
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 1, !dbg !4600
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8, !dbg !4600
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4601
  call void @dump_bb(%struct.basic_block_def* %27, %struct._IO_FILE* %28, i32 0) #6, !dbg !4602
  br label %cleanup, !dbg !4603

for.inc:                                          ; preds = %lor.lhs.false, %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4558, metadata !DIExpression(DW_OP_deref)), !dbg !4559
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4566
  br label %for.cond, !dbg !4566, !llvm.loop !4604

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !4606

cleanup:                                          ; preds = %cleanup.loopexit, %if.then6, %if.then8
  %retval.0 = phi i8 [ 1, %if.then8 ], [ 1, %if.then6 ], [ 0, %cleanup.loopexit ], !dbg !4559
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4606
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4606
  ret i8 %retval.0, !dbg !4606
}

declare dso_local void @dump_bb(%struct.basic_block_def*, %struct._IO_FILE*, i32) local_unnamed_addr #2

declare dso_local i64 @sum_edge_counts(%struct.VEC_edge_gc*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_histogram_value_base_length(%struct.VEC_histogram_value_base* %vec_) unnamed_addr #0 !dbg !4607 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_base* %vec_, metadata !4613, metadata !DIExpression()), !dbg !4614
  %tobool = icmp eq %struct.VEC_histogram_value_base* %vec_, null, !dbg !4615
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4615

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 0, !dbg !4615
  %0 = load i32, i32* %num, align 8, !dbg !4615
  br label %cond.end, !dbg !4615

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4615
  ret i32 %cond, !dbg !4615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.histogram_value_t* @VEC_histogram_value_base_index(%struct.VEC_histogram_value_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4616 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_base* %vec_, metadata !4620, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4621, metadata !DIExpression()), !dbg !4622
  br label %land.end, !dbg !4623

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4623
  %arrayidx = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4623
  %0 = load %struct.histogram_value_t*, %struct.histogram_value_t** %arrayidx, align 8, !dbg !4623
  ret %struct.histogram_value_t* %0, !dbg !4623
}

declare dso_local void @gimple_add_histogram_value(%struct.function*, %union.gimple_statement_d*, %struct.histogram_value_t*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @union_groups(%struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) unnamed_addr #5 !dbg !4624 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb1, metadata !4628, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2, metadata !4629, metadata !DIExpression()), !dbg !4632
  %call = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %bb1) #8, !dbg !4633
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4630, metadata !DIExpression()), !dbg !4632
  %call1 = tail call fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %bb2) #8, !dbg !4634
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !4631, metadata !DIExpression()), !dbg !4632
  %cmp = icmp eq %struct.basic_block_def* %call, %call1, !dbg !4635
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4635

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 1236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4635
  br label %cond.end, !dbg !4635

cond.end:                                         ; preds = %entry, %cond.true
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 2, !dbg !4636
  %0 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !4637
  store %struct.basic_block_def* %call1, %struct.basic_block_def** %0, align 8, !dbg !4637
  ret void, !dbg !4638
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @find_group(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !4639 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4643, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4644, metadata !DIExpression()), !dbg !4646
  br label %while.cond, !dbg !4647

while.cond:                                       ; preds = %while.body, %entry
  %group.0 = phi %struct.basic_block_def* [ %bb, %entry ], [ %1, %while.body ], !dbg !4646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %group.0, metadata !4644, metadata !DIExpression()), !dbg !4646
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %group.0, i64 0, i32 2, !dbg !4648
  %0 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !4648
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %0, align 8, !dbg !4648
  %cmp = icmp eq %struct.basic_block_def* %1, %group.0, !dbg !4649
  br i1 %cmp, label %while.cond2.preheader, label %while.body, !dbg !4647

while.cond2.preheader:                            ; preds = %while.cond
  %group.0.lcssa = phi %struct.basic_block_def* [ %group.0, %while.cond ], !dbg !4646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %group.0.lcssa, metadata !4644, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %group.0.lcssa, metadata !4644, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %group.0.lcssa, metadata !4644, metadata !DIExpression()), !dbg !4646
  br label %while.cond2, !dbg !4650

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !4644, metadata !DIExpression()), !dbg !4646
  br label %while.cond, !dbg !4647, !llvm.loop !4651

while.cond2:                                      ; preds = %while.cond2.preheader, %while.body5
  %bb.addr.0 = phi %struct.basic_block_def* [ %3, %while.body5 ], [ %bb, %while.cond2.preheader ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0, metadata !4643, metadata !DIExpression()), !dbg !4646
  %aux3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 2, !dbg !4653
  %2 = bitcast i8** %aux3 to %struct.basic_block_def**, !dbg !4653
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %2, align 8, !dbg !4653
  %cmp4 = icmp eq %struct.basic_block_def* %3, %group.0.lcssa, !dbg !4654
  br i1 %cmp4, label %while.end8, label %while.body5, !dbg !4650

while.body5:                                      ; preds = %while.cond2
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !4645, metadata !DIExpression()), !dbg !4646
  store %struct.basic_block_def* %group.0.lcssa, %struct.basic_block_def** %2, align 8, !dbg !4655
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !4643, metadata !DIExpression()), !dbg !4646
  br label %while.cond2, !dbg !4650, !llvm.loop !4657

while.end8:                                       ; preds = %while.cond2
  ret %struct.basic_block_def* %group.0.lcssa, !dbg !4659
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1972, !1973, !1974}
!llvm.ident = !{!1975}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "total_num_times_called", scope: !2, file: !3, line: 101, type: !403, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !400, globals: !1812, nameTableKind: None)
!3 = !DIFile(filename: "profile.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !154, !158, !163, !182, !189, !196, !390}
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
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hist_type", file: !391, line: 24, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./value-prof.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396, !397, !398, !399}
!393 = !DIEnumerator(name: "HIST_TYPE_INTERVAL", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "HIST_TYPE_POW2", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "HIST_TYPE_SINGLE_VALUE", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "HIST_TYPE_CONST_DELTA", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "HIST_TYPE_INDIR_CALL", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "HIST_TYPE_AVERAGE", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "HIST_TYPE_IOR", value: 6, isUnsigned: true)
!400 = !{!401, !402, !403, !404, !407, !408, !410, !412, !419, !7, !421, !427, !429, !430}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!403 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !411, line: 44, baseType: !7)
!411 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_info", file: !414, line: 27, size: 32, elements: !415)
!414 = !DIFile(filename: "./profile.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!415 = !{!416, !417, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "count_valid", scope: !413, file: !414, line: 29, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "on_tree", scope: !413, file: !414, line: 32, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !413, file: !414, line: 36, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_unsigned_t", file: !420, line: 205, baseType: !7)
!420 = !DIFile(filename: "./gcov-io.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bb_info", file: !3, line: 77, size: 192, elements: !423)
!423 = !{!424, !425, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "count_valid", scope: !422, file: !3, line: 78, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "succ_count", scope: !422, file: !3, line: 81, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !427)
!427 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pred_count", scope: !422, file: !3, line: 82, baseType: !426, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !431, line: 111, baseType: !432)
!431 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !434)
!434 = !{!435, !1779, !1780, !1781, !1782, !1786, !1787, !1788, !1806, !1807, !1808, !1809, !1810, !1811}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !433, file: !135, line: 219, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !438, file: !135, line: 151, baseType: !441, size: 128)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !442, file: !135, line: 150, baseType: !7, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !442, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !442, file: !135, line: 150, baseType: !447, size: 64, offset: 64)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 64, elements: !589)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !431, line: 108, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !451)
!451 = !{!452, !453, !454, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !450, file: !135, line: 124, baseType: !432, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !450, file: !135, line: 125, baseType: !432, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !450, file: !135, line: 131, baseType: !455, size: 64, offset: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !456)
!456 = !{!457, !1771}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !455, file: !135, line: 129, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !431, line: 66, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !461, line: 143, size: 192, elements: !462)
!461 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!462 = !{!463, !1769, !1770}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !460, file: !461, line: 145, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !431, line: 69, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !461, line: 136, size: 192, elements: !467)
!467 = !{!468, !1767, !1768}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !466, file: !461, line: 137, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !431, line: 58, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !461, line: 737, size: 768, elements: !472)
!472 = !{!473, !1614, !1624, !1630, !1635, !1640, !1647, !1653, !1659, !1664, !1678, !1683, !1689, !1694, !1704, !1709, !1725, !1732, !1739, !1745, !1750, !1756, !1762}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !471, file: !461, line: 738, baseType: !474, size: 256)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !461, line: 271, size: 256, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !489, !490, !491}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !474, file: !461, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !474, file: !461, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !474, file: !461, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !474, file: !461, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !474, file: !461, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !474, file: !461, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !474, file: !461, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !474, file: !461, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !474, file: !461, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !474, file: !461, line: 312, baseType: !7, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !474, file: !461, line: 316, baseType: !487, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !488, line: 58, baseType: !410)
!488 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!489 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !474, file: !461, line: 319, baseType: !7, size: 32, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !474, file: !461, line: 323, baseType: !432, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !474, file: !461, line: 327, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !431, line: 56, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !164, line: 3371, size: 1792, elements: !495)
!495 = !{!496, !529, !535, !547, !566, !577, !582, !591, !597, !610, !618, !656, !864, !892, !909, !910, !915, !924, !930, !935, !939, !943, !1265, !1312, !1318, !1324, !1331, !1344, !1358, !1375, !1387, !1409, !1424, !1596}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !494, file: !164, line: 3372, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !164, line: 360, size: 64, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !497, file: !164, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !497, file: !164, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !497, file: !164, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !497, file: !164, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !497, file: !164, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !497, file: !164, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !497, file: !164, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !497, file: !164, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !497, file: !164, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !497, file: !164, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !497, file: !164, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !497, file: !164, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !497, file: !164, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !497, file: !164, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !497, file: !164, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !497, file: !164, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !497, file: !164, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !497, file: !164, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !497, file: !164, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !497, file: !164, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !497, file: !164, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !497, file: !164, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !497, file: !164, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !497, file: !164, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !497, file: !164, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !497, file: !164, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !497, file: !164, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !497, file: !164, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !497, file: !164, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !497, file: !164, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !494, file: !164, line: 3373, baseType: !530, size: 192)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !164, line: 402, size: 192, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !530, file: !164, line: 403, baseType: !497, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !530, file: !164, line: 404, baseType: !492, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !164, line: 405, baseType: !492, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !494, file: !164, line: 3374, baseType: !536, size: 320)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !164, line: 1384, size: 320, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !536, file: !164, line: 1385, baseType: !530, size: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !536, file: !164, line: 1386, baseType: !540, size: 128, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !541, line: 58, baseType: !542)
!541 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !541, line: 54, size: 128, elements: !543)
!543 = !{!544, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !542, file: !541, line: 56, baseType: !545, size: 64)
!545 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !542, file: !541, line: 57, baseType: !427, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !494, file: !164, line: 3375, baseType: !548, size: 256)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !164, line: 1397, size: 256, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !548, file: !164, line: 1398, baseType: !530, size: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !548, file: !164, line: 1399, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !554, line: 52, size: 256, elements: !555)
!554 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!555 = !{!556, !557, !558, !559, !560, !561, !562}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !553, file: !554, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !553, file: !554, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !553, file: !554, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !553, file: !554, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !553, file: !554, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !553, file: !554, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !553, file: !554, line: 62, baseType: !563, size: 192, offset: 64)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 192, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 3)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !494, file: !164, line: 3376, baseType: !567, size: 256)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !164, line: 1408, size: 256, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !567, file: !164, line: 1409, baseType: !530, size: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !567, file: !164, line: 1410, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !573, line: 27, size: 192, elements: !574)
!573 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !572, file: !573, line: 29, baseType: !540, size: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !572, file: !573, line: 30, baseType: !5, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !494, file: !164, line: 3377, baseType: !578, size: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !164, line: 1437, size: 256, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !578, file: !164, line: 1438, baseType: !530, size: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !578, file: !164, line: 1439, baseType: !492, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !494, file: !164, line: 3378, baseType: !583, size: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !164, line: 1418, size: 256, elements: !584)
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !583, file: !164, line: 1419, baseType: !530, size: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !583, file: !164, line: 1420, baseType: !403, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !583, file: !164, line: 1421, baseType: !588, size: 8, offset: 224)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 8, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 1)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !494, file: !164, line: 3379, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !164, line: 1428, size: 320, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !592, file: !164, line: 1429, baseType: !530, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !592, file: !164, line: 1430, baseType: !492, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !592, file: !164, line: 1431, baseType: !492, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !494, file: !164, line: 3380, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !164, line: 1460, size: 320, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !598, file: !164, line: 1461, baseType: !530, size: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !598, file: !164, line: 1462, baseType: !602, size: 128, offset: 192)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !603, line: 31, size: 128, elements: !604)
!603 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!604 = !{!605, !608, !609}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !602, file: !603, line: 32, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !602, file: !603, line: 33, baseType: !7, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !602, file: !603, line: 34, baseType: !7, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !494, file: !164, line: 3381, baseType: !611, size: 384)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !164, line: 2507, size: 384, elements: !612)
!612 = !{!613, !614, !615, !616, !617}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !611, file: !164, line: 2508, baseType: !530, size: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !611, file: !164, line: 2509, baseType: !487, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !611, file: !164, line: 2510, baseType: !7, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !611, file: !164, line: 2511, baseType: !492, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !611, file: !164, line: 2512, baseType: !492, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !494, file: !164, line: 3382, baseType: !619, size: 896)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !164, line: 2652, size: 896, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !619, file: !164, line: 2653, baseType: !611, size: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !164, line: 2654, baseType: !492, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !619, file: !164, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !619, file: !164, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !619, file: !164, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !619, file: !164, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !619, file: !164, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !619, file: !164, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !619, file: !164, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !619, file: !164, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !619, file: !164, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !619, file: !164, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !619, file: !164, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !619, file: !164, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !619, file: !164, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !619, file: !164, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !619, file: !164, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !619, file: !164, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !619, file: !164, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !619, file: !164, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !619, file: !164, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !619, file: !164, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !619, file: !164, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !619, file: !164, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !619, file: !164, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !619, file: !164, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !619, file: !164, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !619, file: !164, line: 2703, baseType: !7, size: 32, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !619, file: !164, line: 2705, baseType: !492, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !619, file: !164, line: 2706, baseType: !492, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !619, file: !164, line: 2707, baseType: !492, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !619, file: !164, line: 2708, baseType: !492, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !619, file: !164, line: 2711, baseType: !654, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !164, line: 2711, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !494, file: !164, line: 3383, baseType: !657, size: 960)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !164, line: 2756, size: 960, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !657, file: !164, line: 2757, baseType: !619, size: 896)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !657, file: !164, line: 2758, baseType: !661, size: 64, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !431, line: 50, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !664, line: 240, size: 384, elements: !665)
!664 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !663, file: !664, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !663, file: !664, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !663, file: !664, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !663, file: !664, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !663, file: !664, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !663, file: !664, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !663, file: !664, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !663, file: !664, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !663, file: !664, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !663, file: !664, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !663, file: !664, line: 321, baseType: !677, size: 320, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !664, line: 315, size: 320, elements: !678)
!678 = !{!679, !797, !799, !862, !863}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !677, file: !664, line: 316, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 64, elements: !589)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !664, line: 183, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !664, line: 166, size: 64, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !696, !697, !709, !712, !772, !773, !774, !787, !794}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !682, file: !664, line: 168, baseType: !403, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !682, file: !664, line: 169, baseType: !7, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !682, file: !664, line: 170, baseType: !408, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !682, file: !664, line: 171, baseType: !661, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !682, file: !664, line: 172, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !431, line: 53, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !664, line: 359, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !691, file: !664, line: 360, baseType: !403, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !691, file: !664, line: 361, baseType: !695, size: 64, offset: 64)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 64, elements: !589)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !682, file: !664, line: 173, baseType: !5, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !682, file: !664, line: 174, baseType: !698, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !664, line: 133, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !664, line: 115, size: 32, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !699, file: !664, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !699, file: !664, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !699, file: !664, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !699, file: !664, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !699, file: !664, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !699, file: !664, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !699, file: !664, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !699, file: !664, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !682, file: !664, line: 175, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !664, line: 175, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !682, file: !664, line: 176, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !715, line: 75, size: 256, elements: !716)
!715 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!716 = !{!717, !731, !732, !733}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !714, file: !715, line: 76, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !715, line: 68, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !715, line: 63, size: 320, elements: !721)
!721 = !{!722, !724, !725, !726}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !715, line: 64, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !720, file: !715, line: 65, baseType: !723, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !720, file: !715, line: 66, baseType: !7, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !720, file: !715, line: 67, baseType: !727, size: 128, offset: 192)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 128, elements: !729)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !715, line: 29, baseType: !545)
!729 = !{!730}
!730 = !DISubrange(count: 2)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !714, file: !715, line: 77, baseType: !718, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !714, file: !715, line: 78, baseType: !7, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !714, file: !715, line: 79, baseType: !734, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !715, line: 49, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !715, line: 45, size: 832, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !736, file: !715, line: 46, baseType: !723, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !736, file: !715, line: 47, baseType: !713, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !736, file: !715, line: 48, baseType: !741, size: 704, offset: 128)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !742, line: 164, size: 704, elements: !743)
!742 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!743 = !{!744, !745, !755, !756, !757, !758, !759, !760, !764, !768, !769, !770, !771}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !741, file: !742, line: 166, baseType: !427, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !741, file: !742, line: 167, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !742, line: 157, size: 192, elements: !748)
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !747, file: !742, line: 159, baseType: !405, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !747, file: !742, line: 160, baseType: !746, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !747, file: !742, line: 161, baseType: !752, size: 32, offset: 128)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 32, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 4)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !741, file: !742, line: 168, baseType: !405, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !741, file: !742, line: 169, baseType: !405, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !741, file: !742, line: 170, baseType: !405, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !741, file: !742, line: 171, baseType: !427, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !741, file: !742, line: 172, baseType: !403, size: 32, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !741, file: !742, line: 176, baseType: !761, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!746, !407, !427}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !741, file: !742, line: 177, baseType: !765, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !407, !746}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !741, file: !742, line: 178, baseType: !407, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !741, file: !742, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !741, file: !742, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !741, file: !742, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !682, file: !664, line: 177, baseType: !492, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !682, file: !664, line: 178, baseType: !432, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !682, file: !664, line: 179, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !664, line: 150, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !664, line: 142, size: 320, elements: !778)
!778 = !{!779, !780, !781, !782, !785, !786}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !777, file: !664, line: 144, baseType: !492, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !777, file: !664, line: 145, baseType: !661, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !777, file: !664, line: 146, baseType: !661, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !777, file: !664, line: 147, baseType: !783, size: 32, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !784, line: 31, baseType: !403)
!784 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!785 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !777, file: !664, line: 148, baseType: !7, size: 32, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !777, file: !664, line: 149, baseType: !402, size: 8, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !682, file: !664, line: 180, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !664, line: 162, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !664, line: 159, size: 128, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !790, file: !664, line: 160, baseType: !492, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !790, file: !664, line: 161, baseType: !427, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !682, file: !664, line: 181, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !664, line: 181, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !677, file: !664, line: 317, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 64, elements: !589)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !677, file: !664, line: 318, baseType: !800, size: 320)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !664, line: 188, size: 320, elements: !801)
!801 = !{!802, !804, !861}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !800, file: !664, line: 190, baseType: !803, size: 192)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 192, elements: !564)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !800, file: !664, line: 193, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !664, line: 206, size: 320, elements: !807)
!807 = !{!808, !846, !847, !848, !860}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !806, file: !664, line: 208, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !431, line: 62, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !812, line: 538, size: 256, elements: !813)
!812 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!813 = !{!814, !818, !824, !837}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !811, file: !812, line: 539, baseType: !815, size: 32)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !812, line: 482, size: 32, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !812, line: 484, baseType: !7, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !811, file: !812, line: 540, baseType: !819, size: 192)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !812, line: 488, size: 192, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !812, line: 489, baseType: !815, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !819, file: !812, line: 492, baseType: !408, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !819, file: !812, line: 496, baseType: !492, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !811, file: !812, line: 541, baseType: !825, size: 256)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !812, line: 504, size: 256, elements: !826)
!826 = !{!827, !828, !835, !836}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !825, file: !812, line: 505, baseType: !815, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !825, file: !812, line: 509, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !812, line: 501, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !825, file: !812, line: 510, baseType: !833, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !812, line: 513, baseType: !809, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !811, file: !812, line: 542, baseType: !838, size: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !812, line: 530, size: 128, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !838, file: !812, line: 531, baseType: !815, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !838, file: !812, line: 534, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !812, line: 525, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!402, !492, !408, !545, !545}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !806, file: !664, line: 211, baseType: !7, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !806, file: !664, line: 214, baseType: !427, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !806, file: !664, line: 224, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !664, line: 202, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !664, line: 202, size: 128, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !851, file: !664, line: 202, baseType: !854, size: 128)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !664, line: 200, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !664, line: 200, size: 128, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !855, file: !664, line: 200, baseType: !7, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !855, file: !664, line: 200, baseType: !7, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !855, file: !664, line: 200, baseType: !695, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !806, file: !664, line: 234, baseType: !849, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !800, file: !664, line: 197, baseType: !427, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !677, file: !664, line: 319, baseType: !553, size: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !677, file: !664, line: 320, baseType: !572, size: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !494, file: !164, line: 3384, baseType: !865, size: 1472)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !164, line: 3114, size: 1472, elements: !866)
!866 = !{!867, !888, !889, !890, !891}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !865, file: !164, line: 3115, baseType: !868, size: 1216)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !164, line: 2984, size: 1216, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !868, file: !164, line: 2985, baseType: !657, size: 960)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !868, file: !164, line: 2986, baseType: !492, size: 64, offset: 960)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !868, file: !164, line: 2987, baseType: !492, size: 64, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !868, file: !164, line: 2988, baseType: !492, size: 64, offset: 1088)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !868, file: !164, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !868, file: !164, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !868, file: !164, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !868, file: !164, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !868, file: !164, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !868, file: !164, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !868, file: !164, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !868, file: !164, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !868, file: !164, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !868, file: !164, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !868, file: !164, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !868, file: !164, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !868, file: !164, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !868, file: !164, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !865, file: !164, line: 3117, baseType: !492, size: 64, offset: 1216)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !865, file: !164, line: 3119, baseType: !492, size: 64, offset: 1280)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !865, file: !164, line: 3121, baseType: !492, size: 64, offset: 1344)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !865, file: !164, line: 3123, baseType: !492, size: 64, offset: 1408)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !494, file: !164, line: 3385, baseType: !893, size: 1088)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !164, line: 2874, size: 1088, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !893, file: !164, line: 2875, baseType: !657, size: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !893, file: !164, line: 2876, baseType: !661, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !893, file: !164, line: 2877, baseType: !898, size: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !900, line: 172, size: 128, elements: !901)
!900 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!901 = !{!902, !903, !904, !905, !906, !907, !908}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !899, file: !900, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !899, file: !900, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !899, file: !900, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !899, file: !900, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !899, file: !900, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !899, file: !900, line: 195, baseType: !7, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !899, file: !900, line: 199, baseType: !492, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !494, file: !164, line: 3386, baseType: !868, size: 1216)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !494, file: !164, line: 3387, baseType: !911, size: 1280)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !164, line: 3093, size: 1280, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !911, file: !164, line: 3094, baseType: !868, size: 1216)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !911, file: !164, line: 3095, baseType: !898, size: 64, offset: 1216)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !494, file: !164, line: 3388, baseType: !916, size: 1216)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !164, line: 2824, size: 1216, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !916, file: !164, line: 2825, baseType: !619, size: 896)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !916, file: !164, line: 2827, baseType: !492, size: 64, offset: 896)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !916, file: !164, line: 2828, baseType: !492, size: 64, offset: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !916, file: !164, line: 2829, baseType: !492, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !916, file: !164, line: 2830, baseType: !492, size: 64, offset: 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !916, file: !164, line: 2831, baseType: !492, size: 64, offset: 1152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !494, file: !164, line: 3389, baseType: !925, size: 1024)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !164, line: 2850, size: 1024, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !925, file: !164, line: 2851, baseType: !657, size: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !925, file: !164, line: 2852, baseType: !403, size: 32, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !925, file: !164, line: 2853, baseType: !403, size: 32, offset: 992)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !494, file: !164, line: 3390, baseType: !931, size: 1024)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !164, line: 2857, size: 1024, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !931, file: !164, line: 2858, baseType: !657, size: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !931, file: !164, line: 2859, baseType: !898, size: 64, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !494, file: !164, line: 3391, baseType: !936, size: 960)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !164, line: 2862, size: 960, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !936, file: !164, line: 2863, baseType: !657, size: 960)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !494, file: !164, line: 3392, baseType: !940, size: 1472)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !164, line: 3304, size: 1472, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !940, file: !164, line: 3305, baseType: !865, size: 1472)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !494, file: !164, line: 3393, baseType: !944, size: 1792)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !164, line: 3248, size: 1792, elements: !945)
!945 = !{!946, !947, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !944, file: !164, line: 3249, baseType: !865, size: 1472)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !944, file: !164, line: 3251, baseType: !948, size: 64, offset: 1472)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !950, line: 463, size: 1152, elements: !951)
!950 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!951 = !{!952, !955, !985, !986, !1125, !1188, !1189, !1190, !1191, !1192, !1193, !1217, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !949, file: !950, line: 464, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !950, line: 464, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !949, file: !950, line: 467, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !958)
!958 = !{!959, !960, !961, !974, !975, !976, !977, !978, !979, !981, !983, !984}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !957, file: !135, line: 377, baseType: !430, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !957, file: !135, line: 378, baseType: !430, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !957, file: !135, line: 381, baseType: !962, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !964, file: !135, line: 282, baseType: !967, size: 128)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !968, file: !135, line: 281, baseType: !7, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !968, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !968, file: !135, line: 281, baseType: !973, size: 64, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 64, elements: !589)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !957, file: !135, line: 384, baseType: !403, size: 32, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !957, file: !135, line: 387, baseType: !403, size: 32, offset: 224)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !957, file: !135, line: 390, baseType: !403, size: 32, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !957, file: !135, line: 394, baseType: !962, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !957, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !957, file: !135, line: 399, baseType: !980, size: 64, offset: 416)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !729)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !957, file: !135, line: 402, baseType: !982, size: 64, offset: 480)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !729)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !957, file: !135, line: 406, baseType: !403, size: 32, offset: 544)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !957, file: !135, line: 409, baseType: !403, size: 32, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !949, file: !950, line: 470, baseType: !459, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !949, file: !950, line: 473, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !900, line: 39, size: 1152, elements: !989)
!989 = !{!990, !1040, !1053, !1066, !1067, !1079, !1080, !1084, !1085, !1086, !1087, !1088}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !988, file: !900, line: 41, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !992, line: 144, baseType: !993)
!992 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !992, line: 100, size: 896, elements: !995)
!995 = !{!996, !1002, !1007, !1012, !1014, !1017, !1018, !1019, !1020, !1021, !1026, !1028, !1029, !1034, !1039}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !994, file: !992, line: 102, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !992, line: 52, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!1001, !833}
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !992, line: 47, baseType: !7)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !994, file: !992, line: 105, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !992, line: 59, baseType: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!403, !833, !833}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !994, file: !992, line: 108, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !992, line: 63, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !407}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !994, file: !992, line: 111, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !994, file: !992, line: 114, baseType: !1015, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1016, line: 46, baseType: !545)
!1016 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !994, file: !992, line: 117, baseType: !1015, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !994, file: !992, line: 120, baseType: !1015, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !994, file: !992, line: 124, baseType: !7, size: 32, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !994, file: !992, line: 128, baseType: !7, size: 32, offset: 480)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !994, file: !992, line: 131, baseType: !1022, size: 64, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !992, line: 75, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!407, !1015, !1015}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !994, file: !992, line: 132, baseType: !1027, size: 64, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !992, line: 78, baseType: !1009)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !994, file: !992, line: 135, baseType: !407, size: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !994, file: !992, line: 136, baseType: !1030, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !992, line: 82, baseType: !1031)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!407, !407, !1015, !1015}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !994, file: !992, line: 137, baseType: !1035, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !992, line: 83, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !407, !407}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !994, file: !992, line: 141, baseType: !7, size: 32, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !988, file: !900, line: 48, baseType: !1041, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !461, line: 35, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !461, line: 35, size: 128, elements: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1043, file: !461, line: 35, baseType: !1046, size: 128)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !461, line: 33, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !461, line: 33, size: 128, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1047, file: !461, line: 33, baseType: !7, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1047, file: !461, line: 33, baseType: !7, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1047, file: !461, line: 33, baseType: !1052, size: 64, offset: 64)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 64, elements: !589)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !988, file: !900, line: 51, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !164, line: 183, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !164, line: 183, size: 128, elements: !1057)
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1056, file: !164, line: 183, baseType: !1059, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !164, line: 182, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !164, line: 182, size: 128, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1060, file: !164, line: 182, baseType: !7, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1060, file: !164, line: 182, baseType: !7, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1060, file: !164, line: 182, baseType: !1065, size: 64, offset: 64)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 64, elements: !589)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !988, file: !900, line: 54, baseType: !492, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !988, file: !900, line: 57, baseType: !1068, size: 128, offset: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1069, line: 31, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1068, file: !1069, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1068, file: !1069, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1068, file: !1069, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1068, file: !1069, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1068, file: !1069, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1068, file: !1069, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1068, file: !1069, line: 56, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !431, line: 47, baseType: !713)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !988, file: !900, line: 60, baseType: !1068, size: 128, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !988, file: !900, line: 64, baseType: !1081, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1083, line: 33, flags: DIFlagFwdDecl)
!1083 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !988, file: !900, line: 67, baseType: !492, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !988, file: !900, line: 73, baseType: !991, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !988, file: !900, line: 77, baseType: !1078, size: 64, offset: 704)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !988, file: !900, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !988, file: !900, line: 82, baseType: !1089, size: 320, offset: 832)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1090, line: 62, size: 320, elements: !1091)
!1090 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1091 = !{!1092, !1098, !1099, !1100, !1101, !1108}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1089, file: !1090, line: 63, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1090, line: 56, size: 128, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !1090, line: 57, baseType: !1093, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1094, file: !1090, line: 58, baseType: !588, size: 8, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1089, file: !1090, line: 64, baseType: !7, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1089, file: !1090, line: 66, baseType: !7, size: 32, offset: 96)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1089, file: !1090, line: 68, baseType: !402, size: 8, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1089, file: !1090, line: 70, baseType: !1102, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1090, line: 37, size: 128, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1103, file: !1090, line: 39, baseType: !1102, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1103, file: !1090, line: 40, baseType: !1107, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1089, file: !1090, line: 71, baseType: !1109, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1090, line: 45, size: 320, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1110, file: !1090, line: 47, baseType: !1109, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1110, file: !1090, line: 48, baseType: !1114, size: 256, offset: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !164, line: 1883, size: 256, elements: !1115)
!1115 = !{!1116, !1118, !1119, !1124}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1114, file: !164, line: 1884, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !164, line: 1885, baseType: !1117, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1114, file: !164, line: 1891, baseType: !1120, size: 64, offset: 128)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !164, line: 1891, size: 64, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1120, file: !164, line: 1891, baseType: !469, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1120, file: !164, line: 1891, baseType: !492, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1114, file: !164, line: 1892, baseType: !1107, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !949, file: !950, line: 476, baseType: !1126, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !146, line: 187, size: 256, elements: !1128)
!1128 = !{!1129, !1130, !1186, !1187}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1127, file: !146, line: 189, baseType: !403, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1127, file: !146, line: 192, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !146, line: 87, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !146, line: 87, size: 128, elements: !1134)
!1134 = !{!1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1133, file: !146, line: 87, baseType: !1136, size: 128)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !146, line: 85, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !146, line: 85, size: 128, elements: !1138)
!1138 = !{!1139, !1140, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1137, file: !146, line: 85, baseType: !7, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1137, file: !146, line: 85, baseType: !7, size: 32, offset: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1137, file: !146, line: 85, baseType: !1142, size: 64, offset: 64)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, size: 64, elements: !589)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !146, line: 84, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !146, line: 100, size: 1216, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1176, !1184, !1185}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1145, file: !146, line: 102, baseType: !403, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1145, file: !146, line: 105, baseType: !7, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1145, file: !146, line: 108, baseType: !432, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1145, file: !146, line: 111, baseType: !432, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1145, file: !146, line: 114, baseType: !1152, size: 64, offset: 192)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !146, line: 41, size: 64, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1152, file: !146, line: 42, baseType: !145, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1152, file: !146, line: 43, baseType: !7, size: 32, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1145, file: !146, line: 117, baseType: !7, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1145, file: !146, line: 120, baseType: !7, size: 32, offset: 288)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1145, file: !146, line: 123, baseType: !1131, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1145, file: !146, line: 126, baseType: !1144, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1145, file: !146, line: 129, baseType: !1144, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1145, file: !146, line: 132, baseType: !407, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1145, file: !146, line: 139, baseType: !492, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1145, file: !146, line: 143, baseType: !540, size: 128, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1145, file: !146, line: 146, baseType: !540, size: 128, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1145, file: !146, line: 148, baseType: !402, size: 8, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1145, file: !146, line: 149, baseType: !402, size: 8, offset: 904)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1145, file: !146, line: 153, baseType: !154, size: 32, offset: 928)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1145, file: !146, line: 156, baseType: !1169, size: 64, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !146, line: 48, size: 320, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1170, file: !146, line: 50, baseType: !469, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1170, file: !146, line: 59, baseType: !540, size: 128, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1170, file: !146, line: 64, baseType: !402, size: 8, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1170, file: !146, line: 67, baseType: !1169, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1145, file: !146, line: 159, baseType: !1177, size: 64, offset: 1024)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !146, line: 72, size: 256, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1178, file: !146, line: 74, baseType: !449, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1178, file: !146, line: 77, baseType: !1177, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1178, file: !146, line: 78, baseType: !1177, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1178, file: !146, line: 81, baseType: !1177, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1145, file: !146, line: 162, baseType: !402, size: 8, offset: 1088)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1145, file: !146, line: 166, baseType: !492, size: 64, offset: 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1127, file: !146, line: 197, baseType: !991, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1127, file: !146, line: 200, baseType: !1144, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !949, file: !950, line: 479, baseType: !991, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !949, file: !950, line: 484, baseType: !492, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !949, file: !950, line: 488, baseType: !492, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !949, file: !950, line: 493, baseType: !492, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !949, file: !950, line: 496, baseType: !492, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !949, file: !950, line: 501, baseType: !1194, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !159, line: 2355, size: 576, elements: !1196)
!1196 = !{!1197, !1200, !1201, !1202, !1203, !1205, !1206, !1211, !1212, !1213, !1214, !1215, !1216}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1195, file: !159, line: 2356, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !159, line: 2356, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1195, file: !159, line: 2357, baseType: !408, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1195, file: !159, line: 2358, baseType: !403, size: 32, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1195, file: !159, line: 2359, baseType: !403, size: 32, offset: 160)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1195, file: !159, line: 2360, baseType: !1204, size: 128, offset: 192)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 128, elements: !753)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1195, file: !159, line: 2364, baseType: !403, size: 32, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1195, file: !159, line: 2367, baseType: !1207, size: 128, offset: 384)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !159, line: 2349, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1207, file: !159, line: 2351, baseType: !661, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1207, file: !159, line: 2352, baseType: !427, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1195, file: !159, line: 2371, baseType: !158, size: 32, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1195, file: !159, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1195, file: !159, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1195, file: !159, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1195, file: !159, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1195, file: !159, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !949, file: !950, line: 504, baseType: !1218, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !950, line: 504, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !949, file: !950, line: 507, baseType: !991, size: 64, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !949, file: !950, line: 510, baseType: !403, size: 32, offset: 832)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !949, file: !950, line: 513, baseType: !403, size: 32, offset: 864)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !949, file: !950, line: 516, baseType: !487, size: 32, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !949, file: !950, line: 519, baseType: !487, size: 32, offset: 928)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !949, file: !950, line: 522, baseType: !7, size: 32, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !949, file: !950, line: 523, baseType: !7, size: 32, offset: 992)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !949, file: !950, line: 528, baseType: !408, size: 64, offset: 1024)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !949, file: !950, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !949, file: !950, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !949, file: !950, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !949, file: !950, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !949, file: !950, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !949, file: !950, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !949, file: !950, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !949, file: !950, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !949, file: !950, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !949, file: !950, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !949, file: !950, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !949, file: !950, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !949, file: !950, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !949, file: !950, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !949, file: !950, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !949, file: !950, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !944, file: !164, line: 3254, baseType: !492, size: 64, offset: 1536)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !944, file: !164, line: 3257, baseType: !492, size: 64, offset: 1600)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !944, file: !164, line: 3258, baseType: !492, size: 64, offset: 1664)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !944, file: !164, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !944, file: !164, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !944, file: !164, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !944, file: !164, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !944, file: !164, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !944, file: !164, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !944, file: !164, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !944, file: !164, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !944, file: !164, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !944, file: !164, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !944, file: !164, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !944, file: !164, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !944, file: !164, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !944, file: !164, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !944, file: !164, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !944, file: !164, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !944, file: !164, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !944, file: !164, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !164, line: 3394, baseType: !1266, size: 1344)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !164, line: 2279, size: 1344, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1266, file: !164, line: 2280, baseType: !530, size: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1266, file: !164, line: 2281, baseType: !492, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1266, file: !164, line: 2282, baseType: !492, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1266, file: !164, line: 2283, baseType: !492, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1266, file: !164, line: 2284, baseType: !492, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1266, file: !164, line: 2285, baseType: !7, size: 32, offset: 448)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1266, file: !164, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1266, file: !164, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1266, file: !164, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1266, file: !164, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1266, file: !164, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1266, file: !164, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1266, file: !164, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1266, file: !164, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1266, file: !164, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1266, file: !164, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1266, file: !164, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1266, file: !164, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1266, file: !164, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1266, file: !164, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1266, file: !164, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1266, file: !164, line: 2305, baseType: !7, size: 32, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1266, file: !164, line: 2306, baseType: !783, size: 32, offset: 544)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1266, file: !164, line: 2307, baseType: !492, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1266, file: !164, line: 2308, baseType: !492, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1266, file: !164, line: 2314, baseType: !1294, size: 64, offset: 704)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !164, line: 2309, size: 64, elements: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1294, file: !164, line: 2310, baseType: !403, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1294, file: !164, line: 2311, baseType: !408, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1294, file: !164, line: 2312, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !164, line: 2277, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1266, file: !164, line: 2315, baseType: !492, size: 64, offset: 768)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1266, file: !164, line: 2316, baseType: !492, size: 64, offset: 832)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1266, file: !164, line: 2317, baseType: !492, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1266, file: !164, line: 2318, baseType: !492, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1266, file: !164, line: 2319, baseType: !492, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1266, file: !164, line: 2320, baseType: !492, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1266, file: !164, line: 2321, baseType: !492, size: 64, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1266, file: !164, line: 2322, baseType: !492, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1266, file: !164, line: 2324, baseType: !1310, size: 64, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !164, line: 2324, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !494, file: !164, line: 3395, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !164, line: 1469, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !164, line: 1470, baseType: !530, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1313, file: !164, line: 1471, baseType: !492, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1313, file: !164, line: 1472, baseType: !492, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !494, file: !164, line: 3396, baseType: !1319, size: 320)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !164, line: 1482, size: 320, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1319, file: !164, line: 1483, baseType: !530, size: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1319, file: !164, line: 1484, baseType: !403, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1319, file: !164, line: 1485, baseType: !1065, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !494, file: !164, line: 3397, baseType: !1325, size: 384)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !164, line: 1829, size: 384, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1325, file: !164, line: 1830, baseType: !530, size: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1325, file: !164, line: 1831, baseType: !487, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1325, file: !164, line: 1832, baseType: !492, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1325, file: !164, line: 1835, baseType: !1065, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !494, file: !164, line: 3398, baseType: !1332, size: 704)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !164, line: 1898, size: 704, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1343}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1332, file: !164, line: 1899, baseType: !530, size: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1332, file: !164, line: 1902, baseType: !492, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1332, file: !164, line: 1905, baseType: !469, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1332, file: !164, line: 1908, baseType: !7, size: 32, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1332, file: !164, line: 1911, baseType: !1339, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !900, line: 117, size: 128, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1340, file: !900, line: 120, baseType: !1068, size: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1332, file: !164, line: 1914, baseType: !1114, size: 256, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !494, file: !164, line: 3399, baseType: !1345, size: 704)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !164, line: 2008, size: 704, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1345, file: !164, line: 2009, baseType: !530, size: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1345, file: !164, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1345, file: !164, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1345, file: !164, line: 2014, baseType: !487, size: 32, offset: 224)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1345, file: !164, line: 2016, baseType: !492, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1345, file: !164, line: 2017, baseType: !1054, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1345, file: !164, line: 2019, baseType: !492, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1345, file: !164, line: 2020, baseType: !492, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1345, file: !164, line: 2021, baseType: !492, size: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1345, file: !164, line: 2022, baseType: !492, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1345, file: !164, line: 2023, baseType: !492, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !494, file: !164, line: 3400, baseType: !1359, size: 832)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !164, line: 2430, size: 832, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1359, file: !164, line: 2431, baseType: !530, size: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1359, file: !164, line: 2433, baseType: !492, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1359, file: !164, line: 2434, baseType: !492, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1359, file: !164, line: 2435, baseType: !492, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1359, file: !164, line: 2436, baseType: !492, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1359, file: !164, line: 2437, baseType: !1054, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1359, file: !164, line: 2438, baseType: !492, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1359, file: !164, line: 2440, baseType: !492, size: 64, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1359, file: !164, line: 2441, baseType: !492, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1359, file: !164, line: 2443, baseType: !1371, size: 128, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !164, line: 182, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !164, line: 182, size: 128, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1372, file: !164, line: 182, baseType: !1059, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !494, file: !164, line: 3401, baseType: !1376, size: 320)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !164, line: 3327, size: 320, elements: !1377)
!1377 = !{!1378, !1379, !1386}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1376, file: !164, line: 3329, baseType: !530, size: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1376, file: !164, line: 3330, baseType: !1380, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !164, line: 3320, size: 192, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1381, file: !164, line: 3322, baseType: !1380, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1381, file: !164, line: 3323, baseType: !1380, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1381, file: !164, line: 3324, baseType: !492, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1376, file: !164, line: 3331, baseType: !1380, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !494, file: !164, line: 3402, baseType: !1388, size: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !164, line: 1540, size: 256, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1388, file: !164, line: 1541, baseType: !530, size: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1388, file: !164, line: 1542, baseType: !1392, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !164, line: 1538, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !164, line: 1538, size: 192, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1394, file: !164, line: 1538, baseType: !1397, size: 192)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !164, line: 1537, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !164, line: 1537, size: 192, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1398, file: !164, line: 1537, baseType: !7, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1398, file: !164, line: 1537, baseType: !7, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1398, file: !164, line: 1537, baseType: !1403, size: 128, offset: 64)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 128, elements: !589)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !164, line: 1535, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !164, line: 1532, size: 128, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1405, file: !164, line: 1533, baseType: !492, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1405, file: !164, line: 1534, baseType: !492, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !494, file: !164, line: 3403, baseType: !1410, size: 512)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !164, line: 1938, size: 512, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1421, !1422, !1423}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1410, file: !164, line: 1939, baseType: !530, size: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1410, file: !164, line: 1940, baseType: !487, size: 32, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1410, file: !164, line: 1941, baseType: !163, size: 32, offset: 224)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1410, file: !164, line: 1946, baseType: !1416, size: 32, offset: 256)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !164, line: 1942, size: 32, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1416, file: !164, line: 1943, baseType: !182, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1416, file: !164, line: 1944, baseType: !189, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1416, file: !164, line: 1945, baseType: !196, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1410, file: !164, line: 1950, baseType: !458, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1410, file: !164, line: 1951, baseType: !458, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1410, file: !164, line: 1953, baseType: !1065, size: 64, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !494, file: !164, line: 3404, baseType: !1425, size: 1664)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !164, line: 3337, size: 1664, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1425, file: !164, line: 3338, baseType: !530, size: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1425, file: !164, line: 3341, baseType: !1429, size: 1472, offset: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1430, line: 410, size: 1472, elements: !1431)
!1430 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1429, file: !1430, line: 412, baseType: !403, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1429, file: !1430, line: 413, baseType: !403, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1429, file: !1430, line: 414, baseType: !403, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1429, file: !1430, line: 415, baseType: !403, size: 32, offset: 96)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1429, file: !1430, line: 416, baseType: !403, size: 32, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1429, file: !1430, line: 417, baseType: !403, size: 32, offset: 160)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1429, file: !1430, line: 418, baseType: !402, size: 8, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1429, file: !1430, line: 419, baseType: !402, size: 8, offset: 200)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1429, file: !1430, line: 420, baseType: !1441, size: 8, offset: 208)
!1441 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1429, file: !1430, line: 421, baseType: !1441, size: 8, offset: 216)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1429, file: !1430, line: 422, baseType: !1441, size: 8, offset: 224)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1429, file: !1430, line: 423, baseType: !1441, size: 8, offset: 232)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1429, file: !1430, line: 424, baseType: !1441, size: 8, offset: 240)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1429, file: !1430, line: 425, baseType: !1441, size: 8, offset: 248)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1429, file: !1430, line: 426, baseType: !1441, size: 8, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1429, file: !1430, line: 427, baseType: !1441, size: 8, offset: 264)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1429, file: !1430, line: 428, baseType: !1441, size: 8, offset: 272)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1429, file: !1430, line: 429, baseType: !1441, size: 8, offset: 280)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1429, file: !1430, line: 430, baseType: !1441, size: 8, offset: 288)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1429, file: !1430, line: 431, baseType: !1441, size: 8, offset: 296)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1429, file: !1430, line: 432, baseType: !1441, size: 8, offset: 304)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1429, file: !1430, line: 433, baseType: !1441, size: 8, offset: 312)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1429, file: !1430, line: 434, baseType: !1441, size: 8, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1429, file: !1430, line: 435, baseType: !1441, size: 8, offset: 328)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1429, file: !1430, line: 436, baseType: !1441, size: 8, offset: 336)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1429, file: !1430, line: 437, baseType: !1441, size: 8, offset: 344)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1429, file: !1430, line: 438, baseType: !1441, size: 8, offset: 352)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1429, file: !1430, line: 439, baseType: !1441, size: 8, offset: 360)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1429, file: !1430, line: 440, baseType: !1441, size: 8, offset: 368)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1429, file: !1430, line: 441, baseType: !1441, size: 8, offset: 376)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1429, file: !1430, line: 442, baseType: !1441, size: 8, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1429, file: !1430, line: 443, baseType: !1441, size: 8, offset: 392)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1429, file: !1430, line: 444, baseType: !1441, size: 8, offset: 400)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1429, file: !1430, line: 445, baseType: !1441, size: 8, offset: 408)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1429, file: !1430, line: 446, baseType: !1441, size: 8, offset: 416)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1429, file: !1430, line: 447, baseType: !1441, size: 8, offset: 424)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1429, file: !1430, line: 448, baseType: !1441, size: 8, offset: 432)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1429, file: !1430, line: 449, baseType: !1441, size: 8, offset: 440)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1429, file: !1430, line: 450, baseType: !1441, size: 8, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1429, file: !1430, line: 451, baseType: !1441, size: 8, offset: 456)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1429, file: !1430, line: 452, baseType: !1441, size: 8, offset: 464)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1429, file: !1430, line: 453, baseType: !1441, size: 8, offset: 472)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1429, file: !1430, line: 454, baseType: !1441, size: 8, offset: 480)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1429, file: !1430, line: 455, baseType: !1441, size: 8, offset: 488)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1429, file: !1430, line: 456, baseType: !1441, size: 8, offset: 496)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1429, file: !1430, line: 457, baseType: !1441, size: 8, offset: 504)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1429, file: !1430, line: 458, baseType: !1441, size: 8, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1429, file: !1430, line: 459, baseType: !1441, size: 8, offset: 520)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1429, file: !1430, line: 460, baseType: !1441, size: 8, offset: 528)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1429, file: !1430, line: 461, baseType: !1441, size: 8, offset: 536)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1429, file: !1430, line: 462, baseType: !1441, size: 8, offset: 544)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1429, file: !1430, line: 463, baseType: !1441, size: 8, offset: 552)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1429, file: !1430, line: 464, baseType: !1441, size: 8, offset: 560)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1429, file: !1430, line: 465, baseType: !1441, size: 8, offset: 568)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1429, file: !1430, line: 466, baseType: !1441, size: 8, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1429, file: !1430, line: 467, baseType: !1441, size: 8, offset: 584)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1429, file: !1430, line: 468, baseType: !1441, size: 8, offset: 592)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1429, file: !1430, line: 469, baseType: !1441, size: 8, offset: 600)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1429, file: !1430, line: 470, baseType: !1441, size: 8, offset: 608)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1429, file: !1430, line: 471, baseType: !1441, size: 8, offset: 616)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1429, file: !1430, line: 472, baseType: !1441, size: 8, offset: 624)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1429, file: !1430, line: 473, baseType: !1441, size: 8, offset: 632)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1429, file: !1430, line: 474, baseType: !1441, size: 8, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1429, file: !1430, line: 475, baseType: !1441, size: 8, offset: 648)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1429, file: !1430, line: 476, baseType: !1441, size: 8, offset: 656)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1429, file: !1430, line: 477, baseType: !1441, size: 8, offset: 664)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1429, file: !1430, line: 478, baseType: !1441, size: 8, offset: 672)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1429, file: !1430, line: 479, baseType: !1441, size: 8, offset: 680)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1429, file: !1430, line: 480, baseType: !1441, size: 8, offset: 688)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1429, file: !1430, line: 481, baseType: !1441, size: 8, offset: 696)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1429, file: !1430, line: 482, baseType: !1441, size: 8, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1429, file: !1430, line: 483, baseType: !1441, size: 8, offset: 712)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1429, file: !1430, line: 484, baseType: !1441, size: 8, offset: 720)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1429, file: !1430, line: 485, baseType: !1441, size: 8, offset: 728)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1429, file: !1430, line: 486, baseType: !1441, size: 8, offset: 736)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1429, file: !1430, line: 487, baseType: !1441, size: 8, offset: 744)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1429, file: !1430, line: 488, baseType: !1441, size: 8, offset: 752)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1429, file: !1430, line: 489, baseType: !1441, size: 8, offset: 760)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1429, file: !1430, line: 490, baseType: !1441, size: 8, offset: 768)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1429, file: !1430, line: 491, baseType: !1441, size: 8, offset: 776)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1429, file: !1430, line: 492, baseType: !1441, size: 8, offset: 784)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1429, file: !1430, line: 493, baseType: !1441, size: 8, offset: 792)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1429, file: !1430, line: 494, baseType: !1441, size: 8, offset: 800)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1429, file: !1430, line: 495, baseType: !1441, size: 8, offset: 808)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1429, file: !1430, line: 496, baseType: !1441, size: 8, offset: 816)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1429, file: !1430, line: 497, baseType: !1441, size: 8, offset: 824)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1429, file: !1430, line: 498, baseType: !1441, size: 8, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1429, file: !1430, line: 499, baseType: !1441, size: 8, offset: 840)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1429, file: !1430, line: 500, baseType: !1441, size: 8, offset: 848)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1429, file: !1430, line: 501, baseType: !1441, size: 8, offset: 856)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1429, file: !1430, line: 502, baseType: !1441, size: 8, offset: 864)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1429, file: !1430, line: 503, baseType: !1441, size: 8, offset: 872)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1429, file: !1430, line: 504, baseType: !1441, size: 8, offset: 880)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1429, file: !1430, line: 505, baseType: !1441, size: 8, offset: 888)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1429, file: !1430, line: 506, baseType: !1441, size: 8, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1429, file: !1430, line: 507, baseType: !1441, size: 8, offset: 904)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1429, file: !1430, line: 508, baseType: !1441, size: 8, offset: 912)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1429, file: !1430, line: 509, baseType: !1441, size: 8, offset: 920)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1429, file: !1430, line: 510, baseType: !1441, size: 8, offset: 928)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1429, file: !1430, line: 511, baseType: !1441, size: 8, offset: 936)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1429, file: !1430, line: 512, baseType: !1441, size: 8, offset: 944)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1429, file: !1430, line: 513, baseType: !1441, size: 8, offset: 952)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1429, file: !1430, line: 514, baseType: !1441, size: 8, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1429, file: !1430, line: 515, baseType: !1441, size: 8, offset: 968)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1429, file: !1430, line: 516, baseType: !1441, size: 8, offset: 976)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1429, file: !1430, line: 517, baseType: !1441, size: 8, offset: 984)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1429, file: !1430, line: 518, baseType: !1441, size: 8, offset: 992)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1429, file: !1430, line: 519, baseType: !1441, size: 8, offset: 1000)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1429, file: !1430, line: 520, baseType: !1441, size: 8, offset: 1008)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1429, file: !1430, line: 521, baseType: !1441, size: 8, offset: 1016)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1429, file: !1430, line: 522, baseType: !1441, size: 8, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1429, file: !1430, line: 523, baseType: !1441, size: 8, offset: 1032)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1429, file: !1430, line: 524, baseType: !1441, size: 8, offset: 1040)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1429, file: !1430, line: 525, baseType: !1441, size: 8, offset: 1048)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1429, file: !1430, line: 526, baseType: !1441, size: 8, offset: 1056)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1429, file: !1430, line: 527, baseType: !1441, size: 8, offset: 1064)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1429, file: !1430, line: 528, baseType: !1441, size: 8, offset: 1072)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1429, file: !1430, line: 529, baseType: !1441, size: 8, offset: 1080)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1429, file: !1430, line: 530, baseType: !1441, size: 8, offset: 1088)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1429, file: !1430, line: 531, baseType: !1441, size: 8, offset: 1096)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1429, file: !1430, line: 532, baseType: !1441, size: 8, offset: 1104)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1429, file: !1430, line: 533, baseType: !1441, size: 8, offset: 1112)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1429, file: !1430, line: 534, baseType: !1441, size: 8, offset: 1120)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1429, file: !1430, line: 535, baseType: !1441, size: 8, offset: 1128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1429, file: !1430, line: 536, baseType: !1441, size: 8, offset: 1136)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1429, file: !1430, line: 537, baseType: !1441, size: 8, offset: 1144)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1429, file: !1430, line: 538, baseType: !1441, size: 8, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1429, file: !1430, line: 539, baseType: !1441, size: 8, offset: 1160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1429, file: !1430, line: 540, baseType: !1441, size: 8, offset: 1168)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1429, file: !1430, line: 541, baseType: !1441, size: 8, offset: 1176)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1429, file: !1430, line: 542, baseType: !1441, size: 8, offset: 1184)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1429, file: !1430, line: 543, baseType: !1441, size: 8, offset: 1192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1429, file: !1430, line: 544, baseType: !1441, size: 8, offset: 1200)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1429, file: !1430, line: 545, baseType: !1441, size: 8, offset: 1208)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1429, file: !1430, line: 546, baseType: !1441, size: 8, offset: 1216)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1429, file: !1430, line: 547, baseType: !1441, size: 8, offset: 1224)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1429, file: !1430, line: 548, baseType: !1441, size: 8, offset: 1232)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1429, file: !1430, line: 549, baseType: !1441, size: 8, offset: 1240)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1429, file: !1430, line: 550, baseType: !1441, size: 8, offset: 1248)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1429, file: !1430, line: 551, baseType: !1441, size: 8, offset: 1256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1429, file: !1430, line: 552, baseType: !1441, size: 8, offset: 1264)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1429, file: !1430, line: 553, baseType: !1441, size: 8, offset: 1272)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1429, file: !1430, line: 554, baseType: !1441, size: 8, offset: 1280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1429, file: !1430, line: 555, baseType: !1441, size: 8, offset: 1288)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1429, file: !1430, line: 556, baseType: !1441, size: 8, offset: 1296)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1429, file: !1430, line: 557, baseType: !1441, size: 8, offset: 1304)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1429, file: !1430, line: 558, baseType: !1441, size: 8, offset: 1312)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1429, file: !1430, line: 559, baseType: !1441, size: 8, offset: 1320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1429, file: !1430, line: 560, baseType: !1441, size: 8, offset: 1328)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1429, file: !1430, line: 561, baseType: !1441, size: 8, offset: 1336)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1429, file: !1430, line: 562, baseType: !1441, size: 8, offset: 1344)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1429, file: !1430, line: 563, baseType: !1441, size: 8, offset: 1352)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1429, file: !1430, line: 564, baseType: !1441, size: 8, offset: 1360)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1429, file: !1430, line: 565, baseType: !1441, size: 8, offset: 1368)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1429, file: !1430, line: 566, baseType: !1441, size: 8, offset: 1376)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1429, file: !1430, line: 567, baseType: !1441, size: 8, offset: 1384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1429, file: !1430, line: 568, baseType: !1441, size: 8, offset: 1392)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1429, file: !1430, line: 569, baseType: !1441, size: 8, offset: 1400)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1429, file: !1430, line: 570, baseType: !1441, size: 8, offset: 1408)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1429, file: !1430, line: 571, baseType: !1441, size: 8, offset: 1416)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1429, file: !1430, line: 572, baseType: !1441, size: 8, offset: 1424)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1429, file: !1430, line: 573, baseType: !1441, size: 8, offset: 1432)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1429, file: !1430, line: 574, baseType: !1441, size: 8, offset: 1440)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !494, file: !164, line: 3405, baseType: !1597, size: 384)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !164, line: 3352, size: 384, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1597, file: !164, line: 3353, baseType: !530, size: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1597, file: !164, line: 3356, baseType: !1601, size: 192, offset: 192)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1430, line: 578, size: 192, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1601, file: !1430, line: 580, baseType: !403, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1601, file: !1430, line: 581, baseType: !403, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1601, file: !1430, line: 582, baseType: !403, size: 32, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1601, file: !1430, line: 583, baseType: !403, size: 32, offset: 96)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1601, file: !1430, line: 584, baseType: !402, size: 8, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1601, file: !1430, line: 585, baseType: !402, size: 8, offset: 136)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1601, file: !1430, line: 586, baseType: !402, size: 8, offset: 144)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1601, file: !1430, line: 587, baseType: !402, size: 8, offset: 152)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1601, file: !1430, line: 588, baseType: !402, size: 8, offset: 160)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1601, file: !1430, line: 589, baseType: !402, size: 8, offset: 168)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1601, file: !1430, line: 590, baseType: !402, size: 8, offset: 176)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !471, file: !461, line: 739, baseType: !1615, size: 448)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !461, line: 350, size: 448, elements: !1616)
!1616 = !{!1617, !1623}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1615, file: !461, line: 353, baseType: !1618, size: 384)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !461, line: 333, size: 384, elements: !1619)
!1619 = !{!1620, !1621, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1618, file: !461, line: 336, baseType: !474, size: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1618, file: !461, line: 343, baseType: !1102, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1618, file: !461, line: 344, baseType: !1109, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1615, file: !461, line: 359, baseType: !1065, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !471, file: !461, line: 740, baseType: !1625, size: 512)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !461, line: 365, size: 512, elements: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1625, file: !461, line: 368, baseType: !1618, size: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1625, file: !461, line: 373, baseType: !492, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1625, file: !461, line: 374, baseType: !492, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !471, file: !461, line: 741, baseType: !1631, size: 576)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !461, line: 380, size: 576, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1631, file: !461, line: 383, baseType: !1625, size: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1631, file: !461, line: 389, baseType: !1065, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !471, file: !461, line: 742, baseType: !1636, size: 320)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !461, line: 395, size: 320, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1636, file: !461, line: 397, baseType: !474, size: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1636, file: !461, line: 400, baseType: !458, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !471, file: !461, line: 743, baseType: !1641, size: 448)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !461, line: 406, size: 448, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1641, file: !461, line: 408, baseType: !474, size: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1641, file: !461, line: 412, baseType: !492, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1641, file: !461, line: 420, baseType: !492, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1641, file: !461, line: 423, baseType: !458, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !471, file: !461, line: 744, baseType: !1648, size: 384)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !461, line: 429, size: 384, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1648, file: !461, line: 431, baseType: !474, size: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1648, file: !461, line: 434, baseType: !492, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1648, file: !461, line: 437, baseType: !458, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !471, file: !461, line: 745, baseType: !1654, size: 384)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !461, line: 443, size: 384, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1654, file: !461, line: 445, baseType: !474, size: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1654, file: !461, line: 449, baseType: !492, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1654, file: !461, line: 453, baseType: !458, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !471, file: !461, line: 746, baseType: !1660, size: 320)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !461, line: 459, size: 320, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1660, file: !461, line: 461, baseType: !474, size: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1660, file: !461, line: 464, baseType: !492, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !471, file: !461, line: 747, baseType: !1665, size: 768)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !461, line: 469, size: 768, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1665, file: !461, line: 471, baseType: !474, size: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1665, file: !461, line: 474, baseType: !7, size: 32, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1665, file: !461, line: 475, baseType: !7, size: 32, offset: 288)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1665, file: !461, line: 478, baseType: !492, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1665, file: !461, line: 481, baseType: !1672, size: 384, offset: 384)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1673, size: 384, elements: !589)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !164, line: 1917, size: 384, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1673, file: !164, line: 1920, baseType: !1114, size: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1673, file: !164, line: 1921, baseType: !492, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1673, file: !164, line: 1922, baseType: !487, size: 32, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !471, file: !461, line: 748, baseType: !1679, size: 320)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !461, line: 487, size: 320, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1679, file: !461, line: 490, baseType: !474, size: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1679, file: !461, line: 494, baseType: !403, size: 32, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !471, file: !461, line: 749, baseType: !1684, size: 384)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !461, line: 500, size: 384, elements: !1685)
!1685 = !{!1686, !1687, !1688}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1684, file: !461, line: 502, baseType: !474, size: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1684, file: !461, line: 506, baseType: !458, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1684, file: !461, line: 510, baseType: !458, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !471, file: !461, line: 750, baseType: !1690, size: 320)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !461, line: 529, size: 320, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1690, file: !461, line: 531, baseType: !474, size: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1690, file: !461, line: 540, baseType: !458, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !471, file: !461, line: 751, baseType: !1695, size: 704)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !461, line: 546, size: 704, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1695, file: !461, line: 549, baseType: !1625, size: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1695, file: !461, line: 553, baseType: !408, size: 64, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1695, file: !461, line: 557, baseType: !402, size: 8, offset: 576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1695, file: !461, line: 558, baseType: !402, size: 8, offset: 584)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1695, file: !461, line: 559, baseType: !402, size: 8, offset: 592)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1695, file: !461, line: 560, baseType: !402, size: 8, offset: 600)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1695, file: !461, line: 566, baseType: !1065, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !471, file: !461, line: 752, baseType: !1705, size: 384)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !461, line: 571, size: 384, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1705, file: !461, line: 573, baseType: !1636, size: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1705, file: !461, line: 577, baseType: !492, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !471, file: !461, line: 753, baseType: !1710, size: 576)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !461, line: 600, size: 576, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1724}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1710, file: !461, line: 602, baseType: !1636, size: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1710, file: !461, line: 605, baseType: !492, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1710, file: !461, line: 609, baseType: !1015, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1710, file: !461, line: 612, baseType: !1716, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !461, line: 581, size: 320, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1717, file: !461, line: 583, baseType: !196, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1717, file: !461, line: 586, baseType: !492, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1717, file: !461, line: 589, baseType: !492, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1717, file: !461, line: 592, baseType: !492, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1717, file: !461, line: 595, baseType: !492, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1710, file: !461, line: 616, baseType: !458, size: 64, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !471, file: !461, line: 754, baseType: !1726, size: 512)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !461, line: 622, size: 512, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1726, file: !461, line: 624, baseType: !1636, size: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1726, file: !461, line: 628, baseType: !492, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1726, file: !461, line: 632, baseType: !492, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1726, file: !461, line: 636, baseType: !492, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !471, file: !461, line: 755, baseType: !1733, size: 704)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !461, line: 642, size: 704, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1733, file: !461, line: 644, baseType: !1726, size: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1733, file: !461, line: 648, baseType: !492, size: 64, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1733, file: !461, line: 652, baseType: !492, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1733, file: !461, line: 653, baseType: !492, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !471, file: !461, line: 756, baseType: !1740, size: 448)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !461, line: 663, size: 448, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1740, file: !461, line: 665, baseType: !1636, size: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1740, file: !461, line: 668, baseType: !492, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1740, file: !461, line: 673, baseType: !492, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !471, file: !461, line: 757, baseType: !1746, size: 384)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !461, line: 694, size: 384, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1746, file: !461, line: 696, baseType: !1636, size: 320)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1746, file: !461, line: 699, baseType: !492, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !471, file: !461, line: 758, baseType: !1751, size: 384)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !461, line: 681, size: 384, elements: !1752)
!1752 = !{!1753, !1754, !1755}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1751, file: !461, line: 683, baseType: !474, size: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1751, file: !461, line: 686, baseType: !492, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1751, file: !461, line: 689, baseType: !492, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !471, file: !461, line: 759, baseType: !1757, size: 384)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !461, line: 707, size: 384, elements: !1758)
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1757, file: !461, line: 709, baseType: !474, size: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1757, file: !461, line: 712, baseType: !492, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1757, file: !461, line: 712, baseType: !492, size: 64, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !471, file: !461, line: 760, baseType: !1763, size: 320)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !461, line: 718, size: 320, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1763, file: !461, line: 720, baseType: !474, size: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1763, file: !461, line: 723, baseType: !492, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !466, file: !461, line: 138, baseType: !465, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !461, line: 139, baseType: !465, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !460, file: !461, line: 146, baseType: !464, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !460, file: !461, line: 152, baseType: !458, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !455, file: !135, line: 130, baseType: !661, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !450, file: !135, line: 134, baseType: !407, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !450, file: !135, line: 137, baseType: !492, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !450, file: !135, line: 138, baseType: !487, size: 32, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !450, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !135, line: 144, baseType: !403, size: 32, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !450, file: !135, line: 145, baseType: !403, size: 32, offset: 416)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !450, file: !135, line: 146, baseType: !426, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !433, file: !135, line: 220, baseType: !436, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !433, file: !135, line: 223, baseType: !407, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !433, file: !135, line: 226, baseType: !1144, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !433, file: !135, line: 229, baseType: !1783, size: 128, offset: 256)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 128, elements: !729)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !433, file: !135, line: 232, baseType: !432, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !433, file: !135, line: 233, baseType: !432, size: 64, offset: 448)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !433, file: !135, line: 238, baseType: !1789, size: 64, offset: 512)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1790)
!1790 = !{!1791, !1797}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1789, file: !135, line: 236, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1793, file: !135, line: 275, baseType: !458, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1793, file: !135, line: 278, baseType: !458, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1789, file: !135, line: 237, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1804, !1805}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1799, file: !135, line: 261, baseType: !661, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1799, file: !135, line: 262, baseType: !661, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1799, file: !135, line: 266, baseType: !661, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1799, file: !135, line: 267, baseType: !661, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1799, file: !135, line: 270, baseType: !403, size: 32, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !433, file: !135, line: 241, baseType: !426, size: 64, offset: 576)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !433, file: !135, line: 244, baseType: !403, size: 32, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !433, file: !135, line: 247, baseType: !403, size: 32, offset: 672)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !433, file: !135, line: 250, baseType: !403, size: 32, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !433, file: !135, line: 253, baseType: !403, size: 32, offset: 736)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !135, line: 256, baseType: !403, size: 32, offset: 768)
!1812 = !{!1813, !1857, !1868, !1870, !1872, !1874, !1876, !1878, !0, !1880, !1885, !1887, !1901, !1903}
!1813 = !DIGlobalVariableExpression(var: !1814, expr: !DIExpression())
!1814 = distinct !DIGlobalVariable(name: "profile_hooks", scope: !2, file: !3, line: 75, type: !1815, isLocal: true, isDefinition: true)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "profile_hooks", file: !391, line: 81, size: 576, elements: !1817)
!1817 = !{!1818, !1822, !1826, !1851, !1852, !1853, !1854, !1855, !1856}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "init_edge_profiler", scope: !1816, file: !391, line: 84, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gen_edge_profiler", scope: !1816, file: !391, line: 87, baseType: !1823, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !403, !448}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "gen_interval_profiler", scope: !1816, file: !391, line: 90, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1830, !7, !7}
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "histogram_value", file: !391, line: 65, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "histogram_value_t", file: !391, line: 44, size: 384, elements: !1833)
!1833 = !{!1834, !1841, !1842, !1843}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "hvalue", scope: !1832, file: !391, line: 52, baseType: !1835, size: 256)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !391, line: 46, size: 256, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1835, file: !391, line: 48, baseType: !492, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1835, file: !391, line: 49, baseType: !469, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1835, file: !391, line: 50, baseType: !429, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1835, file: !391, line: 51, baseType: !1831, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1832, file: !391, line: 53, baseType: !390, size: 32, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "n_counters", scope: !1832, file: !391, line: 54, baseType: !7, size: 32, offset: 288)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "hdata", scope: !1832, file: !391, line: 62, baseType: !1844, size: 64, offset: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !391, line: 55, size: 64, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "intvl", scope: !1844, file: !391, line: 61, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !391, line: 57, size: 64, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "int_start", scope: !1847, file: !391, line: 59, baseType: !403, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !1847, file: !391, line: 60, baseType: !7, size: 32, offset: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gen_pow2_profiler", scope: !1816, file: !391, line: 93, baseType: !1827, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gen_one_value_profiler", scope: !1816, file: !391, line: 96, baseType: !1827, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "gen_const_delta_profiler", scope: !1816, file: !391, line: 100, baseType: !1827, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "gen_ic_profiler", scope: !1816, file: !391, line: 103, baseType: !1827, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "gen_average_profiler", scope: !1816, file: !391, line: 106, baseType: !1827, size: 64, offset: 448)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "gen_ior_profiler", scope: !1816, file: !391, line: 109, baseType: !1827, size: 64, offset: 512)
!1857 = !DIGlobalVariableExpression(var: !1858, expr: !DIExpression())
!1858 = distinct !DIGlobalVariable(name: "profile_info", scope: !2, file: !3, line: 90, type: !1859, isLocal: false, isDefinition: true)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcov_ctr_summary", file: !420, line: 391, size: 256, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1861, file: !420, line: 393, baseType: !419, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "runs", scope: !1861, file: !420, line: 394, baseType: !419, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_all", scope: !1861, file: !420, line: 395, baseType: !426, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "run_max", scope: !1861, file: !420, line: 396, baseType: !426, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sum_max", scope: !1861, file: !420, line: 397, baseType: !426, size: 64, offset: 192)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(name: "total_num_blocks", scope: !2, file: !3, line: 95, type: !403, isLocal: true, isDefinition: true)
!1870 = !DIGlobalVariableExpression(var: !1871, expr: !DIExpression())
!1871 = distinct !DIGlobalVariable(name: "total_num_edges", scope: !2, file: !3, line: 96, type: !403, isLocal: true, isDefinition: true)
!1872 = !DIGlobalVariableExpression(var: !1873, expr: !DIExpression())
!1873 = distinct !DIGlobalVariable(name: "total_num_edges_ignored", scope: !2, file: !3, line: 97, type: !403, isLocal: true, isDefinition: true)
!1874 = !DIGlobalVariableExpression(var: !1875, expr: !DIExpression())
!1875 = distinct !DIGlobalVariable(name: "total_num_edges_instrumented", scope: !2, file: !3, line: 98, type: !403, isLocal: true, isDefinition: true)
!1876 = !DIGlobalVariableExpression(var: !1877, expr: !DIExpression())
!1877 = distinct !DIGlobalVariable(name: "total_num_blocks_created", scope: !2, file: !3, line: 99, type: !403, isLocal: true, isDefinition: true)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(name: "total_num_passes", scope: !2, file: !3, line: 100, type: !403, isLocal: true, isDefinition: true)
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(name: "total_hist_br_prob", scope: !2, file: !3, line: 102, type: !1882, isLocal: true, isDefinition: true)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 640, elements: !1883)
!1883 = !{!1884}
!1884 = !DISubrange(count: 20)
!1885 = !DIGlobalVariableExpression(var: !1886, expr: !DIExpression())
!1886 = distinct !DIGlobalVariable(name: "total_num_branches", scope: !2, file: !3, line: 103, type: !403, isLocal: true, isDefinition: true)
!1887 = !DIGlobalVariableExpression(var: !1888, expr: !DIExpression())
!1888 = distinct !DIGlobalVariable(name: "prev_file_name", scope: !1889, file: !3, line: 838, type: !408, isLocal: true, isDefinition: true)
!1889 = distinct !DISubprogram(name: "output_location", scope: !3, file: !3, line: 835, type: !1890, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !408, !403, !1892, !430}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_position_t", file: !420, line: 206, baseType: !7)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900}
!1895 = !DILocalVariable(name: "file_name", arg: 1, scope: !1889, file: !3, line: 835, type: !408)
!1896 = !DILocalVariable(name: "line", arg: 2, scope: !1889, file: !3, line: 835, type: !403)
!1897 = !DILocalVariable(name: "offset", arg: 3, scope: !1889, file: !3, line: 836, type: !1892)
!1898 = !DILocalVariable(name: "bb", arg: 4, scope: !1889, file: !3, line: 836, type: !430)
!1899 = !DILocalVariable(name: "name_differs", scope: !1889, file: !3, line: 840, type: !402)
!1900 = !DILocalVariable(name: "line_differs", scope: !1889, file: !3, line: 840, type: !402)
!1901 = !DIGlobalVariableExpression(var: !1902, expr: !DIExpression())
!1902 = distinct !DIGlobalVariable(name: "prev_line", scope: !1889, file: !3, line: 839, type: !403, isLocal: true, isDefinition: true)
!1903 = !DIGlobalVariableExpression(var: !1904, expr: !DIExpression())
!1904 = distinct !DIGlobalVariable(name: "informed", scope: !1905, file: !3, line: 626, type: !403, isLocal: true, isDefinition: true)
!1905 = distinct !DISubprogram(name: "compute_branch_probabilities", scope: !3, file: !3, line: 441, type: !1820, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1920, !1927, !1932, !1937, !1938, !1939, !1942, !1943, !1944, !1949, !1950, !1951, !1954, !1955, !1956, !1960, !1961, !1966, !1967, !1968}
!1907 = !DILocalVariable(name: "bb", scope: !1905, file: !3, line: 443, type: !430)
!1908 = !DILocalVariable(name: "i", scope: !1905, file: !3, line: 444, type: !403)
!1909 = !DILocalVariable(name: "num_edges", scope: !1905, file: !3, line: 445, type: !403)
!1910 = !DILocalVariable(name: "changes", scope: !1905, file: !3, line: 446, type: !403)
!1911 = !DILocalVariable(name: "passes", scope: !1905, file: !3, line: 447, type: !403)
!1912 = !DILocalVariable(name: "hist_br_prob", scope: !1905, file: !3, line: 448, type: !1882)
!1913 = !DILocalVariable(name: "num_branches", scope: !1905, file: !3, line: 449, type: !403)
!1914 = !DILocalVariable(name: "exec_counts", scope: !1905, file: !3, line: 450, type: !429)
!1915 = !DILocalVariable(name: "inconsistent", scope: !1905, file: !3, line: 451, type: !403)
!1916 = !DILocalVariable(name: "e", scope: !1917, file: !3, line: 472, type: !448)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 471, column: 5)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 470, column: 3)
!1919 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 470, column: 3)
!1920 = !DILocalVariable(name: "ei", scope: !1917, file: !3, line: 473, type: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1922, file: !135, line: 680, baseType: !7, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1922, file: !135, line: 681, baseType: !1926, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1927 = !DILocalVariable(name: "bi", scope: !1928, file: !3, line: 517, type: !421)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 516, column: 2)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 515, column: 7)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 515, column: 7)
!1931 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 512, column: 5)
!1932 = !DILocalVariable(name: "e", scope: !1933, file: !3, line: 522, type: !448)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 521, column: 3)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 520, column: 12)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 519, column: 6)
!1936 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 518, column: 8)
!1937 = !DILocalVariable(name: "ei", scope: !1933, file: !3, line: 523, type: !1921)
!1938 = !DILocalVariable(name: "total", scope: !1933, file: !3, line: 524, type: !426)
!1939 = !DILocalVariable(name: "e", scope: !1940, file: !3, line: 534, type: !448)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 533, column: 3)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 532, column: 17)
!1942 = !DILocalVariable(name: "ei", scope: !1940, file: !3, line: 535, type: !1921)
!1943 = !DILocalVariable(name: "total", scope: !1940, file: !3, line: 536, type: !426)
!1944 = !DILocalVariable(name: "e", scope: !1945, file: !3, line: 549, type: !448)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 548, column: 3)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 547, column: 12)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 546, column: 6)
!1948 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 545, column: 8)
!1949 = !DILocalVariable(name: "ei", scope: !1945, file: !3, line: 550, type: !1921)
!1950 = !DILocalVariable(name: "total", scope: !1945, file: !3, line: 551, type: !426)
!1951 = !DILocalVariable(name: "e", scope: !1952, file: !3, line: 576, type: !448)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 575, column: 3)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 574, column: 12)
!1954 = !DILocalVariable(name: "ei", scope: !1952, file: !3, line: 577, type: !1921)
!1955 = !DILocalVariable(name: "total", scope: !1952, file: !3, line: 578, type: !426)
!1956 = !DILocalVariable(name: "e", scope: !1957, file: !3, line: 652, type: !448)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 651, column: 5)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 650, column: 3)
!1959 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 650, column: 3)
!1960 = !DILocalVariable(name: "ei", scope: !1957, file: !3, line: 653, type: !1921)
!1961 = !DILocalVariable(name: "prob", scope: !1962, file: !3, line: 692, type: !403)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 691, column: 6)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 688, column: 8)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 685, column: 2)
!1965 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 684, column: 11)
!1966 = !DILocalVariable(name: "e", scope: !1962, file: !3, line: 693, type: !448)
!1967 = !DILocalVariable(name: "index", scope: !1962, file: !3, line: 694, type: !403)
!1968 = !DILocalVariable(name: "total", scope: !1969, file: !3, line: 719, type: !403)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 718, column: 2)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 717, column: 16)
!1971 = !DIGlobalVariableExpression(var: !1904, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1972 = !{i32 2, !"Dwarf Version", i32 4}
!1973 = !{i32 2, !"Debug Info Version", i32 3}
!1974 = !{i32 1, !"wchar_size", i32 4}
!1975 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1976 = distinct !DISubprogram(name: "vprintf", scope: !1977, file: !1977, line: 39, type: !1978, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1988)
!1977 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!403, !1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !408)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1982, file: !3, baseType: !7, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1982, file: !3, baseType: !7, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1982, file: !3, baseType: !407, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1982, file: !3, baseType: !407, size: 64, offset: 128)
!1988 = !{!1989, !1990}
!1989 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1976, file: !1977, line: 39, type: !1980)
!1990 = !DILocalVariable(name: "__arg", arg: 2, scope: !1976, file: !1977, line: 39, type: !1981)
!1991 = !DILocation(line: 0, scope: !1976)
!1992 = !DILocation(line: 41, column: 20, scope: !1976)
!1993 = !DILocation(line: 41, column: 10, scope: !1976)
!1994 = !DILocation(line: 41, column: 3, scope: !1976)
!1995 = distinct !DISubprogram(name: "getchar", scope: !1977, file: !1977, line: 47, type: !1996, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!403}
!1998 = !{}
!1999 = !DILocation(line: 49, column: 16, scope: !1995)
!2000 = !DILocation(line: 49, column: 10, scope: !1995)
!2001 = !DILocation(line: 49, column: 3, scope: !1995)
!2002 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1977, file: !1977, line: 56, type: !2003, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2054)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!403, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2007, line: 7, baseType: !2008)
!2007 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2009, line: 49, size: 1728, elements: !2010)
!2009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2026, !2028, !2029, !2030, !2033, !2035, !2036, !2037, !2040, !2042, !2045, !2048, !2049, !2050, !2051, !2052}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2008, file: !2009, line: 51, baseType: !403, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2008, file: !2009, line: 54, baseType: !405, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2008, file: !2009, line: 55, baseType: !405, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2008, file: !2009, line: 56, baseType: !405, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2008, file: !2009, line: 57, baseType: !405, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2008, file: !2009, line: 58, baseType: !405, size: 64, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2008, file: !2009, line: 59, baseType: !405, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2008, file: !2009, line: 60, baseType: !405, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2008, file: !2009, line: 61, baseType: !405, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2008, file: !2009, line: 64, baseType: !405, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2008, file: !2009, line: 65, baseType: !405, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2008, file: !2009, line: 66, baseType: !405, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2008, file: !2009, line: 68, baseType: !2024, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2009, line: 36, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2008, file: !2009, line: 70, baseType: !2027, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2008, file: !2009, line: 72, baseType: !403, size: 32, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2008, file: !2009, line: 73, baseType: !403, size: 32, offset: 928)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2008, file: !2009, line: 74, baseType: !2031, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2032, line: 152, baseType: !427)
!2032 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2008, file: !2009, line: 77, baseType: !2034, size: 16, offset: 1024)
!2034 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2008, file: !2009, line: 78, baseType: !1441, size: 8, offset: 1040)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2008, file: !2009, line: 79, baseType: !588, size: 8, offset: 1048)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2008, file: !2009, line: 81, baseType: !2038, size: 64, offset: 1088)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2009, line: 43, baseType: null)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2008, file: !2009, line: 89, baseType: !2041, size: 64, offset: 1152)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2032, line: 153, baseType: !427)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2008, file: !2009, line: 91, baseType: !2043, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2009, line: 37, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2008, file: !2009, line: 92, baseType: !2046, size: 64, offset: 1280)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2009, line: 38, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2008, file: !2009, line: 93, baseType: !2027, size: 64, offset: 1344)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2008, file: !2009, line: 94, baseType: !407, size: 64, offset: 1408)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2008, file: !2009, line: 95, baseType: !1015, size: 64, offset: 1472)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2008, file: !2009, line: 96, baseType: !403, size: 32, offset: 1536)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2008, file: !2009, line: 98, baseType: !2053, size: 160, offset: 1568)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 160, elements: !1883)
!2054 = !{!2055}
!2055 = !DILocalVariable(name: "__fp", arg: 1, scope: !2002, file: !1977, line: 56, type: !2005)
!2056 = !DILocation(line: 0, scope: !2002)
!2057 = !DILocation(line: 58, column: 10, scope: !2002)
!2058 = !DILocation(line: 58, column: 3, scope: !2002)
!2059 = distinct !DISubprogram(name: "getc_unlocked", scope: !1977, file: !1977, line: 66, type: !2003, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2060 = !{!2061}
!2061 = !DILocalVariable(name: "__fp", arg: 1, scope: !2059, file: !1977, line: 66, type: !2005)
!2062 = !DILocation(line: 0, scope: !2059)
!2063 = !DILocation(line: 68, column: 10, scope: !2059)
!2064 = !DILocation(line: 68, column: 3, scope: !2059)
!2065 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1977, file: !1977, line: 73, type: !1996, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!2066 = !DILocation(line: 75, column: 10, scope: !2065)
!2067 = !DILocation(line: 75, column: 3, scope: !2065)
!2068 = distinct !DISubprogram(name: "putchar", scope: !1977, file: !1977, line: 82, type: !2069, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!403, !403}
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "__c", arg: 1, scope: !2068, file: !1977, line: 82, type: !403)
!2073 = !DILocation(line: 0, scope: !2068)
!2074 = !DILocation(line: 84, column: 21, scope: !2068)
!2075 = !DILocation(line: 84, column: 10, scope: !2068)
!2076 = !DILocation(line: 84, column: 3, scope: !2068)
!2077 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1977, file: !1977, line: 91, type: !2078, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!403, !403, !2005}
!2080 = !{!2081, !2082}
!2081 = !DILocalVariable(name: "__c", arg: 1, scope: !2077, file: !1977, line: 91, type: !403)
!2082 = !DILocalVariable(name: "__stream", arg: 2, scope: !2077, file: !1977, line: 91, type: !2005)
!2083 = !DILocation(line: 0, scope: !2077)
!2084 = !DILocation(line: 93, column: 10, scope: !2077)
!2085 = !DILocation(line: 93, column: 3, scope: !2077)
!2086 = distinct !DISubprogram(name: "putc_unlocked", scope: !1977, file: !1977, line: 101, type: !2078, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "__c", arg: 1, scope: !2086, file: !1977, line: 101, type: !403)
!2089 = !DILocalVariable(name: "__stream", arg: 2, scope: !2086, file: !1977, line: 101, type: !2005)
!2090 = !DILocation(line: 0, scope: !2086)
!2091 = !DILocation(line: 103, column: 10, scope: !2086)
!2092 = !DILocation(line: 103, column: 3, scope: !2086)
!2093 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1977, file: !1977, line: 108, type: !2069, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2094 = !{!2095}
!2095 = !DILocalVariable(name: "__c", arg: 1, scope: !2093, file: !1977, line: 108, type: !403)
!2096 = !DILocation(line: 0, scope: !2093)
!2097 = !DILocation(line: 110, column: 10, scope: !2093)
!2098 = !DILocation(line: 110, column: 3, scope: !2093)
!2099 = distinct !DISubprogram(name: "getline", scope: !1977, file: !1977, line: 118, type: !2100, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2102, !404, !2103, !2005}
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2032, line: 193, baseType: !427)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!2104 = !{!2105, !2106, !2107}
!2105 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2099, file: !1977, line: 118, type: !404)
!2106 = !DILocalVariable(name: "__n", arg: 2, scope: !2099, file: !1977, line: 118, type: !2103)
!2107 = !DILocalVariable(name: "__stream", arg: 3, scope: !2099, file: !1977, line: 118, type: !2005)
!2108 = !DILocation(line: 0, scope: !2099)
!2109 = !DILocation(line: 120, column: 10, scope: !2099)
!2110 = !DILocation(line: 120, column: 3, scope: !2099)
!2111 = distinct !DISubprogram(name: "feof_unlocked", scope: !1977, file: !1977, line: 128, type: !2003, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2112)
!2112 = !{!2113}
!2113 = !DILocalVariable(name: "__stream", arg: 1, scope: !2111, file: !1977, line: 128, type: !2005)
!2114 = !DILocation(line: 0, scope: !2111)
!2115 = !DILocation(line: 130, column: 10, scope: !2111)
!2116 = !DILocation(line: 130, column: 3, scope: !2111)
!2117 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1977, file: !1977, line: 135, type: !2003, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "__stream", arg: 1, scope: !2117, file: !1977, line: 135, type: !2005)
!2120 = !DILocation(line: 0, scope: !2117)
!2121 = !DILocation(line: 137, column: 10, scope: !2117)
!2122 = !DILocation(line: 137, column: 3, scope: !2117)
!2123 = distinct !DISubprogram(name: "tolower", scope: !2124, file: !2124, line: 207, type: !2069, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2124 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "__c", arg: 1, scope: !2123, file: !2124, line: 207, type: !403)
!2127 = !DILocation(line: 0, scope: !2123)
!2128 = !DILocation(line: 209, column: 22, scope: !2123)
!2129 = !DILocation(line: 209, column: 39, scope: !2123)
!2130 = !DILocation(line: 209, column: 38, scope: !2123)
!2131 = !DILocation(line: 209, column: 37, scope: !2123)
!2132 = !DILocation(line: 209, column: 10, scope: !2123)
!2133 = !DILocation(line: 209, column: 3, scope: !2123)
!2134 = distinct !DISubprogram(name: "toupper", scope: !2124, file: !2124, line: 213, type: !2069, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "__c", arg: 1, scope: !2134, file: !2124, line: 213, type: !403)
!2137 = !DILocation(line: 0, scope: !2134)
!2138 = !DILocation(line: 215, column: 22, scope: !2134)
!2139 = !DILocation(line: 215, column: 39, scope: !2134)
!2140 = !DILocation(line: 215, column: 38, scope: !2134)
!2141 = !DILocation(line: 215, column: 37, scope: !2134)
!2142 = !DILocation(line: 215, column: 10, scope: !2134)
!2143 = !DILocation(line: 215, column: 3, scope: !2134)
!2144 = distinct !DISubprogram(name: "atoi", scope: !2145, file: !2145, line: 361, type: !2146, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2145 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!403, !408}
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2144, file: !2145, line: 361, type: !408)
!2150 = !DILocation(line: 0, scope: !2144)
!2151 = !DILocation(line: 363, column: 16, scope: !2144)
!2152 = !DILocation(line: 363, column: 10, scope: !2144)
!2153 = !DILocation(line: 363, column: 3, scope: !2144)
!2154 = distinct !DISubprogram(name: "atol", scope: !2145, file: !2145, line: 366, type: !2155, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!427, !408}
!2157 = !{!2158}
!2158 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2154, file: !2145, line: 366, type: !408)
!2159 = !DILocation(line: 0, scope: !2154)
!2160 = !DILocation(line: 368, column: 10, scope: !2154)
!2161 = !DILocation(line: 368, column: 3, scope: !2154)
!2162 = distinct !DISubprogram(name: "atoll", scope: !2145, file: !2145, line: 373, type: !2163, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2165, !408}
!2165 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2162, file: !2145, line: 373, type: !408)
!2168 = !DILocation(line: 0, scope: !2162)
!2169 = !DILocation(line: 375, column: 10, scope: !2162)
!2170 = !DILocation(line: 375, column: 3, scope: !2162)
!2171 = distinct !DISubprogram(name: "bsearch", scope: !2172, file: !2172, line: 20, type: !2173, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!407, !833, !833, !1015, !1015, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2145, line: 808, baseType: !1004)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2177 = !DILocalVariable(name: "__key", arg: 1, scope: !2171, file: !2172, line: 20, type: !833)
!2178 = !DILocalVariable(name: "__base", arg: 2, scope: !2171, file: !2172, line: 20, type: !833)
!2179 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2171, file: !2172, line: 20, type: !1015)
!2180 = !DILocalVariable(name: "__size", arg: 4, scope: !2171, file: !2172, line: 20, type: !1015)
!2181 = !DILocalVariable(name: "__compar", arg: 5, scope: !2171, file: !2172, line: 21, type: !2175)
!2182 = !DILocalVariable(name: "__l", scope: !2171, file: !2172, line: 23, type: !1015)
!2183 = !DILocalVariable(name: "__u", scope: !2171, file: !2172, line: 23, type: !1015)
!2184 = !DILocalVariable(name: "__idx", scope: !2171, file: !2172, line: 23, type: !1015)
!2185 = !DILocalVariable(name: "__p", scope: !2171, file: !2172, line: 24, type: !833)
!2186 = !DILocalVariable(name: "__comparison", scope: !2171, file: !2172, line: 25, type: !403)
!2187 = !DILocation(line: 0, scope: !2171)
!2188 = !DILocation(line: 29, column: 3, scope: !2171)
!2189 = !DILocation(line: 27, column: 7, scope: !2171)
!2190 = !DILocation(line: 29, column: 14, scope: !2171)
!2191 = !DILocation(line: 31, column: 20, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2171, file: !2172, line: 30, column: 5)
!2193 = !DILocation(line: 31, column: 27, scope: !2192)
!2194 = !DILocation(line: 32, column: 56, scope: !2192)
!2195 = !DILocation(line: 32, column: 47, scope: !2192)
!2196 = !DILocation(line: 33, column: 22, scope: !2192)
!2197 = !DILocation(line: 34, column: 24, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2192, file: !2172, line: 34, column: 11)
!2199 = !DILocation(line: 34, column: 11, scope: !2192)
!2200 = !DILocation(line: 36, column: 29, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !2172, line: 36, column: 16)
!2202 = !DILocation(line: 36, column: 16, scope: !2198)
!2203 = !DILocation(line: 37, column: 14, scope: !2201)
!2204 = distinct !{!2204, !2188, !2205}
!2205 = !DILocation(line: 40, column: 5, scope: !2171)
!2206 = !DILocation(line: 43, column: 1, scope: !2171)
!2207 = distinct !DISubprogram(name: "atof", scope: !2208, file: !2208, line: 25, type: !2209, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2211, !408}
!2211 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2212 = !{!2213}
!2213 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2207, file: !2208, line: 25, type: !408)
!2214 = !DILocation(line: 0, scope: !2207)
!2215 = !DILocation(line: 27, column: 10, scope: !2207)
!2216 = !DILocation(line: 27, column: 3, scope: !2207)
!2217 = distinct !DISubprogram(name: "strtoimax", scope: !2218, file: !2218, line: 324, type: !2219, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2218 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!2221, !1980, !2224, !403}
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2222, line: 101, baseType: !2223)
!2222 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2032, line: 72, baseType: !427)
!2224 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !404)
!2225 = !{!2226, !2227, !2228}
!2226 = !DILocalVariable(name: "nptr", arg: 1, scope: !2217, file: !2218, line: 324, type: !1980)
!2227 = !DILocalVariable(name: "endptr", arg: 2, scope: !2217, file: !2218, line: 324, type: !2224)
!2228 = !DILocalVariable(name: "base", arg: 3, scope: !2217, file: !2218, line: 324, type: !403)
!2229 = !DILocation(line: 0, scope: !2217)
!2230 = !DILocation(line: 327, column: 10, scope: !2217)
!2231 = !DILocation(line: 327, column: 3, scope: !2217)
!2232 = distinct !DISubprogram(name: "strtoumax", scope: !2218, file: !2218, line: 336, type: !2233, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2235, !1980, !2224, !403}
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2222, line: 102, baseType: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2032, line: 73, baseType: !545)
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "nptr", arg: 1, scope: !2232, file: !2218, line: 336, type: !1980)
!2239 = !DILocalVariable(name: "endptr", arg: 2, scope: !2232, file: !2218, line: 336, type: !2224)
!2240 = !DILocalVariable(name: "base", arg: 3, scope: !2232, file: !2218, line: 336, type: !403)
!2241 = !DILocation(line: 0, scope: !2232)
!2242 = !DILocation(line: 339, column: 10, scope: !2232)
!2243 = !DILocation(line: 339, column: 3, scope: !2232)
!2244 = distinct !DISubprogram(name: "wcstoimax", scope: !2218, file: !2218, line: 348, type: !2245, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2221, !2247, !2251, !403}
!2247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2248)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2218, line: 34, baseType: !403)
!2251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2252)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2254 = !{!2255, !2256, !2257}
!2255 = !DILocalVariable(name: "nptr", arg: 1, scope: !2244, file: !2218, line: 348, type: !2247)
!2256 = !DILocalVariable(name: "endptr", arg: 2, scope: !2244, file: !2218, line: 348, type: !2251)
!2257 = !DILocalVariable(name: "base", arg: 3, scope: !2244, file: !2218, line: 348, type: !403)
!2258 = !DILocation(line: 0, scope: !2244)
!2259 = !DILocation(line: 351, column: 10, scope: !2244)
!2260 = !DILocation(line: 351, column: 3, scope: !2244)
!2261 = distinct !DISubprogram(name: "wcstoumax", scope: !2218, file: !2218, line: 362, type: !2262, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!2235, !2247, !2251, !403}
!2264 = !{!2265, !2266, !2267}
!2265 = !DILocalVariable(name: "nptr", arg: 1, scope: !2261, file: !2218, line: 362, type: !2247)
!2266 = !DILocalVariable(name: "endptr", arg: 2, scope: !2261, file: !2218, line: 362, type: !2251)
!2267 = !DILocalVariable(name: "base", arg: 3, scope: !2261, file: !2218, line: 362, type: !403)
!2268 = !DILocation(line: 0, scope: !2261)
!2269 = !DILocation(line: 365, column: 10, scope: !2261)
!2270 = !DILocation(line: 365, column: 3, scope: !2261)
!2271 = distinct !DISubprogram(name: "stat", scope: !2272, file: !2272, line: 453, type: !2273, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!403, !408, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2277, line: 46, size: 1152, elements: !2278)
!2277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2278 = !{!2279, !2281, !2283, !2285, !2287, !2289, !2291, !2292, !2293, !2294, !2296, !2298, !2306, !2307, !2308}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2276, file: !2277, line: 48, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2032, line: 145, baseType: !545)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2276, file: !2277, line: 53, baseType: !2282, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2032, line: 148, baseType: !545)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2276, file: !2277, line: 61, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2032, line: 151, baseType: !545)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2276, file: !2277, line: 62, baseType: !2286, size: 32, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2032, line: 150, baseType: !7)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2276, file: !2277, line: 64, baseType: !2288, size: 32, offset: 224)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2032, line: 146, baseType: !7)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2276, file: !2277, line: 65, baseType: !2290, size: 32, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2032, line: 147, baseType: !7)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2276, file: !2277, line: 67, baseType: !403, size: 32, offset: 288)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2276, file: !2277, line: 69, baseType: !2280, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2276, file: !2277, line: 74, baseType: !2031, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2276, file: !2277, line: 78, baseType: !2295, size: 64, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2032, line: 174, baseType: !427)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2276, file: !2277, line: 80, baseType: !2297, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2032, line: 179, baseType: !427)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2276, file: !2277, line: 91, baseType: !2299, size: 128, offset: 576)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2300, line: 10, size: 128, elements: !2301)
!2300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2301 = !{!2302, !2304}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2299, file: !2300, line: 12, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2032, line: 160, baseType: !427)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2299, file: !2300, line: 16, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2032, line: 196, baseType: !427)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2276, file: !2277, line: 92, baseType: !2299, size: 128, offset: 704)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2276, file: !2277, line: 93, baseType: !2299, size: 128, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2276, file: !2277, line: 106, baseType: !2309, size: 192, offset: 960)
!2309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2305, size: 192, elements: !564)
!2310 = !{!2311, !2312}
!2311 = !DILocalVariable(name: "__path", arg: 1, scope: !2271, file: !2272, line: 453, type: !408)
!2312 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2271, file: !2272, line: 453, type: !2275)
!2313 = !DILocation(line: 0, scope: !2271)
!2314 = !DILocation(line: 455, column: 10, scope: !2271)
!2315 = !DILocation(line: 455, column: 3, scope: !2271)
!2316 = distinct !DISubprogram(name: "lstat", scope: !2272, file: !2272, line: 460, type: !2273, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2317 = !{!2318, !2319}
!2318 = !DILocalVariable(name: "__path", arg: 1, scope: !2316, file: !2272, line: 460, type: !408)
!2319 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2316, file: !2272, line: 460, type: !2275)
!2320 = !DILocation(line: 0, scope: !2316)
!2321 = !DILocation(line: 462, column: 10, scope: !2316)
!2322 = !DILocation(line: 462, column: 3, scope: !2316)
!2323 = distinct !DISubprogram(name: "fstat", scope: !2272, file: !2272, line: 467, type: !2324, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!403, !403, !2275}
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "__fd", arg: 1, scope: !2323, file: !2272, line: 467, type: !403)
!2328 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2323, file: !2272, line: 467, type: !2275)
!2329 = !DILocation(line: 0, scope: !2323)
!2330 = !DILocation(line: 469, column: 10, scope: !2323)
!2331 = !DILocation(line: 469, column: 3, scope: !2323)
!2332 = distinct !DISubprogram(name: "fstatat", scope: !2272, file: !2272, line: 474, type: !2333, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!403, !403, !408, !2275, !403}
!2335 = !{!2336, !2337, !2338, !2339}
!2336 = !DILocalVariable(name: "__fd", arg: 1, scope: !2332, file: !2272, line: 474, type: !403)
!2337 = !DILocalVariable(name: "__filename", arg: 2, scope: !2332, file: !2272, line: 474, type: !408)
!2338 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2332, file: !2272, line: 474, type: !2275)
!2339 = !DILocalVariable(name: "__flag", arg: 4, scope: !2332, file: !2272, line: 474, type: !403)
!2340 = !DILocation(line: 0, scope: !2332)
!2341 = !DILocation(line: 477, column: 10, scope: !2332)
!2342 = !DILocation(line: 477, column: 3, scope: !2332)
!2343 = distinct !DISubprogram(name: "mknod", scope: !2272, file: !2272, line: 483, type: !2344, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!403, !408, !2286, !2280}
!2346 = !{!2347, !2348, !2349}
!2347 = !DILocalVariable(name: "__path", arg: 1, scope: !2343, file: !2272, line: 483, type: !408)
!2348 = !DILocalVariable(name: "__mode", arg: 2, scope: !2343, file: !2272, line: 483, type: !2286)
!2349 = !DILocalVariable(name: "__dev", arg: 3, scope: !2343, file: !2272, line: 483, type: !2280)
!2350 = !DILocation(line: 0, scope: !2343)
!2351 = !DILocation(line: 485, column: 10, scope: !2343)
!2352 = !DILocation(line: 485, column: 3, scope: !2343)
!2353 = distinct !DISubprogram(name: "mknodat", scope: !2272, file: !2272, line: 491, type: !2354, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!403, !403, !408, !2286, !2280}
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DILocalVariable(name: "__fd", arg: 1, scope: !2353, file: !2272, line: 491, type: !403)
!2358 = !DILocalVariable(name: "__path", arg: 2, scope: !2353, file: !2272, line: 491, type: !408)
!2359 = !DILocalVariable(name: "__mode", arg: 3, scope: !2353, file: !2272, line: 491, type: !2286)
!2360 = !DILocalVariable(name: "__dev", arg: 4, scope: !2353, file: !2272, line: 491, type: !2280)
!2361 = !DILocation(line: 0, scope: !2353)
!2362 = !DILocation(line: 494, column: 10, scope: !2353)
!2363 = !DILocation(line: 494, column: 3, scope: !2353)
!2364 = distinct !DISubprogram(name: "stat64", scope: !2272, file: !2272, line: 502, type: !2365, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!403, !408, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2277, line: 119, size: 1152, elements: !2369)
!2369 = !{!2370, !2371, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2383, !2384, !2385, !2386}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2368, file: !2277, line: 121, baseType: !2280, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2368, file: !2277, line: 123, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2032, line: 149, baseType: !545)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2368, file: !2277, line: 124, baseType: !2284, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2368, file: !2277, line: 125, baseType: !2286, size: 32, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2368, file: !2277, line: 132, baseType: !2288, size: 32, offset: 224)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2368, file: !2277, line: 133, baseType: !2290, size: 32, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2368, file: !2277, line: 135, baseType: !403, size: 32, offset: 288)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2368, file: !2277, line: 136, baseType: !2280, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2368, file: !2277, line: 137, baseType: !2031, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2368, file: !2277, line: 143, baseType: !2295, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2368, file: !2277, line: 144, baseType: !2382, size: 64, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2032, line: 180, baseType: !427)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2368, file: !2277, line: 152, baseType: !2299, size: 128, offset: 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2368, file: !2277, line: 153, baseType: !2299, size: 128, offset: 704)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2368, file: !2277, line: 154, baseType: !2299, size: 128, offset: 832)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2368, file: !2277, line: 164, baseType: !2309, size: 192, offset: 960)
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "__path", arg: 1, scope: !2364, file: !2272, line: 502, type: !408)
!2389 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2364, file: !2272, line: 502, type: !2367)
!2390 = !DILocation(line: 0, scope: !2364)
!2391 = !DILocation(line: 504, column: 10, scope: !2364)
!2392 = !DILocation(line: 504, column: 3, scope: !2364)
!2393 = distinct !DISubprogram(name: "lstat64", scope: !2272, file: !2272, line: 509, type: !2365, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2394)
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "__path", arg: 1, scope: !2393, file: !2272, line: 509, type: !408)
!2396 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2393, file: !2272, line: 509, type: !2367)
!2397 = !DILocation(line: 0, scope: !2393)
!2398 = !DILocation(line: 511, column: 10, scope: !2393)
!2399 = !DILocation(line: 511, column: 3, scope: !2393)
!2400 = distinct !DISubprogram(name: "fstat64", scope: !2272, file: !2272, line: 516, type: !2401, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!403, !403, !2367}
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "__fd", arg: 1, scope: !2400, file: !2272, line: 516, type: !403)
!2405 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2400, file: !2272, line: 516, type: !2367)
!2406 = !DILocation(line: 0, scope: !2400)
!2407 = !DILocation(line: 518, column: 10, scope: !2400)
!2408 = !DILocation(line: 518, column: 3, scope: !2400)
!2409 = distinct !DISubprogram(name: "fstatat64", scope: !2272, file: !2272, line: 523, type: !2410, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!403, !403, !408, !2367, !403}
!2412 = !{!2413, !2414, !2415, !2416}
!2413 = !DILocalVariable(name: "__fd", arg: 1, scope: !2409, file: !2272, line: 523, type: !403)
!2414 = !DILocalVariable(name: "__filename", arg: 2, scope: !2409, file: !2272, line: 523, type: !408)
!2415 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2409, file: !2272, line: 523, type: !2367)
!2416 = !DILocalVariable(name: "__flag", arg: 4, scope: !2409, file: !2272, line: 523, type: !403)
!2417 = !DILocation(line: 0, scope: !2409)
!2418 = !DILocation(line: 526, column: 10, scope: !2409)
!2419 = !DILocation(line: 526, column: 3, scope: !2409)
!2420 = distinct !DISubprogram(name: "branch_prob", scope: !3, file: !3, line: 894, type: !1820, scopeLine: 895, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2421)
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2435, !2449, !2453, !2454, !2455, !2456, !2457, !2458, !2468, !2469, !2472, !2473, !2477, !2481, !2482, !2485, !2488, !2492, !2493, !2497, !2500, !2503, !2507, !2517, !2521, !2524}
!2422 = !DILocalVariable(name: "bb", scope: !2420, file: !3, line: 896, type: !430)
!2423 = !DILocalVariable(name: "i", scope: !2420, file: !3, line: 897, type: !7)
!2424 = !DILocalVariable(name: "num_edges", scope: !2420, file: !3, line: 898, type: !7)
!2425 = !DILocalVariable(name: "ignored_edges", scope: !2420, file: !3, line: 898, type: !7)
!2426 = !DILocalVariable(name: "num_instrumented", scope: !2420, file: !3, line: 899, type: !7)
!2427 = !DILocalVariable(name: "el", scope: !2420, file: !3, line: 900, type: !2428)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_list", file: !135, line: 572, size: 128, elements: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !2429, file: !135, line: 574, baseType: !403, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "num_edges", scope: !2429, file: !135, line: 575, baseType: !403, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "index_to_edge", scope: !2429, file: !135, line: 576, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!2435 = !DILocalVariable(name: "values", scope: !2420, file: !3, line: 901, type: !2436)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "histogram_values", file: !391, line: 71, baseType: !2437)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_histogram_value_heap", file: !391, line: 69, baseType: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_histogram_value_heap", file: !391, line: 69, size: 128, elements: !2440)
!2440 = !{!2441}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2439, file: !391, line: 69, baseType: !2442, size: 128)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_histogram_value_base", file: !391, line: 68, baseType: !2443)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_histogram_value_base", file: !391, line: 68, size: 128, elements: !2444)
!2444 = !{!2445, !2446, !2447}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2443, file: !391, line: 68, baseType: !7, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2443, file: !391, line: 68, baseType: !7, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2443, file: !391, line: 68, baseType: !2448, size: 64, offset: 64)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 64, elements: !589)
!2449 = !DILocalVariable(name: "need_exit_edge", scope: !2450, file: !3, line: 919, type: !403)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 918, column: 5)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 917, column: 3)
!2452 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 917, column: 3)
!2453 = !DILocalVariable(name: "need_entry_edge", scope: !2450, file: !3, line: 919, type: !403)
!2454 = !DILocalVariable(name: "have_exit_edge", scope: !2450, file: !3, line: 920, type: !403)
!2455 = !DILocalVariable(name: "have_entry_edge", scope: !2450, file: !3, line: 920, type: !403)
!2456 = !DILocalVariable(name: "e", scope: !2450, file: !3, line: 921, type: !448)
!2457 = !DILocalVariable(name: "ei", scope: !2450, file: !3, line: 922, type: !1921)
!2458 = !DILocalVariable(name: "gsi", scope: !2459, file: !3, line: 932, type: !2462)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 931, column: 2)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 930, column: 7)
!2461 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 930, column: 7)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !461, line: 265, baseType: !2463)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 254, size: 192, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2463, file: !461, line: 257, baseType: !464, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2463, file: !461, line: 263, baseType: !458, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2463, file: !461, line: 264, baseType: !430, size: 64, offset: 128)
!2468 = !DILocalVariable(name: "last", scope: !2459, file: !3, line: 933, type: !469)
!2469 = !DILocalVariable(name: "new_bb", scope: !2470, file: !3, line: 959, type: !430)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 958, column: 6)
!2471 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 950, column: 8)
!2472 = !DILocalVariable(name: "ne", scope: !2470, file: !3, line: 960, type: !448)
!2473 = !DILocalVariable(name: "e", scope: !2474, file: !3, line: 1005, type: !448)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1004, column: 5)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1003, column: 3)
!2476 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1003, column: 3)
!2477 = !DILocalVariable(name: "e", scope: !2478, file: !3, line: 1027, type: !448)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1026, column: 5)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1025, column: 3)
!2480 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1025, column: 3)
!2481 = !DILocalVariable(name: "inf", scope: !2478, file: !3, line: 1028, type: !412)
!2482 = !DILocalVariable(name: "offset", scope: !2483, file: !3, line: 1059, type: !1893)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1058, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1057, column: 7)
!2485 = !DILocalVariable(name: "offset", scope: !2486, file: !3, line: 1076, type: !1893)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 1075, column: 5)
!2487 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1074, column: 7)
!2488 = !DILocalVariable(name: "e", scope: !2489, file: !3, line: 1080, type: !448)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1079, column: 2)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1078, column: 7)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1078, column: 7)
!2492 = !DILocalVariable(name: "ei", scope: !2489, file: !3, line: 1081, type: !1921)
!2493 = !DILocalVariable(name: "i", scope: !2494, file: !3, line: 1088, type: !412)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1087, column: 6)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 1086, column: 4)
!2496 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1086, column: 4)
!2497 = !DILocalVariable(name: "flag_bits", scope: !2498, file: !3, line: 1091, type: !7)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1090, column: 3)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1089, column: 12)
!2500 = !DILocalVariable(name: "offset", scope: !2501, file: !3, line: 1117, type: !1893)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1116, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1115, column: 7)
!2503 = !DILocalVariable(name: "gsi", scope: !2504, file: !3, line: 1124, type: !2462)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1123, column: 2)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1122, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1122, column: 7)
!2507 = !DILocalVariable(name: "curr_location", scope: !2508, file: !3, line: 1130, type: !2510)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1129, column: 6)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1128, column: 8)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !488, line: 52, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 40, size: 192, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2511, file: !488, line: 43, baseType: !408, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2511, file: !488, line: 46, baseType: !403, size: 32, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !2511, file: !488, line: 48, baseType: !403, size: 32, offset: 96)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2511, file: !488, line: 51, baseType: !402, size: 8, offset: 128)
!2517 = !DILocalVariable(name: "stmt", scope: !2518, file: !3, line: 1138, type: !469)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1137, column: 6)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1136, column: 4)
!2520 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1136, column: 4)
!2521 = !DILocalVariable(name: "curr_location", scope: !2522, file: !3, line: 1149, type: !487)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1148, column: 6)
!2523 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1146, column: 8)
!2524 = !DILocalVariable(name: "n_instrumented", scope: !2525, file: !3, line: 1185, type: !7)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1184, column: 5)
!2526 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1182, column: 7)
!2527 = !DILocation(line: 901, column: 3, scope: !2420)
!2528 = !DILocation(line: 0, scope: !2420)
!2529 = !DILocation(line: 901, column: 20, scope: !2420)
!2530 = !DILocation(line: 903, column: 25, scope: !2420)
!2531 = !DILocation(line: 905, column: 3, scope: !2420)
!2532 = !DILocation(line: 906, column: 3, scope: !2420)
!2533 = !DILocation(line: 917, column: 3, scope: !2452)
!2534 = !DILocation(line: 0, scope: !2450)
!2535 = !DILocation(line: 0, scope: !2461)
!2536 = !DILocation(line: 0, scope: !2460)
!2537 = !DILocation(line: 0, scope: !2459)
!2538 = !DILocation(line: 0, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 938, column: 4)
!2540 = !DILocation(line: 0, scope: !2471)
!2541 = !DILocation(line: 0, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 970, column: 7)
!2543 = !DILocation(line: 917, column: 3, scope: !2451)
!2544 = !DILocation(line: 0, scope: !2452)
!2545 = !DILocation(line: 921, column: 7, scope: !2450)
!2546 = !DILocation(line: 922, column: 7, scope: !2450)
!2547 = !DILocation(line: 930, column: 7, scope: !2461)
!2548 = !DILocation(line: 930, column: 7, scope: !2460)
!2549 = !DILocation(line: 932, column: 4, scope: !2459)
!2550 = !DILocation(line: 938, column: 15, scope: !2539)
!2551 = !DILocation(line: 938, column: 9, scope: !2539)
!2552 = !DILocation(line: 938, column: 34, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 938, column: 4)
!2554 = !DILocation(line: 938, column: 33, scope: !2553)
!2555 = !DILocation(line: 938, column: 4, scope: !2539)
!2556 = !DILocation(line: 940, column: 15, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 939, column: 6)
!2558 = !DILocation(line: 941, column: 12, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 941, column: 12)
!2560 = !DILocation(line: 941, column: 12, scope: !2557)
!2561 = !DILocation(line: 938, column: 51, scope: !2553)
!2562 = !DILocation(line: 938, column: 4, scope: !2553)
!2563 = distinct !{!2563, !2555, !2564}
!2564 = !DILocation(line: 943, column: 6, scope: !2539)
!2565 = !DILocation(line: 950, column: 8, scope: !2471)
!2566 = !DILocation(line: 951, column: 8, scope: !2471)
!2567 = !DILocation(line: 951, column: 11, scope: !2471)
!2568 = !DILocation(line: 952, column: 8, scope: !2471)
!2569 = !DILocation(line: 952, column: 11, scope: !2471)
!2570 = !DILocation(line: 952, column: 14, scope: !2471)
!2571 = !DILocation(line: 952, column: 25, scope: !2471)
!2572 = !DILocation(line: 953, column: 8, scope: !2471)
!2573 = !DILocation(line: 953, column: 12, scope: !2471)
!2574 = !DILocation(line: 954, column: 8, scope: !2471)
!2575 = !DILocation(line: 954, column: 12, scope: !2471)
!2576 = !DILocation(line: 955, column: 15, scope: !2471)
!2577 = !DILocation(line: 955, column: 12, scope: !2471)
!2578 = !DILocation(line: 956, column: 5, scope: !2471)
!2579 = !DILocation(line: 956, column: 9, scope: !2471)
!2580 = !DILocation(line: 957, column: 12, scope: !2471)
!2581 = !DILocation(line: 957, column: 9, scope: !2471)
!2582 = !DILocation(line: 950, column: 8, scope: !2459)
!2583 = !DILocation(line: 959, column: 41, scope: !2470)
!2584 = !DILocation(line: 959, column: 29, scope: !2470)
!2585 = !DILocation(line: 0, scope: !2470)
!2586 = !DILocation(line: 960, column: 18, scope: !2470)
!2587 = !DILocation(line: 961, column: 25, scope: !2470)
!2588 = !DILocation(line: 961, column: 28, scope: !2470)
!2589 = !DILocation(line: 961, column: 12, scope: !2470)
!2590 = !DILocation(line: 961, column: 23, scope: !2470)
!2591 = !DILocation(line: 962, column: 28, scope: !2470)
!2592 = !DILocation(line: 962, column: 12, scope: !2470)
!2593 = !DILocation(line: 962, column: 23, scope: !2470)
!2594 = !DILocation(line: 963, column: 6, scope: !2470)
!2595 = !DILocation(line: 964, column: 9, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 964, column: 8)
!2597 = !DILocation(line: 964, column: 12, scope: !2596)
!2598 = !DILocation(line: 964, column: 18, scope: !2596)
!2599 = !DILocation(line: 965, column: 9, scope: !2596)
!2600 = !DILocation(line: 0, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 967, column: 8)
!2602 = !DILocation(line: 967, column: 11, scope: !2601)
!2603 = !DILocation(line: 967, column: 19, scope: !2601)
!2604 = !DILocation(line: 965, column: 15, scope: !2596)
!2605 = !DILocation(line: 965, column: 23, scope: !2596)
!2606 = !DILocation(line: 965, column: 20, scope: !2596)
!2607 = !DILocation(line: 964, column: 8, scope: !2459)
!2608 = !DILocation(line: 967, column: 16, scope: !2601)
!2609 = !DILocation(line: 967, column: 8, scope: !2459)
!2610 = !DILocation(line: 969, column: 2, scope: !2460)
!2611 = distinct !{!2611, !2547, !2612}
!2612 = !DILocation(line: 969, column: 2, scope: !2461)
!2613 = !DILocation(line: 970, column: 7, scope: !2542)
!2614 = !DILocation(line: 970, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 970, column: 7)
!2616 = !DILocation(line: 972, column: 9, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 972, column: 8)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 971, column: 2)
!2619 = !DILocation(line: 972, column: 12, scope: !2617)
!2620 = !DILocation(line: 972, column: 18, scope: !2617)
!2621 = !DILocation(line: 973, column: 9, scope: !2617)
!2622 = !DILocation(line: 0, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 975, column: 8)
!2624 = !DILocation(line: 975, column: 11, scope: !2623)
!2625 = !DILocation(line: 975, column: 18, scope: !2623)
!2626 = !DILocation(line: 973, column: 15, scope: !2617)
!2627 = !DILocation(line: 973, column: 22, scope: !2617)
!2628 = !DILocation(line: 973, column: 19, scope: !2617)
!2629 = !DILocation(line: 972, column: 8, scope: !2618)
!2630 = !DILocation(line: 975, column: 15, scope: !2623)
!2631 = !DILocation(line: 975, column: 8, scope: !2618)
!2632 = distinct !{!2632, !2613, !2633}
!2633 = !DILocation(line: 977, column: 2, scope: !2542)
!2634 = !DILocation(line: 979, column: 11, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 979, column: 11)
!2636 = !DILocation(line: 979, column: 30, scope: !2635)
!2637 = !DILocation(line: 979, column: 26, scope: !2635)
!2638 = !DILocation(line: 981, column: 8, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 981, column: 8)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 980, column: 2)
!2641 = !DILocation(line: 981, column: 8, scope: !2640)
!2642 = !DILocation(line: 983, column: 12, scope: !2639)
!2643 = !DILocation(line: 982, column: 6, scope: !2639)
!2644 = !DILocation(line: 984, column: 19, scope: !2640)
!2645 = !DILocation(line: 984, column: 4, scope: !2640)
!2646 = !DILocation(line: 985, column: 2, scope: !2640)
!2647 = !DILocation(line: 986, column: 11, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 986, column: 11)
!2649 = !DILocation(line: 986, column: 31, scope: !2648)
!2650 = !DILocation(line: 986, column: 27, scope: !2648)
!2651 = !DILocation(line: 988, column: 8, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 988, column: 8)
!2653 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 987, column: 2)
!2654 = !DILocation(line: 988, column: 8, scope: !2653)
!2655 = !DILocation(line: 990, column: 12, scope: !2652)
!2656 = !DILocation(line: 989, column: 6, scope: !2652)
!2657 = !DILocation(line: 991, column: 15, scope: !2653)
!2658 = !DILocation(line: 991, column: 4, scope: !2653)
!2659 = !DILocation(line: 992, column: 2, scope: !2653)
!2660 = !DILocation(line: 993, column: 5, scope: !2451)
!2661 = !DILocation(line: 0, scope: !2451)
!2662 = distinct !{!2662, !2533, !2663}
!2663 = !DILocation(line: 993, column: 5, scope: !2452)
!2664 = !DILocation(line: 995, column: 8, scope: !2420)
!2665 = !DILocation(line: 996, column: 15, scope: !2420)
!2666 = !DILocation(line: 997, column: 3, scope: !2420)
!2667 = !DILocation(line: 1000, column: 3, scope: !2420)
!2668 = !DILocation(line: 0, scope: !2474)
!2669 = !DILocation(line: 1003, column: 18, scope: !2475)
!2670 = !DILocation(line: 1003, column: 8, scope: !2476)
!2671 = !DILocation(line: 1003, column: 3, scope: !2476)
!2672 = !DILocation(line: 1005, column: 16, scope: !2474)
!2673 = !DILocation(line: 1006, column: 10, scope: !2474)
!2674 = !DILocation(line: 1006, column: 16, scope: !2474)
!2675 = !DILocation(line: 1009, column: 15, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1009, column: 11)
!2677 = !DILocation(line: 1009, column: 21, scope: !2676)
!2678 = !DILocation(line: 1010, column: 4, scope: !2676)
!2679 = !DILocation(line: 1010, column: 10, scope: !2676)
!2680 = !DILocation(line: 1010, column: 17, scope: !2676)
!2681 = !DILocation(line: 1010, column: 14, scope: !2676)
!2682 = !DILocation(line: 1010, column: 33, scope: !2676)
!2683 = !DILocation(line: 1010, column: 39, scope: !2676)
!2684 = !DILocation(line: 1010, column: 47, scope: !2676)
!2685 = !DILocation(line: 1010, column: 44, scope: !2676)
!2686 = !DILocation(line: 1009, column: 11, scope: !2474)
!2687 = !DILocation(line: 1012, column: 4, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1011, column: 2)
!2689 = !DILocation(line: 1012, column: 26, scope: !2688)
!2690 = !DILocation(line: 1013, column: 17, scope: !2688)
!2691 = !DILocation(line: 1014, column: 2, scope: !2688)
!2692 = !DILocation(line: 1003, column: 33, scope: !2475)
!2693 = !DILocation(line: 1003, column: 3, scope: !2475)
!2694 = distinct !{!2694, !2671, !2695}
!2695 = !DILocation(line: 1015, column: 5, scope: !2476)
!2696 = !DILocation(line: 1021, column: 3, scope: !2420)
!2697 = !DILocation(line: 1025, column: 36, scope: !2479)
!2698 = !DILocation(line: 1025, column: 8, scope: !2480)
!2699 = !DILocation(line: 1025, column: 25, scope: !2480)
!2700 = !DILocation(line: 1002, column: 17, scope: !2420)
!2701 = !DILocation(line: 1025, column: 3, scope: !2480)
!2702 = !DILocation(line: 1027, column: 16, scope: !2478)
!2703 = !DILocation(line: 0, scope: !2478)
!2704 = !DILocation(line: 1028, column: 31, scope: !2478)
!2705 = !DILocation(line: 1030, column: 16, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1030, column: 11)
!2707 = !DILocation(line: 1030, column: 11, scope: !2706)
!2708 = !DILocation(line: 1030, column: 23, scope: !2706)
!2709 = !DILocation(line: 1030, column: 31, scope: !2706)
!2710 = !DILocation(line: 1030, column: 26, scope: !2706)
!2711 = !DILocation(line: 1030, column: 11, scope: !2478)
!2712 = !DILocation(line: 1032, column: 19, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1032, column: 16)
!2714 = !DILocation(line: 1032, column: 25, scope: !2713)
!2715 = !DILocation(line: 1032, column: 16, scope: !2706)
!2716 = !DILocation(line: 1034, column: 16, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1033, column: 2)
!2718 = !DILocation(line: 1035, column: 17, scope: !2717)
!2719 = !DILocation(line: 1036, column: 2, scope: !2717)
!2720 = !DILocation(line: 1038, column: 18, scope: !2713)
!2721 = !DILocation(line: 1025, column: 50, scope: !2479)
!2722 = !DILocation(line: 1025, column: 3, scope: !2479)
!2723 = distinct !{!2723, !2701, !2724}
!2724 = !DILocation(line: 1039, column: 5, scope: !2480)
!2725 = !DILocation(line: 1041, column: 23, scope: !2420)
!2726 = !DILocation(line: 1041, column: 20, scope: !2420)
!2727 = !DILocation(line: 1042, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1042, column: 7)
!2729 = !DILocation(line: 1042, column: 7, scope: !2420)
!2730 = !DILocation(line: 1043, column: 5, scope: !2728)
!2731 = !DILocation(line: 1046, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1046, column: 7)
!2733 = !DILocation(line: 1045, column: 19, scope: !2420)
!2734 = !DILocation(line: 1046, column: 7, scope: !2420)
!2735 = !DILocation(line: 1047, column: 5, scope: !2732)
!2736 = !DILocation(line: 1050, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1050, column: 7)
!2738 = !DILocation(line: 1049, column: 27, scope: !2420)
!2739 = !DILocation(line: 1050, column: 7, scope: !2420)
!2740 = !DILocation(line: 1051, column: 5, scope: !2737)
!2741 = !DILocation(line: 1057, column: 7, scope: !2484)
!2742 = !DILocation(line: 1057, column: 7, scope: !2420)
!2743 = !DILocation(line: 1061, column: 16, scope: !2483)
!2744 = !DILocation(line: 0, scope: !2483)
!2745 = !DILocation(line: 1062, column: 12, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1062, column: 7)
!2747 = !DILocation(line: 0, scope: !2746)
!2748 = !DILocation(line: 1062, column: 36, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1062, column: 7)
!2750 = !DILocation(line: 1062, column: 21, scope: !2749)
!2751 = !DILocation(line: 1062, column: 7, scope: !2746)
!2752 = !DILocation(line: 1063, column: 2, scope: !2749)
!2753 = !DILocation(line: 1062, column: 54, scope: !2749)
!2754 = !DILocation(line: 1062, column: 7, scope: !2749)
!2755 = distinct !{!2755, !2751, !2756}
!2756 = !DILocation(line: 1063, column: 24, scope: !2746)
!2757 = !DILocation(line: 1064, column: 7, scope: !2483)
!2758 = !DILocation(line: 1065, column: 5, scope: !2483)
!2759 = !DILocation(line: 1070, column: 3, scope: !2420)
!2760 = !DILocation(line: 1070, column: 20, scope: !2420)
!2761 = !DILocation(line: 1070, column: 26, scope: !2420)
!2762 = !DILocation(line: 1071, column: 27, scope: !2420)
!2763 = !DILocation(line: 1071, column: 3, scope: !2420)
!2764 = !DILocation(line: 1071, column: 19, scope: !2420)
!2765 = !DILocation(line: 1071, column: 25, scope: !2420)
!2766 = !DILocation(line: 1074, column: 7, scope: !2487)
!2767 = !DILocation(line: 1074, column: 7, scope: !2420)
!2768 = !DILocation(line: 1078, column: 7, scope: !2491)
!2769 = !DILocation(line: 0, scope: !2489)
!2770 = !DILocation(line: 0, scope: !2496)
!2771 = !DILocation(line: 0, scope: !2495)
!2772 = !DILocation(line: 1078, column: 7, scope: !2490)
!2773 = !DILocation(line: 0, scope: !2491)
!2774 = !DILocation(line: 1080, column: 4, scope: !2489)
!2775 = !DILocation(line: 1081, column: 4, scope: !2489)
!2776 = !DILocation(line: 1083, column: 13, scope: !2489)
!2777 = !DILocation(line: 0, scope: !2486)
!2778 = !DILocation(line: 1084, column: 25, scope: !2489)
!2779 = !DILocation(line: 1084, column: 4, scope: !2489)
!2780 = !DILocation(line: 1086, column: 4, scope: !2496)
!2781 = !DILocation(line: 1086, column: 4, scope: !2495)
!2782 = !DILocation(line: 1088, column: 30, scope: !2494)
!2783 = !DILocation(line: 0, scope: !2494)
!2784 = !DILocation(line: 1089, column: 16, scope: !2499)
!2785 = !DILocation(line: 1089, column: 13, scope: !2499)
!2786 = !DILocation(line: 1089, column: 12, scope: !2494)
!2787 = !DILocation(line: 0, scope: !2498)
!2788 = !DILocation(line: 1093, column: 9, scope: !2498)
!2789 = !DILocation(line: 1095, column: 12, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1095, column: 9)
!2791 = !DILocation(line: 1095, column: 9, scope: !2498)
!2792 = !DILocation(line: 1097, column: 9, scope: !2498)
!2793 = !DILocation(line: 1101, column: 18, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1101, column: 9)
!2795 = !DILocation(line: 1102, column: 9, scope: !2794)
!2796 = !DILocation(line: 1105, column: 26, scope: !2498)
!2797 = !DILocation(line: 1102, column: 15, scope: !2794)
!2798 = !DILocation(line: 1102, column: 20, scope: !2794)
!2799 = !DILocation(line: 1102, column: 34, scope: !2794)
!2800 = !DILocation(line: 1102, column: 28, scope: !2794)
!2801 = !DILocation(line: 1103, column: 17, scope: !2794)
!2802 = !DILocation(line: 1101, column: 9, scope: !2498)
!2803 = !DILocation(line: 1105, column: 5, scope: !2498)
!2804 = !DILocation(line: 1106, column: 5, scope: !2498)
!2805 = !DILocation(line: 1107, column: 10, scope: !2498)
!2806 = distinct !{!2806, !2780, !2807}
!2807 = !DILocation(line: 1108, column: 6, scope: !2496)
!2808 = !DILocation(line: 1110, column: 4, scope: !2489)
!2809 = !DILocation(line: 1111, column: 2, scope: !2490)
!2810 = !DILocation(line: 0, scope: !2490)
!2811 = distinct !{!2811, !2768, !2812}
!2812 = !DILocation(line: 1111, column: 2, scope: !2491)
!2813 = !DILocation(line: 1115, column: 7, scope: !2502)
!2814 = !DILocation(line: 1115, column: 7, scope: !2420)
!2815 = !DILocation(line: 1165, column: 3, scope: !2420)
!2816 = !DILocation(line: 1117, column: 7, scope: !2501)
!2817 = !DILocation(line: 1120, column: 7, scope: !2501)
!2818 = !DILocation(line: 1122, column: 7, scope: !2506)
!2819 = !DILocation(line: 0, scope: !2504)
!2820 = !DILocation(line: 0, scope: !2508)
!2821 = !DILocation(line: 0, scope: !2520)
!2822 = !DILocation(line: 0, scope: !2522)
!2823 = !DILocation(line: 1122, column: 7, scope: !2505)
!2824 = !DILocation(line: 0, scope: !2506)
!2825 = !DILocation(line: 1124, column: 4, scope: !2504)
!2826 = !DILocation(line: 0, scope: !2501)
!2827 = !DILocation(line: 1126, column: 11, scope: !2504)
!2828 = !DILocation(line: 1128, column: 14, scope: !2509)
!2829 = !DILocation(line: 1128, column: 31, scope: !2509)
!2830 = !DILocation(line: 1128, column: 11, scope: !2509)
!2831 = !DILocation(line: 1128, column: 8, scope: !2504)
!2832 = !DILocation(line: 1130, column: 8, scope: !2508)
!2833 = !DILocation(line: 1131, column: 20, scope: !2508)
!2834 = !DILocation(line: 1131, column: 3, scope: !2508)
!2835 = !DILocation(line: 1132, column: 39, scope: !2508)
!2836 = !DILocation(line: 1132, column: 59, scope: !2508)
!2837 = !DILocation(line: 1132, column: 8, scope: !2508)
!2838 = !DILocation(line: 1134, column: 6, scope: !2509)
!2839 = !DILocation(line: 1134, column: 6, scope: !2508)
!2840 = !DILocation(line: 1136, column: 15, scope: !2520)
!2841 = !DILocation(line: 1136, column: 9, scope: !2520)
!2842 = !DILocation(line: 1136, column: 35, scope: !2519)
!2843 = !DILocation(line: 1136, column: 34, scope: !2519)
!2844 = !DILocation(line: 1136, column: 4, scope: !2520)
!2845 = !DILocation(line: 1138, column: 22, scope: !2518)
!2846 = !DILocation(line: 0, scope: !2518)
!2847 = !DILocation(line: 1139, column: 12, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 1139, column: 12)
!2849 = !DILocation(line: 1139, column: 12, scope: !2518)
!2850 = !DILocation(line: 1140, column: 20, scope: !2848)
!2851 = !DILocation(line: 1140, column: 44, scope: !2848)
!2852 = !DILocation(line: 1140, column: 3, scope: !2848)
!2853 = !DILocation(line: 1136, column: 52, scope: !2519)
!2854 = !DILocation(line: 1136, column: 4, scope: !2519)
!2855 = distinct !{!2855, !2844, !2856}
!2856 = !DILocation(line: 1142, column: 6, scope: !2520)
!2857 = !DILocation(line: 1146, column: 8, scope: !2523)
!2858 = !DILocation(line: 1147, column: 8, scope: !2523)
!2859 = !DILocation(line: 1147, column: 11, scope: !2523)
!2860 = !DILocation(line: 1147, column: 34, scope: !2523)
!2861 = !DILocation(line: 1147, column: 45, scope: !2523)
!2862 = !DILocation(line: 1146, column: 8, scope: !2504)
!2863 = !DILocation(line: 1149, column: 35, scope: !2522)
!2864 = !DILocation(line: 1149, column: 58, scope: !2522)
!2865 = !DILocation(line: 1151, column: 25, scope: !2522)
!2866 = !DILocation(line: 1152, column: 11, scope: !2522)
!2867 = !DILocation(line: 1151, column: 8, scope: !2522)
!2868 = !DILocation(line: 1153, column: 6, scope: !2522)
!2869 = !DILocation(line: 1155, column: 8, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1155, column: 8)
!2871 = !DILocation(line: 1155, column: 8, scope: !2504)
!2872 = !DILocation(line: 1158, column: 8, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 1156, column: 6)
!2874 = !DILocation(line: 1159, column: 8, scope: !2873)
!2875 = !DILocation(line: 1160, column: 27, scope: !2873)
!2876 = !DILocation(line: 1160, column: 8, scope: !2873)
!2877 = !DILocation(line: 1161, column: 6, scope: !2873)
!2878 = !DILocation(line: 1162, column: 2, scope: !2505)
!2879 = !DILocation(line: 0, scope: !2505)
!2880 = distinct !{!2880, !2818, !2881}
!2881 = !DILocation(line: 1162, column: 2, scope: !2506)
!2882 = !DILocation(line: 1163, column: 5, scope: !2502)
!2883 = !DILocation(line: 1163, column: 5, scope: !2501)
!2884 = !DILocation(line: 1166, column: 3, scope: !2420)
!2885 = !DILocation(line: 1165, column: 20, scope: !2420)
!2886 = !DILocation(line: 1165, column: 26, scope: !2420)
!2887 = !DILocation(line: 1166, column: 19, scope: !2420)
!2888 = !DILocation(line: 1166, column: 25, scope: !2420)
!2889 = !DILocation(line: 1169, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1169, column: 7)
!2891 = !DILocation(line: 1169, column: 7, scope: !2420)
!2892 = !DILocation(line: 1170, column: 5, scope: !2890)
!2893 = !DILocation(line: 1172, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1172, column: 7)
!2895 = !DILocation(line: 1172, column: 7, scope: !2420)
!2896 = !DILocation(line: 1174, column: 7, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 1173, column: 5)
!2898 = !DILocation(line: 1175, column: 11, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1175, column: 11)
!2900 = !DILocation(line: 1175, column: 11, scope: !2897)
!2901 = !DILocation(line: 1176, column: 28, scope: !2899)
!2902 = !DILocation(line: 1176, column: 2, scope: !2899)
!2903 = !DILocation(line: 1179, column: 3, scope: !2420)
!2904 = !DILocation(line: 1182, column: 7, scope: !2526)
!2905 = !DILocation(line: 1183, column: 7, scope: !2526)
!2906 = !DILocation(line: 1183, column: 10, scope: !2526)
!2907 = !DILocation(line: 1182, column: 7, scope: !2420)
!2908 = !DILocation(line: 1187, column: 22, scope: !2525)
!2909 = !DILocation(line: 1187, column: 7, scope: !2525)
!2910 = !DILocation(line: 1189, column: 24, scope: !2525)
!2911 = !DILocation(line: 0, scope: !2525)
!2912 = !DILocation(line: 1191, column: 7, scope: !2525)
!2913 = !DILocation(line: 1193, column: 11, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1193, column: 11)
!2915 = !DILocation(line: 1193, column: 11, scope: !2525)
!2916 = !DILocation(line: 1194, column: 21, scope: !2914)
!2917 = !DILocation(line: 1194, column: 2, scope: !2914)
!2918 = !DILocation(line: 1197, column: 7, scope: !2525)
!2919 = !DILocation(line: 1198, column: 5, scope: !2525)
!2920 = !DILocation(line: 1200, column: 3, scope: !2420)
!2921 = !DILocation(line: 1202, column: 3, scope: !2420)
!2922 = !DILocation(line: 1203, column: 3, scope: !2420)
!2923 = !DILocation(line: 1204, column: 3, scope: !2420)
!2924 = !DILocation(line: 1205, column: 1, scope: !2420)
!2925 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !2926, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!1921, !1926}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "ev", arg: 1, scope: !2925, file: !135, line: 696, type: !1926)
!2930 = !DILocalVariable(name: "i", scope: !2925, file: !135, line: 698, type: !1921)
!2931 = !DILocation(line: 0, scope: !2925)
!2932 = !DILocation(line: 700, column: 5, scope: !2925)
!2933 = !DILocation(line: 700, column: 11, scope: !2925)
!2934 = !DILocation(line: 701, column: 5, scope: !2925)
!2935 = !DILocation(line: 701, column: 15, scope: !2925)
!2936 = !DILocation(line: 703, column: 3, scope: !2925)
!2937 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !2938, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!402, !1921, !2434}
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "ei", arg: 1, scope: !2937, file: !135, line: 771, type: !1921)
!2942 = !DILocalVariable(name: "p", arg: 2, scope: !2937, file: !135, line: 771, type: !2434)
!2943 = !DILocation(line: 0, scope: !2937)
!2944 = !DILocation(line: 773, column: 8, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2937, file: !135, line: 773, column: 7)
!2946 = !DILocation(line: 773, column: 7, scope: !2937)
!2947 = !DILocation(line: 775, column: 12, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !135, line: 774, column: 5)
!2949 = !DILocation(line: 776, column: 7, scope: !2948)
!2950 = !DILocation(line: 781, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2945, file: !135, line: 779, column: 5)
!2952 = !DILocation(line: 0, scope: !2945)
!2953 = !DILocation(line: 783, column: 1, scope: !2937)
!2954 = distinct !DISubprogram(name: "gsi_last_bb", scope: !461, file: !461, line: 4450, type: !2955, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!2462, !430}
!2957 = !{!2958, !2959, !2960}
!2958 = !DILocalVariable(name: "bb", arg: 1, scope: !2954, file: !461, line: 4450, type: !430)
!2959 = !DILocalVariable(name: "i", scope: !2954, file: !461, line: 4452, type: !2462)
!2960 = !DILocalVariable(name: "seq", scope: !2954, file: !461, line: 4453, type: !458)
!2961 = !DILocation(line: 0, scope: !2954)
!2962 = !DILocation(line: 4452, column: 24, scope: !2954)
!2963 = !DILocation(line: 4455, column: 9, scope: !2954)
!2964 = !DILocation(line: 4456, column: 11, scope: !2954)
!2965 = !DILocation(line: 4456, column: 5, scope: !2954)
!2966 = !DILocation(line: 4456, column: 9, scope: !2954)
!2967 = !DILocation(line: 4457, column: 5, scope: !2954)
!2968 = !DILocation(line: 4457, column: 9, scope: !2954)
!2969 = !DILocation(line: 4458, column: 5, scope: !2954)
!2970 = !DILocation(line: 4458, column: 8, scope: !2954)
!2971 = !DILocation(line: 4461, column: 1, scope: !2954)
!2972 = distinct !DISubprogram(name: "gsi_end_p", scope: !461, file: !461, line: 4467, type: !2973, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!402, !2462}
!2975 = !{!2976}
!2976 = !DILocalVariable(name: "i", arg: 1, scope: !2972, file: !461, line: 4467, type: !2462)
!2977 = !DILocation(line: 4467, column: 33, scope: !2972)
!2978 = !DILocation(line: 4469, column: 12, scope: !2972)
!2979 = !DILocation(line: 4469, column: 16, scope: !2972)
!2980 = !DILocation(line: 4469, column: 10, scope: !2972)
!2981 = !DILocation(line: 4469, column: 3, scope: !2972)
!2982 = distinct !DISubprogram(name: "gsi_stmt", scope: !461, file: !461, line: 4501, type: !2983, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!469, !2462}
!2985 = !{!2986}
!2986 = !DILocalVariable(name: "i", arg: 1, scope: !2982, file: !461, line: 4501, type: !2462)
!2987 = !DILocation(line: 4501, column: 32, scope: !2982)
!2988 = !DILocation(line: 4503, column: 12, scope: !2982)
!2989 = !DILocation(line: 4503, column: 17, scope: !2982)
!2990 = !DILocation(line: 4503, column: 3, scope: !2982)
!2991 = distinct !DISubprogram(name: "gimple_has_location", scope: !461, file: !461, line: 1165, type: !2992, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2997)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!402, !2994}
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !431, line: 60, baseType: !2995)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "g", arg: 1, scope: !2991, file: !461, line: 1165, type: !2994)
!2999 = !DILocation(line: 0, scope: !2991)
!3000 = !DILocation(line: 1167, column: 10, scope: !2991)
!3001 = !DILocation(line: 1167, column: 30, scope: !2991)
!3002 = !DILocation(line: 1167, column: 3, scope: !2991)
!3003 = distinct !DISubprogram(name: "gsi_prev", scope: !461, file: !461, line: 4493, type: !3004, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3007)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !3006}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!3007 = !{!3008}
!3008 = !DILocalVariable(name: "i", arg: 1, scope: !3003, file: !461, line: 4493, type: !3006)
!3009 = !DILocation(line: 0, scope: !3003)
!3010 = !DILocation(line: 4495, column: 15, scope: !3003)
!3011 = !DILocation(line: 4495, column: 20, scope: !3003)
!3012 = !DILocation(line: 4495, column: 10, scope: !3003)
!3013 = !DILocation(line: 4496, column: 1, scope: !3003)
!3014 = distinct !DISubprogram(name: "single_succ_p", scope: !135, file: !135, line: 626, type: !3015, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3020)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!402, !3017}
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !431, line: 112, baseType: !3018)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!3020 = !{!3021}
!3021 = !DILocalVariable(name: "bb", arg: 1, scope: !3014, file: !135, line: 626, type: !3017)
!3022 = !DILocation(line: 0, scope: !3014)
!3023 = !DILocation(line: 628, column: 10, scope: !3014)
!3024 = !DILocation(line: 628, column: 33, scope: !3014)
!3025 = !DILocation(line: 628, column: 3, scope: !3014)
!3026 = distinct !DISubprogram(name: "gimple_location", scope: !461, file: !461, line: 1139, type: !3027, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!487, !2994}
!3029 = !{!3030}
!3030 = !DILocalVariable(name: "g", arg: 1, scope: !3026, file: !461, line: 1139, type: !2994)
!3031 = !DILocation(line: 0, scope: !3026)
!3032 = !DILocation(line: 1141, column: 20, scope: !3026)
!3033 = !DILocation(line: 1141, column: 3, scope: !3026)
!3034 = distinct !DISubprogram(name: "single_succ_edge", scope: !135, file: !135, line: 643, type: !3035, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!448, !3017}
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "bb", arg: 1, scope: !3034, file: !135, line: 643, type: !3017)
!3039 = !DILocation(line: 0, scope: !3034)
!3040 = !DILocation(line: 645, column: 3, scope: !3034)
!3041 = !DILocation(line: 646, column: 10, scope: !3034)
!3042 = !DILocation(line: 646, column: 3, scope: !3034)
!3043 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !3044, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3047)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!3047 = !{!3048}
!3048 = !DILocalVariable(name: "i", arg: 1, scope: !3043, file: !135, line: 736, type: !3046)
!3049 = !DILocation(line: 0, scope: !3043)
!3050 = !DILocation(line: 738, column: 3, scope: !3043)
!3051 = !DILocation(line: 739, column: 11, scope: !3043)
!3052 = !DILocation(line: 740, column: 1, scope: !3043)
!3053 = distinct !DISubprogram(name: "find_spanning_tree", scope: !3, file: !3, line: 1249, type: !3054, scopeLine: 1250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3056)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !2428}
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3065, !3069}
!3057 = !DILocalVariable(name: "el", arg: 1, scope: !3053, file: !3, line: 1249, type: !2428)
!3058 = !DILocalVariable(name: "i", scope: !3053, file: !3, line: 1251, type: !403)
!3059 = !DILocalVariable(name: "num_edges", scope: !3053, file: !3, line: 1252, type: !403)
!3060 = !DILocalVariable(name: "bb", scope: !3053, file: !3, line: 1253, type: !430)
!3061 = !DILocalVariable(name: "e", scope: !3062, file: !3, line: 1267, type: !448)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 1266, column: 5)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1265, column: 3)
!3064 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1265, column: 3)
!3065 = !DILocalVariable(name: "e", scope: !3066, file: !3, line: 1284, type: !448)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1283, column: 5)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1282, column: 3)
!3068 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1282, column: 3)
!3069 = !DILocalVariable(name: "e", scope: !3070, file: !3, line: 1299, type: !448)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1298, column: 5)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1297, column: 3)
!3072 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1297, column: 3)
!3073 = !DILocation(line: 0, scope: !3053)
!3074 = !DILocation(line: 1252, column: 19, scope: !3053)
!3075 = !DILocation(line: 1256, column: 3, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1256, column: 3)
!3077 = !DILocation(line: 0, scope: !3076)
!3078 = !DILocation(line: 1256, column: 3, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 1256, column: 3)
!3080 = !DILocation(line: 1257, column: 9, scope: !3079)
!3081 = !DILocation(line: 1257, column: 13, scope: !3079)
!3082 = distinct !{!3082, !3075, !3083}
!3083 = !DILocation(line: 1257, column: 15, scope: !3076)
!3084 = !DILocation(line: 1260, column: 17, scope: !3053)
!3085 = !DILocation(line: 1260, column: 33, scope: !3053)
!3086 = !DILocation(line: 1260, column: 3, scope: !3053)
!3087 = !DILocation(line: 0, scope: !3062)
!3088 = !DILocation(line: 1265, column: 8, scope: !3064)
!3089 = !DILocation(line: 0, scope: !3064)
!3090 = !DILocation(line: 1265, column: 17, scope: !3063)
!3091 = !DILocation(line: 1265, column: 3, scope: !3064)
!3092 = !DILocation(line: 1282, column: 3, scope: !3068)
!3093 = !DILocation(line: 1267, column: 16, scope: !3062)
!3094 = !DILocation(line: 1268, column: 16, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1268, column: 11)
!3096 = !DILocation(line: 1268, column: 22, scope: !3095)
!3097 = !DILocation(line: 1269, column: 5, scope: !3095)
!3098 = !DILocation(line: 1269, column: 11, scope: !3095)
!3099 = !DILocation(line: 1269, column: 19, scope: !3095)
!3100 = !DILocation(line: 1269, column: 16, scope: !3095)
!3101 = !DILocation(line: 1270, column: 4, scope: !3095)
!3102 = !DILocation(line: 1270, column: 8, scope: !3095)
!3103 = !DILocation(line: 1270, column: 23, scope: !3095)
!3104 = !DILocation(line: 1271, column: 4, scope: !3095)
!3105 = !DILocation(line: 1271, column: 23, scope: !3095)
!3106 = !DILocation(line: 1271, column: 8, scope: !3095)
!3107 = !DILocation(line: 1271, column: 46, scope: !3095)
!3108 = !DILocation(line: 1271, column: 31, scope: !3095)
!3109 = !DILocation(line: 1271, column: 28, scope: !3095)
!3110 = !DILocation(line: 1268, column: 11, scope: !3062)
!3111 = !DILocation(line: 1273, column: 8, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 1273, column: 8)
!3113 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1272, column: 2)
!3114 = !DILocation(line: 1273, column: 8, scope: !3113)
!3115 = !DILocation(line: 1275, column: 11, scope: !3112)
!3116 = !DILocation(line: 1275, column: 16, scope: !3112)
!3117 = !DILocation(line: 1275, column: 26, scope: !3112)
!3118 = !DILocation(line: 1275, column: 32, scope: !3112)
!3119 = !DILocation(line: 1274, column: 6, scope: !3112)
!3120 = !DILocation(line: 1276, column: 4, scope: !3113)
!3121 = !DILocation(line: 1276, column: 27, scope: !3113)
!3122 = !DILocation(line: 1277, column: 21, scope: !3113)
!3123 = !DILocation(line: 1277, column: 29, scope: !3113)
!3124 = !DILocation(line: 1277, column: 4, scope: !3113)
!3125 = !DILocation(line: 1278, column: 2, scope: !3113)
!3126 = !DILocation(line: 1265, column: 31, scope: !3063)
!3127 = !DILocation(line: 1265, column: 3, scope: !3063)
!3128 = distinct !{!3128, !3091, !3129}
!3129 = !DILocation(line: 1279, column: 5, scope: !3064)
!3130 = !DILocation(line: 0, scope: !3068)
!3131 = !DILocation(line: 1282, column: 17, scope: !3067)
!3132 = !DILocation(line: 1297, column: 3, scope: !3072)
!3133 = !DILocation(line: 1284, column: 16, scope: !3066)
!3134 = !DILocation(line: 0, scope: !3066)
!3135 = !DILocation(line: 1285, column: 11, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1285, column: 11)
!3137 = !DILocation(line: 1285, column: 31, scope: !3136)
!3138 = !DILocation(line: 1285, column: 35, scope: !3136)
!3139 = !DILocation(line: 1285, column: 50, scope: !3136)
!3140 = !DILocation(line: 1286, column: 4, scope: !3136)
!3141 = !DILocation(line: 1286, column: 22, scope: !3136)
!3142 = !DILocation(line: 1286, column: 7, scope: !3136)
!3143 = !DILocation(line: 1286, column: 45, scope: !3136)
!3144 = !DILocation(line: 1286, column: 30, scope: !3136)
!3145 = !DILocation(line: 1286, column: 27, scope: !3136)
!3146 = !DILocation(line: 1285, column: 11, scope: !3066)
!3147 = !DILocation(line: 1288, column: 8, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1288, column: 8)
!3149 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1287, column: 2)
!3150 = !DILocation(line: 1288, column: 8, scope: !3149)
!3151 = !DILocation(line: 1290, column: 11, scope: !3148)
!3152 = !DILocation(line: 1290, column: 16, scope: !3148)
!3153 = !DILocation(line: 1290, column: 26, scope: !3148)
!3154 = !DILocation(line: 1290, column: 32, scope: !3148)
!3155 = !DILocation(line: 1289, column: 6, scope: !3148)
!3156 = !DILocation(line: 1291, column: 4, scope: !3149)
!3157 = !DILocation(line: 1291, column: 27, scope: !3149)
!3158 = !DILocation(line: 1292, column: 21, scope: !3149)
!3159 = !DILocation(line: 1292, column: 29, scope: !3149)
!3160 = !DILocation(line: 1292, column: 4, scope: !3149)
!3161 = !DILocation(line: 1293, column: 2, scope: !3149)
!3162 = !DILocation(line: 1282, column: 31, scope: !3067)
!3163 = !DILocation(line: 1282, column: 3, scope: !3067)
!3164 = distinct !{!3164, !3092, !3165}
!3165 = !DILocation(line: 1294, column: 5, scope: !3068)
!3166 = !DILocation(line: 0, scope: !3072)
!3167 = !DILocation(line: 1297, column: 17, scope: !3071)
!3168 = !DILocation(line: 1299, column: 16, scope: !3070)
!3169 = !DILocation(line: 0, scope: !3070)
!3170 = !DILocation(line: 1300, column: 12, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1300, column: 11)
!3172 = !DILocation(line: 1300, column: 27, scope: !3171)
!3173 = !DILocation(line: 1301, column: 4, scope: !3171)
!3174 = !DILocation(line: 1301, column: 22, scope: !3171)
!3175 = !DILocation(line: 1301, column: 7, scope: !3171)
!3176 = !DILocation(line: 1301, column: 45, scope: !3171)
!3177 = !DILocation(line: 1301, column: 30, scope: !3171)
!3178 = !DILocation(line: 1301, column: 27, scope: !3171)
!3179 = !DILocation(line: 1300, column: 11, scope: !3070)
!3180 = !DILocation(line: 1303, column: 8, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1303, column: 8)
!3182 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 1302, column: 2)
!3183 = !DILocation(line: 1303, column: 8, scope: !3182)
!3184 = !DILocation(line: 1305, column: 11, scope: !3181)
!3185 = !DILocation(line: 1305, column: 16, scope: !3181)
!3186 = !DILocation(line: 1305, column: 26, scope: !3181)
!3187 = !DILocation(line: 1305, column: 32, scope: !3181)
!3188 = !DILocation(line: 1304, column: 6, scope: !3181)
!3189 = !DILocation(line: 1306, column: 4, scope: !3182)
!3190 = !DILocation(line: 1306, column: 27, scope: !3182)
!3191 = !DILocation(line: 1307, column: 21, scope: !3182)
!3192 = !DILocation(line: 1307, column: 29, scope: !3182)
!3193 = !DILocation(line: 1307, column: 4, scope: !3182)
!3194 = !DILocation(line: 1308, column: 2, scope: !3182)
!3195 = !DILocation(line: 1297, column: 31, scope: !3071)
!3196 = !DILocation(line: 1297, column: 3, scope: !3071)
!3197 = distinct !{!3197, !3132, !3198}
!3198 = !DILocation(line: 1309, column: 5, scope: !3072)
!3199 = !DILocation(line: 1311, column: 3, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1311, column: 3)
!3201 = !DILocation(line: 0, scope: !3200)
!3202 = !DILocation(line: 1311, column: 3, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 1311, column: 3)
!3204 = !DILocation(line: 1312, column: 9, scope: !3203)
!3205 = !DILocation(line: 1312, column: 13, scope: !3203)
!3206 = distinct !{!3206, !3199, !3207}
!3207 = !DILocation(line: 1312, column: 15, scope: !3200)
!3208 = !DILocation(line: 1313, column: 1, scope: !3053)
!3209 = !DILocation(line: 0, scope: !1889)
!3210 = !DILocation(line: 842, column: 8, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 842, column: 7)
!3212 = !DILocation(line: 842, column: 7, scope: !1889)
!3213 = !DILocation(line: 844, column: 22, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 843, column: 5)
!3215 = !DILocation(line: 845, column: 17, scope: !3214)
!3216 = !DILocation(line: 846, column: 7, scope: !3214)
!3217 = !DILocation(line: 849, column: 19, scope: !1889)
!3218 = !DILocation(line: 849, column: 34, scope: !1889)
!3219 = !DILocation(line: 849, column: 37, scope: !1889)
!3220 = !DILocation(line: 850, column: 18, scope: !1889)
!3221 = !DILocation(line: 850, column: 28, scope: !1889)
!3222 = !DILocation(line: 852, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 852, column: 7)
!3224 = !DILocation(line: 852, column: 20, scope: !3223)
!3225 = !DILocation(line: 854, column: 12, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 854, column: 11)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 853, column: 5)
!3228 = !DILocation(line: 854, column: 11, scope: !3227)
!3229 = !DILocation(line: 856, column: 14, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 855, column: 2)
!3231 = !DILocation(line: 856, column: 12, scope: !3230)
!3232 = !DILocation(line: 857, column: 25, scope: !3230)
!3233 = !DILocation(line: 857, column: 4, scope: !3230)
!3234 = !DILocation(line: 859, column: 2, scope: !3230)
!3235 = !DILocation(line: 863, column: 11, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 863, column: 11)
!3237 = !DILocation(line: 863, column: 11, scope: !3227)
!3238 = !DILocation(line: 865, column: 19, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 864, column: 2)
!3240 = !DILocation(line: 866, column: 4, scope: !3239)
!3241 = !DILocation(line: 867, column: 23, scope: !3239)
!3242 = !DILocation(line: 867, column: 4, scope: !3239)
!3243 = !DILocation(line: 868, column: 2, scope: !3239)
!3244 = !DILocation(line: 869, column: 11, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 869, column: 11)
!3246 = !DILocation(line: 869, column: 11, scope: !3227)
!3247 = !DILocation(line: 871, column: 4, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 870, column: 2)
!3249 = !DILocation(line: 872, column: 14, scope: !3248)
!3250 = !DILocation(line: 873, column: 2, scope: !3248)
!3251 = !DILocation(line: 875, column: 1, scope: !1889)
!3252 = distinct !DISubprogram(name: "gsi_start_bb", scope: !461, file: !461, line: 4418, type: !2955, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DILocalVariable(name: "bb", arg: 1, scope: !3252, file: !461, line: 4418, type: !430)
!3255 = !DILocalVariable(name: "i", scope: !3252, file: !461, line: 4420, type: !2462)
!3256 = !DILocalVariable(name: "seq", scope: !3252, file: !461, line: 4421, type: !458)
!3257 = !DILocation(line: 0, scope: !3252)
!3258 = !DILocation(line: 4420, column: 24, scope: !3252)
!3259 = !DILocation(line: 4423, column: 9, scope: !3252)
!3260 = !DILocation(line: 4424, column: 11, scope: !3252)
!3261 = !DILocation(line: 4424, column: 5, scope: !3252)
!3262 = !DILocation(line: 4424, column: 9, scope: !3252)
!3263 = !DILocation(line: 4425, column: 5, scope: !3252)
!3264 = !DILocation(line: 4425, column: 9, scope: !3252)
!3265 = !DILocation(line: 4426, column: 5, scope: !3252)
!3266 = !DILocation(line: 4426, column: 8, scope: !3252)
!3267 = !DILocation(line: 4429, column: 1, scope: !3252)
!3268 = distinct !DISubprogram(name: "gimple_filename", scope: !461, file: !461, line: 1174, type: !3269, scopeLine: 1175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!408, !2994}
!3271 = !{!3272}
!3272 = !DILocalVariable(name: "stmt", arg: 1, scope: !3268, file: !461, line: 1174, type: !2994)
!3273 = !DILocation(line: 0, scope: !3268)
!3274 = !DILocation(line: 1176, column: 10, scope: !3268)
!3275 = !DILocation(line: 1176, column: 3, scope: !3268)
!3276 = distinct !DISubprogram(name: "gimple_lineno", scope: !461, file: !461, line: 1183, type: !3277, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!403, !2994}
!3279 = !{!3280}
!3280 = !DILocalVariable(name: "stmt", arg: 1, scope: !3276, file: !461, line: 1183, type: !2994)
!3281 = !DILocation(line: 0, scope: !3276)
!3282 = !DILocation(line: 1185, column: 10, scope: !3276)
!3283 = !DILocation(line: 1185, column: 3, scope: !3276)
!3284 = distinct !DISubprogram(name: "gsi_next", scope: !461, file: !461, line: 4485, type: !3004, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3285)
!3285 = !{!3286}
!3286 = !DILocalVariable(name: "i", arg: 1, scope: !3284, file: !461, line: 4485, type: !3006)
!3287 = !DILocation(line: 0, scope: !3284)
!3288 = !DILocation(line: 4487, column: 15, scope: !3284)
!3289 = !DILocation(line: 4487, column: 20, scope: !3284)
!3290 = !DILocation(line: 4487, column: 10, scope: !3284)
!3291 = !DILocation(line: 4488, column: 1, scope: !3284)
!3292 = !DILocation(line: 0, scope: !1905)
!3293 = !DILocation(line: 448, column: 3, scope: !1905)
!3294 = !DILocation(line: 448, column: 7, scope: !1905)
!3295 = !DILocation(line: 450, column: 28, scope: !1905)
!3296 = !DILocation(line: 454, column: 8, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 454, column: 7)
!3298 = !DILocation(line: 454, column: 7, scope: !1905)
!3299 = !DILocation(line: 456, column: 21, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 456, column: 7)
!3301 = !DILocation(line: 456, column: 45, scope: !3300)
!3302 = !DILocation(line: 456, column: 31, scope: !3300)
!3303 = !DILocation(line: 456, column: 29, scope: !3300)
!3304 = !DILocation(line: 456, column: 66, scope: !3300)
!3305 = !DILocation(line: 456, column: 50, scope: !3300)
!3306 = !DILocation(line: 456, column: 7, scope: !1905)
!3307 = !DILocation(line: 458, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 457, column: 5)
!3309 = !DILocation(line: 462, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 462, column: 7)
!3311 = !DILocation(line: 0, scope: !3310)
!3312 = !DILocation(line: 462, column: 45, scope: !3310)
!3313 = !DILocation(line: 460, column: 5, scope: !3308)
!3314 = !DILocation(line: 462, column: 21, scope: !3310)
!3315 = !DILocation(line: 462, column: 29, scope: !3310)
!3316 = !DILocation(line: 462, column: 7, scope: !1905)
!3317 = !DILocation(line: 464, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 463, column: 5)
!3319 = !DILocation(line: 466, column: 5, scope: !3318)
!3320 = !DILocation(line: 469, column: 3, scope: !1905)
!3321 = !DILocation(line: 470, column: 3, scope: !1919)
!3322 = !DILocation(line: 0, scope: !1917)
!3323 = !DILocation(line: 0, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 475, column: 7)
!3325 = !DILocation(line: 0, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 475, column: 7)
!3327 = !DILocation(line: 0, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 478, column: 7)
!3329 = !DILocation(line: 0, scope: !1919)
!3330 = !DILocation(line: 470, column: 3, scope: !1918)
!3331 = !DILocation(line: 472, column: 7, scope: !1917)
!3332 = !DILocation(line: 473, column: 7, scope: !1917)
!3333 = !DILocation(line: 475, column: 7, scope: !3324)
!3334 = !DILocation(line: 0, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 476, column: 6)
!3336 = !DILocation(line: 475, column: 7, scope: !3326)
!3337 = !DILocation(line: 476, column: 7, scope: !3335)
!3338 = !DILocation(line: 476, column: 22, scope: !3335)
!3339 = !DILocation(line: 476, column: 6, scope: !3326)
!3340 = !DILocation(line: 477, column: 4, scope: !3335)
!3341 = !DILocation(line: 477, column: 18, scope: !3335)
!3342 = !DILocation(line: 477, column: 28, scope: !3335)
!3343 = distinct !{!3343, !3333, !3344}
!3344 = !DILocation(line: 477, column: 28, scope: !3324)
!3345 = !DILocation(line: 478, column: 7, scope: !3328)
!3346 = !DILocation(line: 478, column: 7, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 478, column: 7)
!3348 = !DILocation(line: 479, column: 7, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 479, column: 6)
!3350 = !DILocation(line: 479, column: 22, scope: !3349)
!3351 = !DILocation(line: 479, column: 6, scope: !3347)
!3352 = !DILocation(line: 480, column: 4, scope: !3349)
!3353 = !DILocation(line: 480, column: 18, scope: !3349)
!3354 = !DILocation(line: 480, column: 28, scope: !3349)
!3355 = distinct !{!3355, !3345, !3356}
!3356 = !DILocation(line: 480, column: 28, scope: !3328)
!3357 = !DILocation(line: 481, column: 5, scope: !1918)
!3358 = distinct !{!3358, !3321, !3359}
!3359 = !DILocation(line: 481, column: 5, scope: !1919)
!3360 = !DILocation(line: 484, column: 3, scope: !1905)
!3361 = !DILocation(line: 484, column: 29, scope: !1905)
!3362 = !DILocation(line: 484, column: 40, scope: !1905)
!3363 = !DILocation(line: 485, column: 3, scope: !1905)
!3364 = !DILocation(line: 485, column: 30, scope: !1905)
!3365 = !DILocation(line: 485, column: 41, scope: !1905)
!3366 = !DILocation(line: 487, column: 15, scope: !1905)
!3367 = !DILocation(line: 489, column: 7, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 489, column: 7)
!3369 = !DILocation(line: 489, column: 7, scope: !1905)
!3370 = !DILocation(line: 490, column: 5, scope: !3368)
!3371 = !DILocation(line: 0, scope: !1940)
!3372 = !DILocation(line: 0, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 538, column: 5)
!3374 = !DILocation(line: 0, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 538, column: 5)
!3376 = !DILocation(line: 0, scope: !1933)
!3377 = !DILocation(line: 0, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 526, column: 5)
!3379 = !DILocation(line: 0, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 526, column: 5)
!3381 = !DILocation(line: 0, scope: !1945)
!3382 = !DILocation(line: 0, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 555, column: 5)
!3384 = !DILocation(line: 0, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 555, column: 5)
!3386 = !DILocation(line: 0, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 559, column: 5)
!3388 = !DILocation(line: 0, scope: !1952)
!3389 = !DILocation(line: 0, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 582, column: 5)
!3391 = !DILocation(line: 0, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 582, column: 5)
!3393 = !DILocation(line: 0, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 586, column: 5)
!3395 = !DILocation(line: 511, column: 3, scope: !1905)
!3396 = !DILocation(line: 0, scope: !1931)
!3397 = !DILocation(line: 513, column: 13, scope: !1931)
!3398 = !DILocation(line: 515, column: 7, scope: !1930)
!3399 = !DILocation(line: 0, scope: !1930)
!3400 = !DILocation(line: 515, column: 7, scope: !1929)
!3401 = distinct !{!3401, !3395, !3402}
!3402 = !DILocation(line: 603, column: 5, scope: !1905)
!3403 = !DILocation(line: 517, column: 25, scope: !1928)
!3404 = !DILocation(line: 0, scope: !1928)
!3405 = !DILocation(line: 518, column: 14, scope: !1936)
!3406 = !DILocation(line: 518, column: 10, scope: !1936)
!3407 = !DILocation(line: 518, column: 8, scope: !1928)
!3408 = !DILocation(line: 520, column: 16, scope: !1934)
!3409 = !DILocation(line: 520, column: 27, scope: !1934)
!3410 = !DILocation(line: 520, column: 12, scope: !1935)
!3411 = !DILocation(line: 522, column: 5, scope: !1933)
!3412 = !DILocation(line: 523, column: 5, scope: !1933)
!3413 = !DILocation(line: 526, column: 5, scope: !3378)
!3414 = !DILocation(line: 526, column: 5, scope: !3380)
!3415 = !DILocation(line: 527, column: 16, scope: !3380)
!3416 = !DILocation(line: 527, column: 19, scope: !3380)
!3417 = !DILocation(line: 527, column: 13, scope: !3380)
!3418 = distinct !{!3418, !3413, !3419}
!3419 = !DILocation(line: 527, column: 19, scope: !3378)
!3420 = !DILocation(line: 528, column: 9, scope: !1933)
!3421 = !DILocation(line: 528, column: 15, scope: !1933)
!3422 = !DILocation(line: 529, column: 21, scope: !1933)
!3423 = !DILocation(line: 531, column: 3, scope: !1934)
!3424 = !DILocation(line: 531, column: 3, scope: !1933)
!3425 = !DILocation(line: 532, column: 21, scope: !1941)
!3426 = !DILocation(line: 532, column: 32, scope: !1941)
!3427 = !DILocation(line: 532, column: 17, scope: !1934)
!3428 = !DILocation(line: 534, column: 5, scope: !1940)
!3429 = !DILocation(line: 535, column: 5, scope: !1940)
!3430 = !DILocation(line: 538, column: 5, scope: !3373)
!3431 = !DILocation(line: 538, column: 5, scope: !3375)
!3432 = !DILocation(line: 539, column: 16, scope: !3375)
!3433 = !DILocation(line: 539, column: 19, scope: !3375)
!3434 = !DILocation(line: 539, column: 13, scope: !3375)
!3435 = distinct !{!3435, !3430, !3436}
!3436 = !DILocation(line: 539, column: 19, scope: !3373)
!3437 = !DILocation(line: 540, column: 9, scope: !1940)
!3438 = !DILocation(line: 540, column: 15, scope: !1940)
!3439 = !DILocation(line: 541, column: 21, scope: !1940)
!3440 = !DILocation(line: 543, column: 3, scope: !1941)
!3441 = !DILocation(line: 543, column: 3, scope: !1940)
!3442 = !DILocation(line: 545, column: 12, scope: !1948)
!3443 = !DILocation(line: 545, column: 8, scope: !1948)
!3444 = !DILocation(line: 545, column: 8, scope: !1928)
!3445 = !DILocation(line: 547, column: 16, scope: !1946)
!3446 = !DILocation(line: 547, column: 27, scope: !1946)
!3447 = !DILocation(line: 547, column: 12, scope: !1947)
!3448 = !DILocation(line: 549, column: 5, scope: !1945)
!3449 = !DILocation(line: 550, column: 5, scope: !1945)
!3450 = !DILocation(line: 555, column: 5, scope: !3383)
!3451 = !DILocation(line: 555, column: 5, scope: !3385)
!3452 = !DILocation(line: 556, column: 16, scope: !3385)
!3453 = !DILocation(line: 556, column: 19, scope: !3385)
!3454 = !DILocation(line: 556, column: 13, scope: !3385)
!3455 = distinct !{!3455, !3450, !3456}
!3456 = !DILocation(line: 556, column: 19, scope: !3383)
!3457 = !DILocation(line: 559, column: 5, scope: !3387)
!3458 = !DILocation(line: 559, column: 5, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 559, column: 5)
!3460 = !DILocation(line: 566, column: 5, scope: !1945)
!3461 = !DILocation(line: 560, column: 13, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 560, column: 11)
!3463 = !DILocation(line: 560, column: 28, scope: !3462)
!3464 = !DILocation(line: 560, column: 40, scope: !3462)
!3465 = !DILocation(line: 560, column: 60, scope: !3462)
!3466 = !DILocation(line: 560, column: 45, scope: !3462)
!3467 = !DILocation(line: 560, column: 11, scope: !3459)
!3468 = distinct !{!3468, !3457, !3469}
!3469 = !DILocation(line: 561, column: 9, scope: !3387)
!3470 = !DILocation(line: 564, column: 17, scope: !1945)
!3471 = !DILocation(line: 564, column: 23, scope: !1945)
!3472 = !DILocation(line: 567, column: 5, scope: !1945)
!3473 = !DILocation(line: 567, column: 32, scope: !1945)
!3474 = !DILocation(line: 568, column: 5, scope: !1945)
!3475 = !DILocation(line: 568, column: 8, scope: !1945)
!3476 = !DILocation(line: 568, column: 14, scope: !1945)
!3477 = !DILocation(line: 569, column: 19, scope: !1945)
!3478 = !DILocation(line: 571, column: 5, scope: !1945)
!3479 = !DILocation(line: 571, column: 24, scope: !1945)
!3480 = !DILocation(line: 571, column: 34, scope: !1945)
!3481 = !DILocation(line: 573, column: 3, scope: !1946)
!3482 = !DILocation(line: 573, column: 3, scope: !1945)
!3483 = !DILocation(line: 574, column: 16, scope: !1953)
!3484 = !DILocation(line: 574, column: 27, scope: !1953)
!3485 = !DILocation(line: 574, column: 12, scope: !1947)
!3486 = !DILocation(line: 576, column: 5, scope: !1952)
!3487 = !DILocation(line: 577, column: 5, scope: !1952)
!3488 = !DILocation(line: 582, column: 5, scope: !3390)
!3489 = !DILocation(line: 582, column: 5, scope: !3392)
!3490 = !DILocation(line: 583, column: 16, scope: !3392)
!3491 = !DILocation(line: 583, column: 19, scope: !3392)
!3492 = !DILocation(line: 583, column: 13, scope: !3392)
!3493 = distinct !{!3493, !3488, !3494}
!3494 = !DILocation(line: 583, column: 19, scope: !3390)
!3495 = !DILocation(line: 586, column: 5, scope: !3394)
!3496 = !DILocation(line: 586, column: 5, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 586, column: 5)
!3498 = !DILocation(line: 591, column: 33, scope: !1952)
!3499 = !DILocation(line: 587, column: 12, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 587, column: 11)
!3501 = !DILocation(line: 587, column: 27, scope: !3500)
!3502 = !DILocation(line: 587, column: 39, scope: !3500)
!3503 = !DILocation(line: 587, column: 58, scope: !3500)
!3504 = !DILocation(line: 587, column: 43, scope: !3500)
!3505 = !DILocation(line: 587, column: 11, scope: !3497)
!3506 = distinct !{!3506, !3495, !3507}
!3507 = !DILocation(line: 588, column: 9, scope: !3394)
!3508 = !DILocation(line: 591, column: 17, scope: !1952)
!3509 = !DILocation(line: 591, column: 23, scope: !1952)
!3510 = !DILocation(line: 591, column: 36, scope: !1952)
!3511 = !DILocation(line: 591, column: 31, scope: !1952)
!3512 = !DILocation(line: 593, column: 5, scope: !1952)
!3513 = !DILocation(line: 594, column: 5, scope: !1952)
!3514 = !DILocation(line: 594, column: 32, scope: !1952)
!3515 = !DILocation(line: 595, column: 5, scope: !1952)
!3516 = !DILocation(line: 595, column: 8, scope: !1952)
!3517 = !DILocation(line: 595, column: 14, scope: !1952)
!3518 = !DILocation(line: 596, column: 19, scope: !1952)
!3519 = !DILocation(line: 598, column: 5, scope: !1952)
!3520 = !DILocation(line: 598, column: 23, scope: !1952)
!3521 = !DILocation(line: 598, column: 33, scope: !1952)
!3522 = !DILocation(line: 600, column: 3, scope: !1953)
!3523 = !DILocation(line: 600, column: 3, scope: !1952)
!3524 = distinct !{!3524, !3398, !3525}
!3525 = !DILocation(line: 602, column: 2, scope: !1930)
!3526 = !DILocation(line: 604, column: 7, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 604, column: 7)
!3528 = !DILocation(line: 604, column: 7, scope: !1905)
!3529 = !DILocation(line: 605, column: 32, scope: !3527)
!3530 = !DILocation(line: 605, column: 5, scope: !3527)
!3531 = !DILocation(line: 608, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 608, column: 7)
!3533 = !DILocation(line: 607, column: 20, scope: !1905)
!3534 = !DILocation(line: 608, column: 7, scope: !1905)
!3535 = !DILocation(line: 609, column: 5, scope: !3532)
!3536 = !DILocation(line: 613, column: 3, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 613, column: 3)
!3538 = !DILocation(line: 613, column: 3, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 613, column: 3)
!3540 = !DILocation(line: 0, scope: !3537)
!3541 = !DILocation(line: 615, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 614, column: 5)
!3543 = !DILocation(line: 0, scope: !3539)
!3544 = distinct !{!3544, !3536, !3545}
!3545 = !DILocation(line: 616, column: 5, scope: !3537)
!3546 = !DILocation(line: 619, column: 18, scope: !1905)
!3547 = !DILocation(line: 621, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 621, column: 7)
!3549 = !DILocation(line: 621, column: 7, scope: !1905)
!3550 = !DILocation(line: 623, column: 10, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 623, column: 10)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 622, column: 4)
!3553 = !DILocation(line: 623, column: 10, scope: !3552)
!3554 = !DILocation(line: 627, column: 14, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 627, column: 14)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 624, column: 8)
!3557 = !DILocation(line: 627, column: 14, scope: !3556)
!3558 = !DILocation(line: 629, column: 23, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 628, column: 12)
!3560 = !DILocation(line: 630, column: 22, scope: !3559)
!3561 = !DILocation(line: 630, column: 14, scope: !3559)
!3562 = !DILocation(line: 631, column: 12, scope: !3559)
!3563 = !DILocation(line: 632, column: 10, scope: !3556)
!3564 = !DILocation(line: 634, column: 10, scope: !3556)
!3565 = !DILocation(line: 635, column: 14, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 635, column: 14)
!3567 = !DILocation(line: 635, column: 14, scope: !3556)
!3568 = !DILocation(line: 636, column: 12, scope: !3566)
!3569 = !DILocation(line: 637, column: 10, scope: !3556)
!3570 = !DILocation(line: 638, column: 8, scope: !3556)
!3571 = !DILocation(line: 640, column: 8, scope: !3551)
!3572 = !DILocation(line: 646, column: 8, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 646, column: 3)
!3574 = !DILocation(line: 0, scope: !3573)
!3575 = !DILocation(line: 646, column: 17, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 646, column: 3)
!3577 = !DILocation(line: 646, column: 3, scope: !3573)
!3578 = !DILocation(line: 647, column: 5, scope: !3576)
!3579 = !DILocation(line: 647, column: 21, scope: !3576)
!3580 = !DILocation(line: 646, column: 24, scope: !3576)
!3581 = !DILocation(line: 646, column: 3, scope: !3576)
!3582 = distinct !{!3582, !3577, !3583}
!3583 = !DILocation(line: 647, column: 23, scope: !3573)
!3584 = !DILocation(line: 650, column: 3, scope: !1959)
!3585 = !DILocation(line: 0, scope: !1957)
!3586 = !DILocation(line: 0, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 661, column: 7)
!3588 = !DILocation(line: 0, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 661, column: 7)
!3590 = !DILocation(line: 0, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 686, column: 4)
!3592 = !DILocation(line: 0, scope: !1962)
!3593 = !DILocation(line: 0, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 698, column: 8)
!3595 = !DILocation(line: 0, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 721, column: 4)
!3597 = !DILocation(line: 0, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 726, column: 8)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 725, column: 6)
!3600 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 724, column: 8)
!3601 = !DILocation(line: 0, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 735, column: 8)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 733, column: 6)
!3604 = !DILocation(line: 0, scope: !1959)
!3605 = !DILocation(line: 650, column: 3, scope: !1958)
!3606 = !DILocation(line: 652, column: 7, scope: !1957)
!3607 = !DILocation(line: 653, column: 7, scope: !1957)
!3608 = !DILocation(line: 655, column: 15, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 655, column: 11)
!3610 = !DILocation(line: 655, column: 21, scope: !3609)
!3611 = !DILocation(line: 655, column: 11, scope: !1957)
!3612 = !DILocation(line: 658, column: 8, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 656, column: 2)
!3614 = !DILocation(line: 658, column: 15, scope: !3613)
!3615 = !DILocation(line: 657, column: 4, scope: !3613)
!3616 = !DILocation(line: 659, column: 14, scope: !3613)
!3617 = !DILocation(line: 660, column: 2, scope: !3613)
!3618 = !DILocation(line: 661, column: 7, scope: !3587)
!3619 = !DILocation(line: 661, column: 7, scope: !3589)
!3620 = !DILocation(line: 668, column: 9, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 668, column: 8)
!3622 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 662, column: 2)
!3623 = !DILocation(line: 668, column: 12, scope: !3621)
!3624 = !DILocation(line: 668, column: 18, scope: !3621)
!3625 = !DILocation(line: 669, column: 9, scope: !3621)
!3626 = !DILocation(line: 669, column: 15, scope: !3621)
!3627 = !DILocation(line: 669, column: 23, scope: !3621)
!3628 = !DILocation(line: 669, column: 20, scope: !3621)
!3629 = !DILocation(line: 670, column: 8, scope: !3621)
!3630 = !DILocation(line: 670, column: 27, scope: !3621)
!3631 = !DILocation(line: 670, column: 21, scope: !3621)
!3632 = !DILocation(line: 671, column: 5, scope: !3621)
!3633 = !DILocation(line: 671, column: 11, scope: !3621)
!3634 = !DILocation(line: 671, column: 19, scope: !3621)
!3635 = !DILocation(line: 671, column: 16, scope: !3621)
!3636 = !DILocation(line: 668, column: 8, scope: !3622)
!3637 = !DILocation(line: 673, column: 12, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 673, column: 12)
!3639 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 672, column: 6)
!3640 = !DILocation(line: 673, column: 12, scope: !3639)
!3641 = !DILocation(line: 676, column: 8, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 676, column: 8)
!3643 = !DILocation(line: 0, scope: !3642)
!3644 = !DILocation(line: 676, column: 11, scope: !3642)
!3645 = !DILocation(line: 674, column: 14, scope: !3638)
!3646 = !DILocation(line: 674, column: 17, scope: !3638)
!3647 = !DILocation(line: 674, column: 23, scope: !3638)
!3648 = !DILocation(line: 674, column: 37, scope: !3638)
!3649 = !DILocation(line: 674, column: 12, scope: !3638)
!3650 = !DILocation(line: 674, column: 3, scope: !3638)
!3651 = !DILocation(line: 676, column: 17, scope: !3642)
!3652 = !DILocation(line: 676, column: 21, scope: !3642)
!3653 = !DILocation(line: 676, column: 39, scope: !3642)
!3654 = !DILocation(line: 676, column: 33, scope: !3642)
!3655 = !DILocation(line: 676, column: 8, scope: !3622)
!3656 = !DILocation(line: 679, column: 11, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 677, column: 6)
!3658 = !DILocation(line: 679, column: 16, scope: !3657)
!3659 = !DILocation(line: 679, column: 26, scope: !3657)
!3660 = !DILocation(line: 679, column: 32, scope: !3657)
!3661 = !DILocation(line: 680, column: 8, scope: !3657)
!3662 = !DILocation(line: 678, column: 8, scope: !3657)
!3663 = !DILocation(line: 681, column: 23, scope: !3657)
!3664 = !DILocation(line: 681, column: 29, scope: !3657)
!3665 = !DILocation(line: 681, column: 8, scope: !3657)
!3666 = !DILocation(line: 681, column: 11, scope: !3657)
!3667 = !DILocation(line: 681, column: 17, scope: !3657)
!3668 = !DILocation(line: 682, column: 6, scope: !3657)
!3669 = distinct !{!3669, !3618, !3670}
!3670 = !DILocation(line: 683, column: 2, scope: !3587)
!3671 = !DILocation(line: 684, column: 15, scope: !1965)
!3672 = !DILocation(line: 684, column: 11, scope: !1965)
!3673 = !DILocation(line: 684, column: 11, scope: !1957)
!3674 = !DILocation(line: 686, column: 4, scope: !3591)
!3675 = !DILocation(line: 686, column: 4, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 686, column: 4)
!3677 = !DILocation(line: 687, column: 24, scope: !3676)
!3678 = !DILocation(line: 687, column: 27, scope: !3676)
!3679 = !DILocation(line: 687, column: 33, scope: !3676)
!3680 = !DILocation(line: 687, column: 58, scope: !3676)
!3681 = !DILocation(line: 687, column: 64, scope: !3676)
!3682 = !DILocation(line: 687, column: 52, scope: !3676)
!3683 = !DILocation(line: 687, column: 69, scope: !3676)
!3684 = !DILocation(line: 687, column: 23, scope: !3676)
!3685 = !DILocation(line: 687, column: 9, scope: !3676)
!3686 = !DILocation(line: 687, column: 21, scope: !3676)
!3687 = distinct !{!3687, !3674, !3688}
!3688 = !DILocation(line: 687, column: 75, scope: !3591)
!3689 = !DILocation(line: 688, column: 12, scope: !1963)
!3690 = !DILocation(line: 688, column: 18, scope: !1963)
!3691 = !DILocation(line: 689, column: 8, scope: !1963)
!3692 = !DILocation(line: 689, column: 11, scope: !1963)
!3693 = !DILocation(line: 690, column: 8, scope: !1963)
!3694 = !DILocation(line: 690, column: 11, scope: !1963)
!3695 = !DILocation(line: 690, column: 34, scope: !1963)
!3696 = !DILocation(line: 688, column: 8, scope: !1964)
!3697 = !DILocation(line: 693, column: 8, scope: !1962)
!3698 = !DILocation(line: 698, column: 8, scope: !3594)
!3699 = !DILocation(line: 698, column: 8, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 698, column: 8)
!3701 = !DILocation(line: 702, column: 15, scope: !1962)
!3702 = !DILocation(line: 699, column: 9, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 699, column: 7)
!3704 = !DILocation(line: 699, column: 12, scope: !3703)
!3705 = !DILocation(line: 699, column: 18, scope: !3703)
!3706 = !DILocation(line: 699, column: 7, scope: !3700)
!3707 = distinct !{!3707, !3698, !3708}
!3708 = !DILocation(line: 700, column: 5, scope: !3594)
!3709 = !DILocation(line: 702, column: 18, scope: !1962)
!3710 = !DILocation(line: 703, column: 26, scope: !1962)
!3711 = !DILocation(line: 705, column: 18, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 705, column: 12)
!3713 = !DILocation(line: 705, column: 12, scope: !1962)
!3714 = !DILocation(line: 707, column: 8, scope: !1962)
!3715 = !DILocation(line: 707, column: 27, scope: !1962)
!3716 = !DILocation(line: 709, column: 20, scope: !1962)
!3717 = !DILocation(line: 710, column: 6, scope: !1963)
!3718 = !DILocation(line: 710, column: 6, scope: !1962)
!3719 = !DILocation(line: 717, column: 16, scope: !1970)
!3720 = !DILocation(line: 717, column: 31, scope: !1970)
!3721 = !DILocation(line: 717, column: 16, scope: !1965)
!3722 = !DILocation(line: 0, scope: !1969)
!3723 = !DILocation(line: 721, column: 4, scope: !3596)
!3724 = !DILocation(line: 719, column: 8, scope: !1969)
!3725 = !DILocation(line: 721, column: 4, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 721, column: 4)
!3727 = !DILocation(line: 722, column: 12, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 722, column: 10)
!3729 = !DILocation(line: 722, column: 15, scope: !3728)
!3730 = !DILocation(line: 722, column: 21, scope: !3728)
!3731 = !DILocation(line: 722, column: 10, scope: !3726)
!3732 = distinct !{!3732, !3723, !3733}
!3733 = !DILocation(line: 723, column: 14, scope: !3596)
!3734 = !DILocation(line: 724, column: 8, scope: !3600)
!3735 = !DILocation(line: 724, column: 8, scope: !1969)
!3736 = !DILocation(line: 726, column: 8, scope: !3598)
!3737 = !DILocation(line: 726, column: 8, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 726, column: 8)
!3739 = !DILocation(line: 727, column: 9, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 727, column: 7)
!3741 = !DILocation(line: 727, column: 12, scope: !3740)
!3742 = !DILocation(line: 727, column: 18, scope: !3740)
!3743 = !DILocation(line: 727, column: 7, scope: !3738)
!3744 = !DILocation(line: 728, column: 39, scope: !3740)
!3745 = !DILocation(line: 728, column: 8, scope: !3740)
!3746 = !DILocation(line: 728, column: 20, scope: !3740)
!3747 = !DILocation(line: 728, column: 5, scope: !3740)
!3748 = !DILocation(line: 730, column: 8, scope: !3740)
!3749 = !DILocation(line: 730, column: 20, scope: !3740)
!3750 = distinct !{!3750, !3736, !3751}
!3751 = !DILocation(line: 730, column: 22, scope: !3598)
!3752 = !DILocation(line: 734, column: 17, scope: !3603)
!3753 = !DILocation(line: 735, column: 8, scope: !3602)
!3754 = !DILocation(line: 735, column: 8, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 735, column: 8)
!3756 = !DILocation(line: 736, column: 37, scope: !3755)
!3757 = !DILocation(line: 736, column: 3, scope: !3755)
!3758 = !DILocation(line: 736, column: 6, scope: !3755)
!3759 = !DILocation(line: 736, column: 18, scope: !3755)
!3760 = distinct !{!3760, !3753, !3761}
!3761 = !DILocation(line: 736, column: 39, scope: !3602)
!3762 = !DILocation(line: 738, column: 12, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 738, column: 8)
!3764 = !DILocation(line: 738, column: 18, scope: !3763)
!3765 = !DILocation(line: 739, column: 8, scope: !3763)
!3766 = !DILocation(line: 739, column: 11, scope: !3763)
!3767 = !DILocation(line: 740, column: 8, scope: !3763)
!3768 = !DILocation(line: 740, column: 11, scope: !3763)
!3769 = !DILocation(line: 740, column: 34, scope: !3763)
!3770 = !DILocation(line: 738, column: 8, scope: !1969)
!3771 = !DILocation(line: 0, scope: !1965)
!3772 = !DILocation(line: 743, column: 5, scope: !1958)
!3773 = distinct !{!3773, !3584, !3774}
!3774 = !DILocation(line: 743, column: 5, scope: !1959)
!3775 = !DILocation(line: 744, column: 3, scope: !1905)
!3776 = !DILocation(line: 745, column: 3, scope: !1905)
!3777 = !DILocation(line: 745, column: 18, scope: !1905)
!3778 = !DILocation(line: 747, column: 7, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 747, column: 7)
!3780 = !DILocation(line: 747, column: 7, scope: !1905)
!3781 = !DILocation(line: 749, column: 7, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 748, column: 5)
!3783 = !DILocation(line: 750, column: 11, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 750, column: 11)
!3785 = !DILocation(line: 750, column: 11, scope: !3782)
!3786 = !DILocation(line: 751, column: 2, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 751, column: 2)
!3788 = !DILocation(line: 0, scope: !3787)
!3789 = !DILocation(line: 751, column: 16, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 751, column: 2)
!3791 = !DILocation(line: 752, column: 13, scope: !3790)
!3792 = !DILocation(line: 753, column: 7, scope: !3790)
!3793 = !DILocation(line: 753, column: 40, scope: !3790)
!3794 = !DILocation(line: 753, column: 25, scope: !3790)
!3795 = !DILocation(line: 753, column: 23, scope: !3790)
!3796 = !DILocation(line: 753, column: 45, scope: !3790)
!3797 = !DILocation(line: 753, column: 51, scope: !3790)
!3798 = !DILocation(line: 754, column: 8, scope: !3790)
!3799 = !DILocation(line: 754, column: 19, scope: !3790)
!3800 = !DILocation(line: 752, column: 4, scope: !3790)
!3801 = !DILocation(line: 751, column: 23, scope: !3790)
!3802 = !DILocation(line: 751, column: 2, scope: !3790)
!3803 = distinct !{!3803, !3786, !3804}
!3804 = !DILocation(line: 754, column: 22, scope: !3787)
!3805 = !DILocation(line: 756, column: 26, scope: !3782)
!3806 = !DILocation(line: 757, column: 12, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 757, column: 7)
!3808 = !DILocation(line: 0, scope: !3807)
!3809 = !DILocation(line: 757, column: 21, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 757, column: 7)
!3811 = !DILocation(line: 757, column: 7, scope: !3807)
!3812 = !DILocation(line: 758, column: 27, scope: !3810)
!3813 = !DILocation(line: 758, column: 2, scope: !3810)
!3814 = !DILocation(line: 758, column: 24, scope: !3810)
!3815 = !DILocation(line: 757, column: 28, scope: !3810)
!3816 = !DILocation(line: 757, column: 7, scope: !3810)
!3817 = distinct !{!3817, !3811, !3818}
!3818 = !DILocation(line: 758, column: 41, scope: !3807)
!3819 = !DILocation(line: 760, column: 20, scope: !3782)
!3820 = !DILocation(line: 760, column: 7, scope: !3782)
!3821 = !DILocation(line: 761, column: 20, scope: !3782)
!3822 = !DILocation(line: 761, column: 7, scope: !3782)
!3823 = !DILocation(line: 762, column: 5, scope: !3782)
!3824 = !DILocation(line: 764, column: 3, scope: !1905)
!3825 = !DILocation(line: 765, column: 1, scope: !1905)
!3826 = distinct !DISubprogram(name: "compute_value_histograms", scope: !3, file: !3, line: 771, type: !3827, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !2436}
!3829 = !{!3830, !3831, !3832, !3833, !3834, !3835, !3839, !3841, !3842, !3843, !3847, !3851}
!3830 = !DILocalVariable(name: "values", arg: 1, scope: !3826, file: !3, line: 771, type: !2436)
!3831 = !DILocalVariable(name: "i", scope: !3826, file: !3, line: 773, type: !7)
!3832 = !DILocalVariable(name: "j", scope: !3826, file: !3, line: 773, type: !7)
!3833 = !DILocalVariable(name: "t", scope: !3826, file: !3, line: 773, type: !7)
!3834 = !DILocalVariable(name: "any", scope: !3826, file: !3, line: 773, type: !7)
!3835 = !DILocalVariable(name: "n_histogram_counters", scope: !3826, file: !3, line: 774, type: !3836)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 224, elements: !3837)
!3837 = !{!3838}
!3838 = !DISubrange(count: 7)
!3839 = !DILocalVariable(name: "histogram_counts", scope: !3826, file: !3, line: 775, type: !3840)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 448, elements: !3837)
!3841 = !DILocalVariable(name: "act_count", scope: !3826, file: !3, line: 776, type: !3840)
!3842 = !DILocalVariable(name: "aact_count", scope: !3826, file: !3, line: 777, type: !429)
!3843 = !DILocalVariable(name: "hist", scope: !3844, file: !3, line: 784, type: !1830)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 783, column: 5)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 782, column: 3)
!3846 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 782, column: 3)
!3847 = !DILocalVariable(name: "hist", scope: !3848, file: !3, line: 809, type: !1830)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 808, column: 5)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 807, column: 3)
!3850 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 807, column: 3)
!3851 = !DILocalVariable(name: "stmt", scope: !3848, file: !3, line: 810, type: !469)
!3852 = !DILocation(line: 0, scope: !3826)
!3853 = !DILocation(line: 774, column: 3, scope: !3826)
!3854 = !DILocation(line: 774, column: 12, scope: !3826)
!3855 = !DILocation(line: 775, column: 3, scope: !3826)
!3856 = !DILocation(line: 775, column: 14, scope: !3826)
!3857 = !DILocation(line: 776, column: 3, scope: !3826)
!3858 = !DILocation(line: 776, column: 14, scope: !3826)
!3859 = !DILocation(line: 779, column: 8, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 779, column: 3)
!3861 = !DILocation(line: 0, scope: !3860)
!3862 = !DILocation(line: 779, column: 17, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 779, column: 3)
!3864 = !DILocation(line: 779, column: 3, scope: !3860)
!3865 = !DILocation(line: 0, scope: !3845)
!3866 = !DILocation(line: 782, column: 3, scope: !3846)
!3867 = !DILocation(line: 780, column: 5, scope: !3863)
!3868 = !DILocation(line: 780, column: 29, scope: !3863)
!3869 = !DILocation(line: 779, column: 43, scope: !3863)
!3870 = !DILocation(line: 779, column: 3, scope: !3863)
!3871 = distinct !{!3871, !3864, !3872}
!3872 = !DILocation(line: 780, column: 31, scope: !3860)
!3873 = !DILocation(line: 0, scope: !3846)
!3874 = !DILocation(line: 782, column: 19, scope: !3845)
!3875 = !DILocation(line: 782, column: 17, scope: !3845)
!3876 = !DILocation(line: 789, column: 3, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 789, column: 3)
!3878 = !DILocation(line: 784, column: 30, scope: !3844)
!3879 = !DILocation(line: 0, scope: !3844)
!3880 = !DILocation(line: 785, column: 55, scope: !3844)
!3881 = !DILocation(line: 785, column: 40, scope: !3844)
!3882 = !DILocation(line: 785, column: 7, scope: !3844)
!3883 = !DILocation(line: 785, column: 46, scope: !3844)
!3884 = !DILocation(line: 782, column: 58, scope: !3845)
!3885 = !DILocation(line: 782, column: 3, scope: !3845)
!3886 = distinct !{!3886, !3866, !3887}
!3887 = !DILocation(line: 786, column: 5, scope: !3846)
!3888 = !DILocation(line: 0, scope: !3877)
!3889 = !DILocation(line: 789, column: 17, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 789, column: 3)
!3891 = !DILocation(line: 791, column: 12, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 791, column: 11)
!3893 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 790, column: 5)
!3894 = !DILocation(line: 791, column: 11, scope: !3893)
!3895 = !DILocation(line: 793, column: 4, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 792, column: 2)
!3897 = !DILocation(line: 793, column: 24, scope: !3896)
!3898 = !DILocation(line: 789, column: 43, scope: !3890)
!3899 = !DILocation(line: 794, column: 4, scope: !3896)
!3900 = !DILocation(line: 798, column: 23, scope: !3893)
!3901 = !DILocation(line: 798, column: 2, scope: !3893)
!3902 = !DILocation(line: 797, column: 7, scope: !3893)
!3903 = !DILocation(line: 797, column: 27, scope: !3893)
!3904 = !DILocation(line: 800, column: 11, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 800, column: 11)
!3906 = !DILocation(line: 800, column: 11, scope: !3893)
!3907 = !DILocation(line: 802, column: 22, scope: !3893)
!3908 = !DILocation(line: 802, column: 7, scope: !3893)
!3909 = !DILocation(line: 802, column: 20, scope: !3893)
!3910 = !DILocation(line: 803, column: 5, scope: !3893)
!3911 = !DILocation(line: 789, column: 3, scope: !3890)
!3912 = distinct !{!3912, !3876, !3913}
!3913 = !DILocation(line: 803, column: 5, scope: !3877)
!3914 = !DILocation(line: 804, column: 8, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 804, column: 7)
!3916 = !DILocation(line: 804, column: 7, scope: !3826)
!3917 = !DILocation(line: 807, column: 3, scope: !3850)
!3918 = !DILocation(line: 0, scope: !3850)
!3919 = !DILocation(line: 807, column: 19, scope: !3849)
!3920 = !DILocation(line: 807, column: 17, scope: !3849)
!3921 = !DILocation(line: 823, column: 3, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 823, column: 3)
!3923 = !DILocation(line: 809, column: 30, scope: !3848)
!3924 = !DILocation(line: 0, scope: !3848)
!3925 = !DILocation(line: 810, column: 34, scope: !3848)
!3926 = !DILocation(line: 812, column: 23, scope: !3848)
!3927 = !DILocation(line: 814, column: 20, scope: !3848)
!3928 = !DILocation(line: 815, column: 29, scope: !3848)
!3929 = !DILocation(line: 815, column: 20, scope: !3848)
!3930 = !DILocation(line: 817, column: 35, scope: !3848)
!3931 = !DILocation(line: 817, column: 7, scope: !3848)
!3932 = !DILocation(line: 818, column: 32, scope: !3848)
!3933 = !DILocation(line: 818, column: 20, scope: !3848)
!3934 = !DILocation(line: 818, column: 29, scope: !3848)
!3935 = !DILocation(line: 819, column: 12, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 819, column: 7)
!3937 = !DILocation(line: 0, scope: !3936)
!3938 = !DILocation(line: 819, column: 29, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 819, column: 7)
!3940 = !DILocation(line: 819, column: 21, scope: !3939)
!3941 = !DILocation(line: 819, column: 7, scope: !3936)
!3942 = !DILocation(line: 820, column: 29, scope: !3939)
!3943 = !DILocation(line: 820, column: 15, scope: !3939)
!3944 = !DILocation(line: 820, column: 2, scope: !3939)
!3945 = !DILocation(line: 820, column: 27, scope: !3939)
!3946 = !DILocation(line: 819, column: 42, scope: !3939)
!3947 = !DILocation(line: 819, column: 7, scope: !3939)
!3948 = distinct !{!3948, !3941, !3949}
!3949 = !DILocation(line: 820, column: 41, scope: !3936)
!3950 = !DILocation(line: 807, column: 58, scope: !3849)
!3951 = !DILocation(line: 807, column: 3, scope: !3849)
!3952 = distinct !{!3952, !3917, !3953}
!3953 = !DILocation(line: 821, column: 5, scope: !3850)
!3954 = !DILocation(line: 0, scope: !3922)
!3955 = !DILocation(line: 823, column: 17, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 823, column: 3)
!3957 = !DILocation(line: 824, column: 9, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 824, column: 9)
!3959 = !DILocation(line: 824, column: 9, scope: !3956)
!3960 = !DILocation(line: 825, column: 7, scope: !3958)
!3961 = !DILocation(line: 823, column: 43, scope: !3956)
!3962 = !DILocation(line: 823, column: 3, scope: !3956)
!3963 = distinct !{!3963, !3921, !3964}
!3964 = !DILocation(line: 825, column: 32, scope: !3922)
!3965 = !DILocation(line: 826, column: 1, scope: !3826)
!3966 = distinct !DISubprogram(name: "instrument_edges", scope: !3, file: !3, line: 121, type: !3967, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!7, !2428}
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3978, !3979}
!3970 = !DILocalVariable(name: "el", arg: 1, scope: !3966, file: !3, line: 121, type: !2428)
!3971 = !DILocalVariable(name: "num_instr_edges", scope: !3966, file: !3, line: 123, type: !7)
!3972 = !DILocalVariable(name: "num_edges", scope: !3966, file: !3, line: 124, type: !403)
!3973 = !DILocalVariable(name: "bb", scope: !3966, file: !3, line: 125, type: !430)
!3974 = !DILocalVariable(name: "e", scope: !3975, file: !3, line: 129, type: !448)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 128, column: 5)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 127, column: 3)
!3977 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 127, column: 3)
!3978 = !DILocalVariable(name: "ei", scope: !3975, file: !3, line: 130, type: !1921)
!3979 = !DILocalVariable(name: "inf", scope: !3980, file: !3, line: 134, type: !412)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 133, column: 2)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 132, column: 7)
!3982 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 132, column: 7)
!3983 = !DILocation(line: 0, scope: !3966)
!3984 = !DILocation(line: 124, column: 19, scope: !3966)
!3985 = !DILocation(line: 127, column: 3, scope: !3977)
!3986 = !DILocation(line: 0, scope: !3975)
!3987 = !DILocation(line: 0, scope: !3982)
!3988 = !DILocation(line: 0, scope: !3981)
!3989 = !DILocation(line: 123, column: 12, scope: !3966)
!3990 = !DILocation(line: 0, scope: !3977)
!3991 = !DILocation(line: 127, column: 3, scope: !3976)
!3992 = !DILocation(line: 129, column: 7, scope: !3975)
!3993 = !DILocation(line: 130, column: 7, scope: !3975)
!3994 = !DILocation(line: 132, column: 7, scope: !3982)
!3995 = !DILocation(line: 132, column: 7, scope: !3981)
!3996 = !DILocation(line: 134, column: 28, scope: !3980)
!3997 = !DILocation(line: 0, scope: !3980)
!3998 = !DILocation(line: 136, column: 14, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 136, column: 8)
!4000 = !DILocation(line: 136, column: 9, scope: !3999)
!4001 = !DILocation(line: 136, column: 21, scope: !3999)
!4002 = !DILocation(line: 136, column: 30, scope: !3999)
!4003 = !DILocation(line: 136, column: 25, scope: !3999)
!4004 = !DILocation(line: 136, column: 8, scope: !3980)
!4005 = !DILocation(line: 138, column: 8, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 137, column: 6)
!4007 = !DILocation(line: 139, column: 12, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 139, column: 12)
!4009 = !DILocation(line: 139, column: 12, scope: !4006)
!4010 = !DILocation(line: 141, column: 5, scope: !4008)
!4011 = !DILocation(line: 141, column: 8, scope: !4008)
!4012 = !DILocation(line: 141, column: 13, scope: !4008)
!4013 = !DILocation(line: 141, column: 23, scope: !4008)
!4014 = !DILocation(line: 141, column: 29, scope: !4008)
!4015 = !DILocation(line: 142, column: 5, scope: !4008)
!4016 = !DILocation(line: 0, scope: !4008)
!4017 = !DILocation(line: 140, column: 3, scope: !4008)
!4018 = !DILocation(line: 143, column: 24, scope: !4006)
!4019 = !DILocation(line: 143, column: 59, scope: !4006)
!4020 = !DILocation(line: 143, column: 63, scope: !4006)
!4021 = !DILocation(line: 143, column: 8, scope: !4006)
!4022 = !DILocation(line: 144, column: 6, scope: !4006)
!4023 = distinct !{!4023, !3994, !4024}
!4024 = !DILocation(line: 145, column: 2, scope: !3982)
!4025 = !DILocation(line: 146, column: 5, scope: !3976)
!4026 = distinct !{!4026, !3985, !4027}
!4027 = !DILocation(line: 146, column: 5, scope: !3977)
!4028 = !DILocation(line: 148, column: 28, scope: !3966)
!4029 = !DILocation(line: 149, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 149, column: 7)
!4031 = !DILocation(line: 149, column: 7, scope: !3966)
!4032 = !DILocation(line: 150, column: 5, scope: !4030)
!4033 = !DILocation(line: 151, column: 3, scope: !3966)
!4034 = distinct !DISubprogram(name: "instrument_values", scope: !3, file: !3, line: 156, type: !3827, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4035)
!4035 = !{!4036, !4037, !4038, !4039}
!4036 = !DILocalVariable(name: "values", arg: 1, scope: !4034, file: !3, line: 156, type: !2436)
!4037 = !DILocalVariable(name: "i", scope: !4034, file: !3, line: 158, type: !7)
!4038 = !DILocalVariable(name: "t", scope: !4034, file: !3, line: 158, type: !7)
!4039 = !DILocalVariable(name: "hist", scope: !4040, file: !3, line: 164, type: !1830)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 163, column: 5)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 162, column: 3)
!4042 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 162, column: 3)
!4043 = !DILocation(line: 0, scope: !4034)
!4044 = !DILocation(line: 0, scope: !4041)
!4045 = !DILocation(line: 162, column: 8, scope: !4042)
!4046 = !DILocation(line: 0, scope: !4042)
!4047 = !DILocation(line: 162, column: 19, scope: !4041)
!4048 = !DILocation(line: 162, column: 17, scope: !4041)
!4049 = !DILocation(line: 162, column: 3, scope: !4042)
!4050 = !DILocation(line: 164, column: 30, scope: !4040)
!4051 = !DILocation(line: 0, scope: !4040)
!4052 = !DILocation(line: 165, column: 21, scope: !4040)
!4053 = !DILocation(line: 165, column: 7, scope: !4040)
!4054 = !DILocation(line: 173, column: 4, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 166, column: 2)
!4056 = !DILocation(line: 177, column: 4, scope: !4055)
!4057 = !DILocation(line: 181, column: 4, scope: !4055)
!4058 = !DILocation(line: 185, column: 5, scope: !4055)
!4059 = !DILocation(line: 189, column: 5, scope: !4055)
!4060 = !DILocation(line: 193, column: 5, scope: !4055)
!4061 = !DILocation(line: 196, column: 4, scope: !4055)
!4062 = !DILocation(line: 197, column: 2, scope: !4055)
!4063 = !DILocation(line: 198, column: 45, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 198, column: 11)
!4065 = !DILocation(line: 198, column: 12, scope: !4064)
!4066 = !DILocation(line: 198, column: 11, scope: !4040)
!4067 = !DILocation(line: 201, column: 21, scope: !4040)
!4068 = !DILocation(line: 201, column: 7, scope: !4040)
!4069 = !DILocation(line: 204, column: 20, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 202, column: 2)
!4071 = !DILocation(line: 204, column: 4, scope: !4070)
!4072 = !DILocation(line: 205, column: 4, scope: !4070)
!4073 = !DILocation(line: 208, column: 20, scope: !4070)
!4074 = !DILocation(line: 208, column: 4, scope: !4070)
!4075 = !DILocation(line: 209, column: 4, scope: !4070)
!4076 = !DILocation(line: 212, column: 20, scope: !4070)
!4077 = !DILocation(line: 212, column: 4, scope: !4070)
!4078 = !DILocation(line: 213, column: 4, scope: !4070)
!4079 = !DILocation(line: 216, column: 20, scope: !4070)
!4080 = !DILocation(line: 216, column: 4, scope: !4070)
!4081 = !DILocation(line: 217, column: 4, scope: !4070)
!4082 = !DILocation(line: 220, column: 21, scope: !4070)
!4083 = !DILocation(line: 220, column: 5, scope: !4070)
!4084 = !DILocation(line: 221, column: 6, scope: !4070)
!4085 = !DILocation(line: 224, column: 20, scope: !4070)
!4086 = !DILocation(line: 224, column: 4, scope: !4070)
!4087 = !DILocation(line: 225, column: 4, scope: !4070)
!4088 = !DILocation(line: 228, column: 20, scope: !4070)
!4089 = !DILocation(line: 228, column: 4, scope: !4070)
!4090 = !DILocation(line: 229, column: 4, scope: !4070)
!4091 = !DILocation(line: 232, column: 4, scope: !4070)
!4092 = !DILocation(line: 233, column: 2, scope: !4070)
!4093 = !DILocation(line: 162, column: 58, scope: !4041)
!4094 = !DILocation(line: 162, column: 3, scope: !4041)
!4095 = distinct !{!4095, !4049, !4096}
!4096 = !DILocation(line: 234, column: 5, scope: !4042)
!4097 = !DILocation(line: 235, column: 1, scope: !4034)
!4098 = distinct !DISubprogram(name: "VEC_histogram_value_heap_free", scope: !391, file: !391, line: 69, type: !4099, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4102)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4101}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!4102 = !{!4103}
!4103 = !DILocalVariable(name: "vec_", arg: 1, scope: !4098, file: !391, line: 69, type: !4101)
!4104 = !DILocation(line: 0, scope: !4098)
!4105 = !DILocation(line: 69, column: 1, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4098, file: !391, line: 69, column: 1)
!4107 = !DILocation(line: 69, column: 1, scope: !4098)
!4108 = distinct !DISubprogram(name: "init_branch_prob", scope: !3, file: !3, line: 1318, type: !1820, scopeLine: 1319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4109)
!4109 = !{!4110}
!4110 = !DILocalVariable(name: "i", scope: !4108, file: !3, line: 1320, type: !403)
!4111 = !DILocation(line: 1322, column: 20, scope: !4108)
!4112 = !DILocation(line: 1323, column: 19, scope: !4108)
!4113 = !DILocation(line: 1324, column: 27, scope: !4108)
!4114 = !DILocation(line: 1326, column: 28, scope: !4108)
!4115 = !DILocation(line: 1327, column: 20, scope: !4108)
!4116 = !DILocation(line: 1328, column: 26, scope: !4108)
!4117 = !DILocation(line: 1329, column: 22, scope: !4108)
!4118 = !DILocation(line: 0, scope: !4108)
!4119 = !DILocation(line: 1330, column: 8, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1330, column: 3)
!4121 = !DILocation(line: 0, scope: !4120)
!4122 = !DILocation(line: 1330, column: 17, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1330, column: 3)
!4124 = !DILocation(line: 1330, column: 3, scope: !4120)
!4125 = !DILocation(line: 1331, column: 5, scope: !4123)
!4126 = !DILocation(line: 1331, column: 27, scope: !4123)
!4127 = !DILocation(line: 1330, column: 24, scope: !4123)
!4128 = !DILocation(line: 1330, column: 3, scope: !4123)
!4129 = distinct !{!4129, !4124, !4130}
!4130 = !DILocation(line: 1331, column: 29, scope: !4120)
!4131 = !DILocation(line: 1332, column: 1, scope: !4108)
!4132 = distinct !DISubprogram(name: "end_branch_prob", scope: !3, file: !3, line: 1338, type: !1820, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4133)
!4133 = !{!4134}
!4134 = !DILocalVariable(name: "i", scope: !4135, file: !3, line: 1362, type: !403)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1361, column: 2)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 1360, column: 11)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 1341, column: 5)
!4138 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 1340, column: 7)
!4139 = !DILocation(line: 1340, column: 7, scope: !4138)
!4140 = !DILocation(line: 1340, column: 7, scope: !4132)
!4141 = !DILocation(line: 1342, column: 7, scope: !4137)
!4142 = !DILocation(line: 1343, column: 16, scope: !4137)
!4143 = !DILocation(line: 1344, column: 9, scope: !4137)
!4144 = !DILocation(line: 1343, column: 7, scope: !4137)
!4145 = !DILocation(line: 1345, column: 16, scope: !4137)
!4146 = !DILocation(line: 1345, column: 58, scope: !4137)
!4147 = !DILocation(line: 1345, column: 7, scope: !4137)
!4148 = !DILocation(line: 1346, column: 16, scope: !4137)
!4149 = !DILocation(line: 1347, column: 9, scope: !4137)
!4150 = !DILocation(line: 1346, column: 7, scope: !4137)
!4151 = !DILocation(line: 1348, column: 16, scope: !4137)
!4152 = !DILocation(line: 1348, column: 7, scope: !4137)
!4153 = !DILocation(line: 1350, column: 16, scope: !4137)
!4154 = !DILocation(line: 1351, column: 9, scope: !4137)
!4155 = !DILocation(line: 1350, column: 7, scope: !4137)
!4156 = !DILocation(line: 1352, column: 16, scope: !4137)
!4157 = !DILocation(line: 1353, column: 9, scope: !4137)
!4158 = !DILocation(line: 1352, column: 7, scope: !4137)
!4159 = !DILocation(line: 1354, column: 11, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 1354, column: 11)
!4161 = !DILocation(line: 1354, column: 34, scope: !4160)
!4162 = !DILocation(line: 1354, column: 11, scope: !4137)
!4163 = !DILocation(line: 1355, column: 11, scope: !4160)
!4164 = !DILocation(line: 1356, column: 5, scope: !4160)
!4165 = !DILocation(line: 1356, column: 49, scope: !4160)
!4166 = !DILocation(line: 1356, column: 22, scope: !4160)
!4167 = !DILocation(line: 1357, column: 4, scope: !4160)
!4168 = !DILocation(line: 1355, column: 2, scope: !4160)
!4169 = !DILocation(line: 1358, column: 16, scope: !4137)
!4170 = !DILocation(line: 1359, column: 9, scope: !4137)
!4171 = !DILocation(line: 1358, column: 7, scope: !4137)
!4172 = !DILocation(line: 1360, column: 11, scope: !4136)
!4173 = !DILocation(line: 1360, column: 11, scope: !4137)
!4174 = !DILocation(line: 1364, column: 4, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1364, column: 4)
!4176 = !DILocation(line: 0, scope: !4175)
!4177 = !DILocation(line: 0, scope: !4135)
!4178 = !DILocation(line: 1364, column: 18, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 1364, column: 4)
!4180 = !DILocation(line: 1365, column: 15, scope: !4179)
!4181 = !DILocation(line: 1366, column: 9, scope: !4179)
!4182 = !DILocation(line: 1366, column: 54, scope: !4179)
!4183 = !DILocation(line: 1366, column: 33, scope: !4179)
!4184 = !DILocation(line: 1366, column: 31, scope: !4179)
!4185 = !DILocation(line: 1366, column: 59, scope: !4179)
!4186 = !DILocation(line: 1367, column: 10, scope: !4179)
!4187 = !DILocation(line: 1367, column: 8, scope: !4179)
!4188 = !DILocation(line: 1367, column: 31, scope: !4179)
!4189 = !DILocation(line: 1367, column: 38, scope: !4179)
!4190 = !DILocation(line: 1365, column: 6, scope: !4179)
!4191 = !DILocation(line: 1364, column: 25, scope: !4179)
!4192 = !DILocation(line: 1364, column: 4, scope: !4179)
!4193 = distinct !{!4193, !4174, !4194}
!4194 = !DILocation(line: 1367, column: 40, scope: !4175)
!4195 = !DILocation(line: 1370, column: 1, scope: !4132)
!4196 = distinct !DISubprogram(name: "tree_register_profile_hooks", scope: !3, file: !3, line: 1375, type: !1820, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!4197 = !DILocation(line: 1377, column: 3, scope: !4196)
!4198 = !DILocation(line: 1379, column: 1, scope: !4196)
!4199 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !4200, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!402, !1921}
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "i", arg: 1, scope: !4199, file: !135, line: 721, type: !1921)
!4204 = !DILocation(line: 723, column: 22, scope: !4199)
!4205 = !DILocation(line: 723, column: 19, scope: !4199)
!4206 = !DILocation(line: 723, column: 10, scope: !4199)
!4207 = !DILocation(line: 723, column: 3, scope: !4199)
!4208 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !4209, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4211)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!448, !1921}
!4211 = !{!4212}
!4212 = !DILocalVariable(name: "i", arg: 1, scope: !4208, file: !135, line: 752, type: !1921)
!4213 = !DILocation(line: 754, column: 10, scope: !4208)
!4214 = !DILocation(line: 754, column: 3, scope: !4208)
!4215 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !4216, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4220)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!7, !4218}
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!4220 = !{!4221}
!4221 = !DILocalVariable(name: "vec_", arg: 1, scope: !4215, file: !135, line: 150, type: !4218)
!4222 = !DILocation(line: 0, scope: !4215)
!4223 = !DILocation(line: 150, column: 1, scope: !4215)
!4224 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !4225, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4227)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!436, !1921}
!4227 = !{!4228}
!4228 = !DILocalVariable(name: "i", arg: 1, scope: !4224, file: !135, line: 685, type: !1921)
!4229 = !DILocation(line: 687, column: 3, scope: !4224)
!4230 = !DILocation(line: 688, column: 10, scope: !4224)
!4231 = !DILocation(line: 688, column: 3, scope: !4224)
!4232 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !4233, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!448, !4218, !7}
!4235 = !{!4236, !4237}
!4236 = !DILocalVariable(name: "vec_", arg: 1, scope: !4232, file: !135, line: 150, type: !4218)
!4237 = !DILocalVariable(name: "ix_", arg: 2, scope: !4232, file: !135, line: 150, type: !7)
!4238 = !DILocation(line: 0, scope: !4232)
!4239 = !DILocation(line: 150, column: 1, scope: !4232)
!4240 = distinct !DISubprogram(name: "bb_seq", scope: !461, file: !461, line: 237, type: !4241, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!458, !3017}
!4243 = !{!4244}
!4244 = !DILocalVariable(name: "bb", arg: 1, scope: !4240, file: !461, line: 237, type: !3017)
!4245 = !DILocation(line: 0, scope: !4240)
!4246 = !DILocation(line: 239, column: 17, scope: !4240)
!4247 = !DILocation(line: 239, column: 23, scope: !4240)
!4248 = !DILocation(line: 239, column: 33, scope: !4240)
!4249 = !DILocation(line: 239, column: 43, scope: !4240)
!4250 = !DILocation(line: 239, column: 36, scope: !4240)
!4251 = !DILocation(line: 239, column: 10, scope: !4240)
!4252 = !DILocation(line: 239, column: 68, scope: !4240)
!4253 = !DILocation(line: 239, column: 3, scope: !4240)
!4254 = distinct !DISubprogram(name: "gimple_seq_last", scope: !461, file: !461, line: 178, type: !4255, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4260)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!464, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !431, line: 67, baseType: !4258)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!4260 = !{!4261}
!4261 = !DILocalVariable(name: "s", arg: 1, scope: !4254, file: !461, line: 178, type: !4257)
!4262 = !DILocation(line: 0, scope: !4254)
!4263 = !DILocation(line: 180, column: 10, scope: !4254)
!4264 = !DILocation(line: 180, column: 17, scope: !4254)
!4265 = !DILocation(line: 180, column: 3, scope: !4254)
!4266 = distinct !DISubprogram(name: "gimple_seq_first", scope: !461, file: !461, line: 159, type: !4255, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4267)
!4267 = !{!4268}
!4268 = !DILocalVariable(name: "s", arg: 1, scope: !4266, file: !461, line: 159, type: !4257)
!4269 = !DILocation(line: 0, scope: !4266)
!4270 = !DILocation(line: 161, column: 10, scope: !4266)
!4271 = !DILocation(line: 161, column: 17, scope: !4266)
!4272 = !DILocation(line: 161, column: 3, scope: !4266)
!4273 = distinct !DISubprogram(name: "get_exec_counts", scope: !3, file: !3, line: 241, type: !4274, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!429}
!4276 = !{!4277, !4278, !4279, !4280, !4284}
!4277 = !DILocalVariable(name: "num_edges", scope: !4273, file: !3, line: 243, type: !7)
!4278 = !DILocalVariable(name: "bb", scope: !4273, file: !3, line: 244, type: !430)
!4279 = !DILocalVariable(name: "counts", scope: !4273, file: !3, line: 245, type: !429)
!4280 = !DILocalVariable(name: "e", scope: !4281, file: !3, line: 250, type: !448)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 249, column: 5)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 248, column: 3)
!4283 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 248, column: 3)
!4284 = !DILocalVariable(name: "ei", scope: !4281, file: !3, line: 251, type: !1921)
!4285 = !DILocation(line: 0, scope: !4273)
!4286 = !DILocation(line: 248, column: 3, scope: !4283)
!4287 = !DILocation(line: 0, scope: !4281)
!4288 = !DILocation(line: 0, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 253, column: 7)
!4290 = !DILocation(line: 0, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 253, column: 7)
!4292 = !DILocation(line: 243, column: 12, scope: !4273)
!4293 = !DILocation(line: 0, scope: !4283)
!4294 = !DILocation(line: 248, column: 3, scope: !4282)
!4295 = !DILocation(line: 250, column: 7, scope: !4281)
!4296 = !DILocation(line: 251, column: 7, scope: !4281)
!4297 = !DILocation(line: 253, column: 7, scope: !4289)
!4298 = !DILocation(line: 253, column: 7, scope: !4291)
!4299 = !DILocation(line: 254, column: 7, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 254, column: 6)
!4301 = !DILocation(line: 254, column: 22, scope: !4300)
!4302 = !DILocation(line: 254, column: 29, scope: !4300)
!4303 = !DILocation(line: 254, column: 6, scope: !4291)
!4304 = distinct !{!4304, !4297, !4305}
!4305 = !DILocation(line: 255, column: 13, scope: !4289)
!4306 = !DILocation(line: 256, column: 5, scope: !4282)
!4307 = distinct !{!4307, !4286, !4308}
!4308 = !DILocation(line: 256, column: 5, scope: !4283)
!4309 = !DILocation(line: 258, column: 12, scope: !4273)
!4310 = !DILocation(line: 259, column: 8, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 259, column: 7)
!4312 = !DILocation(line: 259, column: 7, scope: !4273)
!4313 = !DILocation(line: 262, column: 7, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 262, column: 7)
!4315 = !DILocation(line: 262, column: 20, scope: !4314)
!4316 = !DILocation(line: 262, column: 17, scope: !4314)
!4317 = !DILocation(line: 264, column: 20, scope: !4314)
!4318 = !DILocation(line: 264, column: 51, scope: !4314)
!4319 = !DILocation(line: 264, column: 26, scope: !4314)
!4320 = !DILocation(line: 263, column: 5, scope: !4314)
!4321 = !DILocation(line: 267, column: 1, scope: !4273)
!4322 = distinct !DISubprogram(name: "read_profile_edge_counts", scope: !3, file: !3, line: 390, type: !4323, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!403, !429}
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4334}
!4326 = !DILocalVariable(name: "exec_counts", arg: 1, scope: !4322, file: !3, line: 390, type: !429)
!4327 = !DILocalVariable(name: "bb", scope: !4322, file: !3, line: 392, type: !430)
!4328 = !DILocalVariable(name: "num_edges", scope: !4322, file: !3, line: 393, type: !403)
!4329 = !DILocalVariable(name: "exec_counts_pos", scope: !4322, file: !3, line: 394, type: !403)
!4330 = !DILocalVariable(name: "e", scope: !4331, file: !3, line: 402, type: !448)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 401, column: 5)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 400, column: 3)
!4333 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 400, column: 3)
!4334 = !DILocalVariable(name: "ei", scope: !4331, file: !3, line: 403, type: !1921)
!4335 = !DILocation(line: 0, scope: !4322)
!4336 = !DILocation(line: 400, column: 3, scope: !4333)
!4337 = !DILocation(line: 0, scope: !4331)
!4338 = !DILocation(line: 0, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 405, column: 7)
!4340 = !DILocation(line: 0, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 405, column: 7)
!4342 = !DILocation(line: 0, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 409, column: 10)
!4344 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 407, column: 4)
!4345 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 406, column: 6)
!4346 = !DILocation(line: 393, column: 7, scope: !4322)
!4347 = !DILocation(line: 394, column: 7, scope: !4322)
!4348 = !DILocation(line: 0, scope: !4333)
!4349 = !DILocation(line: 400, column: 3, scope: !4332)
!4350 = !DILocation(line: 402, column: 7, scope: !4331)
!4351 = !DILocation(line: 403, column: 7, scope: !4331)
!4352 = !DILocation(line: 405, column: 7, scope: !4339)
!4353 = !DILocation(line: 0, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 413, column: 5)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 412, column: 7)
!4356 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 410, column: 8)
!4357 = !DILocation(line: 0, scope: !4344)
!4358 = !DILocation(line: 405, column: 7, scope: !4341)
!4359 = !DILocation(line: 406, column: 7, scope: !4345)
!4360 = !DILocation(line: 406, column: 22, scope: !4345)
!4361 = !DILocation(line: 406, column: 29, scope: !4345)
!4362 = !DILocation(line: 406, column: 48, scope: !4345)
!4363 = !DILocation(line: 406, column: 33, scope: !4345)
!4364 = !DILocation(line: 406, column: 6, scope: !4341)
!4365 = !DILocation(line: 408, column: 15, scope: !4344)
!4366 = !DILocation(line: 419, column: 11, scope: !4343)
!4367 = !DILocation(line: 419, column: 17, scope: !4343)
!4368 = !DILocation(line: 421, column: 33, scope: !4344)
!4369 = !DILocation(line: 422, column: 6, scope: !4344)
!4370 = !DILocation(line: 422, column: 20, scope: !4344)
!4371 = !DILocation(line: 422, column: 30, scope: !4344)
!4372 = !DILocation(line: 423, column: 6, scope: !4344)
!4373 = !DILocation(line: 423, column: 25, scope: !4344)
!4374 = !DILocation(line: 423, column: 35, scope: !4344)
!4375 = !DILocation(line: 424, column: 10, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 424, column: 10)
!4377 = !DILocation(line: 424, column: 10, scope: !4344)
!4378 = !DILocation(line: 427, column: 9, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 425, column: 8)
!4380 = !DILocation(line: 427, column: 19, scope: !4379)
!4381 = !DILocation(line: 427, column: 25, scope: !4379)
!4382 = !DILocation(line: 426, column: 3, scope: !4379)
!4383 = !DILocation(line: 428, column: 12, scope: !4379)
!4384 = !DILocation(line: 429, column: 23, scope: !4379)
!4385 = !DILocation(line: 429, column: 26, scope: !4379)
!4386 = !DILocation(line: 428, column: 3, scope: !4379)
!4387 = !DILocation(line: 430, column: 8, scope: !4379)
!4388 = distinct !{!4388, !4352, !4389}
!4389 = !DILocation(line: 431, column: 4, scope: !4339)
!4390 = !DILocation(line: 432, column: 5, scope: !4332)
!4391 = !DILocation(line: 411, column: 41, scope: !4356)
!4392 = !DILocation(line: 411, column: 14, scope: !4356)
!4393 = !DILocation(line: 411, column: 6, scope: !4356)
!4394 = !DILocation(line: 411, column: 12, scope: !4356)
!4395 = !DILocation(line: 412, column: 18, scope: !4355)
!4396 = !DILocation(line: 412, column: 32, scope: !4355)
!4397 = !DILocation(line: 412, column: 16, scope: !4355)
!4398 = !DILocation(line: 412, column: 7, scope: !4356)
!4399 = !DILocation(line: 415, column: 11, scope: !4354)
!4400 = !DILocation(line: 415, column: 21, scope: !4354)
!4401 = !DILocation(line: 415, column: 27, scope: !4354)
!4402 = !DILocation(line: 414, column: 7, scope: !4354)
!4403 = !DILocation(line: 421, column: 6, scope: !4344)
!4404 = !DILocation(line: 416, column: 5, scope: !4354)
!4405 = distinct !{!4405, !4336, !4406}
!4406 = !DILocation(line: 432, column: 5, scope: !4333)
!4407 = !DILocation(line: 434, column: 5, scope: !4322)
!4408 = distinct !DISubprogram(name: "is_inconsistent", scope: !3, file: !3, line: 318, type: !4409, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!402}
!4411 = !{!4412, !4413}
!4412 = !DILocalVariable(name: "bb", scope: !4408, file: !3, line: 320, type: !430)
!4413 = !DILocalVariable(name: "inconsistent", scope: !4408, file: !3, line: 321, type: !402)
!4414 = !DILocation(line: 0, scope: !4408)
!4415 = !DILocation(line: 322, column: 3, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 322, column: 3)
!4417 = !DILocation(line: 322, column: 3, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 322, column: 3)
!4419 = !DILocation(line: 0, scope: !4416)
!4420 = !DILocation(line: 324, column: 49, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 323, column: 5)
!4422 = !DILocation(line: 324, column: 23, scope: !4421)
!4423 = !DILocation(line: 324, column: 20, scope: !4421)
!4424 = !DILocation(line: 325, column: 12, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 325, column: 11)
!4426 = !DILocation(line: 325, column: 25, scope: !4425)
!4427 = !DILocation(line: 325, column: 22, scope: !4425)
!4428 = !DILocation(line: 327, column: 49, scope: !4421)
!4429 = !DILocation(line: 327, column: 23, scope: !4421)
!4430 = !DILocation(line: 327, column: 20, scope: !4421)
!4431 = !DILocation(line: 328, column: 12, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 328, column: 11)
!4433 = !DILocation(line: 328, column: 25, scope: !4432)
!4434 = !DILocation(line: 328, column: 22, scope: !4432)
!4435 = !DILocation(line: 330, column: 15, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 330, column: 11)
!4437 = !DILocation(line: 330, column: 21, scope: !4436)
!4438 = !DILocation(line: 330, column: 11, scope: !4421)
!4439 = !DILocation(line: 332, column: 8, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 331, column: 9)
!4441 = !DILocation(line: 336, column: 14, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 333, column: 6)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 332, column: 8)
!4444 = !DILocation(line: 334, column: 8, scope: !4442)
!4445 = !DILocation(line: 338, column: 21, scope: !4442)
!4446 = !DILocation(line: 338, column: 8, scope: !4442)
!4447 = !DILocation(line: 342, column: 15, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 342, column: 11)
!4449 = !DILocation(line: 339, column: 6, scope: !4442)
!4450 = !DILocation(line: 0, scope: !4421)
!4451 = !DILocation(line: 342, column: 45, scope: !4448)
!4452 = !DILocation(line: 342, column: 24, scope: !4448)
!4453 = !DILocation(line: 342, column: 21, scope: !4448)
!4454 = !DILocation(line: 342, column: 11, scope: !4421)
!4455 = !DILocation(line: 344, column: 8, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 344, column: 8)
!4457 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 343, column: 9)
!4458 = !DILocation(line: 344, column: 8, scope: !4457)
!4459 = !DILocation(line: 348, column: 14, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 345, column: 6)
!4461 = !DILocation(line: 349, column: 14, scope: !4460)
!4462 = !DILocation(line: 350, column: 31, scope: !4460)
!4463 = !DILocation(line: 350, column: 10, scope: !4460)
!4464 = !DILocation(line: 346, column: 8, scope: !4460)
!4465 = !DILocation(line: 351, column: 21, scope: !4460)
!4466 = !DILocation(line: 351, column: 8, scope: !4460)
!4467 = !DILocation(line: 352, column: 6, scope: !4460)
!4468 = !DILocation(line: 355, column: 15, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 355, column: 11)
!4470 = !DILocation(line: 355, column: 45, scope: !4469)
!4471 = !DILocation(line: 355, column: 24, scope: !4469)
!4472 = !DILocation(line: 355, column: 21, scope: !4469)
!4473 = !DILocation(line: 355, column: 52, scope: !4469)
!4474 = !DILocation(line: 356, column: 29, scope: !4469)
!4475 = !DILocation(line: 356, column: 14, scope: !4469)
!4476 = !DILocation(line: 356, column: 45, scope: !4469)
!4477 = !DILocation(line: 356, column: 53, scope: !4469)
!4478 = !DILocation(line: 356, column: 56, scope: !4469)
!4479 = !DILocation(line: 355, column: 11, scope: !4421)
!4480 = !DILocation(line: 358, column: 8, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 358, column: 8)
!4482 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 357, column: 2)
!4483 = !DILocation(line: 358, column: 8, scope: !4482)
!4484 = !DILocation(line: 362, column: 14, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 359, column: 6)
!4486 = !DILocation(line: 363, column: 14, scope: !4485)
!4487 = !DILocation(line: 364, column: 31, scope: !4485)
!4488 = !DILocation(line: 364, column: 10, scope: !4485)
!4489 = !DILocation(line: 360, column: 8, scope: !4485)
!4490 = !DILocation(line: 365, column: 21, scope: !4485)
!4491 = !DILocation(line: 365, column: 8, scope: !4485)
!4492 = !DILocation(line: 366, column: 6, scope: !4485)
!4493 = !DILocation(line: 369, column: 12, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 369, column: 11)
!4495 = !DILocation(line: 369, column: 25, scope: !4494)
!4496 = !DILocation(line: 369, column: 22, scope: !4494)
!4497 = !DILocation(line: 0, scope: !4418)
!4498 = distinct !{!4498, !4415, !4499}
!4499 = !DILocation(line: 371, column: 5, scope: !4416)
!4500 = !DILocation(line: 374, column: 1, scope: !4408)
!4501 = distinct !DISubprogram(name: "correct_negative_edge_counts", scope: !3, file: !3, line: 299, type: !1820, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4502)
!4502 = !{!4503, !4504, !4505}
!4503 = !DILocalVariable(name: "bb", scope: !4501, file: !3, line: 301, type: !430)
!4504 = !DILocalVariable(name: "e", scope: !4501, file: !3, line: 302, type: !448)
!4505 = !DILocalVariable(name: "ei", scope: !4501, file: !3, line: 303, type: !1921)
!4506 = !DILocation(line: 302, column: 3, scope: !4501)
!4507 = !DILocation(line: 303, column: 3, scope: !4501)
!4508 = !DILocation(line: 305, column: 3, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 305, column: 3)
!4510 = !DILocation(line: 0, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 307, column: 7)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 306, column: 5)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 305, column: 3)
!4514 = !DILocation(line: 0, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 307, column: 7)
!4516 = !DILocation(line: 0, scope: !4509)
!4517 = !DILocation(line: 0, scope: !4501)
!4518 = !DILocation(line: 305, column: 3, scope: !4513)
!4519 = !DILocation(line: 307, column: 7, scope: !4511)
!4520 = !DILocation(line: 307, column: 7, scope: !4515)
!4521 = !DILocation(line: 309, column: 16, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 309, column: 16)
!4523 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 308, column: 9)
!4524 = !DILocation(line: 309, column: 19, scope: !4522)
!4525 = !DILocation(line: 309, column: 25, scope: !4522)
!4526 = !DILocation(line: 309, column: 16, scope: !4523)
!4527 = !DILocation(line: 310, column: 23, scope: !4522)
!4528 = !DILocation(line: 310, column: 14, scope: !4522)
!4529 = distinct !{!4529, !4519, !4530}
!4530 = !DILocation(line: 311, column: 9, scope: !4511)
!4531 = distinct !{!4531, !4508, !4532}
!4532 = !DILocation(line: 312, column: 5, scope: !4509)
!4533 = !DILocation(line: 313, column: 1, scope: !4501)
!4534 = distinct !DISubprogram(name: "set_bb_counts", scope: !3, file: !3, line: 378, type: !1820, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4535)
!4535 = !{!4536}
!4536 = !DILocalVariable(name: "bb", scope: !4534, file: !3, line: 380, type: !430)
!4537 = !DILocation(line: 381, column: 3, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 381, column: 3)
!4539 = !DILocation(line: 0, scope: !4538)
!4540 = !DILocation(line: 0, scope: !4534)
!4541 = !DILocation(line: 381, column: 3, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 381, column: 3)
!4543 = !DILocation(line: 383, column: 40, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 382, column: 5)
!4545 = !DILocation(line: 383, column: 19, scope: !4544)
!4546 = !DILocation(line: 383, column: 11, scope: !4544)
!4547 = !DILocation(line: 383, column: 17, scope: !4544)
!4548 = !DILocation(line: 384, column: 7, scope: !4544)
!4549 = distinct !{!4549, !4537, !4550}
!4550 = !DILocation(line: 385, column: 5, scope: !4538)
!4551 = !DILocation(line: 386, column: 1, scope: !4534)
!4552 = distinct !DISubprogram(name: "is_edge_inconsistent", scope: !3, file: !3, line: 271, type: !4553, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4555)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!402, !436}
!4555 = !{!4556, !4557, !4558}
!4556 = !DILocalVariable(name: "edges", arg: 1, scope: !4552, file: !3, line: 271, type: !436)
!4557 = !DILocalVariable(name: "e", scope: !4552, file: !3, line: 273, type: !448)
!4558 = !DILocalVariable(name: "ei", scope: !4552, file: !3, line: 274, type: !1921)
!4559 = !DILocation(line: 0, scope: !4552)
!4560 = !DILocation(line: 273, column: 3, scope: !4552)
!4561 = !DILocation(line: 274, column: 3, scope: !4552)
!4562 = !DILocation(line: 275, column: 3, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 275, column: 3)
!4564 = !DILocation(line: 0, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 275, column: 3)
!4566 = !DILocation(line: 275, column: 3, scope: !4565)
!4567 = !DILocation(line: 277, column: 12, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 277, column: 11)
!4569 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 276, column: 5)
!4570 = !DILocation(line: 277, column: 27, scope: !4568)
!4571 = !DILocation(line: 277, column: 11, scope: !4569)
!4572 = !DILocation(line: 279, column: 18, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 279, column: 15)
!4574 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 278, column: 9)
!4575 = !DILocation(line: 279, column: 24, scope: !4573)
!4576 = !DILocation(line: 280, column: 8, scope: !4573)
!4577 = !DILocation(line: 280, column: 17, scope: !4573)
!4578 = !DILocation(line: 280, column: 23, scope: !4573)
!4579 = !DILocation(line: 281, column: 12, scope: !4573)
!4580 = !DILocation(line: 281, column: 43, scope: !4573)
!4581 = !DILocation(line: 281, column: 16, scope: !4573)
!4582 = !DILocation(line: 279, column: 15, scope: !4574)
!4583 = !DILocation(line: 283, column: 12, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 283, column: 12)
!4585 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 282, column: 6)
!4586 = !DILocation(line: 283, column: 12, scope: !4585)
!4587 = !DILocation(line: 287, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 284, column: 3)
!4589 = !DILocation(line: 287, column: 10, scope: !4588)
!4590 = !DILocation(line: 287, column: 15, scope: !4588)
!4591 = !DILocation(line: 287, column: 25, scope: !4588)
!4592 = !DILocation(line: 287, column: 31, scope: !4588)
!4593 = !DILocation(line: 287, column: 41, scope: !4588)
!4594 = !DILocation(line: 285, column: 5, scope: !4588)
!4595 = !DILocation(line: 288, column: 14, scope: !4588)
!4596 = !DILocation(line: 288, column: 17, scope: !4588)
!4597 = !DILocation(line: 288, column: 22, scope: !4588)
!4598 = !DILocation(line: 288, column: 5, scope: !4588)
!4599 = !DILocation(line: 289, column: 14, scope: !4588)
!4600 = !DILocation(line: 289, column: 17, scope: !4588)
!4601 = !DILocation(line: 289, column: 23, scope: !4588)
!4602 = !DILocation(line: 289, column: 5, scope: !4588)
!4603 = !DILocation(line: 290, column: 3, scope: !4588)
!4604 = distinct !{!4604, !4562, !4605}
!4605 = !DILocation(line: 294, column: 5, scope: !4563)
!4606 = !DILocation(line: 296, column: 1, scope: !4552)
!4607 = distinct !DISubprogram(name: "VEC_histogram_value_base_length", scope: !391, file: !391, line: 68, type: !4608, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4612)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!7, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2442)
!4612 = !{!4613}
!4613 = !DILocalVariable(name: "vec_", arg: 1, scope: !4607, file: !391, line: 68, type: !4610)
!4614 = !DILocation(line: 0, scope: !4607)
!4615 = !DILocation(line: 68, column: 1, scope: !4607)
!4616 = distinct !DISubprogram(name: "VEC_histogram_value_base_index", scope: !391, file: !391, line: 68, type: !4617, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!1830, !4610, !7}
!4619 = !{!4620, !4621}
!4620 = !DILocalVariable(name: "vec_", arg: 1, scope: !4616, file: !391, line: 68, type: !4610)
!4621 = !DILocalVariable(name: "ix_", arg: 2, scope: !4616, file: !391, line: 68, type: !7)
!4622 = !DILocation(line: 0, scope: !4616)
!4623 = !DILocation(line: 68, column: 1, scope: !4616)
!4624 = distinct !DISubprogram(name: "union_groups", scope: !3, file: !3, line: 1229, type: !4625, scopeLine: 1230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4627)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{null, !430, !430}
!4627 = !{!4628, !4629, !4630, !4631}
!4628 = !DILocalVariable(name: "bb1", arg: 1, scope: !4624, file: !3, line: 1229, type: !430)
!4629 = !DILocalVariable(name: "bb2", arg: 2, scope: !4624, file: !3, line: 1229, type: !430)
!4630 = !DILocalVariable(name: "bb1g", scope: !4624, file: !3, line: 1231, type: !430)
!4631 = !DILocalVariable(name: "bb2g", scope: !4624, file: !3, line: 1232, type: !430)
!4632 = !DILocation(line: 0, scope: !4624)
!4633 = !DILocation(line: 1231, column: 22, scope: !4624)
!4634 = !DILocation(line: 1232, column: 22, scope: !4624)
!4635 = !DILocation(line: 1236, column: 3, scope: !4624)
!4636 = !DILocation(line: 1238, column: 9, scope: !4624)
!4637 = !DILocation(line: 1238, column: 13, scope: !4624)
!4638 = !DILocation(line: 1239, column: 1, scope: !4624)
!4639 = distinct !DISubprogram(name: "find_group", scope: !3, file: !3, line: 1211, type: !4640, scopeLine: 1212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4642)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!430, !430}
!4642 = !{!4643, !4644, !4645}
!4643 = !DILocalVariable(name: "bb", arg: 1, scope: !4639, file: !3, line: 1211, type: !430)
!4644 = !DILocalVariable(name: "group", scope: !4639, file: !3, line: 1213, type: !430)
!4645 = !DILocalVariable(name: "bb1", scope: !4639, file: !3, line: 1213, type: !430)
!4646 = !DILocation(line: 0, scope: !4639)
!4647 = !DILocation(line: 1215, column: 3, scope: !4639)
!4648 = !DILocation(line: 1215, column: 31, scope: !4639)
!4649 = !DILocation(line: 1215, column: 35, scope: !4639)
!4650 = !DILocation(line: 1219, column: 3, scope: !4639)
!4651 = distinct !{!4651, !4647, !4652}
!4652 = !DILocation(line: 1216, column: 34, scope: !4639)
!4653 = !DILocation(line: 1219, column: 28, scope: !4639)
!4654 = !DILocation(line: 1219, column: 32, scope: !4639)
!4655 = !DILocation(line: 1222, column: 15, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 1220, column: 5)
!4657 = distinct !{!4657, !4650, !4658}
!4658 = !DILocation(line: 1224, column: 5, scope: !4639)
!4659 = !DILocation(line: 1225, column: 3, scope: !4639)
