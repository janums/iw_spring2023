; ModuleID = 'tree-profile.bc'
source_filename = "tree-profile.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.profile_hooks = type { void ()*, void (i32, %struct.edge_def*)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)*, void (%struct.histogram_value_t*, i32, i32)* }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
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
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%struct.anon = type { %union.tree_node*, %union.gimple_statement_d*, i64*, %struct.histogram_value_t* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type opaque
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"tree_profile\00", align 1
@pass_tree_profile = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8 ()* @do_tree_profiling, i32 ()* @tree_profiling, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 138, i32 12, i32 0, i32 0, i32 0, i32 17 } }, align 8, !dbg !0
@tree_profile_hooks = dso_local local_unnamed_addr global %struct.profile_hooks { void ()* @tree_init_edge_profiler, void (i32, %struct.edge_def*)* @tree_gen_edge_profiler, void (%struct.histogram_value_t*, i32, i32)* @tree_gen_interval_profiler, void (%struct.histogram_value_t*, i32, i32)* @tree_gen_pow2_profiler, void (%struct.histogram_value_t*, i32, i32)* @tree_gen_one_value_profiler, void (%struct.histogram_value_t*, i32, i32)* @tree_gen_const_delta_profiler, void (%struct.histogram_value_t*, i32, i32)* @tree_gen_ic_profiler, void (%struct.histogram_value_t*, i32, i32)* @tree_gen_average_profiler, void (%struct.histogram_value_t*, i32, i32)* @tree_gen_ior_profiler }, align 8, !dbg !1932
@ptr_void = internal global %union.tree_node* null, align 8, !dbg !2012
@ic_gcov_type_ptr_var = internal global %union.tree_node* null, align 8, !dbg !2010
@ic_void_ptr_var = internal global %union.tree_node* null, align 8, !dbg !2008
@tree_ior_profiler_fn = internal global %union.tree_node* null, align 8, !dbg !2006
@tree_average_profiler_fn = internal global %union.tree_node* null, align 8, !dbg !2004
@tree_indirect_call_profiler_fn = internal global %union.tree_node* null, align 8, !dbg !2002
@tree_one_value_profiler_fn = internal global %union.tree_node* null, align 8, !dbg !2000
@tree_pow2_profiler_fn = internal global %union.tree_node* null, align 8, !dbg !1998
@tree_interval_profiler_fn = internal global %union.tree_node* null, align 8, !dbg !1996
@gcov_type_tmp_var = internal global %union.tree_node* null, align 8, !dbg !1994
@gcov_type_node = internal global %union.tree_node* null, align 8, !dbg !1992
@gt_ggc_r_gt_tree_profile_h = dso_local local_unnamed_addr constant [12 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%union.tree_node** @ptr_void to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @ic_gcov_type_ptr_var to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @ic_void_ptr_var to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @tree_ior_profiler_fn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @tree_average_profiler_fn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @tree_indirect_call_profiler_fn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @tree_one_value_profiler_fn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @tree_pow2_profiler_fn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @tree_interval_profiler_fn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @gcov_type_tmp_var to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @gcov_type_node to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1976
@profile_arc_flag = external dso_local local_unnamed_addr global i32, align 4
@flag_test_coverage = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@cgraph_state = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@flag_profile_values = external dso_local local_unnamed_addr global i32, align 4
@flag_value_profile_transformations = external dso_local local_unnamed_addr global i32, align 4
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"tree-profile.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@.str.4 = private unnamed_addr constant [25 x i8] c"__gcov_interval_profiler\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"__gcov_pow2_profiler\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"__gcov_one_value_profiler\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_profiler\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"__gcov_average_profiler\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"__gcov_ior_profiler\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"__gcov_indirect_call_callee\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_counters\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"PROF_edge_counter\00", align 1
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2044 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2057, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2058, metadata !DIExpression()), !dbg !2059
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2060
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2061
  ret i32 %call, !dbg !2062
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2063 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2067
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2068
  ret i32 %call, !dbg !2069
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2070 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2125, metadata !DIExpression()), !dbg !2126
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2127
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2127
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2127
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2127
  %cmp = icmp uge i8* %0, %1, !dbg !2127
  %conv1 = zext i1 %cmp to i64, !dbg !2127
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2127
  %tobool = icmp eq i64 %expval, 0, !dbg !2127
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2127

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2127
  br label %cond.end, !dbg !2127

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2127
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2127
  %2 = load i8, i8* %0, align 1, !dbg !2127
  %conv3 = zext i8 %2 to i32, !dbg !2127
  br label %cond.end, !dbg !2127

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2127
  ret i32 %cond, !dbg !2128
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2131, metadata !DIExpression()), !dbg !2132
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2133
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2133
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2133
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2133
  %cmp = icmp uge i8* %0, %1, !dbg !2133
  %conv1 = zext i1 %cmp to i64, !dbg !2133
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2133
  %tobool = icmp eq i64 %expval, 0, !dbg !2133
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2133

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2133
  br label %cond.end, !dbg !2133

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2133
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2133
  %2 = load i8, i8* %0, align 1, !dbg !2133
  %conv3 = zext i8 %2 to i32, !dbg !2133
  br label %cond.end, !dbg !2133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2133
  ret i32 %cond, !dbg !2134
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2135 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2136
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2136
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2136
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2136
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2136
  %cmp = icmp uge i8* %1, %2, !dbg !2136
  %conv1 = zext i1 %cmp to i64, !dbg !2136
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2136
  %tobool = icmp eq i64 %expval, 0, !dbg !2136
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2136

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2136
  br label %cond.end, !dbg !2136

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2136
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2136
  %3 = load i8, i8* %1, align 1, !dbg !2136
  %conv3 = zext i8 %3 to i32, !dbg !2136
  br label %cond.end, !dbg !2136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2136
  ret i32 %cond, !dbg !2137
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2138 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2142, metadata !DIExpression()), !dbg !2143
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2144
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2145
  ret i32 %call, !dbg !2146
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2151, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2152, metadata !DIExpression()), !dbg !2153
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2154
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2154
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2154
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2154
  %cmp = icmp uge i8* %0, %1, !dbg !2154
  %conv1 = zext i1 %cmp to i64, !dbg !2154
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2154
  %tobool = icmp eq i64 %expval, 0, !dbg !2154
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2154

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2154
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2154
  br label %cond.end, !dbg !2154

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2154
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2154
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2154
  store i8 %conv2, i8* %0, align 1, !dbg !2154
  %conv6 = and i32 %__c, 255, !dbg !2154
  br label %cond.end, !dbg !2154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2154
  ret i32 %cond, !dbg !2155
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2156 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2158, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2159, metadata !DIExpression()), !dbg !2160
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2161
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2161
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2161
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2161
  %cmp = icmp uge i8* %0, %1, !dbg !2161
  %conv1 = zext i1 %cmp to i64, !dbg !2161
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2161
  %tobool = icmp eq i64 %expval, 0, !dbg !2161
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2161

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2161
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2161
  br label %cond.end, !dbg !2161

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2161
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2161
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2161
  store i8 %conv2, i8* %0, align 1, !dbg !2161
  %conv6 = and i32 %__c, 255, !dbg !2161
  br label %cond.end, !dbg !2161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2161
  ret i32 %cond, !dbg !2162
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2165, metadata !DIExpression()), !dbg !2166
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2167
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2167
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2167
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2167
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2167
  %cmp = icmp uge i8* %1, %2, !dbg !2167
  %conv1 = zext i1 %cmp to i64, !dbg !2167
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2167
  %tobool = icmp eq i64 %expval, 0, !dbg !2167
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2167

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2167
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2167
  br label %cond.end, !dbg !2167

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2167
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2167
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2167
  store i8 %conv4, i8* %1, align 1, !dbg !2167
  %conv6 = and i32 %__c, 255, !dbg !2167
  br label %cond.end, !dbg !2167

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2167
  ret i32 %cond, !dbg !2168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2176, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2177, metadata !DIExpression()), !dbg !2178
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2179
  ret i64 %call, !dbg !2180
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2181 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2183, metadata !DIExpression()), !dbg !2184
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2185
  %0 = load i32, i32* %_flags, align 8, !dbg !2185
  %and = lshr i32 %0, 4, !dbg !2185
  %and.lobit = and i32 %and, 1, !dbg !2185
  ret i32 %and.lobit, !dbg !2186
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2189, metadata !DIExpression()), !dbg !2190
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2191
  %0 = load i32, i32* %_flags, align 8, !dbg !2191
  %and = lshr i32 %0, 5, !dbg !2191
  %and.lobit = and i32 %and, 1, !dbg !2191
  ret i32 %and.lobit, !dbg !2192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2193 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2196, metadata !DIExpression()), !dbg !2197
  %__c.off = add i32 %__c, 128, !dbg !2198
  %0 = icmp ult i32 %__c.off, 384, !dbg !2198
  br i1 %0, label %cond.true, label %cond.end, !dbg !2198

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2199
  %1 = load i32*, i32** %call, align 8, !dbg !2200
  %idxprom = sext i32 %__c to i64, !dbg !2201
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2201
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2201
  br label %cond.end, !dbg !2202

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2202
  ret i32 %cond, !dbg !2203
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2204 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2206, metadata !DIExpression()), !dbg !2207
  %__c.off = add i32 %__c, 128, !dbg !2208
  %0 = icmp ult i32 %__c.off, 384, !dbg !2208
  br i1 %0, label %cond.true, label %cond.end, !dbg !2208

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2209
  %1 = load i32*, i32** %call, align 8, !dbg !2210
  %idxprom = sext i32 %__c to i64, !dbg !2211
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2211
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2211
  br label %cond.end, !dbg !2212

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2212
  ret i32 %cond, !dbg !2213
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2214 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2219, metadata !DIExpression()), !dbg !2220
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2221
  %conv = trunc i64 %call to i32, !dbg !2222
  ret i32 %conv, !dbg !2223
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2224 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2228, metadata !DIExpression()), !dbg !2229
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2230
  ret i64 %call, !dbg !2231
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2232 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2237, metadata !DIExpression()), !dbg !2238
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2239
  ret i64 %call, !dbg !2240
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2241 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2247, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2248, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2249, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2250, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2251, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 0, metadata !2252, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2253, metadata !DIExpression()), !dbg !2257
  br label %while.cond, !dbg !2258

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2259
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2257
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2253, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2252, metadata !DIExpression()), !dbg !2257
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2260
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2258

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2261
  %div = lshr i64 %add, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %div, metadata !2254, metadata !DIExpression()), !dbg !2257
  %mul = mul i64 %div, %__size, !dbg !2264
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2255, metadata !DIExpression()), !dbg !2257
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %call, metadata !2256, metadata !DIExpression()), !dbg !2257
  %cmp1 = icmp slt i32 %call, 0, !dbg !2267
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2269

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2270
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2272

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2252, metadata !DIExpression()), !dbg !2257
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2257
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2257
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2253, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2252, metadata !DIExpression()), !dbg !2257
  br label %while.cond, !dbg !2258, !llvm.loop !2274

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2257
  ret i8* %retval.0, !dbg !2276
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2277 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2283, metadata !DIExpression()), !dbg !2284
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2285
  ret double %call, !dbg !2286
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2287 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2296, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 %base, metadata !2298, metadata !DIExpression()), !dbg !2299
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2300
  ret i64 %call, !dbg !2301
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2302 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %base, metadata !2310, metadata !DIExpression()), !dbg !2311
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2312
  ret i64 %call, !dbg !2313
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2314 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %base, metadata !2327, metadata !DIExpression()), !dbg !2328
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2329
  ret i64 %call, !dbg !2330
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2331 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2335, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %base, metadata !2337, metadata !DIExpression()), !dbg !2338
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2339
  ret i64 %call, !dbg !2340
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2341 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2382, metadata !DIExpression()), !dbg !2383
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2384
  ret i32 %call, !dbg !2385
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2386 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2389, metadata !DIExpression()), !dbg !2390
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2391
  ret i32 %call, !dbg !2392
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2393 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2398, metadata !DIExpression()), !dbg !2399
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2400
  ret i32 %call, !dbg !2401
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2402 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2409, metadata !DIExpression()), !dbg !2410
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2411
  ret i32 %call, !dbg !2412
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2413 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2419, metadata !DIExpression()), !dbg !2420
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2419, metadata !DIExpression(DW_OP_deref)), !dbg !2420
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2421
  ret i32 %call, !dbg !2422
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2423 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2427, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2429, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2430, metadata !DIExpression(DW_OP_deref)), !dbg !2431
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2432
  ret i32 %call, !dbg !2433
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2434 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2459, metadata !DIExpression()), !dbg !2460
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2461
  ret i32 %call, !dbg !2462
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2463 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2466, metadata !DIExpression()), !dbg !2467
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2468
  ret i32 %call, !dbg !2469
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2470 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2475, metadata !DIExpression()), !dbg !2476
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2477
  ret i32 %call, !dbg !2478
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2479 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2483, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2486, metadata !DIExpression()), !dbg !2487
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2488
  ret i32 %call, !dbg !2489
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @do_tree_profiling() #5 !dbg !2490 {
entry:
  %0 = load i32, i32* @profile_arc_flag, align 4, !dbg !2491
  %1 = load i32, i32* @flag_test_coverage, align 4, !dbg !2493
  %2 = or i32 %0, %1, !dbg !2494
  %3 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2495
  %4 = or i32 %2, %3, !dbg !2494
  %5 = icmp eq i32 %4, 0, !dbg !2494
  br i1 %5, label %return, label %if.then, !dbg !2494

if.then:                                          ; preds = %entry
  tail call void @tree_register_profile_hooks() #6, !dbg !2496
  tail call void @gimple_register_value_prof_hooks() #6, !dbg !2498
  br label %return, !dbg !2499

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %entry ], !dbg !2500
  ret i8 %retval.0, !dbg !2501
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_profiling() #5 !dbg !2502 {
entry:
  %0 = load i32, i32* @cgraph_state, align 4, !dbg !2503
  %cmp = icmp eq i32 %0, 4, !dbg !2505
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !2506

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2507
  %after_tree_profile = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 20, !dbg !2508
  %bf.load = load i32, i32* %after_tree_profile, align 8, !dbg !2508
  %bf.clear = and i32 %bf.load, 268435456, !dbg !2508
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2507
  br i1 %tobool, label %if.end, label %return, !dbg !2509

if.end:                                           ; preds = %lor.lhs.false
  store %union.tree_node* null, %union.tree_node** @gcov_type_tmp_var, align 8, !dbg !2510
  tail call void @branch_prob() #6, !dbg !2511
  %2 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2512
  %tobool1 = icmp eq i32 %2, 0, !dbg !2512
  %3 = load i32, i32* @flag_profile_values, align 4, !dbg !2514
  %tobool2 = icmp ne i32 %3, 0, !dbg !2514
  %or.cond = and i1 %tobool1, %tobool2, !dbg !2515
  br i1 %or.cond, label %if.then3, label %if.end4, !dbg !2515

if.then3:                                         ; preds = %if.end
  tail call fastcc void @tree_gen_ic_func_profiler() #7, !dbg !2516
  %.pre = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2517
  %.pre3 = load i32, i32* @flag_profile_values, align 4, !dbg !2519
  br label %if.end4, !dbg !2516

if.end4:                                          ; preds = %if.end, %if.then3
  %4 = phi i32 [ %3, %if.end ], [ %.pre3, %if.then3 ], !dbg !2519
  %5 = phi i32 [ %2, %if.end ], [ %.pre, %if.then3 ], !dbg !2517
  %tobool5 = icmp ne i32 %5, 0, !dbg !2517
  %tobool7 = icmp ne i32 %4, 0, !dbg !2519
  %or.cond1 = and i1 %tobool5, %tobool7, !dbg !2520
  %6 = load i32, i32* @flag_value_profile_transformations, align 4, !dbg !2521
  %tobool9 = icmp ne i32 %6, 0, !dbg !2521
  %or.cond2 = and i1 %or.cond1, %tobool9, !dbg !2520
  br i1 %or.cond2, label %if.then10, label %if.end11, !dbg !2520

if.then10:                                        ; preds = %if.end4
  %call = tail call zeroext i8 @value_profile_transformations() #6, !dbg !2522
  br label %if.end11, !dbg !2522

if.end11:                                         ; preds = %if.then10, %if.end4
  tail call void @free_dominance_info(i32 1) #6, !dbg !2523
  tail call void @free_dominance_info(i32 2) #6, !dbg !2524
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2525
  %after_tree_profile13 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 20, !dbg !2526
  %bf.load14 = load i32, i32* %after_tree_profile13, align 8, !dbg !2527
  %bf.set = or i32 %bf.load14, 268435456, !dbg !2527
  store i32 %bf.set, i32* %after_tree_profile13, align 8, !dbg !2527
  br label %return, !dbg !2528

return:                                           ; preds = %lor.lhs.false, %entry, %if.end11
  ret i32 0, !dbg !2529
}

; Function Attrs: nounwind uwtable
define internal void @tree_init_edge_profiler() #5 !dbg !2530 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2538
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !2538
  br i1 %tobool, label %if.then, label %if.end, !dbg !2540

if.then:                                          ; preds = %entry
  %call = tail call %union.tree_node* @get_gcov_type() #6, !dbg !2541
  store %union.tree_node* %call, %union.tree_node** @gcov_type_node, align 8, !dbg !2543
  %call1 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call) #6, !dbg !2544
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2535, metadata !DIExpression()), !dbg !2545
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2546
  %2 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2547
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2548
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 6), align 16, !dbg !2549
  %call2 = tail call %union.tree_node* (%union.tree_node*, ...) @build_function_type_list(%union.tree_node* %1, %union.tree_node* %call1, %union.tree_node* %2, %union.tree_node* %3, %union.tree_node* %4, %union.tree_node* null) #6, !dbg !2550
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2532, metadata !DIExpression()), !dbg !2545
  %call3 = tail call %union.tree_node* @build_fn_decl(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %union.tree_node* %call2) #6, !dbg !2551
  store %union.tree_node* %call3, %union.tree_node** @tree_interval_profiler_fn, align 8, !dbg !2552
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2553
  %6 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2554
  %call4 = tail call %union.tree_node* (%union.tree_node*, ...) @build_function_type_list(%union.tree_node* %5, %union.tree_node* %call1, %union.tree_node* %6, %union.tree_node* null) #6, !dbg !2555
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2533, metadata !DIExpression()), !dbg !2545
  %call5 = tail call %union.tree_node* @build_fn_decl(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %union.tree_node* %call4) #6, !dbg !2556
  store %union.tree_node* %call5, %union.tree_node** @tree_pow2_profiler_fn, align 8, !dbg !2557
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2558
  %8 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2559
  %call6 = tail call %union.tree_node* (%union.tree_node*, ...) @build_function_type_list(%union.tree_node* %7, %union.tree_node* %call1, %union.tree_node* %8, %union.tree_node* null) #6, !dbg !2560
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2534, metadata !DIExpression()), !dbg !2545
  %call7 = tail call %union.tree_node* @build_fn_decl(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), %union.tree_node* %call6) #6, !dbg !2561
  store %union.tree_node* %call7, %union.tree_node** @tree_one_value_profiler_fn, align 8, !dbg !2562
  tail call fastcc void @tree_init_ic_make_global_vars() #7, !dbg !2563
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2564
  %10 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2565
  %11 = load %union.tree_node*, %union.tree_node** @ptr_void, align 8, !dbg !2566
  %call8 = tail call %union.tree_node* (%union.tree_node*, ...) @build_function_type_list(%union.tree_node* %9, %union.tree_node* %call1, %union.tree_node* %10, %union.tree_node* %11, %union.tree_node* %11, %union.tree_node* null) #6, !dbg !2567
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !2536, metadata !DIExpression()), !dbg !2545
  %call9 = tail call %union.tree_node* @build_fn_decl(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %call8) #6, !dbg !2568
  store %union.tree_node* %call9, %union.tree_node** @tree_indirect_call_profiler_fn, align 8, !dbg !2569
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2570
  %13 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2571
  %call10 = tail call %union.tree_node* (%union.tree_node*, ...) @build_function_type_list(%union.tree_node* %12, %union.tree_node* %call1, %union.tree_node* %13, %union.tree_node* null) #6, !dbg !2572
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !2537, metadata !DIExpression()), !dbg !2545
  %call11 = tail call %union.tree_node* @build_fn_decl(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), %union.tree_node* %call10) #6, !dbg !2573
  store %union.tree_node* %call11, %union.tree_node** @tree_average_profiler_fn, align 8, !dbg !2574
  %call12 = tail call %union.tree_node* @build_fn_decl(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %union.tree_node* %call10) #6, !dbg !2575
  store %union.tree_node* %call12, %union.tree_node** @tree_ior_profiler_fn, align 8, !dbg !2576
  %14 = load %union.tree_node*, %union.tree_node** @tree_interval_profiler_fn, align 8, !dbg !2577
  %call13 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %14) #6, !dbg !2577
  %15 = load %union.tree_node*, %union.tree_node** @tree_pow2_profiler_fn, align 8, !dbg !2578
  %call14 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %15) #6, !dbg !2578
  %16 = load %union.tree_node*, %union.tree_node** @tree_one_value_profiler_fn, align 8, !dbg !2579
  %call15 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %16) #6, !dbg !2579
  %17 = load %union.tree_node*, %union.tree_node** @tree_indirect_call_profiler_fn, align 8, !dbg !2580
  %call16 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %17) #6, !dbg !2580
  %18 = load %union.tree_node*, %union.tree_node** @tree_average_profiler_fn, align 8, !dbg !2581
  %call17 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %18) #6, !dbg !2581
  %19 = load %union.tree_node*, %union.tree_node** @tree_ior_profiler_fn, align 8, !dbg !2582
  %call18 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %19) #6, !dbg !2582
  br label %if.end, !dbg !2583

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2584
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_edge_profiler(i32 %edgeno, %struct.edge_def* %e) #5 !dbg !2585 {
entry:
  call void @llvm.dbg.value(metadata i32 %edgeno, metadata !2587, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2588, metadata !DIExpression()), !dbg !2594
  %0 = load %union.tree_node*, %union.tree_node** @gcov_type_tmp_var, align 8, !dbg !2595
  %cmp = icmp eq %union.tree_node* %0, null, !dbg !2597
  br i1 %cmp, label %if.then, label %if.end, !dbg !2598

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2599
  %call = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2600
  store %union.tree_node* %call, %union.tree_node** @gcov_type_tmp_var, align 8, !dbg !2601
  br label %if.end, !dbg !2602

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call %union.tree_node* @tree_coverage_counter_ref(i32 0, i32 %edgeno) #6, !dbg !2603
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2589, metadata !DIExpression()), !dbg !2594
  %2 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !2604
  %call2 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %2, i64 1) #6, !dbg !2605
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2590, metadata !DIExpression()), !dbg !2594
  %3 = load %union.tree_node*, %union.tree_node** @gcov_type_tmp_var, align 8, !dbg !2606
  %call3 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %3, %union.tree_node* %call1) #6, !dbg !2606
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !2591, metadata !DIExpression()), !dbg !2594
  %4 = load %union.tree_node*, %union.tree_node** @gcov_type_tmp_var, align 8, !dbg !2607
  %call4 = tail call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 63, %union.tree_node* %4, %union.tree_node* %4, %union.tree_node* %call2) #6, !dbg !2607
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !2592, metadata !DIExpression()), !dbg !2594
  %call5 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %call1) #6, !dbg !2608
  %5 = load %union.tree_node*, %union.tree_node** @gcov_type_tmp_var, align 8, !dbg !2608
  %call6 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call5, %union.tree_node* %5) #6, !dbg !2608
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call6, metadata !2593, metadata !DIExpression()), !dbg !2594
  tail call void @gsi_insert_on_edge(%struct.edge_def* %e, %union.gimple_statement_d* %call3) #6, !dbg !2609
  tail call void @gsi_insert_on_edge(%struct.edge_def* %e, %union.gimple_statement_d* %call4) #6, !dbg !2610
  tail call void @gsi_insert_on_edge(%struct.edge_def* %e, %union.gimple_statement_d* %call6) #6, !dbg !2611
  ret void, !dbg !2612
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_interval_profiler(%struct.histogram_value_t* %value, i32 %tag, i32 %base) #5 !dbg !2613 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !2615, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2616, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %base, metadata !2617, metadata !DIExpression()), !dbg !2632
  %stmt1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 1, !dbg !2633
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt1, align 8, !dbg !2633
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !2618, metadata !DIExpression()), !dbg !2632
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2634
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2634
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2632
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %0) #6, !dbg !2635
  %call = call %union.tree_node* @tree_coverage_counter_ref(i32 %tag, i32 %base) #6, !dbg !2636
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2626, metadata !DIExpression()), !dbg !2632
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2637
  %int_start = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 3, i32 0, i32 0, !dbg !2638
  %3 = load i32, i32* %int_start, align 8, !dbg !2638
  %conv = sext i32 %3 to i64, !dbg !2639
  %call3 = call %union.tree_node* @build_int_cst_type(%union.tree_node* %2, i64 %conv) #6, !dbg !2640
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2630, metadata !DIExpression()), !dbg !2632
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 6), align 16, !dbg !2641
  %steps6 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 3, i32 0, i32 1, !dbg !2642
  %5 = load i32, i32* %steps6, align 4, !dbg !2642
  %conv7 = zext i32 %5 to i64, !dbg !2643
  %call8 = call %union.tree_node* @build_int_cst_type(%union.tree_node* %4, i64 %conv7) #6, !dbg !2644
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !2631, metadata !DIExpression()), !dbg !2632
  %6 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2645
  %call9 = call %union.tree_node* @build_addr(%union.tree_node* %call, %union.tree_node* %6) #6, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2632
  %call10 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call9, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2647
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !2627, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2632
  %call11 = call fastcc %union.tree_node* @prepare_instrumented_value(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.histogram_value_t* %value) #7, !dbg !2648
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !2629, metadata !DIExpression()), !dbg !2632
  %7 = load %union.tree_node*, %union.tree_node** @tree_interval_profiler_fn, align 8, !dbg !2649
  %call12 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %7, i32 4, %union.tree_node* %call10, %union.tree_node* %call11, %union.tree_node* %call3, %union.tree_node* %call8) #6, !dbg !2650
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2628, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2632
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call12, i32 0) #6, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2632
  call fastcc void @add_abnormal_goto_call_edges(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2652
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2653
  ret void, !dbg !2653
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_pow2_profiler(%struct.histogram_value_t* %value, i32 %tag, i32 %base) #5 !dbg !2654 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !2656, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2657, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %base, metadata !2658, metadata !DIExpression()), !dbg !2664
  %stmt1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 1, !dbg !2665
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt1, align 8, !dbg !2665
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !2659, metadata !DIExpression()), !dbg !2664
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2666
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2660, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %0) #6, !dbg !2667
  %call = call %union.tree_node* @tree_coverage_counter_addr(i32 %tag, i32 %base) #6, !dbg !2668
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2661, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2660, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  %call3 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2669
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2661, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2660, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  %call4 = call fastcc %union.tree_node* @prepare_instrumented_value(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.histogram_value_t* %value) #7, !dbg !2670
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2663, metadata !DIExpression()), !dbg !2664
  %2 = load %union.tree_node*, %union.tree_node** @tree_pow2_profiler_fn, align 8, !dbg !2671
  %call5 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %2, i32 2, %union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !2672
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2660, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call5, i32 0) #6, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2660, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  call fastcc void @add_abnormal_goto_call_edges(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2675
  ret void, !dbg !2675
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_one_value_profiler(%struct.histogram_value_t* %value, i32 %tag, i32 %base) #5 !dbg !2676 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !2678, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2679, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %base, metadata !2680, metadata !DIExpression()), !dbg !2686
  %stmt1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 1, !dbg !2687
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt1, align 8, !dbg !2687
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !2681, metadata !DIExpression()), !dbg !2686
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2688
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2682, metadata !DIExpression(DW_OP_deref)), !dbg !2686
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %0) #6, !dbg !2689
  %call = call %union.tree_node* @tree_coverage_counter_addr(i32 %tag, i32 %base) #6, !dbg !2690
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2683, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2682, metadata !DIExpression(DW_OP_deref)), !dbg !2686
  %call3 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2691
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2683, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2682, metadata !DIExpression(DW_OP_deref)), !dbg !2686
  %call4 = call fastcc %union.tree_node* @prepare_instrumented_value(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.histogram_value_t* %value) #7, !dbg !2692
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2685, metadata !DIExpression()), !dbg !2686
  %2 = load %union.tree_node*, %union.tree_node** @tree_one_value_profiler_fn, align 8, !dbg !2693
  %call5 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %2, i32 2, %union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !2694
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2682, metadata !DIExpression(DW_OP_deref)), !dbg !2686
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call5, i32 0) #6, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2682, metadata !DIExpression(DW_OP_deref)), !dbg !2686
  call fastcc void @add_abnormal_goto_call_edges(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2697
  ret void, !dbg !2697
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_const_delta_profiler(%struct.histogram_value_t* %value, i32 %tag, i32 %base) #5 !dbg !2698 {
entry:
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !2700, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2701, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 %base, metadata !2702, metadata !DIExpression()), !dbg !2703
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2704
  ret void, !dbg !2705
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_ic_profiler(%struct.histogram_value_t* %value, i32 %tag, i32 %base) #5 !dbg !2706 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !2708, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2709, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %base, metadata !2710, metadata !DIExpression()), !dbg !2718
  %stmt4 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 1, !dbg !2719
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt4, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !2715, metadata !DIExpression()), !dbg !2718
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2720
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2720
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2716, metadata !DIExpression(DW_OP_deref)), !dbg !2718
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %0) #6, !dbg !2721
  %call = call %union.tree_node* @tree_coverage_counter_addr(i32 %tag, i32 %base) #6, !dbg !2722
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2716, metadata !DIExpression(DW_OP_deref)), !dbg !2718
  %call5 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2723
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2717, metadata !DIExpression()), !dbg !2718
  %2 = load %union.tree_node*, %union.tree_node** @ptr_void, align 8, !dbg !2724
  %call6 = call %union.tree_node* @create_tmp_var(%union.tree_node* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2725
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2711, metadata !DIExpression()), !dbg !2718
  %3 = load %union.tree_node*, %union.tree_node** @ic_gcov_type_ptr_var, align 8, !dbg !2726
  %call7 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %3, %union.tree_node* %call5) #6, !dbg !2726
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !2712, metadata !DIExpression()), !dbg !2718
  %value9 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 0, !dbg !2727
  %4 = load %union.tree_node*, %union.tree_node** %value9, align 8, !dbg !2727
  %call10 = call %union.tree_node* @unshare_expr(%union.tree_node* %4) #6, !dbg !2727
  %call11 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call6, %union.tree_node* %call10) #6, !dbg !2727
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !2713, metadata !DIExpression()), !dbg !2718
  %5 = load %union.tree_node*, %union.tree_node** @ic_void_ptr_var, align 8, !dbg !2728
  %call12 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %5, %union.tree_node* %call6) #6, !dbg !2728
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2714, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2716, metadata !DIExpression(DW_OP_deref)), !dbg !2718
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call7, i32 1) #6, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2716, metadata !DIExpression(DW_OP_deref)), !dbg !2718
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call11, i32 1) #6, !dbg !2730
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2716, metadata !DIExpression(DW_OP_deref)), !dbg !2718
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call12, i32 1) #6, !dbg !2731
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2732
  ret void, !dbg !2732
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_average_profiler(%struct.histogram_value_t* %value, i32 %tag, i32 %base) #5 !dbg !2733 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !2735, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2736, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %base, metadata !2737, metadata !DIExpression()), !dbg !2743
  %stmt1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 1, !dbg !2744
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt1, align 8, !dbg !2744
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !2738, metadata !DIExpression()), !dbg !2743
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2745
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2745
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2739, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %0) #6, !dbg !2746
  %call = call %union.tree_node* @tree_coverage_counter_addr(i32 %tag, i32 %base) #6, !dbg !2747
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2740, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2739, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  %call3 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2748
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2740, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2739, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  %call4 = call fastcc %union.tree_node* @prepare_instrumented_value(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.histogram_value_t* %value) #7, !dbg !2749
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2742, metadata !DIExpression()), !dbg !2743
  %2 = load %union.tree_node*, %union.tree_node** @tree_average_profiler_fn, align 8, !dbg !2750
  %call5 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %2, i32 2, %union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !2751
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2739, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call5, i32 0) #6, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2739, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  call fastcc void @add_abnormal_goto_call_edges(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2754
  ret void, !dbg !2754
}

; Function Attrs: nounwind uwtable
define internal void @tree_gen_ior_profiler(%struct.histogram_value_t* %value, i32 %tag, i32 %base) #5 !dbg !2755 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !2757, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2758, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %base, metadata !2759, metadata !DIExpression()), !dbg !2765
  %stmt1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 1, !dbg !2766
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt1, align 8, !dbg !2766
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !2760, metadata !DIExpression()), !dbg !2765
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2767
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2761, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %0) #6, !dbg !2768
  %call = call %union.tree_node* @tree_coverage_counter_addr(i32 %tag, i32 %base) #6, !dbg !2769
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2761, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  %call3 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2761, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  %call4 = call fastcc %union.tree_node* @prepare_instrumented_value(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.histogram_value_t* %value) #7, !dbg !2771
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2764, metadata !DIExpression()), !dbg !2765
  %2 = load %union.tree_node*, %union.tree_node** @tree_ior_profiler_fn, align 8, !dbg !2772
  %call5 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %2, i32 2, %union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !2773
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2761, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call5, i32 0) #6, !dbg !2774
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2761, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  call fastcc void @add_abnormal_goto_call_edges(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2775
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2776
  ret void, !dbg !2776
}

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) #2

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) #2

declare dso_local void @tree_register_profile_hooks() local_unnamed_addr #2

declare dso_local void @gimple_register_value_prof_hooks() local_unnamed_addr #2

declare dso_local void @branch_prob() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_gen_ic_func_profiler() unnamed_addr #5 !dbg !2777 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp5 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp29 = alloca %struct.gimple_stmt_iterator, align 8
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3000
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !3001
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !2779, metadata !DIExpression()), !dbg !3002
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3003
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3003
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3004
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !3005
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 27, !dbg !3006
  %bf.load = load i16, i16* %needed, align 4, !dbg !3006
  %bf.clear = and i16 %bf.load, 1, !dbg !3006
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !3008
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3009

if.end:                                           ; preds = %entry
  tail call void @tree_init_edge_profiler() #7, !dbg !3010
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3011
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !3011
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3011
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3011
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3011
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !3011
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3011
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 1, !dbg !3011
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3011
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3011
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !3011
  store i32 %9, i32* %8, align 8, !dbg !3011
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3011
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !3011
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %10, align 8, !dbg !3011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !3011
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3012
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3012
  %14 = bitcast %struct.gimple_stmt_iterator* %tmp5 to i8*, !dbg !3013
  %pid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 26, !dbg !3013
  %15 = bitcast %struct.gimple_stmt_iterator* %tmp29 to i8*, !dbg !3013
  br label %for.cond, !dbg !3011

for.cond:                                         ; preds = %cond.end25, %if.end
  %16 = load i32, i32* %12, align 8, !dbg !3014
  %17 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3014
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2983, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %16, %struct.VEC_edge_gc** %17, %struct.edge_def** nonnull %e) #7, !dbg !3014
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3011
  br i1 %tobool3, label %cleanup.loopexit, label %for.body, !dbg !3011

for.body:                                         ; preds = %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3015
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !2983, metadata !DIExpression()), !dbg !3002
  %call4 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %18) #6, !dbg !3016
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !2984, metadata !DIExpression()), !dbg !3002
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #8, !dbg !3017
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp5, %struct.basic_block_def* %call4) #7, !dbg !3017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %14, i64 24, i1 false), !dbg !3017
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #8, !dbg !3017
  %19 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3018
  %call6 = call %union.tree_node* @build_addr(%union.tree_node* %19, %union.tree_node* %19) #6, !dbg !3019
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2982, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  %call7 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call6, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !3020
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2995, metadata !DIExpression()), !dbg !3002
  %20 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !3021
  %21 = load i32, i32* %pid, align 8, !dbg !3022
  %conv = sext i32 %21 to i64, !dbg !3023
  %call8 = call %union.tree_node* @build_int_cst(%union.tree_node* %20, i64 %conv) #6, !dbg !3024
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !2994, metadata !DIExpression()), !dbg !3002
  %22 = load %union.tree_node*, %union.tree_node** @tree_indirect_call_profiler_fn, align 8, !dbg !3025
  %23 = load %union.tree_node*, %union.tree_node** @ic_gcov_type_ptr_var, align 8, !dbg !3026
  %24 = load %union.tree_node*, %union.tree_node** @ic_void_ptr_var, align 8, !dbg !3027
  %call9 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %22, i32 4, %union.tree_node* %23, %union.tree_node* %call8, %union.tree_node* %call7, %union.tree_node* %24) #6, !dbg !3028
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call9, metadata !2992, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2982, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call9, i32 0) #6, !dbg !3029
  %succs10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call4, i64 0, i32 1, !dbg !3030
  %25 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs10, align 8, !dbg !3030
  %tobool11 = icmp eq %struct.VEC_edge_gc* %25, null, !dbg !3030
  br i1 %tobool11, label %cond.end, label %cond.true, !dbg !3030

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %25, i64 0, i32 0, !dbg !3030
  br label %cond.end, !dbg !3030

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !3030
  %call13 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3030
  %cmp = icmp eq i32 %call13, 1, !dbg !3030
  br i1 %cmp, label %cond.end17, label %cond.true15, !dbg !3030

cond.true15:                                      ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 370, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3030
  br label %cond.end17, !dbg !3030

cond.end17:                                       ; preds = %cond.end, %cond.true15
  %26 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs10, align 8, !dbg !3031
  %tobool20 = icmp eq %struct.VEC_edge_gc* %26, null, !dbg !3031
  br i1 %tobool20, label %cond.end25, label %cond.true21, !dbg !3031

cond.true21:                                      ; preds = %cond.end17
  %base23 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %26, i64 0, i32 0, !dbg !3031
  br label %cond.end25, !dbg !3031

cond.end25:                                       ; preds = %cond.end17, %cond.true21
  %cond26 = phi %struct.VEC_edge_base* [ %base23, %cond.true21 ], [ null, %cond.end17 ], !dbg !3031
  %call27 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond26, i32 0) #7, !dbg !3031
  %call28 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call27) #6, !dbg !3032
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call28, metadata !2984, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2982, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  call fastcc void @add_abnormal_goto_call_edges(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3033
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #8, !dbg !3034
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp29, %struct.basic_block_def* %call28) #7, !dbg !3034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %15, i64 24, i1 false), !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #8, !dbg !3034
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !3035
  %call30 = call %union.tree_node* @build_pointer_type(%union.tree_node* %27) #6, !dbg !3036
  %call31 = call %union.tree_node* @build_int_cst(%union.tree_node* %call30, i64 0) #6, !dbg !3037
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !2996, metadata !DIExpression()), !dbg !3013
  %28 = load %union.tree_node*, %union.tree_node** @ic_void_ptr_var, align 8, !dbg !3038
  %call32 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %28, %union.tree_node* %call31) #6, !dbg !3038
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call32, metadata !2993, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2982, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call32, i32 0) #6, !dbg !3039
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2985, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3014
  br label %for.cond, !dbg !3014, !llvm.loop !3040

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3042

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !3042
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3042
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3042
  ret void, !dbg !3042
}

declare dso_local zeroext i8 @value_profile_transformations() local_unnamed_addr #2

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3043 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3047, metadata !DIExpression()), !dbg !3049
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3050
  store i32 0, i32* %index, align 8, !dbg !3051
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3052
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3053
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3054
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3054
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3054
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3055 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3061, metadata !DIExpression()), !dbg !3062
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3063
  %tobool = icmp eq i8 %call, 0, !dbg !3063
  br i1 %tobool, label %if.then, label %if.else, !dbg !3065

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3066
  br label %return, !dbg !3068

if.else:                                          ; preds = %entry
  br label %return, !dbg !3069

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3071
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3071
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3071
  ret i8 %retval.0, !dbg !3072
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3073 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3077, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3078, metadata !DIExpression()), !dbg !3081
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3082
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3079, metadata !DIExpression()), !dbg !3080
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3083
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3084
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3085
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3086
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3087
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3088
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3089
  ret void, !dbg !3090
}

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_addr(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_call(%union.tree_node*, i32, ...) local_unnamed_addr #2

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3091 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3097, metadata !DIExpression()), !dbg !3098
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3099
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3099

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3099
  %0 = load i32, i32* %num, align 8, !dbg !3099
  br label %cond.end, !dbg !3099

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3099
  ret i32 %cond, !dbg !3099
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3105, metadata !DIExpression()), !dbg !3106
  br label %land.end, !dbg !3107

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3107
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3107
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3107
  ret %struct.edge_def* %0, !dbg !3107
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_abnormal_goto_call_edges(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) unnamed_addr #5 !dbg !3108 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3112, metadata !DIExpression()), !dbg !3114
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3115
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3113, metadata !DIExpression()), !dbg !3116
  %call1 = tail call zeroext i8 @stmt_can_make_abnormal_goto(%union.gimple_statement_d* %call) #6, !dbg !3117
  %tobool = icmp eq i8 %call1, 0, !dbg !3117
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3119

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3120
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3120
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !3122

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !3123
  %0 = bitcast %union.gimple_statement_d* %call to i8*, !dbg !3124
  %call6 = tail call %struct.edge_def* @split_block(%struct.basic_block_def* %call5, i8* %0) #6, !dbg !3125
  br label %if.end7, !dbg !3125

if.end7:                                          ; preds = %if.end, %if.then4
  %call8 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !3126
  tail call void @make_abnormal_goto_edges(%struct.basic_block_def* %call8, i8 zeroext 1) #6, !dbg !3127
  br label %cleanup.cont, !dbg !3128

cleanup.cont:                                     ; preds = %entry, %if.end7
  ret void, !dbg !3128
}

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3129 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3134, metadata !DIExpression()), !dbg !3135
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3136
  %0 = load i32, i32* %index, align 8, !dbg !3136
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3136
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3136
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3136
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3136
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3136

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3136
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3136
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3136
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3136
  br label %cond.end, !dbg !3136

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3136
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3136
  %cmp = icmp ult i32 %0, %call2, !dbg !3136
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3136

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3136
  br label %cond.end5, !dbg !3136

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3137
  %inc = add i32 %5, 1, !dbg !3137
  store i32 %inc, i32* %index, align 8, !dbg !3137
  ret void, !dbg !3138
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3139 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3144
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3144
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3144

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3144
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3144
  br label %cond.end, !dbg !3144

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3144
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3144
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3145
  %conv3 = zext i1 %cmp to i8, !dbg !3146
  ret i8 %conv3, !dbg !3147
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3148 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3153
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3153
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3153

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3153
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3153
  br label %cond.end, !dbg !3153

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3153
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3153
  ret %struct.edge_def* %call2, !dbg !3154
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3155 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3160
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3160

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3160
  br label %cond.end, !dbg !3160

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3161
  ret %struct.VEC_edge_gc* %0, !dbg !3162
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3163 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3170, metadata !DIExpression()), !dbg !3171
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3172
  %0 = load i32, i32* %flags, align 8, !dbg !3172
  %and = and i32 %0, 512, !dbg !3173
  %tobool = icmp eq i32 %and, 0, !dbg !3173
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3174

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3175
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3175
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3176
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3177

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3178
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3178
  br label %cond.end, !dbg !3177

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3177
  ret %struct.gimple_seq_d* %cond, !dbg !3179
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3180 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3187, metadata !DIExpression()), !dbg !3188
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3189
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3189

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3190
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3190
  br label %cond.end, !dbg !3189

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3189
  ret %struct.gimple_seq_node_d* %cond, !dbg !3191
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3192 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3196, metadata !DIExpression()), !dbg !3197
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3198
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3198
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3199
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3199
  ret %union.gimple_statement_d* %1, !dbg !3200
}

declare dso_local zeroext i8 @stmt_can_make_abnormal_goto(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3201 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3205, metadata !DIExpression()), !dbg !3206
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3207
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3207
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3208
  %conv1 = zext i1 %cmp to i8, !dbg !3209
  ret i8 %conv1, !dbg !3210
}

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3211 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3218, metadata !DIExpression()), !dbg !3219
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3220
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3220
  ret %struct.basic_block_def* %0, !dbg !3221
}

declare dso_local void @make_abnormal_goto_edges(%struct.basic_block_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_gcov_type() local_unnamed_addr #2

declare dso_local %union.tree_node* @build_function_type_list(%union.tree_node*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_fn_decl(i8*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_init_ic_make_global_vars() unnamed_addr #5 !dbg !3222 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !3225
  %call = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %0) #6, !dbg !3226
  store %union.tree_node* %call, %union.tree_node** @ptr_void, align 8, !dbg !3227
  %call1 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3228
  %1 = load %union.tree_node*, %union.tree_node** @ptr_void, align 8, !dbg !3228
  %call2 = tail call %union.tree_node* @build_decl_stat(i32 0, i32 32, %union.tree_node* %call1, %union.tree_node* %1) #6, !dbg !3228
  store %union.tree_node* %call2, %union.tree_node** @ic_void_ptr_var, align 8, !dbg !3229
  %.cast = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3230
  %bf.load = load i64, i64* %.cast, align 8, !dbg !3231
  %bf.set = or i64 %bf.load, 67108864, !dbg !3231
  store i64 %bf.set, i64* %.cast, align 8, !dbg !3231
  %2 = load i64*, i64** bitcast (%union.tree_node** @ic_void_ptr_var to i64**), align 8, !dbg !3232
  %bf.load4 = load i64, i64* %2, align 8, !dbg !3233
  %bf.clear5 = and i64 %bf.load4, -134217729, !dbg !3233
  store i64 %bf.clear5, i64* %2, align 8, !dbg !3233
  %3 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @ic_void_ptr_var to %struct.tree_decl_common**), align 8, !dbg !3234
  %artificial_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %3, i64 0, i32 2, !dbg !3234
  %4 = bitcast i40* %artificial_flag to i64*, !dbg !3234
  %bf.load6 = load i64, i64* %4, align 8, !dbg !3235
  %bf.set8 = or i64 %bf.load6, 4096, !dbg !3235
  store i64 %bf.set8, i64* %4, align 8, !dbg !3235
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %3, i64 0, i32 5, !dbg !3236
  store %union.tree_node* null, %union.tree_node** %initial, align 8, !dbg !3237
  %.cast1 = bitcast %struct.tree_decl_common* %3 to %union.tree_node*, !dbg !3238
  tail call void @varpool_finalize_decl(%union.tree_node* %.cast1) #6, !dbg !3239
  %call10 = tail call %union.tree_node* @get_gcov_type() #6, !dbg !3240
  %call11 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call10) #6, !dbg !3241
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3224, metadata !DIExpression()), !dbg !3242
  %call12 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3243
  %call13 = tail call %union.tree_node* @build_decl_stat(i32 0, i32 32, %union.tree_node* %call12, %union.tree_node* %call11) #6, !dbg !3243
  store %union.tree_node* %call13, %union.tree_node** @ic_gcov_type_ptr_var, align 8, !dbg !3244
  %.cast2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3245
  %bf.load15 = load i64, i64* %.cast2, align 8, !dbg !3246
  %bf.set17 = or i64 %bf.load15, 67108864, !dbg !3246
  store i64 %bf.set17, i64* %.cast2, align 8, !dbg !3246
  %5 = load i64*, i64** bitcast (%union.tree_node** @ic_gcov_type_ptr_var to i64**), align 8, !dbg !3247
  %bf.load19 = load i64, i64* %5, align 8, !dbg !3248
  %bf.clear20 = and i64 %bf.load19, -134217729, !dbg !3248
  store i64 %bf.clear20, i64* %5, align 8, !dbg !3248
  %6 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @ic_gcov_type_ptr_var to %struct.tree_decl_common**), align 8, !dbg !3249
  %artificial_flag22 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %6, i64 0, i32 2, !dbg !3249
  %7 = bitcast i40* %artificial_flag22 to i64*, !dbg !3249
  %bf.load23 = load i64, i64* %7, align 8, !dbg !3250
  %bf.set25 = or i64 %bf.load23, 4096, !dbg !3250
  store i64 %bf.set25, i64* %7, align 8, !dbg !3250
  %initial27 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %6, i64 0, i32 5, !dbg !3251
  store %union.tree_node* null, %union.tree_node** %initial27, align 8, !dbg !3252
  %.cast3 = bitcast %struct.tree_decl_common* %6 to %union.tree_node*, !dbg !3253
  tail call void @varpool_finalize_decl(%union.tree_node* %.cast3) #6, !dbg !3254
  ret void, !dbg !3255
}

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #2

declare dso_local void @varpool_finalize_decl(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @tree_coverage_counter_ref(i32, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_insert_on_edge(%struct.edge_def*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst_type(%union.tree_node*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @prepare_instrumented_value(%struct.gimple_stmt_iterator* %gsi, %struct.histogram_value_t* %value) unnamed_addr #5 !dbg !3256 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3261, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %value, metadata !3262, metadata !DIExpression()), !dbg !3264
  %value1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %value, i64 0, i32 0, i32 0, !dbg !3265
  %0 = load %union.tree_node*, %union.tree_node** %value1, align 8, !dbg !3265
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3263, metadata !DIExpression()), !dbg !3264
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3266
  %1 = bitcast %union.tree_node** %type to i64**, !dbg !3266
  %2 = load i64*, i64** %1, align 8, !dbg !3266
  %bf.load = load i64, i64* %2, align 8, !dbg !3266
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3266
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !3266
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3266

lor.lhs.false:                                    ; preds = %entry
  %cmp8 = icmp eq i64 %bf.cast1, 12, !dbg !3266
  br i1 %cmp8, label %if.then, label %if.end, !dbg !3268

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3269
  %call = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %3, %union.tree_node* %0) #6, !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3263, metadata !DIExpression()), !dbg !3264
  br label %if.end, !dbg !3270

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %val.0 = phi %union.tree_node* [ %call, %if.then ], [ %0, %lor.lhs.false ], !dbg !3264
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0, metadata !3263, metadata !DIExpression()), !dbg !3264
  %4 = load %union.tree_node*, %union.tree_node** @gcov_type_node, align 8, !dbg !3271
  %call9 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %4, %union.tree_node* %val.0) #6, !dbg !3271
  %call10 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call9, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !3272
  ret %union.tree_node* %call10, !dbg !3273
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @tree_coverage_counter_addr(i32, i32) local_unnamed_addr #2

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
!llvm.module.flags = !{!2040, !2041, !2042}
!llvm.ident = !{!2043}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_tree_profile", scope: !2, file: !3, line: 493, type: !2014, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !593, globals: !1931, nameTableKind: None)
!3 = !DIFile(filename: "tree-profile.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !570}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !6, line: 104, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 74, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!16 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!34 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!35 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!36 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!37 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!38 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!39 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!40 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!41 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!42 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!43 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!44 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!45 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!46 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!47 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!48 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!50 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!51 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!52 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!53 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!54 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!55 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!56 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!57 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!58 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!59 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!60 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!61 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!62 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!63 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!64 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!65 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!66 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!67 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!68 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!69 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!70 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!71 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!72 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!73 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!74 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!75 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!76 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!77 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!78 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!79 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!80 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!81 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!82 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!83 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!84 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!85 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!86 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!87 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!88 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!89 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!90 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!91 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!92 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!93 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!94 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!95 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!96 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!97 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!98 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!99 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!100 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!101 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!102 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!103 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!104 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!105 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!106 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!107 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!108 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!109 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!110 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!111 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!112 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!113 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!114 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!115 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!116 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!117 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!118 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!119 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!120 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!121 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!122 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!123 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!124 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!125 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!126 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!127 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!128 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!129 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!130 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!131 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!132 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!133 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!134 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!135 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!136 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!137 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!138 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!139 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!140 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!141 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!142 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!143 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!144 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!145 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!146 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!147 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!148 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!149 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!150 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!151 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!152 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!153 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!154 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!155 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!156 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!157 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!158 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!159 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!160 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!161 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!162 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!163 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!164 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!165 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!166 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!167 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!168 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!169 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!170 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!171 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!172 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!173 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!174 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!175 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!176 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!177 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!178 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!179 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!180 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!181 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!182 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!183 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!184 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!185 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!186 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!187 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!188 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !190, line: 7, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!192 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!281 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!282 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!283 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!284 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!285 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!286 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!288 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!289 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!290 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!291 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!292 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!293 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!294 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!295 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!296 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!297 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!298 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!299 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!300 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!301 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!302 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!303 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!304 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!305 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!306 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!307 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!308 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!309 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!310 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!311 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!313 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!314 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!315 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!316 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !318, line: 363, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322}
!320 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !318, line: 355, baseType: !7, size: 32, elements: !324)
!324 = !{!325, !326, !327}
!325 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!326 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!327 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !329, line: 474, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!330 = !{!331, !332}
!331 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!332 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !334, line: 280, baseType: !7, size: 32, elements: !335)
!334 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!336 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !334, line: 1817, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !334, line: 1805, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !334, line: 39, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!368 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!373 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!374 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!375 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!376 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!377 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!378 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!379 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!380 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!381 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!382 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!384 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!385 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!386 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!387 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!388 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!389 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!390 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!391 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!392 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!393 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!394 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!395 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!396 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!397 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!398 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!399 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!400 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!401 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!402 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!403 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!404 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!405 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!406 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!407 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!408 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!409 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!411 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!412 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!413 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!414 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!415 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!416 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!417 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!418 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!419 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!420 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!421 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!422 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!423 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!424 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!425 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!426 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!427 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!428 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!429 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!430 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!431 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!432 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!433 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!434 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!435 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!436 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!437 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!438 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!439 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!440 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!441 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!442 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!443 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!444 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!445 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!446 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!447 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!448 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!449 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!450 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!451 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!452 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!453 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!454 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!455 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!456 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!457 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!458 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!459 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!460 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!461 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!462 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!463 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!464 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!465 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!466 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!467 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!468 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!469 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!470 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!471 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!472 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!473 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!474 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!475 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!476 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!477 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!478 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!479 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!480 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!481 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!482 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!483 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!484 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!485 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!486 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!487 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!488 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!490 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!491 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!492 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!493 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!494 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!495 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!496 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!497 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!498 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!499 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!500 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!501 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!502 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!503 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!504 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!505 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!506 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!507 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!508 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!509 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!510 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!511 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!512 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!513 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!514 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!515 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!516 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!517 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!518 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!519 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!520 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!521 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!522 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!523 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!524 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!525 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!526 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!527 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!532 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!533 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!534 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!535 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!536 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!537 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!538 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!539 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!540 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!541 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!542 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!543 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!544 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!553 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!554 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!555 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!556 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!557 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!558 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!559 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hist_type", file: !561, line: 24, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./value-prof.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569}
!563 = !DIEnumerator(name: "HIST_TYPE_INTERVAL", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "HIST_TYPE_POW2", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "HIST_TYPE_SINGLE_VALUE", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "HIST_TYPE_CONST_DELTA", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "HIST_TYPE_INDIR_CALL", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "HIST_TYPE_AVERAGE", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "HIST_TYPE_IOR", value: 6, isUnsigned: true)
!570 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !571, line: 309, baseType: !7, size: 32, elements: !572)
!571 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!573 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!574 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!575 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!576 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!577 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!578 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!579 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!580 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!581 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!582 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!583 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!584 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!585 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!586 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!587 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!588 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!589 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!590 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!591 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!592 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!593 = !{!594, !595, !596, !597, !600, !601, !603, !730, !366}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!596 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !604, line: 56, baseType: !605)
!604 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !607)
!607 = !{!608, !641, !647, !660, !679, !690, !695, !704, !710, !723, !735, !773, !1266, !1294, !1311, !1312, !1317, !1326, !1332, !1337, !1341, !1345, !1582, !1629, !1635, !1641, !1648, !1661, !1675, !1692, !1704, !1726, !1741, !1913}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !606, file: !334, line: 3372, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !609, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !609, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !609, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !609, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !609, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !609, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !609, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !609, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !609, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !609, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !609, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !609, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !609, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !609, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !609, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !609, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !609, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !609, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !609, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !609, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !609, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !609, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !609, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !609, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !609, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !609, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !609, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !609, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !609, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !609, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !606, file: !334, line: 3373, baseType: !642, size: 192)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !643)
!643 = !{!644, !645, !646}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !642, file: !334, line: 403, baseType: !609, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !642, file: !334, line: 404, baseType: !603, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !334, line: 405, baseType: !603, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !606, file: !334, line: 3374, baseType: !648, size: 320)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !648, file: !334, line: 1385, baseType: !642, size: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !648, file: !334, line: 1386, baseType: !652, size: 128, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !653, line: 58, baseType: !654)
!653 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 54, size: 128, elements: !655)
!655 = !{!656, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !654, file: !653, line: 56, baseType: !657, size: 64)
!657 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !654, file: !653, line: 57, baseType: !659, size: 64, offset: 64)
!659 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !606, file: !334, line: 3375, baseType: !661, size: 256)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !661, file: !334, line: 1398, baseType: !642, size: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !661, file: !334, line: 1399, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !667, line: 52, size: 256, elements: !668)
!667 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!668 = !{!669, !670, !671, !672, !673, !674, !675}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !666, file: !667, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !666, file: !667, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !666, file: !667, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !666, file: !667, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !666, file: !667, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !666, file: !667, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !666, file: !667, line: 62, baseType: !676, size: 192, offset: 64)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 192, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 3)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !606, file: !334, line: 3376, baseType: !680, size: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !680, file: !334, line: 1409, baseType: !642, size: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !680, file: !334, line: 1410, baseType: !684, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !686, line: 27, size: 192, elements: !687)
!686 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !685, file: !686, line: 29, baseType: !652, size: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !685, file: !686, line: 30, baseType: !189, size: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !606, file: !334, line: 3377, baseType: !691, size: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !691, file: !334, line: 1438, baseType: !642, size: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !691, file: !334, line: 1439, baseType: !603, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !606, file: !334, line: 3378, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !697)
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !696, file: !334, line: 1419, baseType: !642, size: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !696, file: !334, line: 1420, baseType: !596, size: 32, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !696, file: !334, line: 1421, baseType: !701, size: 8, offset: 224)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 8, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 1)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !606, file: !334, line: 3379, baseType: !705, size: 320)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !705, file: !334, line: 1429, baseType: !642, size: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !705, file: !334, line: 1430, baseType: !603, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !705, file: !334, line: 1431, baseType: !603, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !606, file: !334, line: 3380, baseType: !711, size: 320)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !334, line: 1461, baseType: !642, size: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !711, file: !334, line: 1462, baseType: !715, size: 128, offset: 192)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !716, line: 31, size: 128, elements: !717)
!716 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!717 = !{!718, !721, !722}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !715, file: !716, line: 32, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !715, file: !716, line: 33, baseType: !7, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !715, file: !716, line: 34, baseType: !7, size: 32, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !606, file: !334, line: 3381, baseType: !724, size: 384)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !725)
!725 = !{!726, !727, !732, !733, !734}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !724, file: !334, line: 2508, baseType: !642, size: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !724, file: !334, line: 2509, baseType: !728, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !729, line: 58, baseType: !730)
!729 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !731, line: 44, baseType: !7)
!731 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !724, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !724, file: !334, line: 2511, baseType: !603, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !724, file: !334, line: 2512, baseType: !603, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !606, file: !334, line: 3382, baseType: !736, size: 896)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !736, file: !334, line: 2653, baseType: !724, size: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !736, file: !334, line: 2654, baseType: !603, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !736, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !736, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !736, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !736, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !736, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !736, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !736, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !736, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !736, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !736, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !736, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !736, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !736, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !736, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !736, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !736, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !736, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !736, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !736, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !736, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !736, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !736, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !736, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !736, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !736, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !736, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !736, file: !334, line: 2705, baseType: !603, size: 64, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !736, file: !334, line: 2706, baseType: !603, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !736, file: !334, line: 2707, baseType: !603, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !736, file: !334, line: 2708, baseType: !603, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !736, file: !334, line: 2711, baseType: !771, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !606, file: !334, line: 3383, baseType: !774, size: 960)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !334, line: 2757, baseType: !736, size: 896)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !774, file: !334, line: 2758, baseType: !778, size: 64, offset: 896)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !604, line: 50, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !781, line: 240, size: 384, elements: !782)
!781 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !780, file: !781, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !780, file: !781, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !780, file: !781, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !780, file: !781, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !780, file: !781, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !780, file: !781, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !780, file: !781, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !780, file: !781, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !780, file: !781, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !780, file: !781, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !780, file: !781, line: 321, baseType: !794, size: 320, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !781, line: 315, size: 320, elements: !795)
!795 = !{!796, !1199, !1201, !1264, !1265}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !794, file: !781, line: 316, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 64, elements: !702)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !781, line: 183, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !781, line: 166, size: 64, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !813, !814, !826, !829, !889, !890, !1176, !1189, !1196}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !799, file: !781, line: 168, baseType: !596, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !799, file: !781, line: 169, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !799, file: !781, line: 170, baseType: !601, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !799, file: !781, line: 171, baseType: !778, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !799, file: !781, line: 172, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !604, line: 53, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !781, line: 359, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !808, file: !781, line: 360, baseType: !596, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !808, file: !781, line: 361, baseType: !812, size: 64, offset: 64)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 64, elements: !702)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !799, file: !781, line: 173, baseType: !189, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !799, file: !781, line: 174, baseType: !815, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !781, line: 133, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 115, size: 32, elements: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !816, file: !781, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !816, file: !781, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !816, file: !781, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !816, file: !781, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !816, file: !781, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !816, file: !781, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !816, file: !781, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !816, file: !781, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !799, file: !781, line: 175, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !781, line: 175, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !799, file: !781, line: 176, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !832, line: 75, size: 256, elements: !833)
!832 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!833 = !{!834, !848, !849, !850}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !831, file: !832, line: 76, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !832, line: 68, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !832, line: 63, size: 320, elements: !838)
!838 = !{!839, !841, !842, !843}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !837, file: !832, line: 64, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !837, file: !832, line: 65, baseType: !840, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !837, file: !832, line: 66, baseType: !7, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !837, file: !832, line: 67, baseType: !844, size: 128, offset: 192)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 128, elements: !846)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !832, line: 29, baseType: !657)
!846 = !{!847}
!847 = !DISubrange(count: 2)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !831, file: !832, line: 77, baseType: !835, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !831, file: !832, line: 78, baseType: !7, size: 32, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !831, file: !832, line: 79, baseType: !851, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !832, line: 49, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !832, line: 45, size: 832, elements: !854)
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !853, file: !832, line: 46, baseType: !840, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !853, file: !832, line: 47, baseType: !830, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !853, file: !832, line: 48, baseType: !858, size: 704, offset: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !859, line: 164, size: 704, elements: !860)
!859 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!860 = !{!861, !862, !872, !873, !874, !875, !876, !877, !881, !885, !886, !887, !888}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !858, file: !859, line: 166, baseType: !659, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !858, file: !859, line: 167, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !859, line: 157, size: 192, elements: !865)
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !864, file: !859, line: 159, baseType: !598, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !864, file: !859, line: 160, baseType: !863, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !864, file: !859, line: 161, baseType: !869, size: 32, offset: 128)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 32, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 4)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !858, file: !859, line: 168, baseType: !598, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !858, file: !859, line: 169, baseType: !598, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !858, file: !859, line: 170, baseType: !598, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !858, file: !859, line: 171, baseType: !659, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !858, file: !859, line: 172, baseType: !596, size: 32, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !858, file: !859, line: 176, baseType: !878, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!863, !600, !659}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !858, file: !859, line: 177, baseType: !882, size: 64, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !600, !863}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !858, file: !859, line: 178, baseType: !600, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !858, file: !859, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !858, file: !859, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !858, file: !859, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !799, file: !781, line: 177, baseType: !603, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !799, file: !781, line: 178, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !893)
!893 = !{!894, !1141, !1142, !1143, !1146, !1150, !1151, !1152, !1170, !1171, !1172, !1173, !1174, !1175}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !892, file: !318, line: 219, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !897, file: !318, line: 151, baseType: !900, size: 128)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !902)
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !901, file: !318, line: 150, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !901, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !901, file: !318, line: 150, baseType: !906, size: 64, offset: 64)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 64, elements: !702)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !604, line: 108, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !910)
!910 = !{!911, !912, !913, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !909, file: !318, line: 124, baseType: !891, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !909, file: !318, line: 125, baseType: !891, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !909, file: !318, line: 131, baseType: !914, size: 64, offset: 128)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !915)
!915 = !{!916, !1132}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !914, file: !318, line: 129, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !604, line: 66, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !920, line: 143, size: 192, elements: !921)
!920 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!921 = !{!922, !1130, !1131}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !919, file: !920, line: 145, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !604, line: 69, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !920, line: 136, size: 192, elements: !926)
!926 = !{!927, !1128, !1129}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !925, file: !920, line: 137, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !604, line: 58, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !920, line: 737, size: 768, elements: !931)
!931 = !{!932, !949, !983, !989, !994, !999, !1006, !1012, !1018, !1023, !1037, !1042, !1048, !1053, !1063, !1068, !1086, !1093, !1100, !1106, !1111, !1117, !1123}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !930, file: !920, line: 738, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !920, line: 271, size: 256, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !933, file: !920, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !933, file: !920, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !933, file: !920, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !933, file: !920, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !933, file: !920, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !933, file: !920, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !933, file: !920, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !933, file: !920, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !933, file: !920, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !933, file: !920, line: 312, baseType: !7, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !933, file: !920, line: 316, baseType: !728, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !933, file: !920, line: 319, baseType: !7, size: 32, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !933, file: !920, line: 323, baseType: !891, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !933, file: !920, line: 327, baseType: !603, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !930, file: !920, line: 739, baseType: !950, size: 448)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !920, line: 350, size: 448, elements: !951)
!951 = !{!952, !981}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !950, file: !920, line: 353, baseType: !953, size: 384)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !920, line: 333, size: 384, elements: !954)
!954 = !{!955, !956, !964}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !953, file: !920, line: 336, baseType: !933, size: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !953, file: !920, line: 343, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !959, line: 37, size: 128, elements: !960)
!959 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !958, file: !959, line: 39, baseType: !957, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !958, file: !959, line: 40, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !953, file: !920, line: 344, baseType: !965, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !959, line: 45, size: 320, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !966, file: !959, line: 47, baseType: !965, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !966, file: !959, line: 48, baseType: !970, size: 256, offset: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !971)
!971 = !{!972, !974, !975, !980}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !970, file: !334, line: 1884, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !970, file: !334, line: 1885, baseType: !973, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !970, file: !334, line: 1891, baseType: !976, size: 64, offset: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !334, line: 1891, size: 64, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !976, file: !334, line: 1891, baseType: !928, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !976, file: !334, line: 1891, baseType: !603, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !970, file: !334, line: 1892, baseType: !963, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !950, file: !920, line: 359, baseType: !982, size: 64, offset: 384)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 64, elements: !702)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !930, file: !920, line: 740, baseType: !984, size: 512)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !920, line: 365, size: 512, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !984, file: !920, line: 368, baseType: !953, size: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !984, file: !920, line: 373, baseType: !603, size: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !984, file: !920, line: 374, baseType: !603, size: 64, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !930, file: !920, line: 741, baseType: !990, size: 576)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !920, line: 380, size: 576, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !990, file: !920, line: 383, baseType: !984, size: 512)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !990, file: !920, line: 389, baseType: !982, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !930, file: !920, line: 742, baseType: !995, size: 320)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !920, line: 395, size: 320, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !995, file: !920, line: 397, baseType: !933, size: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !995, file: !920, line: 400, baseType: !917, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !930, file: !920, line: 743, baseType: !1000, size: 448)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !920, line: 406, size: 448, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1000, file: !920, line: 408, baseType: !933, size: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1000, file: !920, line: 412, baseType: !603, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1000, file: !920, line: 420, baseType: !603, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1000, file: !920, line: 423, baseType: !917, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !930, file: !920, line: 744, baseType: !1007, size: 384)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !920, line: 429, size: 384, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1007, file: !920, line: 431, baseType: !933, size: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1007, file: !920, line: 434, baseType: !603, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1007, file: !920, line: 437, baseType: !917, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !930, file: !920, line: 745, baseType: !1013, size: 384)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !920, line: 443, size: 384, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1013, file: !920, line: 445, baseType: !933, size: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1013, file: !920, line: 449, baseType: !603, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1013, file: !920, line: 453, baseType: !917, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !930, file: !920, line: 746, baseType: !1019, size: 320)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !920, line: 459, size: 320, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1019, file: !920, line: 461, baseType: !933, size: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1019, file: !920, line: 464, baseType: !603, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !930, file: !920, line: 747, baseType: !1024, size: 768)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !920, line: 469, size: 768, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1024, file: !920, line: 471, baseType: !933, size: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1024, file: !920, line: 474, baseType: !7, size: 32, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1024, file: !920, line: 475, baseType: !7, size: 32, offset: 288)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1024, file: !920, line: 478, baseType: !603, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1024, file: !920, line: 481, baseType: !1031, size: 384, offset: 384)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 384, elements: !702)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1032, file: !334, line: 1920, baseType: !970, size: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1032, file: !334, line: 1921, baseType: !603, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1032, file: !334, line: 1922, baseType: !728, size: 32, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !930, file: !920, line: 748, baseType: !1038, size: 320)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !920, line: 487, size: 320, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1038, file: !920, line: 490, baseType: !933, size: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1038, file: !920, line: 494, baseType: !596, size: 32, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !930, file: !920, line: 749, baseType: !1043, size: 384)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !920, line: 500, size: 384, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1043, file: !920, line: 502, baseType: !933, size: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1043, file: !920, line: 506, baseType: !917, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1043, file: !920, line: 510, baseType: !917, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !930, file: !920, line: 750, baseType: !1049, size: 320)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !920, line: 529, size: 320, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1049, file: !920, line: 531, baseType: !933, size: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1049, file: !920, line: 540, baseType: !917, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !930, file: !920, line: 751, baseType: !1054, size: 704)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !920, line: 546, size: 704, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1054, file: !920, line: 549, baseType: !984, size: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1054, file: !920, line: 553, baseType: !601, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1054, file: !920, line: 557, baseType: !595, size: 8, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1054, file: !920, line: 558, baseType: !595, size: 8, offset: 584)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1054, file: !920, line: 559, baseType: !595, size: 8, offset: 592)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1054, file: !920, line: 560, baseType: !595, size: 8, offset: 600)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1054, file: !920, line: 566, baseType: !982, size: 64, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !930, file: !920, line: 752, baseType: !1064, size: 384)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !920, line: 571, size: 384, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1064, file: !920, line: 573, baseType: !995, size: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1064, file: !920, line: 577, baseType: !603, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !930, file: !920, line: 753, baseType: !1069, size: 576)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !920, line: 600, size: 576, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1076, !1085}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1069, file: !920, line: 602, baseType: !995, size: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1069, file: !920, line: 605, baseType: !603, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1069, file: !920, line: 609, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1075, line: 46, baseType: !657)
!1075 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1069, file: !920, line: 612, baseType: !1077, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !920, line: 581, size: 320, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1078, file: !920, line: 583, baseType: !366, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1078, file: !920, line: 586, baseType: !603, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1078, file: !920, line: 589, baseType: !603, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1078, file: !920, line: 592, baseType: !603, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1078, file: !920, line: 595, baseType: !603, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1069, file: !920, line: 616, baseType: !917, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !930, file: !920, line: 754, baseType: !1087, size: 512)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !920, line: 622, size: 512, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1087, file: !920, line: 624, baseType: !995, size: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1087, file: !920, line: 628, baseType: !603, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1087, file: !920, line: 632, baseType: !603, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1087, file: !920, line: 636, baseType: !603, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !930, file: !920, line: 755, baseType: !1094, size: 704)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !920, line: 642, size: 704, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1094, file: !920, line: 644, baseType: !1087, size: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1094, file: !920, line: 648, baseType: !603, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1094, file: !920, line: 652, baseType: !603, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1094, file: !920, line: 653, baseType: !603, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !930, file: !920, line: 756, baseType: !1101, size: 448)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !920, line: 663, size: 448, elements: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1101, file: !920, line: 665, baseType: !995, size: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1101, file: !920, line: 668, baseType: !603, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1101, file: !920, line: 673, baseType: !603, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !930, file: !920, line: 757, baseType: !1107, size: 384)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !920, line: 694, size: 384, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1107, file: !920, line: 696, baseType: !995, size: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1107, file: !920, line: 699, baseType: !603, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !930, file: !920, line: 758, baseType: !1112, size: 384)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !920, line: 681, size: 384, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1112, file: !920, line: 683, baseType: !933, size: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1112, file: !920, line: 686, baseType: !603, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1112, file: !920, line: 689, baseType: !603, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !930, file: !920, line: 759, baseType: !1118, size: 384)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !920, line: 707, size: 384, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1118, file: !920, line: 709, baseType: !933, size: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1118, file: !920, line: 712, baseType: !603, size: 64, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1118, file: !920, line: 712, baseType: !603, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !930, file: !920, line: 760, baseType: !1124, size: 320)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !920, line: 718, size: 320, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1124, file: !920, line: 720, baseType: !933, size: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1124, file: !920, line: 723, baseType: !603, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !925, file: !920, line: 138, baseType: !924, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !925, file: !920, line: 139, baseType: !924, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !919, file: !920, line: 146, baseType: !923, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !919, file: !920, line: 152, baseType: !917, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !914, file: !318, line: 130, baseType: !778, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !909, file: !318, line: 134, baseType: !600, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !909, file: !318, line: 137, baseType: !603, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !909, file: !318, line: 138, baseType: !728, size: 32, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !909, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !909, file: !318, line: 144, baseType: !596, size: 32, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !909, file: !318, line: 145, baseType: !596, size: 32, offset: 416)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !909, file: !318, line: 146, baseType: !1140, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !659)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !892, file: !318, line: 220, baseType: !895, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !892, file: !318, line: 223, baseType: !600, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !892, file: !318, line: 226, baseType: !1144, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !892, file: !318, line: 229, baseType: !1147, size: 128, offset: 256)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1148, size: 128, elements: !846)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !892, file: !318, line: 232, baseType: !891, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !892, file: !318, line: 233, baseType: !891, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !892, file: !318, line: 238, baseType: !1153, size: 64, offset: 512)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1154)
!1154 = !{!1155, !1161}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1153, file: !318, line: 236, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1157, file: !318, line: 275, baseType: !917, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1157, file: !318, line: 278, baseType: !917, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1153, file: !318, line: 237, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1163, file: !318, line: 261, baseType: !778, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1163, file: !318, line: 262, baseType: !778, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1163, file: !318, line: 266, baseType: !778, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1163, file: !318, line: 267, baseType: !778, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1163, file: !318, line: 270, baseType: !596, size: 32, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !892, file: !318, line: 241, baseType: !1140, size: 64, offset: 576)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !892, file: !318, line: 244, baseType: !596, size: 32, offset: 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !892, file: !318, line: 247, baseType: !596, size: 32, offset: 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !892, file: !318, line: 250, baseType: !596, size: 32, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !892, file: !318, line: 253, baseType: !596, size: 32, offset: 736)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !892, file: !318, line: 256, baseType: !596, size: 32, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !799, file: !781, line: 179, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !781, line: 150, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !781, line: 142, size: 320, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1187, !1188}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1179, file: !781, line: 144, baseType: !603, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1179, file: !781, line: 145, baseType: !778, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1179, file: !781, line: 146, baseType: !778, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1179, file: !781, line: 147, baseType: !1185, size: 32, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1186, line: 31, baseType: !596)
!1186 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1179, file: !781, line: 148, baseType: !7, size: 32, offset: 224)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1179, file: !781, line: 149, baseType: !595, size: 8, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !799, file: !781, line: 180, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !781, line: 162, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !781, line: 159, size: 128, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1192, file: !781, line: 160, baseType: !603, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1192, file: !781, line: 161, baseType: !659, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !799, file: !781, line: 181, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !781, line: 181, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !794, file: !781, line: 317, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 64, elements: !702)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !794, file: !781, line: 318, baseType: !1202, size: 320)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !781, line: 188, size: 320, elements: !1203)
!1203 = !{!1204, !1206, !1263}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1202, file: !781, line: 190, baseType: !1205, size: 192)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 192, elements: !677)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1202, file: !781, line: 193, baseType: !1207, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !781, line: 206, size: 320, elements: !1209)
!1209 = !{!1210, !1248, !1249, !1250, !1262}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1208, file: !781, line: 208, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !604, line: 62, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1214, line: 538, size: 256, elements: !1215)
!1214 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1215 = !{!1216, !1220, !1226, !1239}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1213, file: !1214, line: 539, baseType: !1217, size: 32)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1214, line: 482, size: 32, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1217, file: !1214, line: 484, baseType: !7, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1213, file: !1214, line: 540, baseType: !1221, size: 192)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1214, line: 488, size: 192, elements: !1222)
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1221, file: !1214, line: 489, baseType: !1217, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1221, file: !1214, line: 492, baseType: !601, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1221, file: !1214, line: 496, baseType: !603, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1213, file: !1214, line: 541, baseType: !1227, size: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1214, line: 504, size: 256, elements: !1228)
!1228 = !{!1229, !1230, !1237, !1238}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1227, file: !1214, line: 505, baseType: !1217, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1227, file: !1214, line: 509, baseType: !1231, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1214, line: 501, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1227, file: !1214, line: 510, baseType: !1235, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1227, file: !1214, line: 513, baseType: !1211, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1213, file: !1214, line: 542, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1214, line: 530, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1240, file: !1214, line: 531, baseType: !1217, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1240, file: !1214, line: 534, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1214, line: 525, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!595, !603, !601, !657, !657}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1208, file: !781, line: 211, baseType: !7, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1208, file: !781, line: 214, baseType: !659, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1208, file: !781, line: 224, baseType: !1251, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !781, line: 202, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !781, line: 202, size: 128, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1253, file: !781, line: 202, baseType: !1256, size: 128)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !781, line: 200, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !781, line: 200, size: 128, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1257, file: !781, line: 200, baseType: !7, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1257, file: !781, line: 200, baseType: !7, size: 32, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1257, file: !781, line: 200, baseType: !812, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1208, file: !781, line: 234, baseType: !1251, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1202, file: !781, line: 197, baseType: !659, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !794, file: !781, line: 319, baseType: !666, size: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !794, file: !781, line: 320, baseType: !685, size: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !606, file: !334, line: 3384, baseType: !1267, size: 1472)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1268)
!1268 = !{!1269, !1290, !1291, !1292, !1293}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1267, file: !334, line: 3115, baseType: !1270, size: 1216)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1270, file: !334, line: 2985, baseType: !774, size: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1270, file: !334, line: 2986, baseType: !603, size: 64, offset: 960)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1270, file: !334, line: 2987, baseType: !603, size: 64, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1270, file: !334, line: 2988, baseType: !603, size: 64, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1270, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1270, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1270, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1270, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1270, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1270, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1270, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1270, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1270, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1270, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1270, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1270, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1270, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1270, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1267, file: !334, line: 3117, baseType: !603, size: 64, offset: 1216)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1267, file: !334, line: 3119, baseType: !603, size: 64, offset: 1280)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1267, file: !334, line: 3121, baseType: !603, size: 64, offset: 1344)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1267, file: !334, line: 3123, baseType: !603, size: 64, offset: 1408)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !606, file: !334, line: 3385, baseType: !1295, size: 1088)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1296)
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1295, file: !334, line: 2875, baseType: !774, size: 960)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1295, file: !334, line: 2876, baseType: !778, size: 64, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1295, file: !334, line: 2877, baseType: !1300, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1302, line: 172, size: 128, elements: !1303)
!1302 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1301, file: !1302, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1301, file: !1302, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1301, file: !1302, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1301, file: !1302, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1301, file: !1302, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1301, file: !1302, line: 195, baseType: !7, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1301, file: !1302, line: 199, baseType: !603, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !606, file: !334, line: 3386, baseType: !1270, size: 1216)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !606, file: !334, line: 3387, baseType: !1313, size: 1280)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !334, line: 3094, baseType: !1270, size: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1313, file: !334, line: 3095, baseType: !1300, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !606, file: !334, line: 3388, baseType: !1318, size: 1216)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1318, file: !334, line: 2825, baseType: !736, size: 896)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1318, file: !334, line: 2827, baseType: !603, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1318, file: !334, line: 2828, baseType: !603, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1318, file: !334, line: 2829, baseType: !603, size: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1318, file: !334, line: 2830, baseType: !603, size: 64, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1318, file: !334, line: 2831, baseType: !603, size: 64, offset: 1152)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !606, file: !334, line: 3389, baseType: !1327, size: 1024)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1327, file: !334, line: 2851, baseType: !774, size: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1327, file: !334, line: 2852, baseType: !596, size: 32, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1327, file: !334, line: 2853, baseType: !596, size: 32, offset: 992)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !606, file: !334, line: 3390, baseType: !1333, size: 1024)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1333, file: !334, line: 2858, baseType: !774, size: 960)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1333, file: !334, line: 2859, baseType: !1300, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !606, file: !334, line: 3391, baseType: !1338, size: 960)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1338, file: !334, line: 2863, baseType: !774, size: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !606, file: !334, line: 3392, baseType: !1342, size: 1472)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1342, file: !334, line: 3305, baseType: !1267, size: 1472)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !606, file: !334, line: 3393, baseType: !1346, size: 1792)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1347)
!1347 = !{!1348, !1349, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1346, file: !334, line: 3249, baseType: !1267, size: 1472)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1346, file: !334, line: 3251, baseType: !1350, size: 64, offset: 1472)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1352, line: 463, size: 1152, elements: !1353)
!1352 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1353 = !{!1354, !1357, !1388, !1389, !1502, !1505, !1506, !1507, !1508, !1509, !1510, !1534, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1351, file: !1352, line: 464, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1352, line: 464, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1351, file: !1352, line: 467, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1360)
!1360 = !{!1361, !1363, !1364, !1377, !1378, !1379, !1380, !1381, !1382, !1384, !1386, !1387}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1359, file: !318, line: 377, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !604, line: 111, baseType: !891)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1359, file: !318, line: 378, baseType: !1362, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1359, file: !318, line: 381, baseType: !1365, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1367, file: !318, line: 282, baseType: !1370, size: 128)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1371, file: !318, line: 281, baseType: !7, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1371, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1371, file: !318, line: 281, baseType: !1376, size: 64, offset: 64)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 64, elements: !702)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1359, file: !318, line: 384, baseType: !596, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1359, file: !318, line: 387, baseType: !596, size: 32, offset: 224)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1359, file: !318, line: 390, baseType: !596, size: 32, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1359, file: !318, line: 394, baseType: !1365, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1359, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1359, file: !318, line: 399, baseType: !1383, size: 64, offset: 416)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !846)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1359, file: !318, line: 402, baseType: !1385, size: 64, offset: 480)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !846)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1359, file: !318, line: 406, baseType: !596, size: 32, offset: 544)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1359, file: !318, line: 409, baseType: !596, size: 32, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1351, file: !1352, line: 470, baseType: !918, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1351, file: !1352, line: 473, baseType: !1390, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1302, line: 39, size: 1152, elements: !1392)
!1392 = !{!1393, !1441, !1454, !1466, !1467, !1479, !1480, !1484, !1485, !1486, !1487, !1488}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1391, file: !1302, line: 41, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1395, line: 144, baseType: !1396)
!1395 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1395, line: 100, size: 896, elements: !1398)
!1398 = !{!1399, !1405, !1410, !1415, !1417, !1418, !1419, !1420, !1421, !1422, !1427, !1429, !1430, !1435, !1440}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1397, file: !1395, line: 102, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1395, line: 52, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1404, !1235}
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1395, line: 47, baseType: !7)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1397, file: !1395, line: 105, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1395, line: 59, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!596, !1235, !1235}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1397, file: !1395, line: 108, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1395, line: 63, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !600}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1397, file: !1395, line: 111, baseType: !1416, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1397, file: !1395, line: 114, baseType: !1074, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1397, file: !1395, line: 117, baseType: !1074, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1397, file: !1395, line: 120, baseType: !1074, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1397, file: !1395, line: 124, baseType: !7, size: 32, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1397, file: !1395, line: 128, baseType: !7, size: 32, offset: 480)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1397, file: !1395, line: 131, baseType: !1423, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1395, line: 75, baseType: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!600, !1074, !1074}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1397, file: !1395, line: 132, baseType: !1428, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1395, line: 78, baseType: !1412)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1397, file: !1395, line: 135, baseType: !600, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1397, file: !1395, line: 136, baseType: !1431, size: 64, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1395, line: 82, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!600, !600, !1074, !1074}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1397, file: !1395, line: 137, baseType: !1436, size: 64, offset: 768)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1395, line: 83, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !600, !600}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1397, file: !1395, line: 141, baseType: !7, size: 32, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1391, file: !1302, line: 48, baseType: !1442, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !920, line: 35, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !920, line: 35, size: 128, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1444, file: !920, line: 35, baseType: !1447, size: 128)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !920, line: 33, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !920, line: 33, size: 128, elements: !1449)
!1449 = !{!1450, !1451, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1448, file: !920, line: 33, baseType: !7, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1448, file: !920, line: 33, baseType: !7, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1448, file: !920, line: 33, baseType: !1453, size: 64, offset: 64)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 64, elements: !702)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1391, file: !1302, line: 51, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1457, file: !334, line: 183, baseType: !1460, size: 128)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1462)
!1462 = !{!1463, !1464, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1461, file: !334, line: 182, baseType: !7, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1461, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1461, file: !334, line: 182, baseType: !982, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1391, file: !1302, line: 54, baseType: !603, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1391, file: !1302, line: 57, baseType: !1468, size: 128, offset: 256)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1469, line: 31, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1468, file: !1469, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1468, file: !1469, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1468, file: !1469, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1468, file: !1469, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1468, file: !1469, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1468, file: !1469, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1468, file: !1469, line: 56, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !604, line: 47, baseType: !830)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1391, file: !1302, line: 60, baseType: !1468, size: 128, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1391, file: !1302, line: 64, baseType: !1481, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1483, line: 33, flags: DIFlagFwdDecl)
!1483 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1391, file: !1302, line: 67, baseType: !603, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1391, file: !1302, line: 73, baseType: !1394, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1391, file: !1302, line: 77, baseType: !1478, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1391, file: !1302, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1391, file: !1302, line: 82, baseType: !1489, size: 320, offset: 832)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !959, line: 62, size: 320, elements: !1490)
!1490 = !{!1491, !1497, !1498, !1499, !1500, !1501}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1489, file: !959, line: 63, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !959, line: 56, size: 128, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1493, file: !959, line: 57, baseType: !1492, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1493, file: !959, line: 58, baseType: !701, size: 8, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1489, file: !959, line: 64, baseType: !7, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1489, file: !959, line: 66, baseType: !7, size: 32, offset: 96)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1489, file: !959, line: 68, baseType: !595, size: 8, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1489, file: !959, line: 70, baseType: !957, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1489, file: !959, line: 71, baseType: !965, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1351, file: !1352, line: 476, baseType: !1503, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1352, line: 476, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1351, file: !1352, line: 479, baseType: !1394, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1351, file: !1352, line: 484, baseType: !603, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1351, file: !1352, line: 488, baseType: !603, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1351, file: !1352, line: 493, baseType: !603, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1351, file: !1352, line: 496, baseType: !603, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1351, file: !1352, line: 501, baseType: !1511, size: 64, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1513)
!1513 = !{!1514, !1517, !1518, !1519, !1520, !1522, !1523, !1528, !1529, !1530, !1531, !1532, !1533}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1512, file: !329, line: 2356, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1512, file: !329, line: 2357, baseType: !601, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1512, file: !329, line: 2358, baseType: !596, size: 32, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1512, file: !329, line: 2359, baseType: !596, size: 32, offset: 160)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1512, file: !329, line: 2360, baseType: !1521, size: 128, offset: 192)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 128, elements: !870)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1512, file: !329, line: 2364, baseType: !596, size: 32, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1512, file: !329, line: 2367, baseType: !1524, size: 128, offset: 384)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1524, file: !329, line: 2351, baseType: !778, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1524, file: !329, line: 2352, baseType: !659, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1512, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1512, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1512, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1512, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1512, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1512, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1351, file: !1352, line: 504, baseType: !1535, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1352, line: 504, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1351, file: !1352, line: 507, baseType: !1394, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1351, file: !1352, line: 510, baseType: !596, size: 32, offset: 832)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1351, file: !1352, line: 513, baseType: !596, size: 32, offset: 864)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1351, file: !1352, line: 516, baseType: !728, size: 32, offset: 896)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1351, file: !1352, line: 519, baseType: !728, size: 32, offset: 928)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1351, file: !1352, line: 522, baseType: !7, size: 32, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1351, file: !1352, line: 523, baseType: !7, size: 32, offset: 992)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1351, file: !1352, line: 528, baseType: !601, size: 64, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1351, file: !1352, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1351, file: !1352, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1351, file: !1352, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1351, file: !1352, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1351, file: !1352, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1351, file: !1352, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1351, file: !1352, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1351, file: !1352, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1351, file: !1352, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1351, file: !1352, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1351, file: !1352, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1351, file: !1352, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1351, file: !1352, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1351, file: !1352, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1351, file: !1352, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1351, file: !1352, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1346, file: !334, line: 3254, baseType: !603, size: 64, offset: 1536)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1346, file: !334, line: 3257, baseType: !603, size: 64, offset: 1600)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1346, file: !334, line: 3258, baseType: !603, size: 64, offset: 1664)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1346, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1346, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1346, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1346, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1346, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1346, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1346, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1346, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1346, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1346, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1346, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1346, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1346, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1346, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1346, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1346, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1346, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1346, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !334, line: 3394, baseType: !1583, size: 1344)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1583, file: !334, line: 2280, baseType: !642, size: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1583, file: !334, line: 2281, baseType: !603, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1583, file: !334, line: 2282, baseType: !603, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1583, file: !334, line: 2283, baseType: !603, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1583, file: !334, line: 2284, baseType: !603, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1583, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1583, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1583, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1583, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1583, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1583, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1583, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1583, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1583, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1583, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1583, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1583, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1583, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1583, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1583, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1583, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1583, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1583, file: !334, line: 2306, baseType: !1185, size: 32, offset: 544)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1583, file: !334, line: 2307, baseType: !603, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1583, file: !334, line: 2308, baseType: !603, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1583, file: !334, line: 2314, baseType: !1611, size: 64, offset: 704)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1612)
!1612 = !{!1613, !1614, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1611, file: !334, line: 2310, baseType: !596, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1611, file: !334, line: 2311, baseType: !601, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1611, file: !334, line: 2312, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1583, file: !334, line: 2315, baseType: !603, size: 64, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1583, file: !334, line: 2316, baseType: !603, size: 64, offset: 832)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1583, file: !334, line: 2317, baseType: !603, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1583, file: !334, line: 2318, baseType: !603, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1583, file: !334, line: 2319, baseType: !603, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1583, file: !334, line: 2320, baseType: !603, size: 64, offset: 1088)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1583, file: !334, line: 2321, baseType: !603, size: 64, offset: 1152)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1583, file: !334, line: 2322, baseType: !603, size: 64, offset: 1216)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1583, file: !334, line: 2324, baseType: !1627, size: 64, offset: 1280)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !606, file: !334, line: 3395, baseType: !1630, size: 320)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1631)
!1631 = !{!1632, !1633, !1634}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1630, file: !334, line: 1470, baseType: !642, size: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1630, file: !334, line: 1471, baseType: !603, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1630, file: !334, line: 1472, baseType: !603, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !606, file: !334, line: 3396, baseType: !1636, size: 320)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1636, file: !334, line: 1483, baseType: !642, size: 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1636, file: !334, line: 1484, baseType: !596, size: 32, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1636, file: !334, line: 1485, baseType: !982, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !606, file: !334, line: 3397, baseType: !1642, size: 384)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1642, file: !334, line: 1830, baseType: !642, size: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1642, file: !334, line: 1831, baseType: !728, size: 32, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1642, file: !334, line: 1832, baseType: !603, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1642, file: !334, line: 1835, baseType: !982, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !606, file: !334, line: 3398, baseType: !1649, size: 704)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1660}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1649, file: !334, line: 1899, baseType: !642, size: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1649, file: !334, line: 1902, baseType: !603, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1649, file: !334, line: 1905, baseType: !928, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1649, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1649, file: !334, line: 1911, baseType: !1656, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1302, line: 117, size: 128, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1657, file: !1302, line: 120, baseType: !1468, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1649, file: !334, line: 1914, baseType: !970, size: 256, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !606, file: !334, line: 3399, baseType: !1662, size: 704)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1662, file: !334, line: 2009, baseType: !642, size: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1662, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1662, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1662, file: !334, line: 2014, baseType: !728, size: 32, offset: 224)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1662, file: !334, line: 2016, baseType: !603, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1662, file: !334, line: 2017, baseType: !1455, size: 64, offset: 320)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1662, file: !334, line: 2019, baseType: !603, size: 64, offset: 384)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1662, file: !334, line: 2020, baseType: !603, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1662, file: !334, line: 2021, baseType: !603, size: 64, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1662, file: !334, line: 2022, baseType: !603, size: 64, offset: 576)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1662, file: !334, line: 2023, baseType: !603, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !606, file: !334, line: 3400, baseType: !1676, size: 832)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1676, file: !334, line: 2431, baseType: !642, size: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1676, file: !334, line: 2433, baseType: !603, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1676, file: !334, line: 2434, baseType: !603, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1676, file: !334, line: 2435, baseType: !603, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1676, file: !334, line: 2436, baseType: !603, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1676, file: !334, line: 2437, baseType: !1455, size: 64, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1676, file: !334, line: 2438, baseType: !603, size: 64, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1676, file: !334, line: 2440, baseType: !603, size: 64, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1676, file: !334, line: 2441, baseType: !603, size: 64, offset: 640)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1676, file: !334, line: 2443, baseType: !1688, size: 128, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1689, file: !334, line: 182, baseType: !1460, size: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !606, file: !334, line: 3401, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1694)
!1694 = !{!1695, !1696, !1703}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1693, file: !334, line: 3329, baseType: !642, size: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1693, file: !334, line: 3330, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1698, file: !334, line: 3322, baseType: !1697, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1698, file: !334, line: 3323, baseType: !1697, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1698, file: !334, line: 3324, baseType: !603, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1693, file: !334, line: 3331, baseType: !1697, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !606, file: !334, line: 3402, baseType: !1705, size: 256)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1705, file: !334, line: 1541, baseType: !642, size: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1705, file: !334, line: 1542, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1712)
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1711, file: !334, line: 1538, baseType: !1714, size: 192)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1715, file: !334, line: 1537, baseType: !7, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1715, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1715, file: !334, line: 1537, baseType: !1720, size: 128, offset: 64)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1721, size: 128, elements: !702)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1722, file: !334, line: 1533, baseType: !603, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1722, file: !334, line: 1534, baseType: !603, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !606, file: !334, line: 3403, baseType: !1727, size: 512)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1738, !1739, !1740}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1727, file: !334, line: 1939, baseType: !642, size: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1727, file: !334, line: 1940, baseType: !728, size: 32, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1727, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1727, file: !334, line: 1946, baseType: !1733, size: 32, offset: 256)
!1733 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1734)
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1733, file: !334, line: 1943, baseType: !352, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1733, file: !334, line: 1944, baseType: !359, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1733, file: !334, line: 1945, baseType: !366, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1727, file: !334, line: 1950, baseType: !917, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1727, file: !334, line: 1951, baseType: !917, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1727, file: !334, line: 1953, baseType: !982, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !606, file: !334, line: 3404, baseType: !1742, size: 1664)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1742, file: !334, line: 3338, baseType: !642, size: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1742, file: !334, line: 3341, baseType: !1746, size: 1472, offset: 192)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1747, line: 410, size: 1472, elements: !1748)
!1747 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1746, file: !1747, line: 412, baseType: !596, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1746, file: !1747, line: 413, baseType: !596, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1746, file: !1747, line: 414, baseType: !596, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1746, file: !1747, line: 415, baseType: !596, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1746, file: !1747, line: 416, baseType: !596, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1746, file: !1747, line: 417, baseType: !596, size: 32, offset: 160)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1746, file: !1747, line: 418, baseType: !595, size: 8, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1746, file: !1747, line: 419, baseType: !595, size: 8, offset: 200)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1746, file: !1747, line: 420, baseType: !1758, size: 8, offset: 208)
!1758 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1746, file: !1747, line: 421, baseType: !1758, size: 8, offset: 216)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1746, file: !1747, line: 422, baseType: !1758, size: 8, offset: 224)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1746, file: !1747, line: 423, baseType: !1758, size: 8, offset: 232)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1746, file: !1747, line: 424, baseType: !1758, size: 8, offset: 240)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1746, file: !1747, line: 425, baseType: !1758, size: 8, offset: 248)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1746, file: !1747, line: 426, baseType: !1758, size: 8, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1746, file: !1747, line: 427, baseType: !1758, size: 8, offset: 264)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1746, file: !1747, line: 428, baseType: !1758, size: 8, offset: 272)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1746, file: !1747, line: 429, baseType: !1758, size: 8, offset: 280)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1746, file: !1747, line: 430, baseType: !1758, size: 8, offset: 288)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1746, file: !1747, line: 431, baseType: !1758, size: 8, offset: 296)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1746, file: !1747, line: 432, baseType: !1758, size: 8, offset: 304)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1746, file: !1747, line: 433, baseType: !1758, size: 8, offset: 312)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1746, file: !1747, line: 434, baseType: !1758, size: 8, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1746, file: !1747, line: 435, baseType: !1758, size: 8, offset: 328)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1746, file: !1747, line: 436, baseType: !1758, size: 8, offset: 336)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1746, file: !1747, line: 437, baseType: !1758, size: 8, offset: 344)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1746, file: !1747, line: 438, baseType: !1758, size: 8, offset: 352)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1746, file: !1747, line: 439, baseType: !1758, size: 8, offset: 360)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1746, file: !1747, line: 440, baseType: !1758, size: 8, offset: 368)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1746, file: !1747, line: 441, baseType: !1758, size: 8, offset: 376)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1746, file: !1747, line: 442, baseType: !1758, size: 8, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1746, file: !1747, line: 443, baseType: !1758, size: 8, offset: 392)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1746, file: !1747, line: 444, baseType: !1758, size: 8, offset: 400)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1746, file: !1747, line: 445, baseType: !1758, size: 8, offset: 408)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1746, file: !1747, line: 446, baseType: !1758, size: 8, offset: 416)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1746, file: !1747, line: 447, baseType: !1758, size: 8, offset: 424)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1746, file: !1747, line: 448, baseType: !1758, size: 8, offset: 432)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1746, file: !1747, line: 449, baseType: !1758, size: 8, offset: 440)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1746, file: !1747, line: 450, baseType: !1758, size: 8, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1746, file: !1747, line: 451, baseType: !1758, size: 8, offset: 456)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1746, file: !1747, line: 452, baseType: !1758, size: 8, offset: 464)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1746, file: !1747, line: 453, baseType: !1758, size: 8, offset: 472)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1746, file: !1747, line: 454, baseType: !1758, size: 8, offset: 480)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1746, file: !1747, line: 455, baseType: !1758, size: 8, offset: 488)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1746, file: !1747, line: 456, baseType: !1758, size: 8, offset: 496)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1746, file: !1747, line: 457, baseType: !1758, size: 8, offset: 504)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1746, file: !1747, line: 458, baseType: !1758, size: 8, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1746, file: !1747, line: 459, baseType: !1758, size: 8, offset: 520)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1746, file: !1747, line: 460, baseType: !1758, size: 8, offset: 528)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1746, file: !1747, line: 461, baseType: !1758, size: 8, offset: 536)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1746, file: !1747, line: 462, baseType: !1758, size: 8, offset: 544)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1746, file: !1747, line: 463, baseType: !1758, size: 8, offset: 552)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1746, file: !1747, line: 464, baseType: !1758, size: 8, offset: 560)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1746, file: !1747, line: 465, baseType: !1758, size: 8, offset: 568)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1746, file: !1747, line: 466, baseType: !1758, size: 8, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1746, file: !1747, line: 467, baseType: !1758, size: 8, offset: 584)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1746, file: !1747, line: 468, baseType: !1758, size: 8, offset: 592)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1746, file: !1747, line: 469, baseType: !1758, size: 8, offset: 600)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1746, file: !1747, line: 470, baseType: !1758, size: 8, offset: 608)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1746, file: !1747, line: 471, baseType: !1758, size: 8, offset: 616)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1746, file: !1747, line: 472, baseType: !1758, size: 8, offset: 624)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1746, file: !1747, line: 473, baseType: !1758, size: 8, offset: 632)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1746, file: !1747, line: 474, baseType: !1758, size: 8, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1746, file: !1747, line: 475, baseType: !1758, size: 8, offset: 648)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1746, file: !1747, line: 476, baseType: !1758, size: 8, offset: 656)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1746, file: !1747, line: 477, baseType: !1758, size: 8, offset: 664)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1746, file: !1747, line: 478, baseType: !1758, size: 8, offset: 672)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1746, file: !1747, line: 479, baseType: !1758, size: 8, offset: 680)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1746, file: !1747, line: 480, baseType: !1758, size: 8, offset: 688)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1746, file: !1747, line: 481, baseType: !1758, size: 8, offset: 696)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1746, file: !1747, line: 482, baseType: !1758, size: 8, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1746, file: !1747, line: 483, baseType: !1758, size: 8, offset: 712)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1746, file: !1747, line: 484, baseType: !1758, size: 8, offset: 720)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1746, file: !1747, line: 485, baseType: !1758, size: 8, offset: 728)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1746, file: !1747, line: 486, baseType: !1758, size: 8, offset: 736)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1746, file: !1747, line: 487, baseType: !1758, size: 8, offset: 744)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1746, file: !1747, line: 488, baseType: !1758, size: 8, offset: 752)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1746, file: !1747, line: 489, baseType: !1758, size: 8, offset: 760)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1746, file: !1747, line: 490, baseType: !1758, size: 8, offset: 768)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1746, file: !1747, line: 491, baseType: !1758, size: 8, offset: 776)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1746, file: !1747, line: 492, baseType: !1758, size: 8, offset: 784)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1746, file: !1747, line: 493, baseType: !1758, size: 8, offset: 792)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1746, file: !1747, line: 494, baseType: !1758, size: 8, offset: 800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1746, file: !1747, line: 495, baseType: !1758, size: 8, offset: 808)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1746, file: !1747, line: 496, baseType: !1758, size: 8, offset: 816)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1746, file: !1747, line: 497, baseType: !1758, size: 8, offset: 824)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1746, file: !1747, line: 498, baseType: !1758, size: 8, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1746, file: !1747, line: 499, baseType: !1758, size: 8, offset: 840)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1746, file: !1747, line: 500, baseType: !1758, size: 8, offset: 848)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1746, file: !1747, line: 501, baseType: !1758, size: 8, offset: 856)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1746, file: !1747, line: 502, baseType: !1758, size: 8, offset: 864)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1746, file: !1747, line: 503, baseType: !1758, size: 8, offset: 872)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1746, file: !1747, line: 504, baseType: !1758, size: 8, offset: 880)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1746, file: !1747, line: 505, baseType: !1758, size: 8, offset: 888)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1746, file: !1747, line: 506, baseType: !1758, size: 8, offset: 896)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1746, file: !1747, line: 507, baseType: !1758, size: 8, offset: 904)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1746, file: !1747, line: 508, baseType: !1758, size: 8, offset: 912)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1746, file: !1747, line: 509, baseType: !1758, size: 8, offset: 920)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1746, file: !1747, line: 510, baseType: !1758, size: 8, offset: 928)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1746, file: !1747, line: 511, baseType: !1758, size: 8, offset: 936)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1746, file: !1747, line: 512, baseType: !1758, size: 8, offset: 944)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1746, file: !1747, line: 513, baseType: !1758, size: 8, offset: 952)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1746, file: !1747, line: 514, baseType: !1758, size: 8, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1746, file: !1747, line: 515, baseType: !1758, size: 8, offset: 968)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1746, file: !1747, line: 516, baseType: !1758, size: 8, offset: 976)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1746, file: !1747, line: 517, baseType: !1758, size: 8, offset: 984)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1746, file: !1747, line: 518, baseType: !1758, size: 8, offset: 992)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1746, file: !1747, line: 519, baseType: !1758, size: 8, offset: 1000)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1746, file: !1747, line: 520, baseType: !1758, size: 8, offset: 1008)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1746, file: !1747, line: 521, baseType: !1758, size: 8, offset: 1016)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1746, file: !1747, line: 522, baseType: !1758, size: 8, offset: 1024)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1746, file: !1747, line: 523, baseType: !1758, size: 8, offset: 1032)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1746, file: !1747, line: 524, baseType: !1758, size: 8, offset: 1040)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1746, file: !1747, line: 525, baseType: !1758, size: 8, offset: 1048)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1746, file: !1747, line: 526, baseType: !1758, size: 8, offset: 1056)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1746, file: !1747, line: 527, baseType: !1758, size: 8, offset: 1064)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1746, file: !1747, line: 528, baseType: !1758, size: 8, offset: 1072)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1746, file: !1747, line: 529, baseType: !1758, size: 8, offset: 1080)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1746, file: !1747, line: 530, baseType: !1758, size: 8, offset: 1088)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1746, file: !1747, line: 531, baseType: !1758, size: 8, offset: 1096)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1746, file: !1747, line: 532, baseType: !1758, size: 8, offset: 1104)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1746, file: !1747, line: 533, baseType: !1758, size: 8, offset: 1112)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1746, file: !1747, line: 534, baseType: !1758, size: 8, offset: 1120)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1746, file: !1747, line: 535, baseType: !1758, size: 8, offset: 1128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1746, file: !1747, line: 536, baseType: !1758, size: 8, offset: 1136)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1746, file: !1747, line: 537, baseType: !1758, size: 8, offset: 1144)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1746, file: !1747, line: 538, baseType: !1758, size: 8, offset: 1152)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1746, file: !1747, line: 539, baseType: !1758, size: 8, offset: 1160)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1746, file: !1747, line: 540, baseType: !1758, size: 8, offset: 1168)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1746, file: !1747, line: 541, baseType: !1758, size: 8, offset: 1176)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1746, file: !1747, line: 542, baseType: !1758, size: 8, offset: 1184)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1746, file: !1747, line: 543, baseType: !1758, size: 8, offset: 1192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1746, file: !1747, line: 544, baseType: !1758, size: 8, offset: 1200)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1746, file: !1747, line: 545, baseType: !1758, size: 8, offset: 1208)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1746, file: !1747, line: 546, baseType: !1758, size: 8, offset: 1216)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1746, file: !1747, line: 547, baseType: !1758, size: 8, offset: 1224)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1746, file: !1747, line: 548, baseType: !1758, size: 8, offset: 1232)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1746, file: !1747, line: 549, baseType: !1758, size: 8, offset: 1240)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1746, file: !1747, line: 550, baseType: !1758, size: 8, offset: 1248)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1746, file: !1747, line: 551, baseType: !1758, size: 8, offset: 1256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1746, file: !1747, line: 552, baseType: !1758, size: 8, offset: 1264)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1746, file: !1747, line: 553, baseType: !1758, size: 8, offset: 1272)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1746, file: !1747, line: 554, baseType: !1758, size: 8, offset: 1280)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1746, file: !1747, line: 555, baseType: !1758, size: 8, offset: 1288)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1746, file: !1747, line: 556, baseType: !1758, size: 8, offset: 1296)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1746, file: !1747, line: 557, baseType: !1758, size: 8, offset: 1304)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1746, file: !1747, line: 558, baseType: !1758, size: 8, offset: 1312)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1746, file: !1747, line: 559, baseType: !1758, size: 8, offset: 1320)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1746, file: !1747, line: 560, baseType: !1758, size: 8, offset: 1328)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1746, file: !1747, line: 561, baseType: !1758, size: 8, offset: 1336)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1746, file: !1747, line: 562, baseType: !1758, size: 8, offset: 1344)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1746, file: !1747, line: 563, baseType: !1758, size: 8, offset: 1352)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1746, file: !1747, line: 564, baseType: !1758, size: 8, offset: 1360)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1746, file: !1747, line: 565, baseType: !1758, size: 8, offset: 1368)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1746, file: !1747, line: 566, baseType: !1758, size: 8, offset: 1376)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1746, file: !1747, line: 567, baseType: !1758, size: 8, offset: 1384)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1746, file: !1747, line: 568, baseType: !1758, size: 8, offset: 1392)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1746, file: !1747, line: 569, baseType: !1758, size: 8, offset: 1400)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1746, file: !1747, line: 570, baseType: !1758, size: 8, offset: 1408)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1746, file: !1747, line: 571, baseType: !1758, size: 8, offset: 1416)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1746, file: !1747, line: 572, baseType: !1758, size: 8, offset: 1424)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1746, file: !1747, line: 573, baseType: !1758, size: 8, offset: 1432)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1746, file: !1747, line: 574, baseType: !1758, size: 8, offset: 1440)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !606, file: !334, line: 3405, baseType: !1914, size: 384)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1914, file: !334, line: 3353, baseType: !642, size: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1914, file: !334, line: 3356, baseType: !1918, size: 192, offset: 192)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1747, line: 578, size: 192, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1918, file: !1747, line: 580, baseType: !596, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1918, file: !1747, line: 581, baseType: !596, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1918, file: !1747, line: 582, baseType: !596, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1918, file: !1747, line: 583, baseType: !596, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1918, file: !1747, line: 584, baseType: !595, size: 8, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1918, file: !1747, line: 585, baseType: !595, size: 8, offset: 136)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1918, file: !1747, line: 586, baseType: !595, size: 8, offset: 144)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1918, file: !1747, line: 587, baseType: !595, size: 8, offset: 152)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1918, file: !1747, line: 588, baseType: !595, size: 8, offset: 160)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1918, file: !1747, line: 589, baseType: !595, size: 8, offset: 168)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1918, file: !1747, line: 590, baseType: !595, size: 8, offset: 176)
!1931 = !{!0, !1932, !1976, !1992, !1994, !1996, !1998, !2000, !2002, !2004, !2006, !2008, !2010, !2012}
!1932 = !DIGlobalVariableExpression(var: !1933, expr: !DIExpression())
!1933 = distinct !DIGlobalVariable(name: "tree_profile_hooks", scope: !2, file: !3, line: 512, type: !1934, isLocal: false, isDefinition: true)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "profile_hooks", file: !561, line: 81, size: 576, elements: !1935)
!1935 = !{!1936, !1940, !1944, !1970, !1971, !1972, !1973, !1974, !1975}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "init_edge_profiler", scope: !1934, file: !561, line: 84, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gen_edge_profiler", scope: !1934, file: !561, line: 87, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !596, !907}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "gen_interval_profiler", scope: !1934, file: !561, line: 90, baseType: !1945, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1948, !7, !7}
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "histogram_value", file: !561, line: 65, baseType: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "histogram_value_t", file: !561, line: 44, size: 384, elements: !1951)
!1951 = !{!1952, !1960, !1961, !1962}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "hvalue", scope: !1950, file: !561, line: 52, baseType: !1953, size: 256)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1950, file: !561, line: 46, size: 256, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1959}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1953, file: !561, line: 48, baseType: !603, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1953, file: !561, line: 49, baseType: !928, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1953, file: !561, line: 50, baseType: !1958, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1953, file: !561, line: 51, baseType: !1949, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1950, file: !561, line: 53, baseType: !560, size: 32, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "n_counters", scope: !1950, file: !561, line: 54, baseType: !7, size: 32, offset: 288)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "hdata", scope: !1950, file: !561, line: 62, baseType: !1963, size: 64, offset: 320)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !561, line: 55, size: 64, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "intvl", scope: !1963, file: !561, line: 61, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1963, file: !561, line: 57, size: 64, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "int_start", scope: !1966, file: !561, line: 59, baseType: !596, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !1966, file: !561, line: 60, baseType: !7, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "gen_pow2_profiler", scope: !1934, file: !561, line: 93, baseType: !1945, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gen_one_value_profiler", scope: !1934, file: !561, line: 96, baseType: !1945, size: 64, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gen_const_delta_profiler", scope: !1934, file: !561, line: 100, baseType: !1945, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "gen_ic_profiler", scope: !1934, file: !561, line: 103, baseType: !1945, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gen_average_profiler", scope: !1934, file: !561, line: 106, baseType: !1945, size: 64, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "gen_ior_profiler", scope: !1934, file: !561, line: 109, baseType: !1945, size: 64, offset: 512)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_tree_profile_h", scope: !2, file: !1978, line: 24, type: !1979, isLocal: false, isDefinition: true)
!1978 = !DIFile(filename: "./gt-tree-profile.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1980, size: 3840, elements: !1990)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1982, line: 69, size: 320, elements: !1983)
!1982 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1983 = !{!1984, !1985, !1986, !1987, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1981, file: !1982, line: 70, baseType: !600, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1981, file: !1982, line: 71, baseType: !1074, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1981, file: !1982, line: 72, baseType: !1074, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1981, file: !1982, line: 73, baseType: !1988, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1982, line: 65, baseType: !1412)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1981, file: !1982, line: 74, baseType: !1988, size: 64, offset: 256)
!1990 = !{!1991}
!1991 = !DISubrange(count: 12)
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(name: "gcov_type_node", scope: !2, file: !3, line: 50, type: !603, isLocal: true, isDefinition: true)
!1994 = !DIGlobalVariableExpression(var: !1995, expr: !DIExpression())
!1995 = distinct !DIGlobalVariable(name: "gcov_type_tmp_var", scope: !2, file: !3, line: 51, type: !603, isLocal: true, isDefinition: true)
!1996 = !DIGlobalVariableExpression(var: !1997, expr: !DIExpression())
!1997 = distinct !DIGlobalVariable(name: "tree_interval_profiler_fn", scope: !2, file: !3, line: 52, type: !603, isLocal: true, isDefinition: true)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(name: "tree_pow2_profiler_fn", scope: !2, file: !3, line: 53, type: !603, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(name: "tree_one_value_profiler_fn", scope: !2, file: !3, line: 54, type: !603, isLocal: true, isDefinition: true)
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(name: "tree_indirect_call_profiler_fn", scope: !2, file: !3, line: 55, type: !603, isLocal: true, isDefinition: true)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(name: "tree_average_profiler_fn", scope: !2, file: !3, line: 56, type: !603, isLocal: true, isDefinition: true)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(name: "tree_ior_profiler_fn", scope: !2, file: !3, line: 57, type: !603, isLocal: true, isDefinition: true)
!2008 = !DIGlobalVariableExpression(var: !2009, expr: !DIExpression())
!2009 = distinct !DIGlobalVariable(name: "ic_void_ptr_var", scope: !2, file: !3, line: 60, type: !603, isLocal: true, isDefinition: true)
!2010 = !DIGlobalVariableExpression(var: !2011, expr: !DIExpression())
!2011 = distinct !DIGlobalVariable(name: "ic_gcov_type_ptr_var", scope: !2, file: !3, line: 61, type: !603, isLocal: true, isDefinition: true)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(name: "ptr_void", scope: !2, file: !3, line: 62, type: !603, isLocal: true, isDefinition: true)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2014, file: !6, line: 158, baseType: !2017, size: 640)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2025, !2029, !2031, !2032, !2033, !2035, !2036, !2037, !2038, !2039}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2017, file: !6, line: 117, baseType: !5, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2017, file: !6, line: 121, baseType: !601, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2017, file: !6, line: 125, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!595}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2017, file: !6, line: 130, baseType: !2026, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!7}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2017, file: !6, line: 133, baseType: !2030, size: 64, offset: 256)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2017, file: !6, line: 136, baseType: !2030, size: 64, offset: 320)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2017, file: !6, line: 139, baseType: !596, size: 32, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2017, file: !6, line: 143, baseType: !2034, size: 32, offset: 416)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2017, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2017, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2017, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2017, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2017, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2040 = !{i32 2, !"Dwarf Version", i32 4}
!2041 = !{i32 2, !"Debug Info Version", i32 3}
!2042 = !{i32 1, !"wchar_size", i32 4}
!2043 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2044 = distinct !DISubprogram(name: "vprintf", scope: !2045, file: !2045, line: 39, type: !2046, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2056)
!2045 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!596, !2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !601)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2050, file: !3, baseType: !7, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2050, file: !3, baseType: !7, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2050, file: !3, baseType: !600, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2050, file: !3, baseType: !600, size: 64, offset: 128)
!2056 = !{!2057, !2058}
!2057 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2044, file: !2045, line: 39, type: !2048)
!2058 = !DILocalVariable(name: "__arg", arg: 2, scope: !2044, file: !2045, line: 39, type: !2049)
!2059 = !DILocation(line: 0, scope: !2044)
!2060 = !DILocation(line: 41, column: 20, scope: !2044)
!2061 = !DILocation(line: 41, column: 10, scope: !2044)
!2062 = !DILocation(line: 41, column: 3, scope: !2044)
!2063 = distinct !DISubprogram(name: "getchar", scope: !2045, file: !2045, line: 47, type: !2064, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!596}
!2066 = !{}
!2067 = !DILocation(line: 49, column: 16, scope: !2063)
!2068 = !DILocation(line: 49, column: 10, scope: !2063)
!2069 = !DILocation(line: 49, column: 3, scope: !2063)
!2070 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2045, file: !2045, line: 56, type: !2071, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!596, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2075, line: 7, baseType: !2076)
!2075 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2077, line: 49, size: 1728, elements: !2078)
!2077 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2094, !2096, !2097, !2098, !2101, !2103, !2104, !2105, !2108, !2110, !2113, !2116, !2117, !2118, !2119, !2120}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2076, file: !2077, line: 51, baseType: !596, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2076, file: !2077, line: 54, baseType: !598, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2076, file: !2077, line: 55, baseType: !598, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2076, file: !2077, line: 56, baseType: !598, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2076, file: !2077, line: 57, baseType: !598, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2076, file: !2077, line: 58, baseType: !598, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2076, file: !2077, line: 59, baseType: !598, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2076, file: !2077, line: 60, baseType: !598, size: 64, offset: 448)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2076, file: !2077, line: 61, baseType: !598, size: 64, offset: 512)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2076, file: !2077, line: 64, baseType: !598, size: 64, offset: 576)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2076, file: !2077, line: 65, baseType: !598, size: 64, offset: 640)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2076, file: !2077, line: 66, baseType: !598, size: 64, offset: 704)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2076, file: !2077, line: 68, baseType: !2092, size: 64, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2077, line: 36, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2076, file: !2077, line: 70, baseType: !2095, size: 64, offset: 832)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2076, file: !2077, line: 72, baseType: !596, size: 32, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2076, file: !2077, line: 73, baseType: !596, size: 32, offset: 928)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2076, file: !2077, line: 74, baseType: !2099, size: 64, offset: 960)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2100, line: 152, baseType: !659)
!2100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2076, file: !2077, line: 77, baseType: !2102, size: 16, offset: 1024)
!2102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2076, file: !2077, line: 78, baseType: !1758, size: 8, offset: 1040)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2076, file: !2077, line: 79, baseType: !701, size: 8, offset: 1048)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2076, file: !2077, line: 81, baseType: !2106, size: 64, offset: 1088)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2077, line: 43, baseType: null)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2076, file: !2077, line: 89, baseType: !2109, size: 64, offset: 1152)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2100, line: 153, baseType: !659)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2076, file: !2077, line: 91, baseType: !2111, size: 64, offset: 1216)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2077, line: 37, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2076, file: !2077, line: 92, baseType: !2114, size: 64, offset: 1280)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2077, line: 38, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2076, file: !2077, line: 93, baseType: !2095, size: 64, offset: 1344)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2076, file: !2077, line: 94, baseType: !600, size: 64, offset: 1408)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2076, file: !2077, line: 95, baseType: !1074, size: 64, offset: 1472)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2076, file: !2077, line: 96, baseType: !596, size: 32, offset: 1536)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2076, file: !2077, line: 98, baseType: !2121, size: 160, offset: 1568)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 160, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 20)
!2124 = !{!2125}
!2125 = !DILocalVariable(name: "__fp", arg: 1, scope: !2070, file: !2045, line: 56, type: !2073)
!2126 = !DILocation(line: 0, scope: !2070)
!2127 = !DILocation(line: 58, column: 10, scope: !2070)
!2128 = !DILocation(line: 58, column: 3, scope: !2070)
!2129 = distinct !DISubprogram(name: "getc_unlocked", scope: !2045, file: !2045, line: 66, type: !2071, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__fp", arg: 1, scope: !2129, file: !2045, line: 66, type: !2073)
!2132 = !DILocation(line: 0, scope: !2129)
!2133 = !DILocation(line: 68, column: 10, scope: !2129)
!2134 = !DILocation(line: 68, column: 3, scope: !2129)
!2135 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2045, file: !2045, line: 73, type: !2064, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2136 = !DILocation(line: 75, column: 10, scope: !2135)
!2137 = !DILocation(line: 75, column: 3, scope: !2135)
!2138 = distinct !DISubprogram(name: "putchar", scope: !2045, file: !2045, line: 82, type: !2139, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!596, !596}
!2141 = !{!2142}
!2142 = !DILocalVariable(name: "__c", arg: 1, scope: !2138, file: !2045, line: 82, type: !596)
!2143 = !DILocation(line: 0, scope: !2138)
!2144 = !DILocation(line: 84, column: 21, scope: !2138)
!2145 = !DILocation(line: 84, column: 10, scope: !2138)
!2146 = !DILocation(line: 84, column: 3, scope: !2138)
!2147 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2045, file: !2045, line: 91, type: !2148, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!596, !596, !2073}
!2150 = !{!2151, !2152}
!2151 = !DILocalVariable(name: "__c", arg: 1, scope: !2147, file: !2045, line: 91, type: !596)
!2152 = !DILocalVariable(name: "__stream", arg: 2, scope: !2147, file: !2045, line: 91, type: !2073)
!2153 = !DILocation(line: 0, scope: !2147)
!2154 = !DILocation(line: 93, column: 10, scope: !2147)
!2155 = !DILocation(line: 93, column: 3, scope: !2147)
!2156 = distinct !DISubprogram(name: "putc_unlocked", scope: !2045, file: !2045, line: 101, type: !2148, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2157 = !{!2158, !2159}
!2158 = !DILocalVariable(name: "__c", arg: 1, scope: !2156, file: !2045, line: 101, type: !596)
!2159 = !DILocalVariable(name: "__stream", arg: 2, scope: !2156, file: !2045, line: 101, type: !2073)
!2160 = !DILocation(line: 0, scope: !2156)
!2161 = !DILocation(line: 103, column: 10, scope: !2156)
!2162 = !DILocation(line: 103, column: 3, scope: !2156)
!2163 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2045, file: !2045, line: 108, type: !2139, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "__c", arg: 1, scope: !2163, file: !2045, line: 108, type: !596)
!2166 = !DILocation(line: 0, scope: !2163)
!2167 = !DILocation(line: 110, column: 10, scope: !2163)
!2168 = !DILocation(line: 110, column: 3, scope: !2163)
!2169 = distinct !DISubprogram(name: "getline", scope: !2045, file: !2045, line: 118, type: !2170, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2172, !597, !2173, !2073}
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2100, line: 193, baseType: !659)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!2174 = !{!2175, !2176, !2177}
!2175 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2169, file: !2045, line: 118, type: !597)
!2176 = !DILocalVariable(name: "__n", arg: 2, scope: !2169, file: !2045, line: 118, type: !2173)
!2177 = !DILocalVariable(name: "__stream", arg: 3, scope: !2169, file: !2045, line: 118, type: !2073)
!2178 = !DILocation(line: 0, scope: !2169)
!2179 = !DILocation(line: 120, column: 10, scope: !2169)
!2180 = !DILocation(line: 120, column: 3, scope: !2169)
!2181 = distinct !DISubprogram(name: "feof_unlocked", scope: !2045, file: !2045, line: 128, type: !2071, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "__stream", arg: 1, scope: !2181, file: !2045, line: 128, type: !2073)
!2184 = !DILocation(line: 0, scope: !2181)
!2185 = !DILocation(line: 130, column: 10, scope: !2181)
!2186 = !DILocation(line: 130, column: 3, scope: !2181)
!2187 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2045, file: !2045, line: 135, type: !2071, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "__stream", arg: 1, scope: !2187, file: !2045, line: 135, type: !2073)
!2190 = !DILocation(line: 0, scope: !2187)
!2191 = !DILocation(line: 137, column: 10, scope: !2187)
!2192 = !DILocation(line: 137, column: 3, scope: !2187)
!2193 = distinct !DISubprogram(name: "tolower", scope: !2194, file: !2194, line: 207, type: !2139, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2194 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2195 = !{!2196}
!2196 = !DILocalVariable(name: "__c", arg: 1, scope: !2193, file: !2194, line: 207, type: !596)
!2197 = !DILocation(line: 0, scope: !2193)
!2198 = !DILocation(line: 209, column: 22, scope: !2193)
!2199 = !DILocation(line: 209, column: 39, scope: !2193)
!2200 = !DILocation(line: 209, column: 38, scope: !2193)
!2201 = !DILocation(line: 209, column: 37, scope: !2193)
!2202 = !DILocation(line: 209, column: 10, scope: !2193)
!2203 = !DILocation(line: 209, column: 3, scope: !2193)
!2204 = distinct !DISubprogram(name: "toupper", scope: !2194, file: !2194, line: 213, type: !2139, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2205 = !{!2206}
!2206 = !DILocalVariable(name: "__c", arg: 1, scope: !2204, file: !2194, line: 213, type: !596)
!2207 = !DILocation(line: 0, scope: !2204)
!2208 = !DILocation(line: 215, column: 22, scope: !2204)
!2209 = !DILocation(line: 215, column: 39, scope: !2204)
!2210 = !DILocation(line: 215, column: 38, scope: !2204)
!2211 = !DILocation(line: 215, column: 37, scope: !2204)
!2212 = !DILocation(line: 215, column: 10, scope: !2204)
!2213 = !DILocation(line: 215, column: 3, scope: !2204)
!2214 = distinct !DISubprogram(name: "atoi", scope: !2215, file: !2215, line: 361, type: !2216, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2215 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!596, !601}
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2214, file: !2215, line: 361, type: !601)
!2220 = !DILocation(line: 0, scope: !2214)
!2221 = !DILocation(line: 363, column: 16, scope: !2214)
!2222 = !DILocation(line: 363, column: 10, scope: !2214)
!2223 = !DILocation(line: 363, column: 3, scope: !2214)
!2224 = distinct !DISubprogram(name: "atol", scope: !2215, file: !2215, line: 366, type: !2225, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!659, !601}
!2227 = !{!2228}
!2228 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2224, file: !2215, line: 366, type: !601)
!2229 = !DILocation(line: 0, scope: !2224)
!2230 = !DILocation(line: 368, column: 10, scope: !2224)
!2231 = !DILocation(line: 368, column: 3, scope: !2224)
!2232 = distinct !DISubprogram(name: "atoll", scope: !2215, file: !2215, line: 373, type: !2233, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2235, !601}
!2235 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2236 = !{!2237}
!2237 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2232, file: !2215, line: 373, type: !601)
!2238 = !DILocation(line: 0, scope: !2232)
!2239 = !DILocation(line: 375, column: 10, scope: !2232)
!2240 = !DILocation(line: 375, column: 3, scope: !2232)
!2241 = distinct !DISubprogram(name: "bsearch", scope: !2242, file: !2242, line: 20, type: !2243, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2246)
!2242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!600, !1235, !1235, !1074, !1074, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2215, line: 808, baseType: !1407)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256}
!2247 = !DILocalVariable(name: "__key", arg: 1, scope: !2241, file: !2242, line: 20, type: !1235)
!2248 = !DILocalVariable(name: "__base", arg: 2, scope: !2241, file: !2242, line: 20, type: !1235)
!2249 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2241, file: !2242, line: 20, type: !1074)
!2250 = !DILocalVariable(name: "__size", arg: 4, scope: !2241, file: !2242, line: 20, type: !1074)
!2251 = !DILocalVariable(name: "__compar", arg: 5, scope: !2241, file: !2242, line: 21, type: !2245)
!2252 = !DILocalVariable(name: "__l", scope: !2241, file: !2242, line: 23, type: !1074)
!2253 = !DILocalVariable(name: "__u", scope: !2241, file: !2242, line: 23, type: !1074)
!2254 = !DILocalVariable(name: "__idx", scope: !2241, file: !2242, line: 23, type: !1074)
!2255 = !DILocalVariable(name: "__p", scope: !2241, file: !2242, line: 24, type: !1235)
!2256 = !DILocalVariable(name: "__comparison", scope: !2241, file: !2242, line: 25, type: !596)
!2257 = !DILocation(line: 0, scope: !2241)
!2258 = !DILocation(line: 29, column: 3, scope: !2241)
!2259 = !DILocation(line: 27, column: 7, scope: !2241)
!2260 = !DILocation(line: 29, column: 14, scope: !2241)
!2261 = !DILocation(line: 31, column: 20, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2241, file: !2242, line: 30, column: 5)
!2263 = !DILocation(line: 31, column: 27, scope: !2262)
!2264 = !DILocation(line: 32, column: 56, scope: !2262)
!2265 = !DILocation(line: 32, column: 47, scope: !2262)
!2266 = !DILocation(line: 33, column: 22, scope: !2262)
!2267 = !DILocation(line: 34, column: 24, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2262, file: !2242, line: 34, column: 11)
!2269 = !DILocation(line: 34, column: 11, scope: !2262)
!2270 = !DILocation(line: 36, column: 29, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !2242, line: 36, column: 16)
!2272 = !DILocation(line: 36, column: 16, scope: !2268)
!2273 = !DILocation(line: 37, column: 14, scope: !2271)
!2274 = distinct !{!2274, !2258, !2275}
!2275 = !DILocation(line: 40, column: 5, scope: !2241)
!2276 = !DILocation(line: 43, column: 1, scope: !2241)
!2277 = distinct !DISubprogram(name: "atof", scope: !2278, file: !2278, line: 25, type: !2279, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2282)
!2278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!2281, !601}
!2281 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2282 = !{!2283}
!2283 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2277, file: !2278, line: 25, type: !601)
!2284 = !DILocation(line: 0, scope: !2277)
!2285 = !DILocation(line: 27, column: 10, scope: !2277)
!2286 = !DILocation(line: 27, column: 3, scope: !2277)
!2287 = distinct !DISubprogram(name: "strtoimax", scope: !2288, file: !2288, line: 324, type: !2289, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2288 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!2291, !2048, !2294, !596}
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2292, line: 101, baseType: !2293)
!2292 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2100, line: 72, baseType: !659)
!2294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !597)
!2295 = !{!2296, !2297, !2298}
!2296 = !DILocalVariable(name: "nptr", arg: 1, scope: !2287, file: !2288, line: 324, type: !2048)
!2297 = !DILocalVariable(name: "endptr", arg: 2, scope: !2287, file: !2288, line: 324, type: !2294)
!2298 = !DILocalVariable(name: "base", arg: 3, scope: !2287, file: !2288, line: 324, type: !596)
!2299 = !DILocation(line: 0, scope: !2287)
!2300 = !DILocation(line: 327, column: 10, scope: !2287)
!2301 = !DILocation(line: 327, column: 3, scope: !2287)
!2302 = distinct !DISubprogram(name: "strtoumax", scope: !2288, file: !2288, line: 336, type: !2303, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!2305, !2048, !2294, !596}
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2292, line: 102, baseType: !2306)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2100, line: 73, baseType: !657)
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "nptr", arg: 1, scope: !2302, file: !2288, line: 336, type: !2048)
!2309 = !DILocalVariable(name: "endptr", arg: 2, scope: !2302, file: !2288, line: 336, type: !2294)
!2310 = !DILocalVariable(name: "base", arg: 3, scope: !2302, file: !2288, line: 336, type: !596)
!2311 = !DILocation(line: 0, scope: !2302)
!2312 = !DILocation(line: 339, column: 10, scope: !2302)
!2313 = !DILocation(line: 339, column: 3, scope: !2302)
!2314 = distinct !DISubprogram(name: "wcstoimax", scope: !2288, file: !2288, line: 348, type: !2315, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!2291, !2317, !2321, !596}
!2317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2318)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2288, line: 34, baseType: !596)
!2321 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "nptr", arg: 1, scope: !2314, file: !2288, line: 348, type: !2317)
!2326 = !DILocalVariable(name: "endptr", arg: 2, scope: !2314, file: !2288, line: 348, type: !2321)
!2327 = !DILocalVariable(name: "base", arg: 3, scope: !2314, file: !2288, line: 348, type: !596)
!2328 = !DILocation(line: 0, scope: !2314)
!2329 = !DILocation(line: 351, column: 10, scope: !2314)
!2330 = !DILocation(line: 351, column: 3, scope: !2314)
!2331 = distinct !DISubprogram(name: "wcstoumax", scope: !2288, file: !2288, line: 362, type: !2332, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!2305, !2317, !2321, !596}
!2334 = !{!2335, !2336, !2337}
!2335 = !DILocalVariable(name: "nptr", arg: 1, scope: !2331, file: !2288, line: 362, type: !2317)
!2336 = !DILocalVariable(name: "endptr", arg: 2, scope: !2331, file: !2288, line: 362, type: !2321)
!2337 = !DILocalVariable(name: "base", arg: 3, scope: !2331, file: !2288, line: 362, type: !596)
!2338 = !DILocation(line: 0, scope: !2331)
!2339 = !DILocation(line: 365, column: 10, scope: !2331)
!2340 = !DILocation(line: 365, column: 3, scope: !2331)
!2341 = distinct !DISubprogram(name: "stat", scope: !2342, file: !2342, line: 453, type: !2343, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2380)
!2342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!596, !601, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2347, line: 46, size: 1152, elements: !2348)
!2347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2348 = !{!2349, !2351, !2353, !2355, !2357, !2359, !2361, !2362, !2363, !2364, !2366, !2368, !2376, !2377, !2378}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2346, file: !2347, line: 48, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2100, line: 145, baseType: !657)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2346, file: !2347, line: 53, baseType: !2352, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2100, line: 148, baseType: !657)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2346, file: !2347, line: 61, baseType: !2354, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2100, line: 151, baseType: !657)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2346, file: !2347, line: 62, baseType: !2356, size: 32, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2100, line: 150, baseType: !7)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2346, file: !2347, line: 64, baseType: !2358, size: 32, offset: 224)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2100, line: 146, baseType: !7)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2346, file: !2347, line: 65, baseType: !2360, size: 32, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2100, line: 147, baseType: !7)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2346, file: !2347, line: 67, baseType: !596, size: 32, offset: 288)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2346, file: !2347, line: 69, baseType: !2350, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2346, file: !2347, line: 74, baseType: !2099, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2346, file: !2347, line: 78, baseType: !2365, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2100, line: 174, baseType: !659)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2346, file: !2347, line: 80, baseType: !2367, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2100, line: 179, baseType: !659)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2346, file: !2347, line: 91, baseType: !2369, size: 128, offset: 576)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2370, line: 10, size: 128, elements: !2371)
!2370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2371 = !{!2372, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2369, file: !2370, line: 12, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2100, line: 160, baseType: !659)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2369, file: !2370, line: 16, baseType: !2375, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2100, line: 196, baseType: !659)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2346, file: !2347, line: 92, baseType: !2369, size: 128, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2346, file: !2347, line: 93, baseType: !2369, size: 128, offset: 832)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2346, file: !2347, line: 106, baseType: !2379, size: 192, offset: 960)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2375, size: 192, elements: !677)
!2380 = !{!2381, !2382}
!2381 = !DILocalVariable(name: "__path", arg: 1, scope: !2341, file: !2342, line: 453, type: !601)
!2382 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2341, file: !2342, line: 453, type: !2345)
!2383 = !DILocation(line: 0, scope: !2341)
!2384 = !DILocation(line: 455, column: 10, scope: !2341)
!2385 = !DILocation(line: 455, column: 3, scope: !2341)
!2386 = distinct !DISubprogram(name: "lstat", scope: !2342, file: !2342, line: 460, type: !2343, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "__path", arg: 1, scope: !2386, file: !2342, line: 460, type: !601)
!2389 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2386, file: !2342, line: 460, type: !2345)
!2390 = !DILocation(line: 0, scope: !2386)
!2391 = !DILocation(line: 462, column: 10, scope: !2386)
!2392 = !DILocation(line: 462, column: 3, scope: !2386)
!2393 = distinct !DISubprogram(name: "fstat", scope: !2342, file: !2342, line: 467, type: !2394, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!596, !596, !2345}
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "__fd", arg: 1, scope: !2393, file: !2342, line: 467, type: !596)
!2398 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2393, file: !2342, line: 467, type: !2345)
!2399 = !DILocation(line: 0, scope: !2393)
!2400 = !DILocation(line: 469, column: 10, scope: !2393)
!2401 = !DILocation(line: 469, column: 3, scope: !2393)
!2402 = distinct !DISubprogram(name: "fstatat", scope: !2342, file: !2342, line: 474, type: !2403, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!596, !596, !601, !2345, !596}
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DILocalVariable(name: "__fd", arg: 1, scope: !2402, file: !2342, line: 474, type: !596)
!2407 = !DILocalVariable(name: "__filename", arg: 2, scope: !2402, file: !2342, line: 474, type: !601)
!2408 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2402, file: !2342, line: 474, type: !2345)
!2409 = !DILocalVariable(name: "__flag", arg: 4, scope: !2402, file: !2342, line: 474, type: !596)
!2410 = !DILocation(line: 0, scope: !2402)
!2411 = !DILocation(line: 477, column: 10, scope: !2402)
!2412 = !DILocation(line: 477, column: 3, scope: !2402)
!2413 = distinct !DISubprogram(name: "mknod", scope: !2342, file: !2342, line: 483, type: !2414, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!596, !601, !2356, !2350}
!2416 = !{!2417, !2418, !2419}
!2417 = !DILocalVariable(name: "__path", arg: 1, scope: !2413, file: !2342, line: 483, type: !601)
!2418 = !DILocalVariable(name: "__mode", arg: 2, scope: !2413, file: !2342, line: 483, type: !2356)
!2419 = !DILocalVariable(name: "__dev", arg: 3, scope: !2413, file: !2342, line: 483, type: !2350)
!2420 = !DILocation(line: 0, scope: !2413)
!2421 = !DILocation(line: 485, column: 10, scope: !2413)
!2422 = !DILocation(line: 485, column: 3, scope: !2413)
!2423 = distinct !DISubprogram(name: "mknodat", scope: !2342, file: !2342, line: 491, type: !2424, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!596, !596, !601, !2356, !2350}
!2426 = !{!2427, !2428, !2429, !2430}
!2427 = !DILocalVariable(name: "__fd", arg: 1, scope: !2423, file: !2342, line: 491, type: !596)
!2428 = !DILocalVariable(name: "__path", arg: 2, scope: !2423, file: !2342, line: 491, type: !601)
!2429 = !DILocalVariable(name: "__mode", arg: 3, scope: !2423, file: !2342, line: 491, type: !2356)
!2430 = !DILocalVariable(name: "__dev", arg: 4, scope: !2423, file: !2342, line: 491, type: !2350)
!2431 = !DILocation(line: 0, scope: !2423)
!2432 = !DILocation(line: 494, column: 10, scope: !2423)
!2433 = !DILocation(line: 494, column: 3, scope: !2423)
!2434 = distinct !DISubprogram(name: "stat64", scope: !2342, file: !2342, line: 502, type: !2435, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!596, !601, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2347, line: 119, size: 1152, elements: !2439)
!2439 = !{!2440, !2441, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2453, !2454, !2455, !2456}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2438, file: !2347, line: 121, baseType: !2350, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2438, file: !2347, line: 123, baseType: !2442, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2100, line: 149, baseType: !657)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2438, file: !2347, line: 124, baseType: !2354, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2438, file: !2347, line: 125, baseType: !2356, size: 32, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2438, file: !2347, line: 132, baseType: !2358, size: 32, offset: 224)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2438, file: !2347, line: 133, baseType: !2360, size: 32, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2438, file: !2347, line: 135, baseType: !596, size: 32, offset: 288)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2438, file: !2347, line: 136, baseType: !2350, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2438, file: !2347, line: 137, baseType: !2099, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2438, file: !2347, line: 143, baseType: !2365, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2438, file: !2347, line: 144, baseType: !2452, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2100, line: 180, baseType: !659)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2438, file: !2347, line: 152, baseType: !2369, size: 128, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2438, file: !2347, line: 153, baseType: !2369, size: 128, offset: 704)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2438, file: !2347, line: 154, baseType: !2369, size: 128, offset: 832)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2438, file: !2347, line: 164, baseType: !2379, size: 192, offset: 960)
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "__path", arg: 1, scope: !2434, file: !2342, line: 502, type: !601)
!2459 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2434, file: !2342, line: 502, type: !2437)
!2460 = !DILocation(line: 0, scope: !2434)
!2461 = !DILocation(line: 504, column: 10, scope: !2434)
!2462 = !DILocation(line: 504, column: 3, scope: !2434)
!2463 = distinct !DISubprogram(name: "lstat64", scope: !2342, file: !2342, line: 509, type: !2435, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2464)
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "__path", arg: 1, scope: !2463, file: !2342, line: 509, type: !601)
!2466 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2463, file: !2342, line: 509, type: !2437)
!2467 = !DILocation(line: 0, scope: !2463)
!2468 = !DILocation(line: 511, column: 10, scope: !2463)
!2469 = !DILocation(line: 511, column: 3, scope: !2463)
!2470 = distinct !DISubprogram(name: "fstat64", scope: !2342, file: !2342, line: 516, type: !2471, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!596, !596, !2437}
!2473 = !{!2474, !2475}
!2474 = !DILocalVariable(name: "__fd", arg: 1, scope: !2470, file: !2342, line: 516, type: !596)
!2475 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2470, file: !2342, line: 516, type: !2437)
!2476 = !DILocation(line: 0, scope: !2470)
!2477 = !DILocation(line: 518, column: 10, scope: !2470)
!2478 = !DILocation(line: 518, column: 3, scope: !2470)
!2479 = distinct !DISubprogram(name: "fstatat64", scope: !2342, file: !2342, line: 523, type: !2480, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!596, !596, !601, !2437, !596}
!2482 = !{!2483, !2484, !2485, !2486}
!2483 = !DILocalVariable(name: "__fd", arg: 1, scope: !2479, file: !2342, line: 523, type: !596)
!2484 = !DILocalVariable(name: "__filename", arg: 2, scope: !2479, file: !2342, line: 523, type: !601)
!2485 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2479, file: !2342, line: 523, type: !2437)
!2486 = !DILocalVariable(name: "__flag", arg: 4, scope: !2479, file: !2342, line: 523, type: !596)
!2487 = !DILocation(line: 0, scope: !2479)
!2488 = !DILocation(line: 526, column: 10, scope: !2479)
!2489 = !DILocation(line: 526, column: 3, scope: !2479)
!2490 = distinct !DISubprogram(name: "do_tree_profiling", scope: !3, file: !3, line: 449, type: !2023, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2491 = !DILocation(line: 451, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 451, column: 7)
!2493 = !DILocation(line: 451, column: 27, scope: !2492)
!2494 = !DILocation(line: 451, column: 24, scope: !2492)
!2495 = !DILocation(line: 451, column: 49, scope: !2492)
!2496 = !DILocation(line: 453, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 452, column: 5)
!2498 = !DILocation(line: 454, column: 7, scope: !2497)
!2499 = !DILocation(line: 455, column: 7, scope: !2497)
!2500 = !DILocation(line: 0, scope: !2490)
!2501 = !DILocation(line: 458, column: 1, scope: !2490)
!2502 = distinct !DISubprogram(name: "tree_profiling", scope: !3, file: !3, line: 461, type: !2027, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2503 = !DILocation(line: 467, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 467, column: 7)
!2505 = !DILocation(line: 467, column: 20, scope: !2504)
!2506 = !DILocation(line: 468, column: 7, scope: !2504)
!2507 = !DILocation(line: 468, column: 10, scope: !2504)
!2508 = !DILocation(line: 468, column: 16, scope: !2504)
!2509 = !DILocation(line: 467, column: 7, scope: !2502)
!2510 = !DILocation(line: 472, column: 21, scope: !2502)
!2511 = !DILocation(line: 474, column: 3, scope: !2502)
!2512 = !DILocation(line: 476, column: 9, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 476, column: 7)
!2514 = !DILocation(line: 477, column: 10, scope: !2513)
!2515 = !DILocation(line: 477, column: 7, scope: !2513)
!2516 = !DILocation(line: 478, column: 5, scope: !2513)
!2517 = !DILocation(line: 480, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 480, column: 7)
!2519 = !DILocation(line: 481, column: 10, scope: !2518)
!2520 = !DILocation(line: 481, column: 7, scope: !2518)
!2521 = !DILocation(line: 482, column: 10, scope: !2518)
!2522 = !DILocation(line: 483, column: 5, scope: !2518)
!2523 = !DILocation(line: 487, column: 3, scope: !2502)
!2524 = !DILocation(line: 488, column: 3, scope: !2502)
!2525 = !DILocation(line: 489, column: 3, scope: !2502)
!2526 = !DILocation(line: 489, column: 9, scope: !2502)
!2527 = !DILocation(line: 489, column: 28, scope: !2502)
!2528 = !DILocation(line: 490, column: 3, scope: !2502)
!2529 = !DILocation(line: 491, column: 1, scope: !2502)
!2530 = distinct !DISubprogram(name: "tree_init_edge_profiler", scope: !3, file: !3, line: 100, type: !1938, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537}
!2532 = !DILocalVariable(name: "interval_profiler_fn_type", scope: !2530, file: !3, line: 102, type: !603)
!2533 = !DILocalVariable(name: "pow2_profiler_fn_type", scope: !2530, file: !3, line: 103, type: !603)
!2534 = !DILocalVariable(name: "one_value_profiler_fn_type", scope: !2530, file: !3, line: 104, type: !603)
!2535 = !DILocalVariable(name: "gcov_type_ptr", scope: !2530, file: !3, line: 105, type: !603)
!2536 = !DILocalVariable(name: "ic_profiler_fn_type", scope: !2530, file: !3, line: 106, type: !603)
!2537 = !DILocalVariable(name: "average_profiler_fn_type", scope: !2530, file: !3, line: 107, type: !603)
!2538 = !DILocation(line: 109, column: 8, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 109, column: 7)
!2540 = !DILocation(line: 109, column: 7, scope: !2530)
!2541 = !DILocation(line: 111, column: 24, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 110, column: 5)
!2543 = !DILocation(line: 111, column: 22, scope: !2542)
!2544 = !DILocation(line: 112, column: 23, scope: !2542)
!2545 = !DILocation(line: 0, scope: !2530)
!2546 = !DILocation(line: 116, column: 36, scope: !2542)
!2547 = !DILocation(line: 117, column: 23, scope: !2542)
!2548 = !DILocation(line: 118, column: 8, scope: !2542)
!2549 = !DILocation(line: 119, column: 8, scope: !2542)
!2550 = !DILocation(line: 116, column: 10, scope: !2542)
!2551 = !DILocation(line: 121, column: 10, scope: !2542)
!2552 = !DILocation(line: 121, column: 8, scope: !2542)
!2553 = !DILocation(line: 126, column: 36, scope: !2542)
!2554 = !DILocation(line: 127, column: 23, scope: !2542)
!2555 = !DILocation(line: 126, column: 10, scope: !2542)
!2556 = !DILocation(line: 129, column: 31, scope: !2542)
!2557 = !DILocation(line: 129, column: 29, scope: !2542)
!2558 = !DILocation(line: 134, column: 36, scope: !2542)
!2559 = !DILocation(line: 135, column: 23, scope: !2542)
!2560 = !DILocation(line: 134, column: 10, scope: !2542)
!2561 = !DILocation(line: 138, column: 10, scope: !2542)
!2562 = !DILocation(line: 138, column: 8, scope: !2542)
!2563 = !DILocation(line: 141, column: 7, scope: !2542)
!2564 = !DILocation(line: 145, column: 37, scope: !2542)
!2565 = !DILocation(line: 146, column: 23, scope: !2542)
!2566 = !DILocation(line: 147, column: 8, scope: !2542)
!2567 = !DILocation(line: 145, column: 11, scope: !2542)
!2568 = !DILocation(line: 150, column: 10, scope: !2542)
!2569 = !DILocation(line: 150, column: 8, scope: !2542)
!2570 = !DILocation(line: 154, column: 36, scope: !2542)
!2571 = !DILocation(line: 155, column: 23, scope: !2542)
!2572 = !DILocation(line: 154, column: 10, scope: !2542)
!2573 = !DILocation(line: 157, column: 10, scope: !2542)
!2574 = !DILocation(line: 157, column: 8, scope: !2542)
!2575 = !DILocation(line: 160, column: 10, scope: !2542)
!2576 = !DILocation(line: 160, column: 8, scope: !2542)
!2577 = !DILocation(line: 164, column: 7, scope: !2542)
!2578 = !DILocation(line: 165, column: 7, scope: !2542)
!2579 = !DILocation(line: 166, column: 7, scope: !2542)
!2580 = !DILocation(line: 167, column: 7, scope: !2542)
!2581 = !DILocation(line: 168, column: 7, scope: !2542)
!2582 = !DILocation(line: 169, column: 7, scope: !2542)
!2583 = !DILocation(line: 170, column: 5, scope: !2542)
!2584 = !DILocation(line: 171, column: 1, scope: !2530)
!2585 = distinct !DISubprogram(name: "tree_gen_edge_profiler", scope: !3, file: !3, line: 192, type: !1942, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2587 = !DILocalVariable(name: "edgeno", arg: 1, scope: !2585, file: !3, line: 192, type: !596)
!2588 = !DILocalVariable(name: "e", arg: 2, scope: !2585, file: !3, line: 192, type: !907)
!2589 = !DILocalVariable(name: "ref", scope: !2585, file: !3, line: 194, type: !603)
!2590 = !DILocalVariable(name: "one", scope: !2585, file: !3, line: 194, type: !603)
!2591 = !DILocalVariable(name: "stmt1", scope: !2585, file: !3, line: 195, type: !928)
!2592 = !DILocalVariable(name: "stmt2", scope: !2585, file: !3, line: 195, type: !928)
!2593 = !DILocalVariable(name: "stmt3", scope: !2585, file: !3, line: 195, type: !928)
!2594 = !DILocation(line: 0, scope: !2585)
!2595 = !DILocation(line: 199, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 199, column: 7)
!2597 = !DILocation(line: 199, column: 25, scope: !2596)
!2598 = !DILocation(line: 199, column: 7, scope: !2585)
!2599 = !DILocation(line: 200, column: 41, scope: !2596)
!2600 = !DILocation(line: 200, column: 25, scope: !2596)
!2601 = !DILocation(line: 200, column: 23, scope: !2596)
!2602 = !DILocation(line: 200, column: 5, scope: !2596)
!2603 = !DILocation(line: 201, column: 9, scope: !2585)
!2604 = !DILocation(line: 202, column: 24, scope: !2585)
!2605 = !DILocation(line: 202, column: 9, scope: !2585)
!2606 = !DILocation(line: 203, column: 11, scope: !2585)
!2607 = !DILocation(line: 204, column: 11, scope: !2585)
!2608 = !DILocation(line: 206, column: 11, scope: !2585)
!2609 = !DILocation(line: 207, column: 3, scope: !2585)
!2610 = !DILocation(line: 208, column: 3, scope: !2585)
!2611 = !DILocation(line: 209, column: 3, scope: !2585)
!2612 = !DILocation(line: 210, column: 1, scope: !2585)
!2613 = distinct !DISubprogram(name: "tree_gen_interval_profiler", scope: !3, file: !3, line: 230, type: !1946, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2626, !2627, !2628, !2629, !2630, !2631}
!2615 = !DILocalVariable(name: "value", arg: 1, scope: !2613, file: !3, line: 230, type: !1948)
!2616 = !DILocalVariable(name: "tag", arg: 2, scope: !2613, file: !3, line: 230, type: !7)
!2617 = !DILocalVariable(name: "base", arg: 3, scope: !2613, file: !3, line: 230, type: !7)
!2618 = !DILocalVariable(name: "stmt", scope: !2613, file: !3, line: 232, type: !928)
!2619 = !DILocalVariable(name: "gsi", scope: !2613, file: !3, line: 233, type: !2620)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !920, line: 265, baseType: !2621)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !920, line: 254, size: 192, elements: !2622)
!2622 = !{!2623, !2624, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2621, file: !920, line: 257, baseType: !923, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2621, file: !920, line: 263, baseType: !917, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2621, file: !920, line: 264, baseType: !1362, size: 64, offset: 128)
!2626 = !DILocalVariable(name: "ref", scope: !2613, file: !3, line: 234, type: !603)
!2627 = !DILocalVariable(name: "ref_ptr", scope: !2613, file: !3, line: 234, type: !603)
!2628 = !DILocalVariable(name: "call", scope: !2613, file: !3, line: 235, type: !928)
!2629 = !DILocalVariable(name: "val", scope: !2613, file: !3, line: 236, type: !603)
!2630 = !DILocalVariable(name: "start", scope: !2613, file: !3, line: 237, type: !603)
!2631 = !DILocalVariable(name: "steps", scope: !2613, file: !3, line: 239, type: !603)
!2632 = !DILocation(line: 0, scope: !2613)
!2633 = !DILocation(line: 232, column: 31, scope: !2613)
!2634 = !DILocation(line: 233, column: 3, scope: !2613)
!2635 = !DILocation(line: 233, column: 30, scope: !2613)
!2636 = !DILocation(line: 234, column: 14, scope: !2613)
!2637 = !DILocation(line: 237, column: 36, scope: !2613)
!2638 = !DILocation(line: 238, column: 27, scope: !2613)
!2639 = !DILocation(line: 238, column: 8, scope: !2613)
!2640 = !DILocation(line: 237, column: 16, scope: !2613)
!2641 = !DILocation(line: 239, column: 36, scope: !2613)
!2642 = !DILocation(line: 240, column: 27, scope: !2613)
!2643 = !DILocation(line: 240, column: 8, scope: !2613)
!2644 = !DILocation(line: 239, column: 16, scope: !2613)
!2645 = !DILocation(line: 243, column: 28, scope: !2613)
!2646 = !DILocation(line: 243, column: 11, scope: !2613)
!2647 = !DILocation(line: 242, column: 13, scope: !2613)
!2648 = !DILocation(line: 245, column: 9, scope: !2613)
!2649 = !DILocation(line: 246, column: 29, scope: !2613)
!2650 = !DILocation(line: 246, column: 10, scope: !2613)
!2651 = !DILocation(line: 248, column: 3, scope: !2613)
!2652 = !DILocation(line: 249, column: 3, scope: !2613)
!2653 = !DILocation(line: 250, column: 1, scope: !2613)
!2654 = distinct !DISubprogram(name: "tree_gen_pow2_profiler", scope: !3, file: !3, line: 257, type: !1946, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2655)
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2656 = !DILocalVariable(name: "value", arg: 1, scope: !2654, file: !3, line: 257, type: !1948)
!2657 = !DILocalVariable(name: "tag", arg: 2, scope: !2654, file: !3, line: 257, type: !7)
!2658 = !DILocalVariable(name: "base", arg: 3, scope: !2654, file: !3, line: 257, type: !7)
!2659 = !DILocalVariable(name: "stmt", scope: !2654, file: !3, line: 259, type: !928)
!2660 = !DILocalVariable(name: "gsi", scope: !2654, file: !3, line: 260, type: !2620)
!2661 = !DILocalVariable(name: "ref_ptr", scope: !2654, file: !3, line: 261, type: !603)
!2662 = !DILocalVariable(name: "call", scope: !2654, file: !3, line: 262, type: !928)
!2663 = !DILocalVariable(name: "val", scope: !2654, file: !3, line: 263, type: !603)
!2664 = !DILocation(line: 0, scope: !2654)
!2665 = !DILocation(line: 259, column: 31, scope: !2654)
!2666 = !DILocation(line: 260, column: 3, scope: !2654)
!2667 = !DILocation(line: 260, column: 30, scope: !2654)
!2668 = !DILocation(line: 261, column: 18, scope: !2654)
!2669 = !DILocation(line: 265, column: 13, scope: !2654)
!2670 = !DILocation(line: 267, column: 9, scope: !2654)
!2671 = !DILocation(line: 268, column: 29, scope: !2654)
!2672 = !DILocation(line: 268, column: 10, scope: !2654)
!2673 = !DILocation(line: 269, column: 3, scope: !2654)
!2674 = !DILocation(line: 270, column: 3, scope: !2654)
!2675 = !DILocation(line: 271, column: 1, scope: !2654)
!2676 = distinct !DISubprogram(name: "tree_gen_one_value_profiler", scope: !3, file: !3, line: 278, type: !1946, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685}
!2678 = !DILocalVariable(name: "value", arg: 1, scope: !2676, file: !3, line: 278, type: !1948)
!2679 = !DILocalVariable(name: "tag", arg: 2, scope: !2676, file: !3, line: 278, type: !7)
!2680 = !DILocalVariable(name: "base", arg: 3, scope: !2676, file: !3, line: 278, type: !7)
!2681 = !DILocalVariable(name: "stmt", scope: !2676, file: !3, line: 280, type: !928)
!2682 = !DILocalVariable(name: "gsi", scope: !2676, file: !3, line: 281, type: !2620)
!2683 = !DILocalVariable(name: "ref_ptr", scope: !2676, file: !3, line: 282, type: !603)
!2684 = !DILocalVariable(name: "call", scope: !2676, file: !3, line: 283, type: !928)
!2685 = !DILocalVariable(name: "val", scope: !2676, file: !3, line: 284, type: !603)
!2686 = !DILocation(line: 0, scope: !2676)
!2687 = !DILocation(line: 280, column: 31, scope: !2676)
!2688 = !DILocation(line: 281, column: 3, scope: !2676)
!2689 = !DILocation(line: 281, column: 30, scope: !2676)
!2690 = !DILocation(line: 282, column: 18, scope: !2676)
!2691 = !DILocation(line: 286, column: 13, scope: !2676)
!2692 = !DILocation(line: 288, column: 9, scope: !2676)
!2693 = !DILocation(line: 289, column: 29, scope: !2676)
!2694 = !DILocation(line: 289, column: 10, scope: !2676)
!2695 = !DILocation(line: 290, column: 3, scope: !2676)
!2696 = !DILocation(line: 291, column: 3, scope: !2676)
!2697 = !DILocation(line: 292, column: 1, scope: !2676)
!2698 = distinct !DISubprogram(name: "tree_gen_const_delta_profiler", scope: !3, file: !3, line: 390, type: !1946, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2699 = !{!2700, !2701, !2702}
!2700 = !DILocalVariable(name: "value", arg: 1, scope: !2698, file: !3, line: 390, type: !1948)
!2701 = !DILocalVariable(name: "tag", arg: 2, scope: !2698, file: !3, line: 391, type: !7)
!2702 = !DILocalVariable(name: "base", arg: 3, scope: !2698, file: !3, line: 392, type: !7)
!2703 = !DILocation(line: 0, scope: !2698)
!2704 = !DILocation(line: 398, column: 3, scope: !2698)
!2705 = !DILocation(line: 399, column: 1, scope: !2698)
!2706 = distinct !DISubprogram(name: "tree_gen_ic_profiler", scope: !3, file: !3, line: 302, type: !1946, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2707)
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2708 = !DILocalVariable(name: "value", arg: 1, scope: !2706, file: !3, line: 302, type: !1948)
!2709 = !DILocalVariable(name: "tag", arg: 2, scope: !2706, file: !3, line: 302, type: !7)
!2710 = !DILocalVariable(name: "base", arg: 3, scope: !2706, file: !3, line: 302, type: !7)
!2711 = !DILocalVariable(name: "tmp1", scope: !2706, file: !3, line: 304, type: !603)
!2712 = !DILocalVariable(name: "stmt1", scope: !2706, file: !3, line: 305, type: !928)
!2713 = !DILocalVariable(name: "stmt2", scope: !2706, file: !3, line: 305, type: !928)
!2714 = !DILocalVariable(name: "stmt3", scope: !2706, file: !3, line: 305, type: !928)
!2715 = !DILocalVariable(name: "stmt", scope: !2706, file: !3, line: 306, type: !928)
!2716 = !DILocalVariable(name: "gsi", scope: !2706, file: !3, line: 307, type: !2620)
!2717 = !DILocalVariable(name: "ref_ptr", scope: !2706, file: !3, line: 308, type: !603)
!2718 = !DILocation(line: 0, scope: !2706)
!2719 = !DILocation(line: 306, column: 31, scope: !2706)
!2720 = !DILocation(line: 307, column: 3, scope: !2706)
!2721 = !DILocation(line: 307, column: 30, scope: !2706)
!2722 = !DILocation(line: 308, column: 18, scope: !2706)
!2723 = !DILocation(line: 310, column: 13, scope: !2706)
!2724 = !DILocation(line: 319, column: 26, scope: !2706)
!2725 = !DILocation(line: 319, column: 10, scope: !2706)
!2726 = !DILocation(line: 320, column: 11, scope: !2706)
!2727 = !DILocation(line: 321, column: 11, scope: !2706)
!2728 = !DILocation(line: 322, column: 11, scope: !2706)
!2729 = !DILocation(line: 324, column: 3, scope: !2706)
!2730 = !DILocation(line: 325, column: 3, scope: !2706)
!2731 = !DILocation(line: 326, column: 3, scope: !2706)
!2732 = !DILocation(line: 327, column: 1, scope: !2706)
!2733 = distinct !DISubprogram(name: "tree_gen_average_profiler", scope: !3, file: !3, line: 406, type: !1946, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742}
!2735 = !DILocalVariable(name: "value", arg: 1, scope: !2733, file: !3, line: 406, type: !1948)
!2736 = !DILocalVariable(name: "tag", arg: 2, scope: !2733, file: !3, line: 406, type: !7)
!2737 = !DILocalVariable(name: "base", arg: 3, scope: !2733, file: !3, line: 406, type: !7)
!2738 = !DILocalVariable(name: "stmt", scope: !2733, file: !3, line: 408, type: !928)
!2739 = !DILocalVariable(name: "gsi", scope: !2733, file: !3, line: 409, type: !2620)
!2740 = !DILocalVariable(name: "ref_ptr", scope: !2733, file: !3, line: 410, type: !603)
!2741 = !DILocalVariable(name: "call", scope: !2733, file: !3, line: 411, type: !928)
!2742 = !DILocalVariable(name: "val", scope: !2733, file: !3, line: 412, type: !603)
!2743 = !DILocation(line: 0, scope: !2733)
!2744 = !DILocation(line: 408, column: 31, scope: !2733)
!2745 = !DILocation(line: 409, column: 3, scope: !2733)
!2746 = !DILocation(line: 409, column: 30, scope: !2733)
!2747 = !DILocation(line: 410, column: 18, scope: !2733)
!2748 = !DILocation(line: 414, column: 13, scope: !2733)
!2749 = !DILocation(line: 417, column: 9, scope: !2733)
!2750 = !DILocation(line: 418, column: 29, scope: !2733)
!2751 = !DILocation(line: 418, column: 10, scope: !2733)
!2752 = !DILocation(line: 419, column: 3, scope: !2733)
!2753 = !DILocation(line: 420, column: 3, scope: !2733)
!2754 = !DILocation(line: 421, column: 1, scope: !2733)
!2755 = distinct !DISubprogram(name: "tree_gen_ior_profiler", scope: !3, file: !3, line: 428, type: !1946, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2757 = !DILocalVariable(name: "value", arg: 1, scope: !2755, file: !3, line: 428, type: !1948)
!2758 = !DILocalVariable(name: "tag", arg: 2, scope: !2755, file: !3, line: 428, type: !7)
!2759 = !DILocalVariable(name: "base", arg: 3, scope: !2755, file: !3, line: 428, type: !7)
!2760 = !DILocalVariable(name: "stmt", scope: !2755, file: !3, line: 430, type: !928)
!2761 = !DILocalVariable(name: "gsi", scope: !2755, file: !3, line: 431, type: !2620)
!2762 = !DILocalVariable(name: "ref_ptr", scope: !2755, file: !3, line: 432, type: !603)
!2763 = !DILocalVariable(name: "call", scope: !2755, file: !3, line: 433, type: !928)
!2764 = !DILocalVariable(name: "val", scope: !2755, file: !3, line: 434, type: !603)
!2765 = !DILocation(line: 0, scope: !2755)
!2766 = !DILocation(line: 430, column: 31, scope: !2755)
!2767 = !DILocation(line: 431, column: 3, scope: !2755)
!2768 = !DILocation(line: 431, column: 30, scope: !2755)
!2769 = !DILocation(line: 432, column: 18, scope: !2755)
!2770 = !DILocation(line: 436, column: 13, scope: !2755)
!2771 = !DILocation(line: 438, column: 9, scope: !2755)
!2772 = !DILocation(line: 439, column: 29, scope: !2755)
!2773 = !DILocation(line: 439, column: 10, scope: !2755)
!2774 = !DILocation(line: 440, column: 3, scope: !2755)
!2775 = !DILocation(line: 441, column: 3, scope: !2755)
!2776 = !DILocation(line: 442, column: 1, scope: !2755)
!2777 = distinct !DISubprogram(name: "tree_gen_ic_func_profiler", scope: !3, file: !3, line: 336, type: !1938, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2778 = !{!2779, !2982, !2983, !2984, !2985, !2992, !2993, !2994, !2995, !2996}
!2779 = !DILocalVariable(name: "c_node", scope: !2777, file: !3, line: 338, type: !2780)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !571, line: 181, size: 2496, elements: !2782)
!2782 = !{!2783, !2784, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2897, !2919, !2929, !2933, !2959, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2781, file: !571, line: 182, baseType: !603, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2781, file: !571, line: 183, baseType: !2785, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !571, line: 314, size: 768, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2786, file: !571, line: 316, baseType: !1140, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2786, file: !571, line: 317, baseType: !2780, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2786, file: !571, line: 318, baseType: !2780, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2786, file: !571, line: 319, baseType: !2785, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2786, file: !571, line: 320, baseType: !2785, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2786, file: !571, line: 321, baseType: !2785, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2786, file: !571, line: 322, baseType: !2785, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2786, file: !571, line: 323, baseType: !928, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2786, file: !571, line: 324, baseType: !600, size: 64, offset: 512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2786, file: !571, line: 327, baseType: !2798, size: 32, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !571, line: 312, baseType: !570)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2786, file: !571, line: 330, baseType: !7, size: 32, offset: 608)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2786, file: !571, line: 334, baseType: !596, size: 32, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2786, file: !571, line: 336, baseType: !596, size: 32, offset: 672)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2786, file: !571, line: 338, baseType: !2102, size: 16, offset: 704)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2786, file: !571, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2786, file: !571, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2786, file: !571, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2781, file: !571, line: 184, baseType: !2785, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2781, file: !571, line: 185, baseType: !2780, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2781, file: !571, line: 186, baseType: !2780, size: 64, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2781, file: !571, line: 188, baseType: !2780, size: 64, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2781, file: !571, line: 190, baseType: !2780, size: 64, offset: 384)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2781, file: !571, line: 192, baseType: !2780, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2781, file: !571, line: 194, baseType: !2780, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2781, file: !571, line: 196, baseType: !2780, size: 64, offset: 576)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2781, file: !571, line: 197, baseType: !2780, size: 64, offset: 640)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2781, file: !571, line: 198, baseType: !2780, size: 64, offset: 704)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2781, file: !571, line: 199, baseType: !2780, size: 64, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2781, file: !571, line: 202, baseType: !2780, size: 64, offset: 832)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2781, file: !571, line: 204, baseType: !2780, size: 64, offset: 896)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2781, file: !571, line: 207, baseType: !1394, size: 64, offset: 960)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2781, file: !571, line: 209, baseType: !600, size: 64, offset: 1024)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2781, file: !571, line: 214, baseType: !2822, size: 64, offset: 1088)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1352, line: 177, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1352, line: 177, size: 128, elements: !2825)
!2825 = !{!2826}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2824, file: !1352, line: 177, baseType: !2827, size: 128)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1352, line: 176, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1352, line: 176, size: 128, elements: !2829)
!2829 = !{!2830, !2831, !2832}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2828, file: !1352, line: 176, baseType: !7, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2828, file: !1352, line: 176, baseType: !7, size: 32, offset: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2828, file: !1352, line: 176, baseType: !2833, size: 64, offset: 64)
!2833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2834, size: 64, elements: !702)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1352, line: 174, baseType: !2835)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !6, line: 173, size: 1152, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2863, !2864, !2868, !2873, !2874, !2878}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2836, file: !6, line: 175, baseType: !2017, size: 640)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2836, file: !6, line: 179, baseType: !1937, size: 64, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2836, file: !6, line: 182, baseType: !2841, size: 64, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !571, line: 276, size: 192, elements: !2846)
!2846 = !{!2847, !2848, !2862}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2845, file: !571, line: 278, baseType: !1394, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2845, file: !571, line: 279, baseType: !2849, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !571, line: 272, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !571, line: 272, size: 128, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2851, file: !571, line: 272, baseType: !2854, size: 128)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !571, line: 270, baseType: !2855)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !571, line: 270, size: 128, elements: !2856)
!2856 = !{!2857, !2858, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2855, file: !571, line: 270, baseType: !7, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2855, file: !571, line: 270, baseType: !7, size: 32, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2855, file: !571, line: 270, baseType: !2860, size: 64, offset: 64)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2861, size: 64, elements: !702)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !571, line: 268, baseType: !2780)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2845, file: !571, line: 280, baseType: !600, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2836, file: !6, line: 187, baseType: !1937, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2836, file: !6, line: 188, baseType: !2865, size: 64, offset: 832)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2780}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2836, file: !6, line: 191, baseType: !2869, size: 64, offset: 896)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !2780, !2872}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2836, file: !6, line: 195, baseType: !7, size: 32, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2836, file: !6, line: 196, baseType: !2875, size: 64, offset: 1024)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!7, !2780}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2836, file: !6, line: 197, baseType: !2879, size: 64, offset: 1088)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !571, line: 358, size: 320, elements: !2884)
!2884 = !{!2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2883, file: !571, line: 359, baseType: !603, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2883, file: !571, line: 361, baseType: !2882, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2883, file: !571, line: 363, baseType: !2882, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2883, file: !571, line: 366, baseType: !2882, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2883, file: !571, line: 368, baseType: !596, size: 32, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2883, file: !571, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2883, file: !571, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2883, file: !571, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2883, file: !571, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2883, file: !571, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2883, file: !571, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2883, file: !571, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2781, file: !571, line: 216, baseType: !2898, size: 320, offset: 1152)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !571, line: 88, size: 320, elements: !2899)
!2899 = !{!2900, !2903, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2898, file: !571, line: 90, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !571, line: 51, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2898, file: !571, line: 92, baseType: !2904, size: 192, offset: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !571, line: 57, size: 192, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2910}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2904, file: !571, line: 60, baseType: !659, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2904, file: !571, line: 63, baseType: !596, size: 32, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2904, file: !571, line: 65, baseType: !596, size: 32, offset: 96)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2904, file: !571, line: 67, baseType: !596, size: 32, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2904, file: !571, line: 69, baseType: !596, size: 32, offset: 160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2898, file: !571, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2898, file: !571, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2898, file: !571, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2898, file: !571, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2898, file: !571, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2898, file: !571, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2898, file: !571, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2898, file: !571, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2781, file: !571, line: 217, baseType: !2920, size: 320, offset: 1472)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !571, line: 126, size: 320, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2920, file: !571, line: 128, baseType: !659, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2920, file: !571, line: 130, baseType: !659, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2920, file: !571, line: 134, baseType: !2780, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2920, file: !571, line: 137, baseType: !596, size: 32, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2920, file: !571, line: 138, baseType: !596, size: 32, offset: 224)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2920, file: !571, line: 141, baseType: !596, size: 32, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2920, file: !571, line: 144, baseType: !595, size: 8, offset: 288)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2781, file: !571, line: 218, baseType: !2930, size: 32, offset: 1792)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !571, line: 150, size: 32, elements: !2931)
!2931 = !{!2932}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2930, file: !571, line: 151, baseType: !7, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2781, file: !571, line: 219, baseType: !2934, size: 192, offset: 1856)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !571, line: 171, size: 192, elements: !2935)
!2935 = !{!2936, !2957, !2958}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2934, file: !571, line: 173, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !571, line: 169, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !571, line: 169, size: 128, elements: !2940)
!2940 = !{!2941}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2939, file: !571, line: 169, baseType: !2942, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !571, line: 168, baseType: !2943)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !571, line: 168, size: 128, elements: !2944)
!2944 = !{!2945, !2946, !2947}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2943, file: !571, line: 168, baseType: !7, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2943, file: !571, line: 168, baseType: !7, size: 32, offset: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2943, file: !571, line: 168, baseType: !2948, size: 64, offset: 64)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2949, size: 64, elements: !702)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !571, line: 167, baseType: !2950)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !571, line: 156, size: 192, elements: !2952)
!2952 = !{!2953, !2954, !2955, !2956}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2951, file: !571, line: 159, baseType: !603, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2951, file: !571, line: 161, baseType: !603, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2951, file: !571, line: 163, baseType: !595, size: 8, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2951, file: !571, line: 165, baseType: !595, size: 8, offset: 136)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2934, file: !571, line: 174, baseType: !1478, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2934, file: !571, line: 175, baseType: !1478, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2781, file: !571, line: 220, baseType: !2960, size: 256, offset: 2048)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !571, line: 74, size: 256, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2960, file: !571, line: 76, baseType: !659, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2960, file: !571, line: 77, baseType: !659, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2960, file: !571, line: 78, baseType: !603, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2960, file: !571, line: 79, baseType: !595, size: 8, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2960, file: !571, line: 80, baseType: !595, size: 8, offset: 200)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2960, file: !571, line: 82, baseType: !595, size: 8, offset: 208)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2781, file: !571, line: 223, baseType: !1140, size: 64, offset: 2304)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2781, file: !571, line: 225, baseType: !596, size: 32, offset: 2368)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2781, file: !571, line: 227, baseType: !596, size: 32, offset: 2400)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2781, file: !571, line: 231, baseType: !596, size: 32, offset: 2432)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2781, file: !571, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2781, file: !571, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2781, file: !571, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2781, file: !571, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2781, file: !571, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2781, file: !571, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2781, file: !571, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2781, file: !571, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2781, file: !571, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2781, file: !571, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2982 = !DILocalVariable(name: "gsi", scope: !2777, file: !3, line: 339, type: !2620)
!2983 = !DILocalVariable(name: "e", scope: !2777, file: !3, line: 340, type: !907)
!2984 = !DILocalVariable(name: "bb", scope: !2777, file: !3, line: 341, type: !1362)
!2985 = !DILocalVariable(name: "ei", scope: !2777, file: !3, line: 342, type: !2986)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !318, line: 682, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 679, size: 128, elements: !2988)
!2988 = !{!2989, !2990}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2987, file: !318, line: 680, baseType: !7, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2987, file: !318, line: 681, baseType: !2991, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!2992 = !DILocalVariable(name: "stmt1", scope: !2777, file: !3, line: 343, type: !928)
!2993 = !DILocalVariable(name: "stmt2", scope: !2777, file: !3, line: 343, type: !928)
!2994 = !DILocalVariable(name: "tree_uid", scope: !2777, file: !3, line: 344, type: !603)
!2995 = !DILocalVariable(name: "cur_func", scope: !2777, file: !3, line: 344, type: !603)
!2996 = !DILocalVariable(name: "void0", scope: !2997, file: !3, line: 353, type: !603)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 352, column: 5)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 351, column: 3)
!2999 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 351, column: 3)
!3000 = !DILocation(line: 338, column: 46, scope: !2777)
!3001 = !DILocation(line: 338, column: 33, scope: !2777)
!3002 = !DILocation(line: 0, scope: !2777)
!3003 = !DILocation(line: 339, column: 3, scope: !2777)
!3004 = !DILocation(line: 340, column: 3, scope: !2777)
!3005 = !DILocation(line: 342, column: 3, scope: !2777)
!3006 = !DILocation(line: 346, column: 16, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 346, column: 7)
!3008 = !DILocation(line: 346, column: 8, scope: !3007)
!3009 = !DILocation(line: 346, column: 7, scope: !2777)
!3010 = !DILocation(line: 349, column: 3, scope: !2777)
!3011 = !DILocation(line: 351, column: 3, scope: !2999)
!3012 = !DILocation(line: 0, scope: !2998)
!3013 = !DILocation(line: 0, scope: !2997)
!3014 = !DILocation(line: 351, column: 3, scope: !2998)
!3015 = !DILocation(line: 355, column: 24, scope: !2997)
!3016 = !DILocation(line: 355, column: 12, scope: !2997)
!3017 = !DILocation(line: 356, column: 13, scope: !2997)
!3018 = !DILocation(line: 359, column: 21, scope: !2997)
!3019 = !DILocation(line: 359, column: 9, scope: !2997)
!3020 = !DILocation(line: 358, column: 18, scope: !2997)
!3021 = !DILocation(line: 363, column: 33, scope: !2997)
!3022 = !DILocation(line: 363, column: 57, scope: !2997)
!3023 = !DILocation(line: 363, column: 49, scope: !2997)
!3024 = !DILocation(line: 363, column: 18, scope: !2997)
!3025 = !DILocation(line: 364, column: 34, scope: !2997)
!3026 = !DILocation(line: 365, column: 6, scope: !2997)
!3027 = !DILocation(line: 368, column: 6, scope: !2997)
!3028 = !DILocation(line: 364, column: 15, scope: !2997)
!3029 = !DILocation(line: 369, column: 7, scope: !2997)
!3030 = !DILocation(line: 370, column: 7, scope: !2997)
!3031 = !DILocation(line: 371, column: 24, scope: !2997)
!3032 = !DILocation(line: 371, column: 12, scope: !2997)
!3033 = !DILocation(line: 372, column: 7, scope: !2997)
!3034 = !DILocation(line: 374, column: 13, scope: !2997)
!3035 = !DILocation(line: 378, column: 50, scope: !2997)
!3036 = !DILocation(line: 378, column: 30, scope: !2997)
!3037 = !DILocation(line: 378, column: 15, scope: !2997)
!3038 = !DILocation(line: 379, column: 15, scope: !2997)
!3039 = !DILocation(line: 380, column: 7, scope: !2997)
!3040 = distinct !{!3040, !3011, !3041}
!3041 = !DILocation(line: 381, column: 5, scope: !2999)
!3042 = !DILocation(line: 382, column: 1, scope: !2777)
!3043 = distinct !DISubprogram(name: "ei_start_1", scope: !318, file: !318, line: 696, type: !3044, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!2986, !2991}
!3046 = !{!3047, !3048}
!3047 = !DILocalVariable(name: "ev", arg: 1, scope: !3043, file: !318, line: 696, type: !2991)
!3048 = !DILocalVariable(name: "i", scope: !3043, file: !318, line: 698, type: !2986)
!3049 = !DILocation(line: 0, scope: !3043)
!3050 = !DILocation(line: 700, column: 5, scope: !3043)
!3051 = !DILocation(line: 700, column: 11, scope: !3043)
!3052 = !DILocation(line: 701, column: 5, scope: !3043)
!3053 = !DILocation(line: 701, column: 15, scope: !3043)
!3054 = !DILocation(line: 703, column: 3, scope: !3043)
!3055 = distinct !DISubprogram(name: "ei_cond", scope: !318, file: !318, line: 771, type: !3056, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3059)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!595, !2986, !3058}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "ei", arg: 1, scope: !3055, file: !318, line: 771, type: !2986)
!3061 = !DILocalVariable(name: "p", arg: 2, scope: !3055, file: !318, line: 771, type: !3058)
!3062 = !DILocation(line: 0, scope: !3055)
!3063 = !DILocation(line: 773, column: 8, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3055, file: !318, line: 773, column: 7)
!3065 = !DILocation(line: 773, column: 7, scope: !3055)
!3066 = !DILocation(line: 775, column: 12, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3064, file: !318, line: 774, column: 5)
!3068 = !DILocation(line: 776, column: 7, scope: !3067)
!3069 = !DILocation(line: 781, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3064, file: !318, line: 779, column: 5)
!3071 = !DILocation(line: 0, scope: !3064)
!3072 = !DILocation(line: 783, column: 1, scope: !3055)
!3073 = distinct !DISubprogram(name: "gsi_start_bb", scope: !920, file: !920, line: 4418, type: !3074, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!2620, !1362}
!3076 = !{!3077, !3078, !3079}
!3077 = !DILocalVariable(name: "bb", arg: 1, scope: !3073, file: !920, line: 4418, type: !1362)
!3078 = !DILocalVariable(name: "i", scope: !3073, file: !920, line: 4420, type: !2620)
!3079 = !DILocalVariable(name: "seq", scope: !3073, file: !920, line: 4421, type: !917)
!3080 = !DILocation(line: 0, scope: !3073)
!3081 = !DILocation(line: 4420, column: 24, scope: !3073)
!3082 = !DILocation(line: 4423, column: 9, scope: !3073)
!3083 = !DILocation(line: 4424, column: 11, scope: !3073)
!3084 = !DILocation(line: 4424, column: 5, scope: !3073)
!3085 = !DILocation(line: 4424, column: 9, scope: !3073)
!3086 = !DILocation(line: 4425, column: 5, scope: !3073)
!3087 = !DILocation(line: 4425, column: 9, scope: !3073)
!3088 = !DILocation(line: 4426, column: 5, scope: !3073)
!3089 = !DILocation(line: 4426, column: 8, scope: !3073)
!3090 = !DILocation(line: 4429, column: 1, scope: !3073)
!3091 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !3092, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3096)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!7, !3094}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!3096 = !{!3097}
!3097 = !DILocalVariable(name: "vec_", arg: 1, scope: !3091, file: !318, line: 150, type: !3094)
!3098 = !DILocation(line: 0, scope: !3091)
!3099 = !DILocation(line: 150, column: 1, scope: !3091)
!3100 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !3101, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!907, !3094, !7}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "vec_", arg: 1, scope: !3100, file: !318, line: 150, type: !3094)
!3105 = !DILocalVariable(name: "ix_", arg: 2, scope: !3100, file: !318, line: 150, type: !7)
!3106 = !DILocation(line: 0, scope: !3100)
!3107 = !DILocation(line: 150, column: 1, scope: !3100)
!3108 = distinct !DISubprogram(name: "add_abnormal_goto_call_edges", scope: !3, file: !3, line: 176, type: !3109, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !2620}
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "gsi", arg: 1, scope: !3108, file: !3, line: 176, type: !2620)
!3113 = !DILocalVariable(name: "stmt", scope: !3108, file: !3, line: 178, type: !928)
!3114 = !DILocation(line: 176, column: 52, scope: !3108)
!3115 = !DILocation(line: 178, column: 17, scope: !3108)
!3116 = !DILocation(line: 0, scope: !3108)
!3117 = !DILocation(line: 180, column: 8, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 180, column: 7)
!3119 = !DILocation(line: 180, column: 7, scope: !3108)
!3120 = !DILocation(line: 182, column: 8, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 182, column: 7)
!3122 = !DILocation(line: 182, column: 7, scope: !3108)
!3123 = !DILocation(line: 183, column: 18, scope: !3121)
!3124 = !DILocation(line: 183, column: 36, scope: !3121)
!3125 = !DILocation(line: 183, column: 5, scope: !3121)
!3126 = !DILocation(line: 184, column: 29, scope: !3108)
!3127 = !DILocation(line: 184, column: 3, scope: !3108)
!3128 = !DILocation(line: 185, column: 1, scope: !3108)
!3129 = distinct !DISubprogram(name: "ei_next", scope: !318, file: !318, line: 736, type: !3130, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3132}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "i", arg: 1, scope: !3129, file: !318, line: 736, type: !3132)
!3135 = !DILocation(line: 0, scope: !3129)
!3136 = !DILocation(line: 738, column: 3, scope: !3129)
!3137 = !DILocation(line: 739, column: 11, scope: !3129)
!3138 = !DILocation(line: 740, column: 1, scope: !3129)
!3139 = distinct !DISubprogram(name: "ei_end_p", scope: !318, file: !318, line: 721, type: !3140, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!595, !2986}
!3142 = !{!3143}
!3143 = !DILocalVariable(name: "i", arg: 1, scope: !3139, file: !318, line: 721, type: !2986)
!3144 = !DILocation(line: 723, column: 22, scope: !3139)
!3145 = !DILocation(line: 723, column: 19, scope: !3139)
!3146 = !DILocation(line: 723, column: 10, scope: !3139)
!3147 = !DILocation(line: 723, column: 3, scope: !3139)
!3148 = distinct !DISubprogram(name: "ei_edge", scope: !318, file: !318, line: 752, type: !3149, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!907, !2986}
!3151 = !{!3152}
!3152 = !DILocalVariable(name: "i", arg: 1, scope: !3148, file: !318, line: 752, type: !2986)
!3153 = !DILocation(line: 754, column: 10, scope: !3148)
!3154 = !DILocation(line: 754, column: 3, scope: !3148)
!3155 = distinct !DISubprogram(name: "ei_container", scope: !318, file: !318, line: 685, type: !3156, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!895, !2986}
!3158 = !{!3159}
!3159 = !DILocalVariable(name: "i", arg: 1, scope: !3155, file: !318, line: 685, type: !2986)
!3160 = !DILocation(line: 687, column: 3, scope: !3155)
!3161 = !DILocation(line: 688, column: 10, scope: !3155)
!3162 = !DILocation(line: 688, column: 3, scope: !3155)
!3163 = distinct !DISubprogram(name: "bb_seq", scope: !920, file: !920, line: 237, type: !3164, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!917, !3166}
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !604, line: 112, baseType: !3167)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!3169 = !{!3170}
!3170 = !DILocalVariable(name: "bb", arg: 1, scope: !3163, file: !920, line: 237, type: !3166)
!3171 = !DILocation(line: 0, scope: !3163)
!3172 = !DILocation(line: 239, column: 17, scope: !3163)
!3173 = !DILocation(line: 239, column: 23, scope: !3163)
!3174 = !DILocation(line: 239, column: 33, scope: !3163)
!3175 = !DILocation(line: 239, column: 43, scope: !3163)
!3176 = !DILocation(line: 239, column: 36, scope: !3163)
!3177 = !DILocation(line: 239, column: 10, scope: !3163)
!3178 = !DILocation(line: 239, column: 68, scope: !3163)
!3179 = !DILocation(line: 239, column: 3, scope: !3163)
!3180 = distinct !DISubprogram(name: "gimple_seq_first", scope: !920, file: !920, line: 159, type: !3181, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3186)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!923, !3183}
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !604, line: 67, baseType: !3184)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!3186 = !{!3187}
!3187 = !DILocalVariable(name: "s", arg: 1, scope: !3180, file: !920, line: 159, type: !3183)
!3188 = !DILocation(line: 0, scope: !3180)
!3189 = !DILocation(line: 161, column: 10, scope: !3180)
!3190 = !DILocation(line: 161, column: 17, scope: !3180)
!3191 = !DILocation(line: 161, column: 3, scope: !3180)
!3192 = distinct !DISubprogram(name: "gsi_stmt", scope: !920, file: !920, line: 4501, type: !3193, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!928, !2620}
!3195 = !{!3196}
!3196 = !DILocalVariable(name: "i", arg: 1, scope: !3192, file: !920, line: 4501, type: !2620)
!3197 = !DILocation(line: 4501, column: 32, scope: !3192)
!3198 = !DILocation(line: 4503, column: 12, scope: !3192)
!3199 = !DILocation(line: 4503, column: 17, scope: !3192)
!3200 = !DILocation(line: 4503, column: 3, scope: !3192)
!3201 = distinct !DISubprogram(name: "gsi_end_p", scope: !920, file: !920, line: 4467, type: !3202, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!595, !2620}
!3204 = !{!3205}
!3205 = !DILocalVariable(name: "i", arg: 1, scope: !3201, file: !920, line: 4467, type: !2620)
!3206 = !DILocation(line: 4467, column: 33, scope: !3201)
!3207 = !DILocation(line: 4469, column: 12, scope: !3201)
!3208 = !DILocation(line: 4469, column: 16, scope: !3201)
!3209 = !DILocation(line: 4469, column: 10, scope: !3201)
!3210 = !DILocation(line: 4469, column: 3, scope: !3201)
!3211 = distinct !DISubprogram(name: "gimple_bb", scope: !920, file: !920, line: 1112, type: !3212, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3217)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!891, !3214}
!3214 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !604, line: 60, baseType: !3215)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "g", arg: 1, scope: !3211, file: !920, line: 1112, type: !3214)
!3219 = !DILocation(line: 0, scope: !3211)
!3220 = !DILocation(line: 1114, column: 20, scope: !3211)
!3221 = !DILocation(line: 1114, column: 3, scope: !3211)
!3222 = distinct !DISubprogram(name: "tree_init_ic_make_global_vars", scope: !3, file: !3, line: 71, type: !1938, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3223)
!3223 = !{!3224}
!3224 = !DILocalVariable(name: "gcov_type_ptr", scope: !3222, file: !3, line: 73, type: !603)
!3225 = !DILocation(line: 75, column: 34, scope: !3222)
!3226 = !DILocation(line: 75, column: 14, scope: !3222)
!3227 = !DILocation(line: 75, column: 12, scope: !3222)
!3228 = !DILocation(line: 78, column: 7, scope: !3222)
!3229 = !DILocation(line: 78, column: 5, scope: !3222)
!3230 = !DILocation(line: 81, column: 3, scope: !3222)
!3231 = !DILocation(line: 81, column: 33, scope: !3222)
!3232 = !DILocation(line: 82, column: 3, scope: !3222)
!3233 = !DILocation(line: 82, column: 33, scope: !3222)
!3234 = !DILocation(line: 83, column: 3, scope: !3222)
!3235 = !DILocation(line: 83, column: 37, scope: !3222)
!3236 = !DILocation(line: 84, column: 3, scope: !3222)
!3237 = !DILocation(line: 84, column: 34, scope: !3222)
!3238 = !DILocation(line: 85, column: 26, scope: !3222)
!3239 = !DILocation(line: 85, column: 3, scope: !3222)
!3240 = !DILocation(line: 87, column: 39, scope: !3222)
!3241 = !DILocation(line: 87, column: 19, scope: !3222)
!3242 = !DILocation(line: 0, scope: !3222)
!3243 = !DILocation(line: 89, column: 7, scope: !3222)
!3244 = !DILocation(line: 89, column: 5, scope: !3222)
!3245 = !DILocation(line: 92, column: 3, scope: !3222)
!3246 = !DILocation(line: 92, column: 38, scope: !3222)
!3247 = !DILocation(line: 93, column: 3, scope: !3222)
!3248 = !DILocation(line: 93, column: 38, scope: !3222)
!3249 = !DILocation(line: 94, column: 3, scope: !3222)
!3250 = !DILocation(line: 94, column: 42, scope: !3222)
!3251 = !DILocation(line: 95, column: 3, scope: !3222)
!3252 = !DILocation(line: 95, column: 39, scope: !3222)
!3253 = !DILocation(line: 96, column: 26, scope: !3222)
!3254 = !DILocation(line: 96, column: 3, scope: !3222)
!3255 = !DILocation(line: 97, column: 1, scope: !3222)
!3256 = distinct !DISubprogram(name: "prepare_instrumented_value", scope: !3, file: !3, line: 216, type: !3257, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3260)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!603, !3259, !1948}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!3260 = !{!3261, !3262, !3263}
!3261 = !DILocalVariable(name: "gsi", arg: 1, scope: !3256, file: !3, line: 216, type: !3259)
!3262 = !DILocalVariable(name: "value", arg: 2, scope: !3256, file: !3, line: 216, type: !1948)
!3263 = !DILocalVariable(name: "val", scope: !3256, file: !3, line: 218, type: !603)
!3264 = !DILocation(line: 0, scope: !3256)
!3265 = !DILocation(line: 218, column: 28, scope: !3256)
!3266 = !DILocation(line: 219, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 219, column: 7)
!3268 = !DILocation(line: 219, column: 7, scope: !3256)
!3269 = !DILocation(line: 220, column: 11, scope: !3267)
!3270 = !DILocation(line: 220, column: 5, scope: !3267)
!3271 = !DILocation(line: 221, column: 41, scope: !3256)
!3272 = !DILocation(line: 221, column: 10, scope: !3256)
!3273 = !DILocation(line: 221, column: 3, scope: !3256)
