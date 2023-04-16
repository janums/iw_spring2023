; ModuleID = 'ipa-inline.bc'
source_filename = "ipa-inline.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
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
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
%struct.VEC_eh_region_gc = type { %struct.VEC_eh_region_base }
%struct.VEC_eh_region_base = type { i32, i32, [1 x %struct.eh_region_d*] }
%struct.VEC_eh_landing_pad_gc = type { %struct.VEC_eh_landing_pad_base }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x %struct.eh_landing_pad_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%union.eh_status_u = type { %struct.VEC_tree_gc* }
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
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.cgraph_node_hook_list = type opaque
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.VEC_ipa_node_params_t_heap = type { %struct.VEC_ipa_node_params_t_base }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.ipa_node_params = type { i32, %struct.ipa_param_descriptor*, %struct.ipa_param_call_note*, %struct.cgraph_node*, i64, i8 }
%struct.ipa_param_descriptor = type { %struct.ipcp_lattice, %union.tree_node*, i8 }
%struct.ipcp_lattice = type { i32, %union.tree_node* }
%struct.ipa_param_call_note = type { i64, %struct.ipa_param_call_note*, %union.gimple_statement_d*, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_edge_args_t_gc = type { %struct.VEC_ipa_edge_args_t_base }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_edge_args = type { i32, %struct.ipa_jump_func* }
%struct.ipa_jump_func = type { i32, %union.jump_func_value }
%union.jump_func_value = type { %struct.ipa_ancestor_jf_data }
%struct.ipa_ancestor_jf_data = type { i64, %union.tree_node*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_cgraph_edge_p_heap = type { %struct.VEC_cgraph_edge_p_base }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x %struct.cgraph_edge*] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }
%struct.expanded_location = type { i8*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cgraph_new_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@.str = private unnamed_addr constant [13 x i8] c"ipa-inline.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@overall_size = internal unnamed_addr global i32 0, align 4, !dbg !0
@nfunctions_inlined = internal unnamed_addr global i32 0, align 4, !dbg !2461
@.str.2 = private unnamed_addr constant [8 x i8] c"einline\00", align 1
@pass_early_inline = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 ()* @cgraph_gate_early_inlining, i32 ()* @cgraph_early_inlining, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8, !dbg !2433
@.str.3 = private unnamed_addr constant [12 x i8] c"einline_ipa\00", align 1
@pass_ipa_early_inline = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8 ()* @cgraph_gate_ipa_early_inlining, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 128 } }, align 8, !dbg !2438
@optimize = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"inline_param\00", align 1
@pass_inline_parameters = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8 ()* null, i32 ()* @compute_inline_parameters_for_current, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2443
@.str.5 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@pass_ipa_inline = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8 ()* null, i32 ()* @cgraph_decide_inlining, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 256, i32 385 }, void ()* @inline_generate_summary, void (%struct.cgraph_node_set_def*)* @inline_write_summary, void ()* @inline_read_summary, void (%struct.cgraph_node*)* null, void (%struct.cgraph_node*, %union.gimple_statement_d**)* @lto_ipa_fixup_call_notes, i32 0, i32 (%struct.cgraph_node*)* @inline_transform, void (%struct.varpool_node*)* null }, align 8, !dbg !2445
@order = internal global %struct.cgraph_node** null, align 8, !dbg !2463
@gt_ggc_r_gt_ipa_inline_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.cgraph_node*** @order to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_ma_order, void (i8*)* @gt_pch_na_order }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !2447
@flag_early_inlining = external dso_local local_unnamed_addr global i32, align 4
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Iterations: %i\0A\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"flatten\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Flattening %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Considering to always inline inline candidate %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Not inlining: recursive call.\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Not inlining: %s\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Not inlining: SSA form does not match.\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Not inlining: Function body no longer available.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Considering inline candidate %s.\0A\00", align 1
@flag_inline_functions = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"Not inlining: code size would grow by %i.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Not inlining: %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Not inlining: %s.\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Hit cycle in %s, switching to always inline only.\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Not inlining %s into %s to avoid cycle.\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c" Inlining %s into %s.\0A\00", align 1
@ncalls_inlined = internal unnamed_addr global i32 0, align 4, !dbg !2465
@flag_indirect_inlining = external dso_local local_unnamed_addr global i32, align 4
@flag_inline_small_functions = external dso_local local_unnamed_addr global i32, align 4
@in_lto_p = external dso_local local_unnamed_addr global i8, align 1
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@flag_test_coverage = external dso_local local_unnamed_addr global i32, align 4
@profile_arc_flag = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"Analyzing function body size: %s\0A\00", align 1
@eni_size_weights = external dso_local global %struct.eni_weights_d, align 4
@eni_time_weights = external dso_local global %struct.eni_weights_d, align 4
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [30 x i8] c"  freq:%6i size:%3i time:%3i \00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    Likely eliminated\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Overall function body time: %i-%i size: %i-%i\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"With function call overhead time: %i-%i size: %i-%i\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@cgraph_n_nodes = external dso_local local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global %struct.cgraph_node_hook_list* null, align 8, !dbg !2467
@max_count = internal unnamed_addr global i64 0, align 8, !dbg !2471
@max_benefit = internal unnamed_addr global i64 0, align 8, !dbg !2473
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@profile_info = external dso_local local_unnamed_addr global %struct.gcov_ctr_summary*, align 8
@.str.27 = private unnamed_addr constant [48 x i8] c"\0ADeciding on inlining.  Starting with size %i.\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"\0AInlining always_inline functions:\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"\0AConsidering %s size:%i (always inline)\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c" Inlined into %s which now has size %i.\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c" Inlined for a net change of %+i size.\0A\00", align 1
@flag_inline_functions_called_once = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [37 x i8] c"\0ADeciding on functions called once:\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"\0AConsidering %s size %i.\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c" Called once from %s %i insns.\0A\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c" Inlined into %s which now has %i size for a net change of %+i size.\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c" Not inlining: %s.\0A\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"\0AInlined %i calls, eliminated %i functions, size %i turned to %i size.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"\0ADeciding on smaller functions:\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"\0AConsidering %s with %i size\0A\00", align 1
@.str.40 = private unnamed_addr constant [138 x i8] c" to be inlined into %s in %s:%i\0A Estimated growth after inlined into all callees is %+i insns.\0A Estimated badness is %i, frequency %.2f.\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c" Called %ldx\0A\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c" inline_failed:Recursive inlining performed only for function itself.\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c" inline_failed:%s.\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c" Not inlining into %s:%s.\0A\00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c" Inlined into %s which now has size %i and self time %i,net change of %+i.\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"New minimal size reached: %i\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Inlining failed: %s\0A\00", align 1
@flag_guess_branch_prob = external dso_local local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [39 x i8] c"  Performing recursive inlining on %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"   maximal depth reached\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"   Not inlining cold call\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"   Probability of edge is too small\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"   Inlining call of depth %i\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c" called approx. %.2f times per call\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"    Recursive inlining growth limit met.\0A\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"\0A   Inlined %i times, body grown from size %i to %i, time %i to %i\0A\00", align 1
@lookup_recursive_calls.priority = internal unnamed_addr global i32 0, align 4, !dbg !2475
@ipa_node_params_vector = external dso_local global %struct.VEC_ipa_node_params_t_heap*, align 8
@cgraph_max_uid = external dso_local local_unnamed_addr global i32, align 4
@ipa_edge_args_vector = external dso_local global %struct.VEC_ipa_edge_args_t_gc*, align 8
@cgraph_edge_max_uid = external dso_local local_unnamed_addr global i32, align 4
@flag_ipa_cp = external dso_local local_unnamed_addr global i32, align 4
@warn_inline = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2498 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2512, metadata !DIExpression()), !dbg !2513
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2514
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2515
  ret i32 %call, !dbg !2516
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2517 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2521
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2522
  ret i32 %call, !dbg !2523
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2524 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2578, metadata !DIExpression()), !dbg !2579
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2580
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2580
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2580
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2580
  %cmp = icmp uge i8* %0, %1, !dbg !2580
  %conv1 = zext i1 %cmp to i64, !dbg !2580
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2580
  %tobool = icmp eq i64 %expval, 0, !dbg !2580
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2580

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2580
  br label %cond.end, !dbg !2580

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2580
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2580
  %2 = load i8, i8* %0, align 1, !dbg !2580
  %conv3 = zext i8 %2 to i32, !dbg !2580
  br label %cond.end, !dbg !2580

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2580
  ret i32 %cond, !dbg !2581
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2582 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2584, metadata !DIExpression()), !dbg !2585
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2586
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2586
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2586
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2586
  %cmp = icmp uge i8* %0, %1, !dbg !2586
  %conv1 = zext i1 %cmp to i64, !dbg !2586
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2586
  %tobool = icmp eq i64 %expval, 0, !dbg !2586
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2586

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2586
  br label %cond.end, !dbg !2586

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2586
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2586
  %2 = load i8, i8* %0, align 1, !dbg !2586
  %conv3 = zext i8 %2 to i32, !dbg !2586
  br label %cond.end, !dbg !2586

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2586
  ret i32 %cond, !dbg !2587
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2588 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2589
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2589
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2589
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2589
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2589
  %cmp = icmp uge i8* %1, %2, !dbg !2589
  %conv1 = zext i1 %cmp to i64, !dbg !2589
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2589
  %tobool = icmp eq i64 %expval, 0, !dbg !2589
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2589

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2589
  br label %cond.end, !dbg !2589

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2589
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2589
  %3 = load i8, i8* %1, align 1, !dbg !2589
  %conv3 = zext i8 %3 to i32, !dbg !2589
  br label %cond.end, !dbg !2589

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2589
  ret i32 %cond, !dbg !2590
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2595, metadata !DIExpression()), !dbg !2596
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2597
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2598
  ret i32 %call, !dbg !2599
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2600 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2604, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2605, metadata !DIExpression()), !dbg !2606
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2607
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2607
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2607
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2607
  %cmp = icmp uge i8* %0, %1, !dbg !2607
  %conv1 = zext i1 %cmp to i64, !dbg !2607
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2607
  %tobool = icmp eq i64 %expval, 0, !dbg !2607
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2607

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2607
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2607
  br label %cond.end, !dbg !2607

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2607
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2607
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2607
  store i8 %conv2, i8* %0, align 1, !dbg !2607
  %conv6 = and i32 %__c, 255, !dbg !2607
  br label %cond.end, !dbg !2607

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2607
  ret i32 %cond, !dbg !2608
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2611, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2612, metadata !DIExpression()), !dbg !2613
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2614
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2614
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2614
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2614
  %cmp = icmp uge i8* %0, %1, !dbg !2614
  %conv1 = zext i1 %cmp to i64, !dbg !2614
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2614
  %tobool = icmp eq i64 %expval, 0, !dbg !2614
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2614

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2614
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2614
  br label %cond.end, !dbg !2614

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2614
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2614
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2614
  store i8 %conv2, i8* %0, align 1, !dbg !2614
  %conv6 = and i32 %__c, 255, !dbg !2614
  br label %cond.end, !dbg !2614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2614
  ret i32 %cond, !dbg !2615
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2616 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2618, metadata !DIExpression()), !dbg !2619
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2620
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2620
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2620
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2620
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2620
  %cmp = icmp uge i8* %1, %2, !dbg !2620
  %conv1 = zext i1 %cmp to i64, !dbg !2620
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2620
  %tobool = icmp eq i64 %expval, 0, !dbg !2620
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2620

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2620
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2620
  br label %cond.end, !dbg !2620

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2620
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2620
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2620
  store i8 %conv4, i8* %1, align 1, !dbg !2620
  %conv6 = and i32 %__c, 255, !dbg !2620
  br label %cond.end, !dbg !2620

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2620
  ret i32 %cond, !dbg !2621
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2622 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2630, metadata !DIExpression()), !dbg !2631
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2632
  ret i64 %call, !dbg !2633
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2634 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2636, metadata !DIExpression()), !dbg !2637
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2638
  %0 = load i32, i32* %_flags, align 8, !dbg !2638
  %and = lshr i32 %0, 4, !dbg !2638
  %and.lobit = and i32 %and, 1, !dbg !2638
  ret i32 %and.lobit, !dbg !2639
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2640 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2642, metadata !DIExpression()), !dbg !2643
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2644
  %0 = load i32, i32* %_flags, align 8, !dbg !2644
  %and = lshr i32 %0, 5, !dbg !2644
  %and.lobit = and i32 %and, 1, !dbg !2644
  ret i32 %and.lobit, !dbg !2645
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2646 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2649, metadata !DIExpression()), !dbg !2650
  %__c.off = add i32 %__c, 128, !dbg !2651
  %0 = icmp ult i32 %__c.off, 384, !dbg !2651
  br i1 %0, label %cond.true, label %cond.end, !dbg !2651

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2652
  %1 = load i32*, i32** %call, align 8, !dbg !2653
  %idxprom = sext i32 %__c to i64, !dbg !2654
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2654
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2654
  br label %cond.end, !dbg !2655

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2655
  ret i32 %cond, !dbg !2656
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2657 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2659, metadata !DIExpression()), !dbg !2660
  %__c.off = add i32 %__c, 128, !dbg !2661
  %0 = icmp ult i32 %__c.off, 384, !dbg !2661
  br i1 %0, label %cond.true, label %cond.end, !dbg !2661

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2662
  %1 = load i32*, i32** %call, align 8, !dbg !2663
  %idxprom = sext i32 %__c to i64, !dbg !2664
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2664
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2664
  br label %cond.end, !dbg !2665

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2665
  ret i32 %cond, !dbg !2666
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2667 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2672, metadata !DIExpression()), !dbg !2673
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2674
  %conv = trunc i64 %call to i32, !dbg !2675
  ret i32 %conv, !dbg !2676
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2677 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2681, metadata !DIExpression()), !dbg !2682
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2683
  ret i64 %call, !dbg !2684
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2685 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2690, metadata !DIExpression()), !dbg !2691
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2692
  ret i64 %call, !dbg !2693
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2694 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2700, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2701, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2702, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2703, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2704, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 0, metadata !2705, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2706, metadata !DIExpression()), !dbg !2710
  br label %while.cond, !dbg !2711

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2712
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2710
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2706, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2705, metadata !DIExpression()), !dbg !2710
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2713
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2711

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2714
  %div = lshr i64 %add, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %div, metadata !2707, metadata !DIExpression()), !dbg !2710
  %mul = mul i64 %div, %__size, !dbg !2717
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2708, metadata !DIExpression()), !dbg !2710
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %call, metadata !2709, metadata !DIExpression()), !dbg !2710
  %cmp1 = icmp slt i32 %call, 0, !dbg !2720
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2722

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2723
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2725

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2705, metadata !DIExpression()), !dbg !2710
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2710
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2710
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2706, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2705, metadata !DIExpression()), !dbg !2710
  br label %while.cond, !dbg !2711, !llvm.loop !2727

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2710
  ret i8* %retval.0, !dbg !2729
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2730 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2735, metadata !DIExpression()), !dbg !2736
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2737
  ret double %call, !dbg !2738
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2739 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2749, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %base, metadata !2750, metadata !DIExpression()), !dbg !2751
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2752
  ret i64 %call, !dbg !2753
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2754 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2760, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 %base, metadata !2762, metadata !DIExpression()), !dbg !2763
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2764
  ret i64 %call, !dbg !2765
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2766 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2777, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 %base, metadata !2779, metadata !DIExpression()), !dbg !2780
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2781
  ret i64 %call, !dbg !2782
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2783 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2788, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 %base, metadata !2789, metadata !DIExpression()), !dbg !2790
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2791
  ret i64 %call, !dbg !2792
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2793 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2834, metadata !DIExpression()), !dbg !2835
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2836
  ret i32 %call, !dbg !2837
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2838 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2841, metadata !DIExpression()), !dbg !2842
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2843
  ret i32 %call, !dbg !2844
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2845 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2850, metadata !DIExpression()), !dbg !2851
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2852
  ret i32 %call, !dbg !2853
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2854 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2858, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2859, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2860, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2861, metadata !DIExpression()), !dbg !2862
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2863
  ret i32 %call, !dbg !2864
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2865 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2869, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2870, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2871, metadata !DIExpression()), !dbg !2872
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2871, metadata !DIExpression(DW_OP_deref)), !dbg !2872
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2873
  ret i32 %call, !dbg !2874
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2875 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2879, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2880, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2882, metadata !DIExpression()), !dbg !2883
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2882, metadata !DIExpression(DW_OP_deref)), !dbg !2883
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2884
  ret i32 %call, !dbg !2885
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2886 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2910, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2911, metadata !DIExpression()), !dbg !2912
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2913
  ret i32 %call, !dbg !2914
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2915 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2918, metadata !DIExpression()), !dbg !2919
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2920
  ret i32 %call, !dbg !2921
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2922 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2926, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2927, metadata !DIExpression()), !dbg !2928
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2929
  ret i32 %call, !dbg !2930
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2931 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2935, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2936, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2937, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2938, metadata !DIExpression()), !dbg !2939
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2940
  ret i32 %call, !dbg !2941
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_clone_inlined_nodes(%struct.cgraph_edge* %e, i8 zeroext %duplicate, i8 zeroext %update_original) local_unnamed_addr #5 !dbg !2942 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !2946, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %duplicate, metadata !2947, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %update_original, metadata !2948, metadata !DIExpression()), !dbg !2955
  %tobool = icmp eq i8 %duplicate, 0, !dbg !2956
  br i1 %tobool, label %if.end28, label %if.then, !dbg !2957

if.then:                                          ; preds = %entry
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !2958
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2958
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 2, !dbg !2959
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !2959
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %1, i64 0, i32 4, !dbg !2960
  %2 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !2960
  %tobool1 = icmp eq %struct.cgraph_edge* %2, null, !dbg !2961
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !2962

land.lhs.true:                                    ; preds = %if.then
  %call = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(%struct.cgraph_node* %0) #7, !dbg !2963
  %tobool3 = icmp eq i8 %call, 0, !dbg !2963
  br i1 %tobool3, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true4, !dbg !2964

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  %.pre1 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2965
  br label %if.else, !dbg !2964

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2966
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %3, i64 0, i32 14, !dbg !2967
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !2967
  %tobool6 = icmp ne %struct.cgraph_node* %4, null, !dbg !2968
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_new_nodes, align 8, !dbg !2969
  %tobool8 = icmp ne %struct.cgraph_node* %5, null, !dbg !2969
  %or.cond = or i1 %tobool6, %tobool8, !dbg !2970
  br i1 %or.cond, label %if.else, label %if.then9, !dbg !2970

if.then9:                                         ; preds = %land.lhs.true4
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %3, i64 0, i32 19, i32 2, !dbg !2971
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !2971
  %tobool11 = icmp eq %struct.cgraph_node* %6, null, !dbg !2971
  br i1 %tobool11, label %cond.end, label %cond.true, !dbg !2971

cond.true:                                        ; preds = %if.then9
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2971
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2973
  br label %cond.end, !dbg !2971

cond.end:                                         ; preds = %if.then9, %cond.true
  %7 = phi %struct.cgraph_node* [ %3, %if.then9 ], [ %.pre, %cond.true ], !dbg !2973
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 27, !dbg !2975
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !2975
  %bf.clear = and i16 %bf.load, 32, !dbg !2975
  %tobool13 = icmp eq i16 %bf.clear, 0, !dbg !2976
  br i1 %tobool13, label %if.end, label %if.then14, !dbg !2977

if.then14:                                        ; preds = %cond.end
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 19, i32 4, !dbg !2978
  %8 = load i32, i32* %size, align 4, !dbg !2978
  %9 = load i32, i32* @overall_size, align 4, !dbg !2980
  %sub = sub nsw i32 %9, %8, !dbg !2980
  store i32 %sub, i32* @overall_size, align 4, !dbg !2980
  %10 = load i32, i32* @nfunctions_inlined, align 4, !dbg !2981
  %inc = add nsw i32 %10, 1, !dbg !2981
  store i32 %inc, i32* @nfunctions_inlined, align 4, !dbg !2981
  br label %if.end, !dbg !2982

if.end:                                           ; preds = %cond.end, %if.then14
  call void @llvm.dbg.value(metadata i8 0, metadata !2947, metadata !DIExpression()), !dbg !2955
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 18, i32 2, !dbg !2983
  %bf.load18 = load i8, i8* %externally_visible, align 8, !dbg !2984
  %bf.clear19 = and i8 %bf.load18, -3, !dbg !2984
  store i8 %bf.clear19, i8* %externally_visible, align 8, !dbg !2984
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2985
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 11, !dbg !2986
  %12 = load i32, i32* %frequency, align 8, !dbg !2986
  %loop_nest = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 13, !dbg !2987
  %13 = load i16, i16* %loop_nest, align 8, !dbg !2987
  %conv21 = zext i16 %13 to i32, !dbg !2988
  tail call fastcc void @update_noncloned_frequencies(%struct.cgraph_node* %11, i32 %12, i32 %conv21) #7, !dbg !2989
  br label %if.end28, !dbg !2990

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then, %land.lhs.true4
  %14 = phi %struct.cgraph_node* [ %.pre1, %land.lhs.true.if.else_crit_edge ], [ %0, %if.then ], [ %3, %land.lhs.true4 ], !dbg !2965
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 0, !dbg !2991
  %15 = load i64, i64* %count, align 8, !dbg !2991
  %frequency23 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 11, !dbg !2992
  %16 = load i32, i32* %frequency23, align 8, !dbg !2992
  %loop_nest24 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 13, !dbg !2993
  %17 = load i16, i16* %loop_nest24, align 8, !dbg !2993
  %conv25 = zext i16 %17 to i32, !dbg !2994
  %call26 = tail call %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node* %14, i64 %15, i32 %16, i32 %conv25, i8 zeroext %update_original, %struct.VEC_cgraph_edge_p_heap* null) #6, !dbg !2995
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call26, metadata !2950, metadata !DIExpression()), !dbg !2996
  tail call void @cgraph_redirect_edge_callee(%struct.cgraph_edge* %e, %struct.cgraph_node* %call26) #6, !dbg !2997
  br label %if.end28

if.end28:                                         ; preds = %entry, %if.end, %if.else
  %duplicate.addr.1 = phi i8 [ 0, %entry ], [ %duplicate, %if.else ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i8 %duplicate.addr.1, metadata !2947, metadata !DIExpression()), !dbg !2955
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !2998
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !2998
  %inlined_to30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i64 0, i32 19, i32 2, !dbg !3000
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to30, align 8, !dbg !3000
  %tobool31 = icmp eq %struct.cgraph_node* %19, null, !dbg !3001
  br i1 %tobool31, label %if.else39, label %if.then32, !dbg !3002

if.then32:                                        ; preds = %if.end28
  %20 = ptrtoint %struct.cgraph_node* %19 to i64, !dbg !3002
  %callee36 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !3003
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %callee36, align 8, !dbg !3003
  %inlined_to38 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i64 0, i32 19, i32 2, !dbg !3004
  %22 = bitcast %struct.cgraph_node** %inlined_to38 to i64*, !dbg !3005
  store i64 %20, i64* %22, align 8, !dbg !3005
  br label %if.end44, !dbg !3006

if.else39:                                        ; preds = %if.end28
  %callee41 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !3007
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %callee41, align 8, !dbg !3007
  %inlined_to43 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %23, i64 0, i32 19, i32 2, !dbg !3008
  store %struct.cgraph_node* %18, %struct.cgraph_node** %inlined_to43, align 8, !dbg !3009
  br label %if.end44

if.end44:                                         ; preds = %if.else39, %if.then32
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !3010
  %stack_frame_offset = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i64 0, i32 19, i32 1, !dbg !3011
  %25 = load i64, i64* %stack_frame_offset, align 8, !dbg !3011
  %call48 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %24) #7, !dbg !3012
  %estimated_self_stack_size = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call48, i64 0, i32 0, !dbg !3013
  %26 = load i64, i64* %estimated_self_stack_size, align 8, !dbg !3013
  %add = add nsw i64 %25, %26, !dbg !3014
  %callee49 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !3015
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %callee49, align 8, !dbg !3015
  %stack_frame_offset51 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %27, i64 0, i32 19, i32 1, !dbg !3016
  store i64 %add, i64* %stack_frame_offset51, align 8, !dbg !3017
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %callee49, align 8, !dbg !3018
  %stack_frame_offset54 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %28, i64 0, i32 19, i32 1, !dbg !3019
  %29 = load i64, i64* %stack_frame_offset54, align 8, !dbg !3019
  %call56 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %28) #7, !dbg !3020
  %estimated_self_stack_size57 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call56, i64 0, i32 0, !dbg !3021
  %30 = load i64, i64* %estimated_self_stack_size57, align 8, !dbg !3021
  %add58 = add nsw i64 %29, %30, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %add58, metadata !2949, metadata !DIExpression()), !dbg !2955
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %callee49, align 8, !dbg !3023
  %inlined_to61 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %31, i64 0, i32 19, i32 2, !dbg !3025
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to61, align 8, !dbg !3025
  %estimated_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %32, i64 0, i32 19, i32 0, !dbg !3026
  %33 = load i64, i64* %estimated_stack_size, align 8, !dbg !3026
  %cmp = icmp slt i64 %33, %add58, !dbg !3027
  br i1 %cmp, label %if.then64, label %if.end70, !dbg !3028

if.then64:                                        ; preds = %if.end44
  store i64 %add58, i64* %estimated_stack_size, align 8, !dbg !3029
  %.pre2 = load %struct.cgraph_node*, %struct.cgraph_node** %callee49, align 8, !dbg !3030
  br label %if.end70, !dbg !3032

if.end70:                                         ; preds = %if.then64, %if.end44
  %34 = phi %struct.cgraph_node* [ %.pre2, %if.then64 ], [ %31, %if.end44 ], !dbg !3030
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %34, i64 0, i32 1, !dbg !3033
  br label %for.cond, !dbg !3034

for.cond:                                         ; preds = %for.inc, %if.end70
  %e.addr.0.in = phi %struct.cgraph_edge** [ %callees, %if.end70 ], [ %next_callee, %for.inc ]
  %e.addr.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.addr.0.in, align 8, !dbg !3035
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.addr.0, metadata !2946, metadata !DIExpression()), !dbg !2955
  %tobool72 = icmp eq %struct.cgraph_edge* %e.addr.0, null, !dbg !3036
  br i1 %tobool72, label %for.end, label %for.body, !dbg !3036

for.body:                                         ; preds = %for.cond
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.addr.0, i64 0, i32 9, !dbg !3037
  %35 = load i32, i32* %inline_failed, align 8, !dbg !3037
  %tobool73 = icmp eq i32 %35, 0, !dbg !3040
  br i1 %tobool73, label %if.then74, label %for.inc, !dbg !3041

if.then74:                                        ; preds = %for.body
  tail call void @cgraph_clone_inlined_nodes(%struct.cgraph_edge* nonnull %e.addr.0, i8 zeroext %duplicate.addr.1, i8 zeroext %update_original) #7, !dbg !3042
  br label %for.inc, !dbg !3042

for.inc:                                          ; preds = %for.body, %if.then74
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.addr.0, i64 0, i32 6, !dbg !3043
  br label %for.cond, !dbg !3044, !llvm.loop !3045

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3047
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !3048 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3052, metadata !DIExpression()), !dbg !3053
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3054
  %bf.load = load i16, i16* %needed, align 4, !dbg !3054
  %bf.clear = and i16 %bf.load, 1, !dbg !3054
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !3055
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3056

land.rhs:                                         ; preds = %entry
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_with_vis**, !dbg !3057
  %1 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %0, align 8, !dbg !3057
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 4, !dbg !3057
  %2 = bitcast i24* %comdat_flag to i32*, !dbg !3057
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3057
  %bf.clear2 = and i32 %bf.load1, 512, !dbg !3057
  %tobool3 = icmp eq i32 %bf.clear2, 0, !dbg !3057
  br i1 %tobool3, label %lor.rhs, label %land.end, !dbg !3058

lor.rhs:                                          ; preds = %land.rhs
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3059
  %bf.load4 = load i8, i8* %externally_visible, align 8, !dbg !3059
  %bf.clear6 = lshr i8 %bf.load4, 1, !dbg !3058
  %bf.clear6.lobit = and i8 %bf.clear6, 1, !dbg !3058
  %3 = xor i8 %bf.clear6.lobit, 1, !dbg !3058
  br label %land.end, !dbg !3058

land.end:                                         ; preds = %land.rhs, %entry, %lor.rhs
  %4 = phi i8 [ 0, %entry ], [ 1, %land.rhs ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !3060
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_noncloned_frequencies(%struct.cgraph_node* %node, i32 %freq_scale, i32 %nest) unnamed_addr #5 !dbg !3061 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3065, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %freq_scale, metadata !3066, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %nest, metadata !3067, metadata !DIExpression()), !dbg !3069
  %tobool = icmp eq i32 %freq_scale, 0, !dbg !3070
  %spec.select = select i1 %tobool, i32 1, i32 %freq_scale, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3066, metadata !DIExpression()), !dbg !3069
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !3073
  %0 = trunc i32 %nest to i16, !dbg !3075
  %conv4 = sext i32 %spec.select to i64, !dbg !3075
  br label %for.cond, !dbg !3078

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %entry ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3068, metadata !DIExpression()), !dbg !3069
  %tobool1 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3080
  br i1 %tobool1, label %for.end, label %for.body, !dbg !3080

for.body:                                         ; preds = %for.cond
  %loop_nest = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 13, !dbg !3081
  %1 = load i16, i16* %loop_nest, align 8, !dbg !3082
  %conv2 = add i16 %1, %0, !dbg !3082
  store i16 %conv2, i16* %loop_nest, align 8, !dbg !3082
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 11, !dbg !3083
  %2 = load i32, i32* %frequency, align 8, !dbg !3083
  %conv3 = sext i32 %2 to i64, !dbg !3084
  %mul = mul nsw i64 %conv3, %conv4, !dbg !3085
  %div = sdiv i64 %mul, 1000, !dbg !3086
  %conv5 = trunc i64 %div to i32, !dbg !3084
  %cmp = icmp sgt i32 %conv5, 100000, !dbg !3087
  br i1 %cmp, label %if.then9, label %if.end11, !dbg !3089

if.then9:                                         ; preds = %for.body
  br label %if.end11, !dbg !3090

if.end11:                                         ; preds = %if.then9, %for.body
  %storemerge = phi i32 [ 100000, %if.then9 ], [ %conv5, %for.body ], !dbg !3075
  store i32 %storemerge, i32* %frequency, align 8, !dbg !3075
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !3091
  %3 = load i32, i32* %inline_failed, align 8, !dbg !3091
  %tobool12 = icmp eq i32 %3, 0, !dbg !3093
  br i1 %tobool12, label %if.then13, label %for.inc, !dbg !3094

if.then13:                                        ; preds = %if.end11
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !3095
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3095
  tail call fastcc void @update_noncloned_frequencies(%struct.cgraph_node* %4, i32 %spec.select, i32 %nest) #7, !dbg !3096
  br label %for.inc, !dbg !3096

for.inc:                                          ; preds = %if.end11, %if.then13
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3097
  br label %for.cond, !dbg !3098, !llvm.loop !3099

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3101
}

declare dso_local %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node*, i64, i32, i32, i8 zeroext, %struct.VEC_cgraph_edge_p_heap*) local_unnamed_addr #2

declare dso_local void @cgraph_redirect_edge_callee(%struct.cgraph_edge*, %struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !3102 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3107, metadata !DIExpression()), !dbg !3108
  %inline_summary = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, !dbg !3109
  ret %struct.inline_summary* %inline_summary, !dbg !3110
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @cgraph_gate_early_inlining() #5 !dbg !3111 {
entry:
  %0 = load i32, i32* @flag_early_inlining, align 4, !dbg !3112
  %conv = trunc i32 %0 to i8, !dbg !3112
  ret i8 %conv, !dbg !3113
}

; Function Attrs: nounwind uwtable
define internal i32 @cgraph_early_inlining() #5 !dbg !3114 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3119
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !3120
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !3116, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()), !dbg !3121
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3122
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !3122
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3122
  %tobool = icmp eq i32 %2, 0, !dbg !3122
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !3124

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !3125
  %3 = load i32, i32* %arrayidx2, align 8, !dbg !3125
  %tobool3 = icmp eq i32 %3, 0, !dbg !3125
  br i1 %tobool3, label %while.cond.preheader, label %cleanup, !dbg !3126

while.cond.preheader:                             ; preds = %lor.lhs.false
  br label %while.cond, !dbg !3127

while.cond:                                       ; preds = %while.cond.preheader, %do.end17
  %iterations.0 = phi i32 [ %inc, %do.end17 ], [ 0, %while.cond.preheader ], !dbg !3121
  %todo.0 = phi i32 [ %or, %do.end17 ], [ 0, %while.cond.preheader ], !dbg !3121
  call void @llvm.dbg.value(metadata i32 %todo.0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %iterations.0, metadata !3118, metadata !DIExpression()), !dbg !3121
  %4 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !3128
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %4, i64 9, i32 1, !dbg !3128
  %5 = load i32, i32* %value, align 8, !dbg !3128
  %cmp = icmp slt i32 %iterations.0, %5, !dbg !3129
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !3130

land.rhs:                                         ; preds = %while.cond
  %tobool5 = icmp eq i32 %iterations.0, 0, !dbg !3131
  %cond = select i1 %tobool5, i32 3, i32 2, !dbg !3131
  %call6 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(%struct.cgraph_node* %call, i32 %cond, i32 0) #7, !dbg !3132
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3130
  br i1 %tobool7, label %while.end, label %do.body, !dbg !3127

do.body:                                          ; preds = %land.rhs
  %6 = load i8, i8* @timevar_enable, align 1, !dbg !3133
  %tobool8 = icmp eq i8 %6, 0, !dbg !3133
  br i1 %tobool8, label %do.end, label %if.then9, !dbg !3137

if.then9:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 47) #6, !dbg !3133
  br label %do.end, !dbg !3133

do.end:                                           ; preds = %do.body, %if.then9
  %7 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3138
  %call11 = tail call i32 @optimize_inline_calls(%union.tree_node* %7) #6, !dbg !3139
  %or = or i32 %todo.0, %call11, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %or, metadata !3117, metadata !DIExpression()), !dbg !3121
  %inc = add nuw nsw i32 %iterations.0, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3118, metadata !DIExpression()), !dbg !3121
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !3142
  %tobool13 = icmp eq i8 %8, 0, !dbg !3142
  br i1 %tobool13, label %do.end17, label %if.then14, !dbg !3145

if.then14:                                        ; preds = %do.end
  tail call void @timevar_pop_1(i32 47) #6, !dbg !3142
  br label %do.end17, !dbg !3142

do.end17:                                         ; preds = %do.end, %if.then14
  br label %while.cond, !dbg !3127, !llvm.loop !3146

while.end:                                        ; preds = %land.rhs, %while.cond
  %iterations.0.lcssa = phi i32 [ %iterations.0, %land.rhs ], [ %iterations.0, %while.cond ], !dbg !3121
  %todo.0.lcssa = phi i32 [ %todo.0, %land.rhs ], [ %todo.0, %while.cond ], !dbg !3121
  call void @llvm.dbg.value(metadata i32 %iterations.0.lcssa, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %iterations.0.lcssa, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %iterations.0.lcssa, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %iterations.0.lcssa, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %iterations.0.lcssa, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %iterations.0.lcssa, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !3117, metadata !DIExpression()), !dbg !3121
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3148
  %tobool18 = icmp eq %struct._IO_FILE* %9, null, !dbg !3148
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !3150

if.then19:                                        ; preds = %while.end
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %iterations.0.lcssa) #6, !dbg !3151
  br label %if.end21, !dbg !3151

if.end21:                                         ; preds = %while.end, %if.then19
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3152
  %always_inline_functions_inlined = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 20, !dbg !3153
  %bf.load = load i32, i32* %always_inline_functions_inlined, align 8, !dbg !3154
  %bf.set = or i32 %bf.load, 33554432, !dbg !3154
  store i32 %bf.set, i32* %always_inline_functions_inlined, align 8, !dbg !3154
  br label %cleanup, !dbg !3155

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end21
  %retval.0 = phi i32 [ %todo.0.lcssa, %if.end21 ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !3121
  ret i32 %retval.0, !dbg !3156
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @cgraph_gate_ipa_early_inlining() #5 !dbg !3157 {
entry:
  %0 = load i32, i32* @flag_early_inlining, align 4, !dbg !3158
  %tobool = icmp eq i32 %0, 0, !dbg !3158
  %1 = load i8, i8* @in_lto_p, align 1, !dbg !3159
  %tobool1 = icmp ne i8 %1, 0, !dbg !3159
  %or.cond = or i1 %tobool, %tobool1, !dbg !3160
  br i1 %or.cond, label %land.end, label %land.rhs, !dbg !3160

land.rhs:                                         ; preds = %entry
  %2 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3161
  %3 = load i32, i32* @flag_test_coverage, align 4, !dbg !3162
  %4 = or i32 %2, %3, !dbg !3163
  %5 = icmp eq i32 %4, 0, !dbg !3163
  br i1 %5, label %lor.rhs, label %land.end, !dbg !3163

lor.rhs:                                          ; preds = %land.rhs
  %6 = load i32, i32* @profile_arc_flag, align 4, !dbg !3164
  %tobool4 = icmp ne i32 %6, 0, !dbg !3165
  %phitmp = zext i1 %tobool4 to i8, !dbg !3165
  br label %land.end, !dbg !3165

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %7 = phi i8 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i8 %7, !dbg !3166
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compute_inline_parameters(%struct.cgraph_node* %node) local_unnamed_addr #5 !dbg !3167 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3169, metadata !DIExpression()), !dbg !3171
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !3172
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3172
  %tobool = icmp eq %struct.cgraph_node* %0, null, !dbg !3172
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3172

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1865, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3172
  br label %cond.end, !dbg !3172

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load i32, i32* @optimize, align 4, !dbg !3173
  %tobool1 = icmp eq i32 %1, 0, !dbg !3173
  br i1 %tobool1, label %cond.end4, label %cond.true2, !dbg !3173

cond.true2:                                       ; preds = %cond.end
  %call = tail call i64 @estimated_stack_frame_size() #6, !dbg !3174
  br label %cond.end4, !dbg !3173

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %cond5 = phi i64 [ %call, %cond.true2 ], [ 0, %cond.end ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %cond5, metadata !3170, metadata !DIExpression()), !dbg !3171
  %call6 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) #7, !dbg !3175
  %estimated_self_stack_size = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call6, i64 0, i32 0, !dbg !3176
  store i64 %cond5, i64* %estimated_self_stack_size, align 8, !dbg !3177
  %estimated_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 0, !dbg !3178
  store i64 %cond5, i64* %estimated_stack_size, align 8, !dbg !3179
  %stack_frame_offset = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 1, !dbg !3180
  store i64 0, i64* %stack_frame_offset, align 8, !dbg !3181
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3182
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3182
  %call9 = tail call zeroext i8 @tree_inlinable_function_p(%union.tree_node* %2) #6, !dbg !3183
  %inlinable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3184
  %bf.load = load i8, i8* %inlinable, align 8, !dbg !3185
  %bf.value = shl i8 %call9, 3, !dbg !3185
  %bf.shl = and i8 %bf.value, 8, !dbg !3185
  %bf.clear = and i8 %bf.load, -9, !dbg !3185
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !3185
  store i8 %bf.set, i8* %inlinable, align 8, !dbg !3185
  %bf.clear13 = and i8 %call9, 1, !dbg !3186
  %tobool14 = icmp eq i8 %bf.clear13, 0, !dbg !3188
  br i1 %tobool14, label %if.end, label %land.lhs.true, !dbg !3189

land.lhs.true:                                    ; preds = %cond.end4
  %bf.clear18 = and i8 %bf.load, 16, !dbg !3190
  %tobool20 = icmp eq i8 %bf.clear18, 0, !dbg !3191
  br i1 %tobool20, label %if.then, label %if.end, !dbg !3192

if.then:                                          ; preds = %land.lhs.true
  %3 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !3193
  %4 = load %struct.tree_function_decl*, %struct.tree_function_decl** %3, align 8, !dbg !3193
  %disregard_inline_limits22 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %4, i64 0, i32 5, !dbg !3193
  %bf.load23 = load i32, i32* %disregard_inline_limits22, align 8, !dbg !3193
  %5 = lshr i32 %bf.load23, 22, !dbg !3194
  %6 = trunc i32 %5 to i8, !dbg !3194
  %bf.shl30 = and i8 %6, 16, !dbg !3194
  %bf.clear31 = and i8 %bf.set, -17, !dbg !3194
  %bf.set32 = or i8 %bf.clear31, %bf.shl30, !dbg !3194
  store i8 %bf.set32, i8* %inlinable, align 8, !dbg !3194
  br label %if.end, !dbg !3195

if.end:                                           ; preds = %land.lhs.true, %cond.end4, %if.then
  tail call fastcc void @estimate_function_body_sizes(%struct.cgraph_node* %node) #7, !dbg !3196
  %call34 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) #7, !dbg !3197
  %self_time = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call34, i64 0, i32 3, !dbg !3198
  %7 = load i32, i32* %self_time, align 8, !dbg !3198
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 3, !dbg !3199
  store i32 %7, i32* %time, align 8, !dbg !3200
  %call36 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) #7, !dbg !3201
  %self_size = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call36, i64 0, i32 1, !dbg !3202
  %8 = load i32, i32* %self_size, align 8, !dbg !3202
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 4, !dbg !3203
  store i32 %8, i32* %size, align 4, !dbg !3204
  ret i32 0, !dbg !3205
}

declare dso_local i64 @estimated_stack_frame_size() local_unnamed_addr #2

declare dso_local zeroext i8 @tree_inlinable_function_p(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @estimate_function_body_sizes(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !3206 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3208, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 0, metadata !3209, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 0, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 0, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 0, metadata !3212, metadata !DIExpression()), !dbg !3242
  %0 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !3243
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3243
  %1 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !3244
  %2 = load %struct.tree_function_decl*, %struct.tree_function_decl** %1, align 8, !dbg !3244
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %2, i64 0, i32 1, !dbg !3244
  %3 = load %struct.function*, %struct.function** %f, align 8, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.function* %3, metadata !3221, metadata !DIExpression()), !dbg !3242
  %type = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3245
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3245
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3224, metadata !DIExpression()), !dbg !3242
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3246
  %tobool = icmp eq %struct._IO_FILE* %5, null, !dbg !3246
  br i1 %tobool, label %if.end, label %if.then, !dbg !3248

if.then:                                          ; preds = %entry
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3249
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* %call) #6, !dbg !3250
  br label %if.end, !dbg !3250

if.end:                                           ; preds = %entry, %if.then
  %tobool3 = icmp eq %struct.function* %3, null, !dbg !3251
  br i1 %tobool3, label %cond.true, label %land.lhs.true, !dbg !3251

land.lhs.true:                                    ; preds = %if.end
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3251
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3251
  %tobool4 = icmp eq %struct.control_flow_graph* %6, null, !dbg !3251
  br i1 %tobool4, label %cond.true, label %cond.end, !dbg !3251

cond.true:                                        ; preds = %land.lhs.true, %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1793, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3251
  %cfg5.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3252
  %.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5.phi.trans.insert, align 8, !dbg !3253
  br label %cond.end, !dbg !3251

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %7 = phi %struct.control_flow_graph* [ %6, %land.lhs.true ], [ %.pre, %cond.true ], !dbg !3253
  %cfg5 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3253
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !3253
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3253
  %decl7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3254
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3255
  br label %for.cond, !dbg !3253

for.cond:                                         ; preds = %for.inc49, %cond.end
  %10 = phi %struct.control_flow_graph* [ %7, %cond.end ], [ %.pre3, %for.inc49 ], !dbg !3256
  %.pn = phi %struct.basic_block_def* [ %8, %cond.end ], [ %bb.0, %for.inc49 ]
  %size_inlining_benefit.0 = phi i32 [ 0, %cond.end ], [ %size_inlining_benefit.1.lcssa, %for.inc49 ], !dbg !3257
  %size.0 = phi i32 [ 0, %cond.end ], [ %size.1.lcssa, %for.inc49 ], !dbg !3258
  %time_inlining_benefit.0 = phi i64 [ 0, %cond.end ], [ %time_inlining_benefit.1.lcssa, %for.inc49 ], !dbg !3259
  %time.0 = phi i64 [ 0, %cond.end ], [ %time.1.lcssa, %for.inc49 ], !dbg !3260
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3252
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %time.0, metadata !3209, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.0, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.0, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3213, metadata !DIExpression()), !dbg !3242
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !3256
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3256
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !3256
  br i1 %cmp, label %for.end51, label %for.body, !dbg !3253

for.body:                                         ; preds = %for.cond
  %12 = load %union.tree_node*, %union.tree_node** %decl7, align 8, !dbg !3261
  %call8 = call i32 @compute_call_stmt_bb_frequency(%union.tree_node* %12, %struct.basic_block_def* %bb.0) #6, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %call8, metadata !3223, metadata !DIExpression()), !dbg !3242
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !3263
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !3263
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !3263
  br label %for.cond9, !dbg !3264

for.cond9:                                        ; preds = %for.inc, %for.body
  %size_inlining_benefit.1 = phi i32 [ %size_inlining_benefit.0, %for.body ], [ %size_inlining_benefit.2, %for.inc ], !dbg !3242
  %size.1 = phi i32 [ %size.0, %for.body ], [ %add22, %for.inc ], !dbg !3242
  %time_inlining_benefit.1 = phi i64 [ %time_inlining_benefit.0, %for.body ], [ %time_inlining_benefit.2, %for.inc ], !dbg !3242
  %time.1 = phi i64 [ %time.0, %for.body ], [ %add, %for.inc ], !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time.1, metadata !3209, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.1, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.1, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !3214, metadata !DIExpression(DW_OP_deref)), !dbg !3242
  %call10 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !3265
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3266
  br i1 %tobool11, label %for.body12, label %for.inc49, !dbg !3267

for.body12:                                       ; preds = %for.cond9
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !3214, metadata !DIExpression(DW_OP_deref)), !dbg !3242
  %call13 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !3268
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !3225, metadata !DIExpression()), !dbg !3269
  %call14 = call i32 @estimate_num_insns(%union.gimple_statement_d* %call13, %struct.eni_weights_d* nonnull @eni_size_weights) #6, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %call14, metadata !3232, metadata !DIExpression()), !dbg !3269
  %call15 = call i32 @estimate_num_insns(%union.gimple_statement_d* %call13, %struct.eni_weights_d* nonnull @eni_time_weights) #6, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3233, metadata !DIExpression()), !dbg !3269
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3272
  %tobool16 = icmp eq %struct._IO_FILE* %13, null, !dbg !3272
  br i1 %tobool16, label %if.end21, label %land.lhs.true17, !dbg !3274

land.lhs.true17:                                  ; preds = %for.body12
  %14 = load i32, i32* @dump_flags, align 4, !dbg !3275
  %and = and i32 %14, 8, !dbg !3276
  %tobool18 = icmp eq i32 %and, 0, !dbg !3276
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !3277

if.then19:                                        ; preds = %land.lhs.true17
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i32 %call8, i32 %call14, i32 %call15) #6, !dbg !3278
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3280
  call void @print_gimple_stmt(%struct._IO_FILE* %15, %union.gimple_statement_d* %call13, i32 0, i32 0) #6, !dbg !3281
  br label %if.end21, !dbg !3282

if.end21:                                         ; preds = %land.lhs.true17, %for.body12, %if.then19
  %mul = mul nsw i32 %call15, %call8, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3233, metadata !DIExpression()), !dbg !3269
  %conv = sext i32 %mul to i64, !dbg !3284
  %add = add nsw i64 %time.1, %conv, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %add, metadata !3209, metadata !DIExpression()), !dbg !3242
  %add22 = add nsw i32 %size.1, %call14, !dbg !3286
  call void @llvm.dbg.value(metadata i32 %add22, metadata !3211, metadata !DIExpression()), !dbg !3242
  %call23 = call fastcc zeroext i8 @likely_eliminated_by_inlining_p(%union.gimple_statement_d* %call13) #7, !dbg !3287
  %tobool24 = icmp eq i8 %call23, 0, !dbg !3287
  br i1 %tobool24, label %if.end36, label %if.then25, !dbg !3289

if.then25:                                        ; preds = %if.end21
  %add26 = add nsw i32 %size_inlining_benefit.1, %call14, !dbg !3290
  call void @llvm.dbg.value(metadata i32 %add26, metadata !3212, metadata !DIExpression()), !dbg !3242
  %add28 = add nsw i64 %time_inlining_benefit.1, %conv, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %add28, metadata !3210, metadata !DIExpression()), !dbg !3242
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3293
  %tobool29 = icmp eq %struct._IO_FILE* %16, null, !dbg !3293
  br i1 %tobool29, label %if.end36, label %land.lhs.true30, !dbg !3295

land.lhs.true30:                                  ; preds = %if.then25
  %17 = load i32, i32* @dump_flags, align 4, !dbg !3296
  %and31 = and i32 %17, 8, !dbg !3297
  %tobool32 = icmp eq i32 %and31, 0, !dbg !3297
  br i1 %tobool32, label %if.end36, label %if.then33, !dbg !3298

if.then33:                                        ; preds = %land.lhs.true30
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3299
  br label %if.end36, !dbg !3299

if.end36:                                         ; preds = %land.lhs.true30, %if.then25, %if.end21, %if.then33
  %size_inlining_benefit.2 = phi i32 [ %size_inlining_benefit.1, %if.end21 ], [ %add26, %if.then33 ], [ %add26, %land.lhs.true30 ], [ %add26, %if.then25 ], !dbg !3242
  %time_inlining_benefit.2 = phi i64 [ %time_inlining_benefit.1, %if.end21 ], [ %add28, %if.then33 ], [ %add28, %land.lhs.true30 ], [ %add28, %if.then25 ], !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.2, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.2, metadata !3212, metadata !DIExpression()), !dbg !3242
  %cmp37 = icmp sgt i64 %add, -1, !dbg !3300
  br i1 %cmp37, label %cond.end41, label %cond.true39, !dbg !3300

cond.true39:                                      ; preds = %if.end36
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1819, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3300
  br label %cond.end41, !dbg !3300

cond.end41:                                       ; preds = %if.end36, %cond.true39
  %cmp43 = icmp sgt i32 %add22, -1, !dbg !3301
  br i1 %cmp43, label %for.inc, label %cond.true45, !dbg !3301

cond.true45:                                      ; preds = %cond.end41
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1820, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3301
  br label %for.inc, !dbg !3301

for.inc:                                          ; preds = %cond.true45, %cond.end41
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !3214, metadata !DIExpression(DW_OP_deref)), !dbg !3242
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #7, !dbg !3302
  br label %for.cond9, !dbg !3303, !llvm.loop !3304

for.inc49:                                        ; preds = %for.cond9
  %size_inlining_benefit.1.lcssa = phi i32 [ %size_inlining_benefit.1, %for.cond9 ], !dbg !3242
  %size.1.lcssa = phi i32 [ %size.1, %for.cond9 ], !dbg !3242
  %time_inlining_benefit.1.lcssa = phi i64 [ %time_inlining_benefit.1, %for.cond9 ], !dbg !3242
  %time.1.lcssa = phi i64 [ %time.1, %for.cond9 ], !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.1.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.1.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.1.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time.1.lcssa, metadata !3209, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.1.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.1.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.1.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time.1.lcssa, metadata !3209, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.1.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.1.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.1.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time.1.lcssa, metadata !3209, metadata !DIExpression()), !dbg !3242
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5, align 8, !dbg !3256
  br label %for.cond, !dbg !3256, !llvm.loop !3306

for.end51:                                        ; preds = %for.cond
  %size_inlining_benefit.0.lcssa = phi i32 [ %size_inlining_benefit.0, %for.cond ], !dbg !3257
  %size.0.lcssa = phi i32 [ %size.0, %for.cond ], !dbg !3258
  %time_inlining_benefit.0.lcssa = phi i64 [ %time_inlining_benefit.0, %for.cond ], !dbg !3259
  %time.0.lcssa = phi i64 [ %time.0, %for.cond ], !dbg !3260
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.0.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.0.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time.0.lcssa, metadata !3209, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.0.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.0.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time.0.lcssa, metadata !3209, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.0.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !3211, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.0.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time.0.lcssa, metadata !3209, metadata !DIExpression()), !dbg !3242
  %add52 = add nsw i64 %time.0.lcssa, 500, !dbg !3308
  %div = sdiv i64 %add52, 1000, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %div, metadata !3209, metadata !DIExpression()), !dbg !3242
  %add53 = add nsw i64 %time_inlining_benefit.0.lcssa, 500, !dbg !3310
  %div54 = sdiv i64 %add53, 1000, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %div54, metadata !3210, metadata !DIExpression()), !dbg !3242
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3312
  %tobool55 = icmp eq %struct._IO_FILE* %18, null, !dbg !3312
  br i1 %tobool55, label %if.end60, label %if.then56, !dbg !3314

if.then56:                                        ; preds = %for.end51
  %conv57 = trunc i64 %div to i32, !dbg !3315
  %conv58 = trunc i64 %div54 to i32, !dbg !3316
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i32 %conv57, i32 %conv58, i32 %size.0.lcssa, i32 %size_inlining_benefit.0.lcssa) #6, !dbg !3317
  br label %if.end60, !dbg !3317

if.end60:                                         ; preds = %for.end51, %if.then56
  %19 = load i32, i32* getelementptr inbounds (%struct.eni_weights_d, %struct.eni_weights_d* @eni_time_weights, i64 0, i32 0), align 4, !dbg !3318
  %conv61 = zext i32 %19 to i64, !dbg !3319
  %add62 = add nsw i64 %div54, %conv61, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %add62, metadata !3210, metadata !DIExpression()), !dbg !3242
  %20 = load i32, i32* getelementptr inbounds (%struct.eni_weights_d, %struct.eni_weights_d* @eni_size_weights, i64 0, i32 0), align 4, !dbg !3321
  %add63 = add i32 %size_inlining_benefit.0.lcssa, %20, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %add63, metadata !3212, metadata !DIExpression()), !dbg !3242
  %type65 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3323
  %21 = bitcast %union.tree_node** %type65 to i64**, !dbg !3323
  %22 = load i64*, i64** %21, align 8, !dbg !3323
  %bf.load = load i64, i64* %22, align 8, !dbg !3323
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3323
  %cmp66 = icmp eq i64 %bf.cast1, 19, !dbg !3323
  br i1 %cmp66, label %if.end75, label %if.then68, !dbg !3324

if.then68:                                        ; preds = %if.end60
  %23 = bitcast i64* %22 to %union.tree_node*, !dbg !3324
  %call71 = call i32 @estimate_move_cost(%union.tree_node* %23) #6, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %call71, metadata !3234, metadata !DIExpression()), !dbg !3326
  %conv72 = sext i32 %call71 to i64, !dbg !3327
  %add73 = add nsw i64 %add62, %conv72, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %add73, metadata !3210, metadata !DIExpression()), !dbg !3242
  %add74 = add nsw i32 %add63, %call71, !dbg !3329
  call void @llvm.dbg.value(metadata i32 %add74, metadata !3212, metadata !DIExpression()), !dbg !3242
  br label %if.end75, !dbg !3330

if.end75:                                         ; preds = %if.then68, %if.end60
  %size_inlining_benefit.3 = phi i32 [ %add63, %if.end60 ], [ %add74, %if.then68 ], !dbg !3242
  %time_inlining_benefit.3 = phi i64 [ %add62, %if.end60 ], [ %add73, %if.then68 ], !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.3, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.3, metadata !3212, metadata !DIExpression()), !dbg !3242
  %24 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_non_common**, !dbg !3331
  %25 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** %24, align 8, !dbg !3331
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %25, i64 0, i32 2, !dbg !3331
  br label %for.cond77, !dbg !3332

for.cond77:                                       ; preds = %for.inc97, %if.end75
  %arg.0.in = phi %union.tree_node** [ %arguments, %if.end75 ], [ %chain, %for.inc97 ]
  %size_inlining_benefit.4 = phi i32 [ %size_inlining_benefit.3, %if.end75 ], [ %size_inlining_benefit.5, %for.inc97 ], !dbg !3322
  %time_inlining_benefit.4 = phi i64 [ %time_inlining_benefit.3, %if.end75 ], [ %time_inlining_benefit.5, %for.inc97 ], !dbg !3320
  %arg.0 = load %union.tree_node*, %union.tree_node** %arg.0.in, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.4, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.4, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !3222, metadata !DIExpression()), !dbg !3242
  %tobool78 = icmp eq %union.tree_node* %arg.0, null, !dbg !3334
  br i1 %tobool78, label %for.end99, label %for.body79, !dbg !3334

for.body79:                                       ; preds = %for.cond77
  %type81 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3335
  %26 = bitcast %union.tree_node** %type81 to i64**, !dbg !3335
  %27 = load i64*, i64** %26, align 8, !dbg !3335
  %bf.load83 = load i64, i64* %27, align 8, !dbg !3335
  %bf.cast852 = and i64 %bf.load83, 65535, !dbg !3335
  %cmp86 = icmp eq i64 %bf.cast852, 19, !dbg !3335
  br i1 %cmp86, label %for.inc97, label %if.then88, !dbg !3336

if.then88:                                        ; preds = %for.body79
  %28 = bitcast i64* %27 to %union.tree_node*, !dbg !3336
  %call92 = call i32 @estimate_move_cost(%union.tree_node* %28) #6, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %call92, metadata !3237, metadata !DIExpression()), !dbg !3338
  %conv93 = sext i32 %call92 to i64, !dbg !3339
  %add94 = add nsw i64 %time_inlining_benefit.4, %conv93, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %add94, metadata !3210, metadata !DIExpression()), !dbg !3242
  %add95 = add nsw i32 %size_inlining_benefit.4, %call92, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %add95, metadata !3212, metadata !DIExpression()), !dbg !3242
  br label %for.inc97, !dbg !3342

for.inc97:                                        ; preds = %for.body79, %if.then88
  %size_inlining_benefit.5 = phi i32 [ %size_inlining_benefit.4, %for.body79 ], [ %add95, %if.then88 ], !dbg !3242
  %time_inlining_benefit.5 = phi i64 [ %time_inlining_benefit.4, %for.body79 ], [ %add94, %if.then88 ], !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.5, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.5, metadata !3212, metadata !DIExpression()), !dbg !3242
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3343
  br label %for.cond77, !dbg !3344, !llvm.loop !3345

for.end99:                                        ; preds = %for.cond77
  %size_inlining_benefit.4.lcssa = phi i32 [ %size_inlining_benefit.4, %for.cond77 ], !dbg !3322
  %time_inlining_benefit.4.lcssa = phi i64 [ %time_inlining_benefit.4, %for.cond77 ], !dbg !3320
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.4.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.4.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.4.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.4.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.4.lcssa, metadata !3212, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %time_inlining_benefit.4.lcssa, metadata !3210, metadata !DIExpression()), !dbg !3242
  %29 = icmp slt i64 %time_inlining_benefit.4.lcssa, 1000000000, !dbg !3347
  %spec.select = select i1 %29, i64 %time_inlining_benefit.4.lcssa, i64 1000000000, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !3210, metadata !DIExpression()), !dbg !3242
  %30 = icmp slt i64 %div, 1000000000, !dbg !3348
  %time.2 = select i1 %30, i64 %div, i64 1000000000, !dbg !3348
  call void @llvm.dbg.value(metadata i64 %time.2, metadata !3209, metadata !DIExpression()), !dbg !3242
  %conv108 = trunc i64 %time.2 to i32, !dbg !3349
  %call109 = call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) #7, !dbg !3350
  %self_time = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call109, i64 0, i32 3, !dbg !3351
  store i32 %conv108, i32* %self_time, align 8, !dbg !3352
  %call110 = call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) #7, !dbg !3353
  %self_size = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call110, i64 0, i32 1, !dbg !3354
  store i32 %size.0.lcssa, i32* %self_size, align 8, !dbg !3355
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3356
  %tobool111 = icmp eq %struct._IO_FILE* %31, null, !dbg !3356
  br i1 %tobool111, label %for.end99.if.end116_crit_edge, label %if.then112, !dbg !3358

for.end99.if.end116_crit_edge:                    ; preds = %for.end99
  %.pre4 = trunc i64 %spec.select to i32, !dbg !3359
  br label %if.end116, !dbg !3358

if.then112:                                       ; preds = %for.end99
  %conv114 = trunc i64 %spec.select to i32, !dbg !3360
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i32 %conv108, i32 %conv114, i32 %size.0.lcssa, i32 %size_inlining_benefit.4.lcssa) #6, !dbg !3361
  br label %if.end116, !dbg !3361

if.end116:                                        ; preds = %for.end99.if.end116_crit_edge, %if.then112
  %conv117.pre-phi = phi i32 [ %.pre4, %for.end99.if.end116_crit_edge ], [ %conv114, %if.then112 ], !dbg !3359
  %call118 = call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) #7, !dbg !3362
  %time_inlining_benefit119 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call118, i64 0, i32 4, !dbg !3363
  store i32 %conv117.pre-phi, i32* %time_inlining_benefit119, align 4, !dbg !3364
  %call120 = call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %node) #7, !dbg !3365
  %size_inlining_benefit121 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call120, i64 0, i32 2, !dbg !3366
  store i32 %size_inlining_benefit.4.lcssa, i32* %size_inlining_benefit121, align 4, !dbg !3367
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3368
  ret void, !dbg !3368
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_inline_parameters_for_current() #5 !dbg !3369 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3370
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !3371
  %call1 = tail call i32 @compute_inline_parameters(%struct.cgraph_node* %call) #7, !dbg !3372
  ret i32 0, !dbg !3373
}

; Function Attrs: nounwind uwtable
define internal i32 @cgraph_decide_inlining() #5 !dbg !3374 {
entry:
  %reason = alloca i32, align 4
  %0 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !3402
  %conv = sext i32 %0 to i64, !dbg !3402
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3402
  %1 = bitcast i8* %call to %struct.cgraph_node**, !dbg !3402
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %1, metadata !3378, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3379, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8 1, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3382, metadata !DIExpression()), !dbg !3403
  %2 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** @function_insertion_hook_holder, align 8, !dbg !3404
  tail call void @cgraph_remove_function_insertion_hook(%struct.cgraph_node_hook_list* %2) #6, !dbg !3405
  %3 = load i8, i8* @in_lto_p, align 1, !dbg !3406
  %tobool = icmp ne i8 %3, 0, !dbg !3406
  %4 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !3408
  %tobool2 = icmp ne i32 %4, 0, !dbg !3408
  %or.cond = and i1 %tobool, %tobool2, !dbg !3409
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3409

if.then:                                          ; preds = %entry
  tail call void @ipa_update_after_lto_read() #6, !dbg !3410
  br label %if.end, !dbg !3410

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* @max_count, align 8, !dbg !3411
  store i64 0, i64* @max_benefit, align 8, !dbg !3412
  br label %for.cond, !dbg !3413

for.cond:                                         ; preds = %for.inc28, %if.end
  %initial_size.0 = phi i32 [ 0, %if.end ], [ %initial_size.1, %for.inc28 ], !dbg !3403
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end ], [ %next, %for.inc28 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3414
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3376, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %initial_size.0, metadata !3382, metadata !DIExpression()), !dbg !3403
  %tobool3 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3415
  br i1 %tobool3, label %for.end29, label %for.body, !dbg !3415

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3416
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3416
  %bf.clear = and i16 %bf.load, 32, !dbg !3416
  %tobool4 = icmp eq i16 %bf.clear, 0, !dbg !3417
  br i1 %tobool4, label %for.inc28, label %if.then5, !dbg !3418

if.then5:                                         ; preds = %for.body
  %call6 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3419
  %self_size = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call6, i64 0, i32 1, !dbg !3419
  %5 = load i32, i32* %self_size, align 8, !dbg !3419
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 4, !dbg !3419
  %6 = load i32, i32* %size, align 4, !dbg !3419
  %cmp = icmp eq i32 %5, %6, !dbg !3419
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3419

cond.true:                                        ; preds = %if.then5
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3419
  %.pre = load i32, i32* %size, align 4, !dbg !3420
  br label %cond.end, !dbg !3419

cond.end:                                         ; preds = %if.then5, %cond.true
  %7 = phi i32 [ %5, %if.then5 ], [ %.pre, %cond.true ], !dbg !3420
  call void @llvm.dbg.value(metadata i32 %add, metadata !3382, metadata !DIExpression()), !dbg !3403
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 1, !dbg !3421
  br label %for.cond10, !dbg !3423

for.cond10:                                       ; preds = %for.inc, %cond.end
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %cond.end ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3424
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3383, metadata !DIExpression()), !dbg !3425
  %tobool11 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3426
  br i1 %tobool11, label %for.end, label %for.body12, !dbg !3426

for.body12:                                       ; preds = %for.cond10
  %8 = load i64, i64* @max_count, align 8, !dbg !3427
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 0, !dbg !3430
  %9 = load i64, i64* %count, align 8, !dbg !3430
  %cmp13 = icmp slt i64 %8, %9, !dbg !3431
  br i1 %cmp13, label %if.then15, label %for.inc, !dbg !3432

if.then15:                                        ; preds = %for.body12
  store i64 %9, i64* @max_count, align 8, !dbg !3433
  br label %for.inc, !dbg !3434

for.inc:                                          ; preds = %for.body12, %if.then15
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3435
  br label %for.cond10, !dbg !3436, !llvm.loop !3437

for.end:                                          ; preds = %for.cond10
  %add = add nsw i32 %initial_size.0, %7, !dbg !3439
  %10 = load i64, i64* @max_benefit, align 8, !dbg !3440
  %call18 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3442
  %time_inlining_benefit = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call18, i64 0, i32 4, !dbg !3443
  %11 = load i32, i32* %time_inlining_benefit, align 4, !dbg !3443
  %conv19 = sext i32 %11 to i64, !dbg !3442
  %cmp20 = icmp slt i64 %10, %conv19, !dbg !3444
  br i1 %cmp20, label %if.then22, label %for.inc28, !dbg !3445

if.then22:                                        ; preds = %for.end
  %call23 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3446
  %time_inlining_benefit24 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call23, i64 0, i32 4, !dbg !3447
  %12 = load i32, i32* %time_inlining_benefit24, align 4, !dbg !3447
  %conv25 = sext i32 %12 to i64, !dbg !3446
  store i64 %conv25, i64* @max_benefit, align 8, !dbg !3448
  br label %for.inc28, !dbg !3449

for.inc28:                                        ; preds = %for.body, %if.then22, %for.end
  %initial_size.1 = phi i32 [ %initial_size.0, %for.body ], [ %add, %if.then22 ], [ %add, %for.end ], !dbg !3403
  call void @llvm.dbg.value(metadata i32 %initial_size.1, metadata !3382, metadata !DIExpression()), !dbg !3403
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3450
  br label %for.cond, !dbg !3451, !llvm.loop !3452

for.end29:                                        ; preds = %for.cond
  %initial_size.0.lcssa = phi i32 [ %initial_size.0, %for.cond ], !dbg !3403
  call void @llvm.dbg.value(metadata i32 %initial_size.0.lcssa, metadata !3382, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %initial_size.0.lcssa, metadata !3382, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %initial_size.0.lcssa, metadata !3382, metadata !DIExpression()), !dbg !3403
  %13 = load i8, i8* @in_lto_p, align 1, !dbg !3454
  %tobool31 = icmp eq i8 %13, 0, !dbg !3454
  %14 = load i64, i64* @max_count, align 8, !dbg !3454
  %tobool32 = icmp ne i64 %14, 0, !dbg !3454
  %or.cond1 = and i1 %tobool31, %tobool32, !dbg !3454
  br i1 %or.cond1, label %lor.lhs.false33, label %cond.end39, !dbg !3454

lor.lhs.false33:                                  ; preds = %for.end29
  %15 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3454
  %tobool34 = icmp ne %struct.gcov_ctr_summary* %15, null, !dbg !3454
  %16 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3454
  %tobool36 = icmp ne i32 %16, 0, !dbg !3454
  %or.cond2 = and i1 %tobool34, %tobool36, !dbg !3454
  br i1 %or.cond2, label %cond.end39, label %cond.true37, !dbg !3454

cond.true37:                                      ; preds = %lor.lhs.false33
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3454
  br label %cond.end39, !dbg !3454

cond.end39:                                       ; preds = %for.end29, %lor.lhs.false33, %cond.true37
  store i32 %initial_size.0.lcssa, i32* @overall_size, align 4, !dbg !3455
  %call41 = tail call i32 @cgraph_postorder(%struct.cgraph_node** %1) #6, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %call41, metadata !3377, metadata !DIExpression()), !dbg !3403
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3457
  %tobool42 = icmp eq %struct._IO_FILE* %17, null, !dbg !3457
  br i1 %tobool42, label %if.end45, label %if.then43, !dbg !3459

if.then43:                                        ; preds = %cond.end39
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0), i32 %initial_size.0.lcssa) #6, !dbg !3460
  br label %if.end45, !dbg !3460

if.end45:                                         ; preds = %cond.end39, %if.then43
  br label %for.cond46, !dbg !3461

for.cond46:                                       ; preds = %for.body48, %if.end45
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end45 ], [ %next50, %for.body48 ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !3376, metadata !DIExpression()), !dbg !3403
  %tobool47 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !3464
  br i1 %tobool47, label %for.end51, label %for.body48, !dbg !3464

for.body48:                                       ; preds = %for.cond46
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 16, !dbg !3465
  store i8* null, i8** %aux, align 8, !dbg !3467
  %next50 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !3468
  br label %for.cond46, !dbg !3469, !llvm.loop !3470

for.end51:                                        ; preds = %for.cond46
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3472
  %tobool52 = icmp eq %struct._IO_FILE* %18, null, !dbg !3472
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !3474

if.then53:                                        ; preds = %for.end51
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !3475
  br label %if.end55, !dbg !3475

if.end55:                                         ; preds = %for.end51, %if.then53
  %19 = sext i32 %call41 to i64, !dbg !3476
  br label %while.cond, !dbg !3476

while.cond.loopexit:                              ; preds = %for.cond57
  %redo_always_inline.1.lcssa = phi i8 [ %redo_always_inline.1, %for.cond57 ], !dbg !3477
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.1.lcssa, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.1.lcssa, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.1.lcssa, metadata !3381, metadata !DIExpression()), !dbg !3403
  br label %while.cond, !dbg !3476

while.cond:                                       ; preds = %while.cond.loopexit, %if.end55
  %redo_always_inline.0 = phi i8 [ 1, %if.end55 ], [ %redo_always_inline.1.lcssa, %while.cond.loopexit ], !dbg !3403
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.0, metadata !3381, metadata !DIExpression()), !dbg !3403
  %tobool56 = icmp eq i8 %redo_always_inline.0, 0, !dbg !3476
  br i1 %tobool56, label %while.end, label %while.body, !dbg !3476

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %call41, metadata !3380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  br label %for.cond57, !dbg !3478

for.cond57:                                       ; preds = %cleanup, %while.body
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %cleanup ], [ %19, %while.body ], !dbg !3477
  %redo_always_inline.1 = phi i8 [ %redo_always_inline.5, %cleanup ], [ 0, %while.body ], !dbg !3477
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, -1, !dbg !3479
  call void @llvm.dbg.value(metadata i32 undef, metadata !3380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.1, metadata !3381, metadata !DIExpression()), !dbg !3403
  %cmp58 = icmp sgt i64 %indvars.iv6, 0, !dbg !3480
  br i1 %cmp58, label %for.body60, label %while.cond.loopexit, !dbg !3481, !llvm.loop !3482

for.body60:                                       ; preds = %for.cond57
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv.next7, !dbg !3484
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %20, metadata !3376, metadata !DIExpression()), !dbg !3403
  %21 = bitcast %struct.cgraph_node* %20 to %struct.tree_decl_common**, !dbg !3485
  %22 = load %struct.tree_decl_common*, %struct.tree_decl_common** %21, align 8, !dbg !3485
  %attributes = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %22, i64 0, i32 6, !dbg !3485
  %23 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !3485
  %call63 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %23) #6, !dbg !3487
  %cmp64 = icmp eq %union.tree_node* %call63, null, !dbg !3488
  br i1 %cmp64, label %if.end73, label %if.then66, !dbg !3489

if.then66:                                        ; preds = %for.body60
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3490
  %tobool67 = icmp eq %struct._IO_FILE* %24, null, !dbg !3490
  br i1 %tobool67, label %if.end71, label %if.then68, !dbg !3493

if.then68:                                        ; preds = %if.then66
  %call69 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %20) #6, !dbg !3494
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %call69) #6, !dbg !3495
  br label %if.end71, !dbg !3495

if.end71:                                         ; preds = %if.then66, %if.then68
  %call72 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(%struct.cgraph_node* %20, i32 4, i32 0) #7, !dbg !3496
  br label %if.end73, !dbg !3497

if.end73:                                         ; preds = %for.body60, %if.end71
  %disregard_inline_limits = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i64 0, i32 18, i32 2, !dbg !3498
  %bf.load74 = load i8, i8* %disregard_inline_limits, align 8, !dbg !3498
  %bf.clear76 = and i8 %bf.load74, 16, !dbg !3498
  %tobool78 = icmp eq i8 %bf.clear76, 0, !dbg !3500
  br i1 %tobool78, label %cleanup, label %if.end80, !dbg !3501

if.end80:                                         ; preds = %if.end73
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3502
  %tobool81 = icmp eq %struct._IO_FILE* %25, null, !dbg !3502
  br i1 %tobool81, label %if.end87, label %if.then82, !dbg !3504

if.then82:                                        ; preds = %if.end80
  %call83 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %20) #6, !dbg !3505
  %size85 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i64 0, i32 19, i32 4, !dbg !3506
  %26 = load i32, i32* %size85, align 4, !dbg !3506
  %call86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0), i8* %call83, i32 %26) #6, !dbg !3507
  br label %if.end87, !dbg !3507

if.end87:                                         ; preds = %if.end80, %if.then82
  %27 = load i32, i32* @overall_size, align 4, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %27, metadata !3379, metadata !DIExpression()), !dbg !3403
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i64 0, i32 2, !dbg !3509
  %28 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !3509
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %28, metadata !3388, metadata !DIExpression()), !dbg !3511
  br label %for.cond88, !dbg !3512

for.cond88:                                       ; preds = %for.inc122, %if.end87
  %redo_always_inline.2 = phi i8 [ %redo_always_inline.1, %if.end87 ], [ %redo_always_inline.4, %for.inc122 ], !dbg !3477
  %e61.0 = phi %struct.cgraph_edge* [ %28, %if.end87 ], [ %29, %for.inc122 ], !dbg !3513
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e61.0, metadata !3388, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.2, metadata !3381, metadata !DIExpression()), !dbg !3403
  %tobool89 = icmp eq %struct.cgraph_edge* %e61.0, null, !dbg !3514
  br i1 %tobool89, label %for.end123, label %for.body90, !dbg !3514

for.body90:                                       ; preds = %for.cond88
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e61.0, i64 0, i32 4, !dbg !3515
  %29 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %29, metadata !3393, metadata !DIExpression()), !dbg !3511
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e61.0, i64 0, i32 9, !dbg !3518
  %30 = load i32, i32* %inline_failed, align 8, !dbg !3518
  %tobool91 = icmp eq i32 %30, 0, !dbg !3520
  br i1 %tobool91, label %for.inc122, label %lor.lhs.false92, !dbg !3521

lor.lhs.false92:                                  ; preds = %for.body90
  %call_stmt_cannot_inline_p = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e61.0, i64 0, i32 14, !dbg !3522
  %bf.load93 = load i8, i8* %call_stmt_cannot_inline_p, align 2, !dbg !3522
  %bf.clear95 = and i8 %bf.load93, 2, !dbg !3522
  %tobool97 = icmp eq i8 %bf.clear95, 0, !dbg !3523
  br i1 %tobool97, label %if.end99, label %for.inc122, !dbg !3524

if.end99:                                         ; preds = %lor.lhs.false92
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e61.0, i64 0, i32 1, !dbg !3525
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !3525
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e61.0, i64 0, i32 2, !dbg !3527
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3527
  %call101 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %31, %struct.cgraph_node* %32, i32* nonnull %inline_failed) #7, !dbg !3528
  %tobool102 = icmp eq i8 %call101, 0, !dbg !3528
  br i1 %tobool102, label %if.end104, label %for.inc122, !dbg !3529

if.end104:                                        ; preds = %if.end99
  %call105 = tail call zeroext i8 @tree_can_inline_p(%struct.cgraph_edge* nonnull %e61.0) #6, !dbg !3530
  %tobool106 = icmp eq i8 %call105, 0, !dbg !3530
  br i1 %tobool106, label %for.inc122, label %if.end108, !dbg !3532

if.end108:                                        ; preds = %if.end104
  %call109 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(%struct.cgraph_edge* nonnull %e61.0, i8 zeroext 1, %struct.VEC_cgraph_edge_p_heap** null) #7, !dbg !3533
  %tobool110 = icmp eq i8 %call109, 0, !dbg !3533
  %spec.select = select i1 %tobool110, i8 %redo_always_inline.2, i8 1, !dbg !3535
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3381, metadata !DIExpression()), !dbg !3403
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3536
  %tobool113 = icmp eq %struct._IO_FILE* %33, null, !dbg !3536
  br i1 %tobool113, label %for.inc122, label %if.then114, !dbg !3538

if.then114:                                       ; preds = %if.end108
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !3539
  %call116 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %34) #6, !dbg !3540
  %35 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !3541
  %size119 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %35, i64 0, i32 19, i32 4, !dbg !3542
  %36 = load i32, i32* %size119, align 4, !dbg !3542
  %call120 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i8* %call116, i32 %36) #6, !dbg !3543
  br label %for.inc122, !dbg !3543

for.inc122:                                       ; preds = %if.end108, %if.end104, %if.end99, %lor.lhs.false92, %for.body90, %if.then114
  %redo_always_inline.4 = phi i8 [ %redo_always_inline.2, %lor.lhs.false92 ], [ %redo_always_inline.2, %for.body90 ], [ %redo_always_inline.2, %if.end99 ], [ %redo_always_inline.2, %if.end104 ], [ %spec.select, %if.then114 ], [ %spec.select, %if.end108 ], !dbg !3544
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.4, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %29, metadata !3388, metadata !DIExpression()), !dbg !3511
  br label %for.cond88, !dbg !3545, !llvm.loop !3546

for.end123:                                       ; preds = %for.cond88
  %redo_always_inline.2.lcssa = phi i8 [ %redo_always_inline.2, %for.cond88 ], !dbg !3477
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.2.lcssa, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.2.lcssa, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.2.lcssa, metadata !3381, metadata !DIExpression()), !dbg !3403
  br label %for.cond125, !dbg !3548

for.cond125:                                      ; preds = %for.inc133, %for.end123
  %e61.1.in = phi %struct.cgraph_edge** [ %callers, %for.end123 ], [ %next_caller134, %for.inc133 ]
  %e61.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e61.1.in, align 8, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e61.1, metadata !3388, metadata !DIExpression()), !dbg !3511
  %tobool126 = icmp eq %struct.cgraph_edge* %e61.1, null, !dbg !3551
  br i1 %tobool126, label %for.end135, label %for.body127, !dbg !3551

for.body127:                                      ; preds = %for.cond125
  %inline_failed128 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e61.1, i64 0, i32 9, !dbg !3552
  %37 = load i32, i32* %inline_failed128, align 8, !dbg !3552
  %tobool129 = icmp eq i32 %37, 0, !dbg !3555
  br i1 %tobool129, label %for.inc133, label %if.then130, !dbg !3556

if.then130:                                       ; preds = %for.body127
  store i32 12, i32* %inline_failed128, align 8, !dbg !3557
  br label %for.inc133, !dbg !3558

for.inc133:                                       ; preds = %for.body127, %if.then130
  %next_caller134 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e61.1, i64 0, i32 4, !dbg !3559
  br label %for.cond125, !dbg !3560, !llvm.loop !3561

for.end135:                                       ; preds = %for.cond125
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3563
  %tobool136 = icmp eq %struct._IO_FILE* %38, null, !dbg !3563
  br i1 %tobool136, label %cleanup, label %if.then137, !dbg !3565

if.then137:                                       ; preds = %for.end135
  %39 = load i32, i32* @overall_size, align 4, !dbg !3566
  %sub138 = sub nsw i32 %39, %27, !dbg !3567
  %call139 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i32 %sub138) #6, !dbg !3568
  br label %cleanup, !dbg !3568

cleanup:                                          ; preds = %for.end135, %if.end73, %if.then137
  %redo_always_inline.5 = phi i8 [ %redo_always_inline.1, %if.end73 ], [ %redo_always_inline.2.lcssa, %if.then137 ], [ %redo_always_inline.2.lcssa, %for.end135 ], !dbg !3477
  call void @llvm.dbg.value(metadata i8 %redo_always_inline.5, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 undef, metadata !3380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  br label %for.cond57, !dbg !3569, !llvm.loop !3570

while.end:                                        ; preds = %while.cond
  tail call fastcc void @cgraph_decide_inlining_of_small_functions() #7, !dbg !3572
  %40 = load i32, i32* @flag_inline_functions_called_once, align 4, !dbg !3573
  %tobool144 = icmp eq i32 %40, 0, !dbg !3573
  br i1 %tobool144, label %if.end256, label %if.then145, !dbg !3574

if.then145:                                       ; preds = %while.end
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3575
  %tobool146 = icmp eq %struct._IO_FILE* %41, null, !dbg !3575
  br i1 %tobool146, label %if.end149, label %if.then147, !dbg !3577

if.then147:                                       ; preds = %if.then145
  %call148 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3578
  br label %if.end149, !dbg !3578

if.end149:                                        ; preds = %if.then145, %if.then147
  call void @llvm.dbg.value(metadata i32 %call41, metadata !3380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  %42 = bitcast i32* %reason to i8*, !dbg !3579
  %43 = sext i32 %call41 to i64, !dbg !3580
  br label %for.cond151, !dbg !3580

for.cond151:                                      ; preds = %for.inc253, %if.end149
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc253 ], [ %43, %if.end149 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3581
  call void @llvm.dbg.value(metadata i32 undef, metadata !3380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  %cmp152 = icmp sgt i64 %indvars.iv, 0, !dbg !3582
  br i1 %cmp152, label %for.body154, label %if.end256.loopexit, !dbg !3583

for.body154:                                      ; preds = %for.cond151
  %arrayidx156 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv.next, !dbg !3584
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx156, align 8, !dbg !3584
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %44, metadata !3376, metadata !DIExpression()), !dbg !3403
  %callers157 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i64 0, i32 2, !dbg !3585
  %45 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3585
  %tobool158 = icmp eq %struct.cgraph_edge* %45, null, !dbg !3586
  br i1 %tobool158, label %for.inc253, label %land.lhs.true159, !dbg !3587

land.lhs.true159:                                 ; preds = %for.body154
  %next_caller161 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %45, i64 0, i32 4, !dbg !3588
  %46 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller161, align 8, !dbg !3588
  %tobool162 = icmp eq %struct.cgraph_edge* %46, null, !dbg !3589
  br i1 %tobool162, label %land.lhs.true163, label %for.inc253, !dbg !3590

land.lhs.true163:                                 ; preds = %land.lhs.true159
  %call164 = call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %44) #7, !dbg !3591
  %tobool166 = icmp eq i8 %call164, 0, !dbg !3591
  br i1 %tobool166, label %for.inc253, label %land.lhs.true167, !dbg !3592

land.lhs.true167:                                 ; preds = %land.lhs.true163
  %inlinable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i64 0, i32 18, i32 2, !dbg !3593
  %bf.load169 = load i8, i8* %inlinable, align 8, !dbg !3593
  %bf.clear171 = and i8 %bf.load169, 8, !dbg !3593
  %tobool173 = icmp eq i8 %bf.clear171, 0, !dbg !3594
  br i1 %tobool173, label %for.inc253, label %land.lhs.true174, !dbg !3595

land.lhs.true174:                                 ; preds = %land.lhs.true167
  %47 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3596
  %inline_failed176 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %47, i64 0, i32 9, !dbg !3597
  %48 = load i32, i32* %inline_failed176, align 8, !dbg !3597
  %tobool177 = icmp eq i32 %48, 0, !dbg !3598
  br i1 %tobool177, label %for.inc253, label %land.lhs.true178, !dbg !3599

land.lhs.true178:                                 ; preds = %land.lhs.true174
  %caller180 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %47, i64 0, i32 1, !dbg !3600
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %caller180, align 8, !dbg !3600
  %cmp181 = icmp eq %struct.cgraph_node* %49, %44, !dbg !3601
  br i1 %cmp181, label %for.inc253, label %land.lhs.true183, !dbg !3602

land.lhs.true183:                                 ; preds = %land.lhs.true178
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %49, i64 0, i32 19, i32 2, !dbg !3603
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3603
  %cmp187 = icmp eq %struct.cgraph_node* %50, %44, !dbg !3604
  br i1 %cmp187, label %for.inc253, label %land.lhs.true189, !dbg !3605

land.lhs.true189:                                 ; preds = %land.lhs.true183
  %call_stmt_cannot_inline_p191 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %47, i64 0, i32 14, !dbg !3606
  %bf.load192 = load i8, i8* %call_stmt_cannot_inline_p191, align 2, !dbg !3606
  %bf.clear194 = and i8 %bf.load192, 2, !dbg !3606
  %tobool196 = icmp eq i8 %bf.clear194, 0, !dbg !3607
  br i1 %tobool196, label %land.lhs.true197, label %for.inc253, !dbg !3608

land.lhs.true197:                                 ; preds = %land.lhs.true189
  %51 = bitcast %struct.cgraph_node* %44 to %struct.tree_decl_common**, !dbg !3609
  %52 = load %struct.tree_decl_common*, %struct.tree_decl_common** %51, align 8, !dbg !3609
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %52, i64 0, i32 2, !dbg !3609
  %53 = bitcast i40* %decl_flag_1 to i64*, !dbg !3609
  %bf.load200 = load i64, i64* %53, align 8, !dbg !3609
  %bf.cast2033 = and i64 %bf.load200, 33554432, !dbg !3609
  %tobool204 = icmp eq i64 %bf.cast2033, 0, !dbg !3609
  br i1 %tobool204, label %land.lhs.true205, label %for.inc253, !dbg !3610

land.lhs.true205:                                 ; preds = %land.lhs.true197
  %comdat_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %52, i64 1, i32 0, i32 3, !dbg !3611
  %54 = bitcast %union.tree_node** %comdat_flag to i32*, !dbg !3611
  %bf.load207 = load i32, i32* %54, align 8, !dbg !3611
  %bf.clear209 = and i32 %bf.load207, 512, !dbg !3611
  %tobool210 = icmp eq i32 %bf.clear209, 0, !dbg !3611
  br i1 %tobool210, label %if.then211, label %for.inc253, !dbg !3612

if.then211:                                       ; preds = %land.lhs.true205
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #8, !dbg !3613
  %55 = load i32, i32* @overall_size, align 4, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %55, metadata !3379, metadata !DIExpression()), !dbg !3403
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3615
  %tobool212 = icmp eq %struct._IO_FILE* %56, null, !dbg !3615
  br i1 %tobool212, label %if.end226, label %if.then213, !dbg !3617

if.then213:                                       ; preds = %if.then211
  %call214 = call i8* @cgraph_node_name(%struct.cgraph_node* %44) #6, !dbg !3618
  %size216 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i64 0, i32 19, i32 4, !dbg !3620
  %57 = load i32, i32* %size216, align 4, !dbg !3620
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i8* %call214, i32 %57) #6, !dbg !3621
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3622
  %59 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3623
  %caller219 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %59, i64 0, i32 1, !dbg !3624
  %60 = load %struct.cgraph_node*, %struct.cgraph_node** %caller219, align 8, !dbg !3624
  %call220 = call i8* @cgraph_node_name(%struct.cgraph_node* %60) #6, !dbg !3625
  %61 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3626
  %caller222 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %61, i64 0, i32 1, !dbg !3627
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %caller222, align 8, !dbg !3627
  %size224 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %62, i64 0, i32 19, i32 4, !dbg !3628
  %63 = load i32, i32* %size224, align 4, !dbg !3628
  %call225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0), i8* %call220, i32 %63) #6, !dbg !3629
  %.pre4 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3630
  %caller228.phi.trans.insert = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %.pre4, i64 0, i32 1, !dbg !3632
  %.pre5 = load %struct.cgraph_node*, %struct.cgraph_node** %caller228.phi.trans.insert, align 8, !dbg !3633
  br label %if.end226, !dbg !3634

if.end226:                                        ; preds = %if.then211, %if.then213
  %64 = phi %struct.cgraph_node* [ %49, %if.then211 ], [ %.pre5, %if.then213 ], !dbg !3633
  call void @llvm.dbg.value(metadata i32* %reason, metadata !3394, metadata !DIExpression(DW_OP_deref)), !dbg !3579
  %call229 = call fastcc zeroext i8 @cgraph_check_inline_limits(%struct.cgraph_node* %64, %struct.cgraph_node* %44, i32* nonnull %reason, i8 zeroext 0) #7, !dbg !3635
  %tobool230 = icmp eq i8 %call229, 0, !dbg !3635
  br i1 %tobool230, label %if.else, label %if.then231, !dbg !3636

if.then231:                                       ; preds = %if.end226
  %65 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3637
  %call233 = call fastcc %struct.cgraph_edge* @cgraph_mark_inline(%struct.cgraph_edge* %65) #7, !dbg !3639
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3640
  %tobool234 = icmp eq %struct._IO_FILE* %66, null, !dbg !3640
  br i1 %tobool234, label %if.end251, label %if.then235, !dbg !3642

if.then235:                                       ; preds = %if.then231
  %67 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3643
  %caller237 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %67, i64 0, i32 1, !dbg !3644
  %68 = load %struct.cgraph_node*, %struct.cgraph_node** %caller237, align 8, !dbg !3644
  %call238 = call i8* @cgraph_node_name(%struct.cgraph_node* %68) #6, !dbg !3645
  %69 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers157, align 8, !dbg !3646
  %caller240 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %69, i64 0, i32 1, !dbg !3647
  %70 = load %struct.cgraph_node*, %struct.cgraph_node** %caller240, align 8, !dbg !3647
  %size242 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %70, i64 0, i32 19, i32 4, !dbg !3648
  %71 = load i32, i32* %size242, align 4, !dbg !3648
  %72 = load i32, i32* @overall_size, align 4, !dbg !3649
  %sub243 = sub nsw i32 %72, %55, !dbg !3650
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %66, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.35, i64 0, i64 0), i8* %call238, i32 %71, i32 %sub243) #6, !dbg !3651
  br label %if.end251, !dbg !3651

if.else:                                          ; preds = %if.end226
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3652
  %tobool246 = icmp eq %struct._IO_FILE* %73, null, !dbg !3652
  br i1 %tobool246, label %if.end251, label %if.then247, !dbg !3655

if.then247:                                       ; preds = %if.else
  %74 = load i32, i32* %reason, align 4, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %74, metadata !3394, metadata !DIExpression()), !dbg !3579
  %call248 = call i8* @cgraph_inline_failed_string(i32 %74) #6, !dbg !3657
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* %call248) #6, !dbg !3658
  br label %if.end251, !dbg !3658

if.end251:                                        ; preds = %if.then231, %if.else, %if.then247, %if.then235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #8, !dbg !3659
  br label %for.inc253, !dbg !3660

for.inc253:                                       ; preds = %land.lhs.true205, %land.lhs.true197, %land.lhs.true189, %land.lhs.true183, %land.lhs.true178, %land.lhs.true174, %land.lhs.true167, %land.lhs.true163, %land.lhs.true159, %for.body154, %if.end251
  call void @llvm.dbg.value(metadata i32 undef, metadata !3380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  br label %for.cond151, !dbg !3661, !llvm.loop !3662

if.end256.loopexit:                               ; preds = %for.cond151
  br label %if.end256, !dbg !3664

if.end256:                                        ; preds = %if.end256.loopexit, %while.end
  %75 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !3664
  %tobool257 = icmp eq i32 %75, 0, !dbg !3664
  br i1 %tobool257, label %if.end259, label %if.then258, !dbg !3666

if.then258:                                       ; preds = %if.end256
  call void @free_all_ipa_structures_after_iinln() #6, !dbg !3667
  br label %if.end259, !dbg !3667

if.end259:                                        ; preds = %if.end256, %if.then258
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3668
  %tobool260 = icmp eq %struct._IO_FILE* %76, null, !dbg !3668
  br i1 %tobool260, label %if.end263, label %if.then261, !dbg !3670

if.then261:                                       ; preds = %if.end259
  %77 = load i32, i32* @ncalls_inlined, align 4, !dbg !3671
  %78 = load i32, i32* @nfunctions_inlined, align 4, !dbg !3672
  %79 = load i32, i32* @overall_size, align 4, !dbg !3673
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %76, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.37, i64 0, i64 0), i32 %77, i32 %78, i32 %initial_size.0.lcssa, i32 %79) #6, !dbg !3674
  br label %if.end263, !dbg !3674

if.end263:                                        ; preds = %if.end259, %if.then261
  call void @free(i8* %call) #6, !dbg !3675
  ret i32 0, !dbg !3676
}

; Function Attrs: nounwind uwtable
define internal void @inline_generate_summary() #5 !dbg !3677 {
entry:
  %call = tail call %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)* nonnull @add_new_function, i8* null) #6, !dbg !3680
  store %struct.cgraph_node_hook_list* %call, %struct.cgraph_node_hook_list** @function_insertion_hook_holder, align 8, !dbg !3681
  %0 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !3682
  %tobool = icmp eq i32 %0, 0, !dbg !3682
  br i1 %tobool, label %if.end, label %if.then, !dbg !3684

if.then:                                          ; preds = %entry
  tail call void @ipa_register_cgraph_hooks() #6, !dbg !3685
  tail call fastcc void @ipa_check_create_node_params() #7, !dbg !3687
  tail call fastcc void @ipa_check_create_edge_args() #7, !dbg !3688
  br label %if.end, !dbg !3689

if.end:                                           ; preds = %entry, %if.then
  br label %for.cond, !dbg !3690

for.cond:                                         ; preds = %for.inc, %if.end
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3692
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3679, metadata !DIExpression()), !dbg !3693
  %tobool1 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3694
  br i1 %tobool1, label %for.end, label %for.body, !dbg !3694

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3695
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3695
  %bf.clear = and i16 %bf.load, 32, !dbg !3695
  %tobool2 = icmp eq i16 %bf.clear, 0, !dbg !3698
  br i1 %tobool2, label %for.inc, label %if.then3, !dbg !3699

if.then3:                                         ; preds = %for.body
  tail call fastcc void @analyze_function(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3700
  br label %for.inc, !dbg !3700

for.inc:                                          ; preds = %for.body, %if.then3
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3701
  br label %for.cond, !dbg !3702, !llvm.loop !3703

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3705
}

; Function Attrs: nounwind uwtable
define internal void @inline_write_summary(%struct.cgraph_node_set_def* %set) #5 !dbg !3706 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !3711, metadata !DIExpression()), !dbg !3712
  %0 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !3713
  %tobool = icmp eq i32 %0, 0, !dbg !3713
  %1 = load i32, i32* @flag_ipa_cp, align 4, !dbg !3715
  %tobool1 = icmp ne i32 %1, 0, !dbg !3715
  %or.cond = or i1 %tobool, %tobool1, !dbg !3716
  br i1 %or.cond, label %if.end, label %if.then, !dbg !3716

if.then:                                          ; preds = %entry
  tail call void @ipa_prop_write_jump_functions(%struct.cgraph_node_set_def* %set) #6, !dbg !3717
  br label %if.end, !dbg !3717

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3718
}

; Function Attrs: nounwind uwtable
define internal void @inline_read_summary() #5 !dbg !3719 {
entry:
  %0 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !3720
  %tobool = icmp eq i32 %0, 0, !dbg !3720
  br i1 %tobool, label %if.end3, label %if.then, !dbg !3722

if.then:                                          ; preds = %entry
  tail call void @ipa_register_cgraph_hooks() #6, !dbg !3723
  %1 = load i32, i32* @flag_ipa_cp, align 4, !dbg !3725
  %tobool1 = icmp eq i32 %1, 0, !dbg !3725
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3727

if.then2:                                         ; preds = %if.then
  tail call void @ipa_prop_read_jump_functions() #6, !dbg !3728
  br label %if.end3, !dbg !3728

if.end3:                                          ; preds = %if.then, %entry, %if.then2
  %call = tail call %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)* nonnull @add_new_function, i8* null) #6, !dbg !3729
  store %struct.cgraph_node_hook_list* %call, %struct.cgraph_node_hook_list** @function_insertion_hook_holder, align 8, !dbg !3730
  ret void, !dbg !3731
}

declare dso_local void @lto_ipa_fixup_call_notes(%struct.cgraph_node*, %union.gimple_statement_d**) #2

; Function Attrs: nounwind uwtable
define internal i32 @inline_transform(%struct.cgraph_node* %node) #5 !dbg !3732 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3734, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 0, metadata !3735, metadata !DIExpression()), !dbg !3737
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3738
  %after_inlining = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 20, !dbg !3740
  %bf.load = load i32, i32* %after_inlining, align 8, !dbg !3740
  %bf.clear = and i32 %bf.load, 16777216, !dbg !3740
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !3738
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3741

if.end:                                           ; preds = %entry
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3742
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3742
  %call = tail call zeroext i8 @cgraph_preserve_function_body_p(%union.tree_node* %1) #6, !dbg !3744
  %tobool1 = icmp eq i8 %call, 0, !dbg !3744
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !3745

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.cgraph_node* @save_inline_function_body(%struct.cgraph_node* %node) #6, !dbg !3746
  br label %if.end4, !dbg !3746

if.end4:                                          ; preds = %if.end, %if.then2
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !3747
  %2 = load i32, i32* @warn_inline, align 4, !dbg !3749
  %tobool7 = icmp eq i32 %2, 0, !dbg !3749
  br i1 %tobool7, label %if.end4.if.end4.split_crit_edge, label %if.end4.split.us, !dbg !3752

if.end4.if.end4.split_crit_edge:                  ; preds = %if.end4
  br label %for.cond, !dbg !3752

if.end4.split.us:                                 ; preds = %if.end4
  %e.0.us = load %struct.cgraph_edge*, %struct.cgraph_edge** %callees, align 8, !dbg !3753
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0.us, metadata !3736, metadata !DIExpression()), !dbg !3737
  %cond.us = icmp eq %struct.cgraph_edge* %e.0.us, null, !dbg !3754
  br i1 %cond.us, label %if.end22.loopexit.us-lcssa.us, label %for.body.us, !dbg !3754

for.body.us:                                      ; preds = %if.end4.split.us
  br label %for.end, !dbg !3755

if.end22.loopexit.us-lcssa.us:                    ; preds = %if.end4.split.us
  br label %if.end22.loopexit, !dbg !3756

for.cond:                                         ; preds = %for.inc, %if.end4.if.end4.split_crit_edge
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.end4.if.end4.split_crit_edge ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3753
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3736, metadata !DIExpression()), !dbg !3737
  %cond = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3754
  br i1 %cond, label %if.end22.loopexit.us-lcssa, label %for.body, !dbg !3754

for.body:                                         ; preds = %for.cond
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !3757
  %3 = load i32, i32* %inline_failed, align 8, !dbg !3757
  %tobool6 = icmp eq i32 %3, 0, !dbg !3758
  br i1 %tobool6, label %for.end.us-lcssa, label %for.inc, !dbg !3759

for.inc:                                          ; preds = %for.body
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3760
  br label %for.cond, !dbg !3761, !llvm.loop !3762

for.end.us-lcssa:                                 ; preds = %for.body
  br label %for.end, !dbg !3755

for.end:                                          ; preds = %for.body.us, %for.end.us-lcssa
  %4 = load i8, i8* @timevar_enable, align 1, !dbg !3764
  %tobool12 = icmp eq i8 %4, 0, !dbg !3764
  br i1 %tobool12, label %do.end, label %if.then13, !dbg !3769

if.then13:                                        ; preds = %for.end
  tail call void @timevar_push_1(i32 47) #6, !dbg !3764
  br label %do.end, !dbg !3764

do.end:                                           ; preds = %for.end, %if.then13
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3770
  %call15 = tail call i32 @optimize_inline_calls(%union.tree_node* %5) #6, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3735, metadata !DIExpression()), !dbg !3737
  %6 = load i8, i8* @timevar_enable, align 1, !dbg !3772
  %tobool17 = icmp eq i8 %6, 0, !dbg !3772
  br i1 %tobool17, label %if.end22, label %if.then18, !dbg !3775

if.then18:                                        ; preds = %do.end
  tail call void @timevar_pop_1(i32 47) #6, !dbg !3772
  br label %if.end22, !dbg !3772

if.end22.loopexit.us-lcssa:                       ; preds = %for.cond
  br label %if.end22.loopexit, !dbg !3756

if.end22.loopexit:                                ; preds = %if.end22.loopexit.us-lcssa.us, %if.end22.loopexit.us-lcssa
  br label %if.end22, !dbg !3756

if.end22:                                         ; preds = %if.end22.loopexit, %do.end, %if.then18
  %todo.0 = phi i32 [ %call15, %if.then18 ], [ %call15, %do.end ], [ 0, %if.end22.loopexit ], !dbg !3737
  call void @llvm.dbg.value(metadata i32 %todo.0, metadata !3735, metadata !DIExpression()), !dbg !3737
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3756
  %always_inline_functions_inlined = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 20, !dbg !3776
  %bf.load24 = load i32, i32* %always_inline_functions_inlined, align 8, !dbg !3777
  %bf.set30 = or i32 %bf.load24, 50331648, !dbg !3778
  store i32 %bf.set30, i32* %always_inline_functions_inlined, align 8, !dbg !3778
  %call31 = tail call i32 @execute_fixup_cfg() #6, !dbg !3779
  %or = or i32 %todo.0, %call31, !dbg !3780
  br label %cleanup, !dbg !3781

cleanup:                                          ; preds = %entry, %if.end22
  %retval.0 = phi i32 [ %or, %if.end22 ], [ 0, %entry ], !dbg !3737
  ret i32 %retval.0, !dbg !3782
}

; Function Attrs: nounwind uwtable
define internal void @gt_ggc_ma_order(i8* %x_p) #5 !dbg !3783 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3785, metadata !DIExpression()), !dbg !3792
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !3793
  %cmp = icmp eq %struct.cgraph_node** %0, null, !dbg !3794
  br i1 %cmp, label %if.end16, label %for.cond.preheader, !dbg !3795

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !3786, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %0, metadata !3789, metadata !DIExpression()), !dbg !3797
  %switch = icmp ult %struct.cgraph_node** %0, inttoptr (i64 2 to %struct.cgraph_node**), !dbg !3798
  br i1 %switch, label %if.end16, label %if.then12, !dbg !3798

if.then12:                                        ; preds = %for.cond.preheader
  %1 = bitcast %struct.cgraph_node** %0 to i8*, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %1, metadata !3789, metadata !DIExpression()), !dbg !3797
  %call = tail call i32 @ggc_set_mark(i8* nonnull %1) #6, !dbg !3798
  br label %if.end16, !dbg !3798

if.end16:                                         ; preds = %entry, %for.cond.preheader, %if.then12
  ret void, !dbg !3801
}

; Function Attrs: nounwind uwtable
define internal void @gt_pch_na_order(i8* %x_p) #5 !dbg !3802 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3804, metadata !DIExpression()), !dbg !3808
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !3809
  %cmp = icmp eq %struct.cgraph_node** %0, null, !dbg !3810
  br i1 %cmp, label %if.end7, label %for.cond.preheader, !dbg !3811

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !3805, metadata !DIExpression()), !dbg !3812
  %1 = bitcast %struct.cgraph_node** %0 to i8*, !dbg !3813
  %call = tail call i32 @gt_pch_note_object(i8* nonnull %1, i8* bitcast (%struct.cgraph_node*** @order to i8*), void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_pa_order, i32 217) #6, !dbg !3814
  br label %if.end7, !dbg !3815

if.end7:                                          ; preds = %entry, %for.cond.preheader
  ret void, !dbg !3816
}

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_decide_inlining_incrementally(%struct.cgraph_node* %node, i32 %mode, i32 %depth) unnamed_addr #5 !dbg !3817 {
entry:
  %failed_reason = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3821, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3822, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 %depth, metadata !3823, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 0, metadata !3825, metadata !DIExpression()), !dbg !3835
  %0 = bitcast i32* %failed_reason to i8*, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3836
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 16, !dbg !3837
  %1 = bitcast i8** %aux to i64*, !dbg !3837
  %2 = load i64, i64* %1, align 8, !dbg !3837
  %mode.off = add i32 %mode, -1, !dbg !3838
  %switch1 = icmp ult i32 %mode.off, 2, !dbg !3838
  br i1 %switch1, label %if.end10, label %land.lhs.true4, !dbg !3838

land.lhs.true4:                                   ; preds = %entry
  %3 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_common**, !dbg !3840
  %4 = load %struct.tree_decl_common*, %struct.tree_decl_common** %3, align 8, !dbg !3840
  %attributes = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %4, i64 0, i32 6, !dbg !3840
  %5 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !3840
  %call = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %5) #6, !dbg !3841
  %cmp5 = icmp eq %union.tree_node* %call, null, !dbg !3842
  br i1 %cmp5, label %if.end10, label %if.then, !dbg !3843

if.then:                                          ; preds = %land.lhs.true4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3844
  %tobool = icmp eq %struct._IO_FILE* %6, null, !dbg !3844
  br i1 %tobool, label %if.end10, label %if.then7, !dbg !3847

if.then7:                                         ; preds = %if.then
  tail call void @indent_to(%struct._IO_FILE* nonnull %6, i32 %depth) #6, !dbg !3848
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3850
  %call8 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3851
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %call8) #6, !dbg !3852
  br label %if.end10, !dbg !3853

if.end10:                                         ; preds = %if.then, %land.lhs.true4, %entry, %if.then7
  %mode.addr.0 = phi i32 [ %mode, %land.lhs.true4 ], [ %mode, %entry ], [ 4, %if.then7 ], [ 4, %if.then ]
  call void @llvm.dbg.value(metadata i32 %mode.addr.0, metadata !3822, metadata !DIExpression()), !dbg !3835
  %conv11 = zext i32 %mode.addr.0 to i64, !dbg !3854
  %8 = inttoptr i64 %conv11 to i8*, !dbg !3855
  store i8* %8, i8** %aux, align 8, !dbg !3856
  %cmp13 = icmp eq i32 %mode.addr.0, 2, !dbg !3857
  br i1 %cmp13, label %if.end107, label %if.then15, !dbg !3859

if.then15:                                        ; preds = %if.end10
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !3860
  %cmp19 = icmp eq i32 %mode.addr.0, 4, !dbg !3862
  %9 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !3866
  br label %for.cond, !dbg !3868

for.cond:                                         ; preds = %for.inc, %if.then15
  %inlined.0 = phi i8 [ 0, %if.then15 ], [ %inlined.1, %for.inc ], !dbg !3869
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.then15 ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3870
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3824, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.0, metadata !3825, metadata !DIExpression()), !dbg !3835
  %tobool16 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3871
  br i1 %tobool16, label %if.end107.loopexit, label %for.body, !dbg !3871

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !3872
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3872
  %disregard_inline_limits = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %10, i64 0, i32 18, i32 2, !dbg !3873
  %bf.load = load i8, i8* %disregard_inline_limits, align 8, !dbg !3873
  %bf.clear = and i8 %bf.load, 16, !dbg !3873
  %tobool17 = icmp eq i8 %bf.clear, 0, !dbg !3874
  br i1 %tobool17, label %land.lhs.true18, label %if.end29, !dbg !3875

land.lhs.true18:                                  ; preds = %for.body
  br i1 %cmp19, label %lor.lhs.false, label %for.inc, !dbg !3876

lor.lhs.false:                                    ; preds = %land.lhs.true18
  %bf.clear25 = and i8 %bf.load, 8, !dbg !3877
  %tobool27 = icmp eq i8 %bf.clear25, 0, !dbg !3878
  br i1 %tobool27, label %for.inc, label %if.end29, !dbg !3879

if.end29:                                         ; preds = %lor.lhs.false, %for.body
  %call_stmt_cannot_inline_p = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 14, !dbg !3880
  %bf.load30 = load i8, i8* %call_stmt_cannot_inline_p, align 2, !dbg !3880
  %bf.clear32 = and i8 %bf.load30, 2, !dbg !3880
  %tobool34 = icmp eq i8 %bf.clear32, 0, !dbg !3882
  br i1 %tobool34, label %if.end36, label %for.inc, !dbg !3883

if.end36:                                         ; preds = %if.end29
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !3884
  %11 = load i32, i32* %inline_failed, align 8, !dbg !3884
  %tobool37 = icmp eq i32 %11, 0, !dbg !3886
  %or.cond = and i1 %tobool37, %cmp19, !dbg !3887
  br i1 %or.cond, label %if.then41, label %if.end46, !dbg !3887

if.then41:                                        ; preds = %if.end36
  %call42 = tail call fastcc zeroext i8 @try_inline(%struct.cgraph_edge* nonnull %e.0, i32 4, i32 %depth) #7, !dbg !3888
  %or5 = or i8 %inlined.0, %call42, !dbg !3890
  call void @llvm.dbg.value(metadata i8 %or5, metadata !3825, metadata !DIExpression()), !dbg !3835
  br label %for.inc, !dbg !3891

if.end46:                                         ; preds = %if.end36
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3892
  %tobool47 = icmp eq %struct._IO_FILE* %12, null, !dbg !3892
  br i1 %tobool47, label %if.end52, label %if.then48, !dbg !3894

if.then48:                                        ; preds = %if.end46
  tail call void @indent_to(%struct._IO_FILE* nonnull %12, i32 %depth) #6, !dbg !3895
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3897
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3898
  %call50 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %14) #6, !dbg !3899
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8* %call50) #6, !dbg !3900
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3901
  br label %if.end52, !dbg !3903

if.end52:                                         ; preds = %if.end46, %if.then48
  %15 = phi %struct.cgraph_node* [ %10, %if.end46 ], [ %.pre, %if.then48 ], !dbg !3901
  %call55 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %node, %struct.cgraph_node* %15, i32* nonnull %inline_failed) #7, !dbg !3904
  %tobool56 = icmp eq i8 %call55, 0, !dbg !3904
  br i1 %tobool56, label %if.end62, label %if.then57, !dbg !3905

if.then57:                                        ; preds = %if.end52
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3906
  %tobool58 = icmp eq %struct._IO_FILE* %16, null, !dbg !3906
  br i1 %tobool58, label %for.inc, label %if.then59, !dbg !3909

if.then59:                                        ; preds = %if.then57
  tail call void @indent_to(%struct._IO_FILE* nonnull %16, i32 %depth) #6, !dbg !3910
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3912
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3913
  br label %for.inc, !dbg !3914

if.end62:                                         ; preds = %if.end52
  %call63 = tail call zeroext i8 @tree_can_inline_p(%struct.cgraph_edge* nonnull %e.0) #6, !dbg !3915
  %tobool64 = icmp eq i8 %call63, 0, !dbg !3915
  br i1 %tobool64, label %if.then65, label %if.end72, !dbg !3917

if.then65:                                        ; preds = %if.end62
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3918
  %tobool66 = icmp eq %struct._IO_FILE* %18, null, !dbg !3918
  br i1 %tobool66, label %for.inc, label %if.then67, !dbg !3921

if.then67:                                        ; preds = %if.then65
  tail call void @indent_to(%struct._IO_FILE* nonnull %18, i32 %depth) #6, !dbg !3922
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3924
  %20 = load i32, i32* %inline_failed, align 8, !dbg !3925
  %call69 = tail call i8* @cgraph_inline_failed_string(i32 %20) #6, !dbg !3926
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %call69) #6, !dbg !3927
  br label %for.inc, !dbg !3928

if.end72:                                         ; preds = %if.end62
  %21 = load %struct.tree_function_decl*, %struct.tree_function_decl** %9, align 8, !dbg !3929
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %21, i64 0, i32 1, !dbg !3929
  %22 = load %struct.function*, %struct.function** %f, align 8, !dbg !3929
  %call74 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %22) #7, !dbg !3930
  %23 = bitcast %struct.cgraph_node** %callee to %struct.tree_function_decl***, !dbg !3931
  %24 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %23, align 8, !dbg !3931
  %25 = load %struct.tree_function_decl*, %struct.tree_function_decl** %24, align 8, !dbg !3931
  %f79 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %25, i64 0, i32 1, !dbg !3931
  %26 = load %struct.function*, %struct.function** %f79, align 8, !dbg !3931
  %call80 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %26) #7, !dbg !3932
  %cmp82 = icmp eq i8 %call74, %call80, !dbg !3933
  br i1 %cmp82, label %if.end89, label %if.then84, !dbg !3934

if.then84:                                        ; preds = %if.end72
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3935
  %tobool85 = icmp eq %struct._IO_FILE* %27, null, !dbg !3935
  br i1 %tobool85, label %for.inc, label %if.then86, !dbg !3938

if.then86:                                        ; preds = %if.then84
  tail call void @indent_to(%struct._IO_FILE* nonnull %27, i32 %depth) #6, !dbg !3939
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3941
  %call87 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3942
  br label %for.inc, !dbg !3943

if.end89:                                         ; preds = %if.end72
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3944
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %29, i64 0, i32 27, !dbg !3946
  %bf.load91 = load i16, i16* %analyzed, align 4, !dbg !3946
  %bf.clear93 = and i16 %bf.load91, 32, !dbg !3946
  %tobool95 = icmp eq i16 %bf.clear93, 0, !dbg !3947
  br i1 %tobool95, label %if.then96, label %if.end101, !dbg !3948

if.then96:                                        ; preds = %if.end89
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3949
  %tobool97 = icmp eq %struct._IO_FILE* %30, null, !dbg !3949
  br i1 %tobool97, label %for.inc, label %if.then98, !dbg !3952

if.then98:                                        ; preds = %if.then96
  tail call void @indent_to(%struct._IO_FILE* nonnull %30, i32 %depth) #6, !dbg !3953
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3955
  %call99 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3956
  br label %for.inc, !dbg !3957

if.end101:                                        ; preds = %if.end89
  %call102 = tail call fastcc zeroext i8 @try_inline(%struct.cgraph_edge* nonnull %e.0, i32 %mode.addr.0, i32 %depth) #7, !dbg !3958
  %or1054 = or i8 %inlined.0, %call102, !dbg !3959
  call void @llvm.dbg.value(metadata i8 %or1054, metadata !3825, metadata !DIExpression()), !dbg !3835
  br label %for.inc, !dbg !3960

for.inc:                                          ; preds = %if.then57, %if.then84, %if.then96, %if.then65, %if.end29, %lor.lhs.false, %land.lhs.true18, %if.then98, %if.then86, %if.then67, %if.then59, %if.end101, %if.then41
  %inlined.1 = phi i8 [ %or1054, %if.end101 ], [ %or5, %if.then41 ], [ %inlined.0, %lor.lhs.false ], [ %inlined.0, %land.lhs.true18 ], [ %inlined.0, %if.end29 ], [ %inlined.0, %if.then59 ], [ %inlined.0, %if.then57 ], [ %inlined.0, %if.then67 ], [ %inlined.0, %if.then65 ], [ %inlined.0, %if.then86 ], [ %inlined.0, %if.then84 ], [ %inlined.0, %if.then98 ], [ %inlined.0, %if.then96 ], !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.1, metadata !3825, metadata !DIExpression()), !dbg !3835
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3961
  br label %for.cond, !dbg !3962, !llvm.loop !3963

if.end107.loopexit:                               ; preds = %for.cond
  %inlined.0.lcssa = phi i8 [ %inlined.0, %for.cond ], !dbg !3869
  call void @llvm.dbg.value(metadata i8 %inlined.0.lcssa, metadata !3825, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.0.lcssa, metadata !3825, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.0.lcssa, metadata !3825, metadata !DIExpression()), !dbg !3835
  br label %if.end107, !dbg !3965

if.end107:                                        ; preds = %if.end107.loopexit, %if.end10
  %inlined.2 = phi i8 [ 0, %if.end10 ], [ %inlined.0.lcssa, %if.end107.loopexit ], !dbg !3869
  call void @llvm.dbg.value(metadata i8 %inlined.2, metadata !3825, metadata !DIExpression()), !dbg !3835
  switch i32 %mode.addr.0, label %land.lhs.true113 [
    i32 4, label %if.end296
    i32 1, label %if.end296
  ], !dbg !3965

land.lhs.true113:                                 ; preds = %if.end107
  %disregard_inline_limits115 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3966
  %bf.load116 = load i8, i8* %disregard_inline_limits115, align 8, !dbg !3966
  %bf.clear118 = and i8 %bf.load116, 16, !dbg !3966
  %tobool120 = icmp eq i8 %bf.clear118, 0, !dbg !3967
  br i1 %tobool120, label %if.then121, label %if.end296, !dbg !3968

if.then121:                                       ; preds = %land.lhs.true113
  %call122 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call122, metadata !3828, metadata !DIExpression()), !dbg !3970
  %callees123 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !3971
  %32 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !3972
  %33 = and i32 %mode.addr.0, -2, !dbg !3974
  %switch2 = icmp eq i32 %33, 2, !dbg !3974
  br label %for.cond124, !dbg !3976

for.cond124:                                      ; preds = %cleanup, %if.then121
  %inlined.3 = phi i8 [ %inlined.2, %if.then121 ], [ %inlined.5, %cleanup ], !dbg !3869
  %e.1.in = phi %struct.cgraph_edge** [ %callees123, %if.then121 ], [ %next_callee294, %cleanup ]
  %e.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.1.in, align 8, !dbg !3977
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.1, metadata !3824, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.3, metadata !3825, metadata !DIExpression()), !dbg !3835
  %tobool125 = icmp eq %struct.cgraph_edge* %e.1, null, !dbg !3978
  br i1 %tobool125, label %for.end295, label %for.body126, !dbg !3978

for.body126:                                      ; preds = %for.cond124
  call void @llvm.dbg.value(metadata i32 0, metadata !3831, metadata !DIExpression()), !dbg !3979
  %callee127 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 2, !dbg !3980
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !3980
  %inlinable129 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %34, i64 0, i32 18, i32 2, !dbg !3982
  %bf.load130 = load i8, i8* %inlinable129, align 8, !dbg !3982
  %bf.clear132 = and i8 %bf.load130, 8, !dbg !3982
  %tobool134 = icmp eq i8 %bf.clear132, 0, !dbg !3983
  br i1 %tobool134, label %cleanup, label %lor.lhs.false135, !dbg !3984

lor.lhs.false135:                                 ; preds = %for.body126
  %inline_failed136 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 9, !dbg !3985
  %35 = load i32, i32* %inline_failed136, align 8, !dbg !3985
  %tobool137 = icmp eq i32 %35, 0, !dbg !3986
  br i1 %tobool137, label %cleanup, label %lor.lhs.false138, !dbg !3987

lor.lhs.false138:                                 ; preds = %lor.lhs.false135
  %bf.clear144 = and i8 %bf.load130, 16, !dbg !3988
  %tobool146 = icmp eq i8 %bf.clear144, 0, !dbg !3989
  br i1 %tobool146, label %if.end148, label %cleanup, !dbg !3990

if.end148:                                        ; preds = %lor.lhs.false138
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %34, i64 0, i32 24, !dbg !3991
  %36 = load i32, i32* %uid, align 8, !dbg !3991
  %call150 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call122, i32 %36) #6, !dbg !3993
  %tobool151 = icmp eq i8 %call150, 0, !dbg !3993
  br i1 %tobool151, label %cleanup, label %if.end153, !dbg !3994

if.end153:                                        ; preds = %if.end148
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3995
  %tobool154 = icmp eq %struct._IO_FILE* %37, null, !dbg !3995
  br i1 %tobool154, label %if.end159, label %if.then155, !dbg !3997

if.then155:                                       ; preds = %if.end153
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !3998
  %call157 = call i8* @cgraph_node_name(%struct.cgraph_node* %38) #6, !dbg !3999
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %call157) #6, !dbg !4000
  br label %if.end159, !dbg !4000

if.end159:                                        ; preds = %if.end153, %if.then155
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4001
  %call162 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %node, %struct.cgraph_node* %39, i32* nonnull %inline_failed136) #7, !dbg !4003
  %tobool163 = icmp eq i8 %call162, 0, !dbg !4003
  br i1 %tobool163, label %if.end169, label %if.then164, !dbg !4004

if.then164:                                       ; preds = %if.end159
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4005
  %tobool165 = icmp eq %struct._IO_FILE* %40, null, !dbg !4005
  br i1 %tobool165, label %cleanup, label %if.then166, !dbg !4008

if.then166:                                       ; preds = %if.then164
  call void @indent_to(%struct._IO_FILE* nonnull %40, i32 %depth) #6, !dbg !4009
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4011
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !4012
  br label %cleanup, !dbg !4013

if.end169:                                        ; preds = %if.end159
  %42 = load %struct.tree_function_decl*, %struct.tree_function_decl** %32, align 8, !dbg !4014
  %f172 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %42, i64 0, i32 1, !dbg !4014
  %43 = load %struct.function*, %struct.function** %f172, align 8, !dbg !4014
  %call173 = call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %43) #7, !dbg !4015
  %44 = bitcast %struct.cgraph_node** %callee127 to %struct.tree_function_decl***, !dbg !4016
  %45 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %44, align 8, !dbg !4016
  %46 = load %struct.tree_function_decl*, %struct.tree_function_decl** %45, align 8, !dbg !4016
  %f178 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %46, i64 0, i32 1, !dbg !4016
  %47 = load %struct.function*, %struct.function** %f178, align 8, !dbg !4016
  %call179 = call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %47) #7, !dbg !4017
  %cmp181 = icmp eq i8 %call173, %call179, !dbg !4018
  br i1 %cmp181, label %if.end188, label %if.then183, !dbg !4019

if.then183:                                       ; preds = %if.end169
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4020
  %tobool184 = icmp eq %struct._IO_FILE* %48, null, !dbg !4020
  br i1 %tobool184, label %cleanup, label %if.then185, !dbg !4023

if.then185:                                       ; preds = %if.then183
  call void @indent_to(%struct._IO_FILE* nonnull %48, i32 %depth) #6, !dbg !4024
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4026
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4027
  br label %cleanup, !dbg !4028

if.end188:                                        ; preds = %if.end169
  %call189 = call zeroext i8 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge* nonnull %e.1) #6, !dbg !4029
  %tobool191 = icmp eq i8 %call189, 0, !dbg !4029
  br i1 %tobool191, label %if.end202, label %land.lhs.true192, !dbg !4031

land.lhs.true192:                                 ; preds = %if.end188
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4032
  %call194 = call fastcc zeroext i8 @leaf_node_p(%struct.cgraph_node* %50) #7, !dbg !4033
  %tobool196 = icmp eq i8 %call194, 0, !dbg !4033
  br i1 %tobool196, label %if.end202, label %land.lhs.true197, !dbg !4034

land.lhs.true197:                                 ; preds = %land.lhs.true192
  %51 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4035
  %call198 = call zeroext i8 @optimize_function_for_speed_p(%struct.function* %51) #6, !dbg !4036
  %tobool200 = icmp eq i8 %call198, 0, !dbg !4036
  br i1 %tobool200, label %if.end202, label %if.then201, !dbg !4037

if.then201:                                       ; preds = %land.lhs.true197
  %52 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4038
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %52, i64 20, i32 1, !dbg !4038
  %53 = load i32, i32* %value, align 8, !dbg !4038
  call void @llvm.dbg.value(metadata i32 %53, metadata !3831, metadata !DIExpression()), !dbg !3979
  br label %if.end202, !dbg !4039

if.end202:                                        ; preds = %land.lhs.true197, %land.lhs.true192, %if.end188, %if.then201
  %allowed_growth.0 = phi i32 [ %53, %if.then201 ], [ 0, %land.lhs.true197 ], [ 0, %land.lhs.true192 ], [ 0, %if.end188 ], !dbg !3979
  call void @llvm.dbg.value(metadata i32 %allowed_growth.0, metadata !3831, metadata !DIExpression()), !dbg !3979
  br i1 %switch2, label %if.end202.land.lhs.true218_crit_edge, label %lor.lhs.false208, !dbg !4040

if.end202.land.lhs.true218_crit_edge:             ; preds = %if.end202
  %.pre6 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4041
  br label %land.lhs.true218, !dbg !4040

lor.lhs.false208:                                 ; preds = %if.end202
  %54 = load i32, i32* @flag_inline_functions, align 4, !dbg !4042
  %tobool209 = icmp eq i32 %54, 0, !dbg !4042
  br i1 %tobool209, label %land.lhs.true210, label %if.end240, !dbg !4043

land.lhs.true210:                                 ; preds = %lor.lhs.false208
  %55 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %44, align 8, !dbg !4044
  %56 = load %struct.tree_function_decl*, %struct.tree_function_decl** %55, align 8, !dbg !4044
  %declared_inline_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %56, i64 0, i32 5, !dbg !4044
  %bf.load214 = load i32, i32* %declared_inline_flag, align 8, !dbg !4044
  %bf.clear216 = and i32 %bf.load214, 2097152, !dbg !4044
  %tobool217 = icmp eq i32 %bf.clear216, 0, !dbg !4044
  %57 = bitcast %struct.tree_function_decl** %55 to %struct.cgraph_node*, !dbg !4045
  br i1 %tobool217, label %land.lhs.true218, label %if.end240, !dbg !4045

land.lhs.true218:                                 ; preds = %if.end202.land.lhs.true218_crit_edge, %land.lhs.true210
  %58 = phi %struct.cgraph_node* [ %.pre6, %if.end202.land.lhs.true218_crit_edge ], [ %57, %land.lhs.true210 ], !dbg !4041
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 1, !dbg !4046
  %59 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4046
  %call220 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %59, %struct.cgraph_node* %58) #7, !dbg !4047
  %60 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4048
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %60, i64 0, i32 19, i32 4, !dbg !4049
  %61 = load i32, i32* %size, align 4, !dbg !4049
  %add = add nsw i32 %61, %allowed_growth.0, !dbg !4050
  %cmp222 = icmp sgt i32 %call220, %add, !dbg !4051
  br i1 %cmp222, label %land.lhs.true224, label %if.end240, !dbg !4052

land.lhs.true224:                                 ; preds = %land.lhs.true218
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4053
  %call226 = call fastcc i32 @cgraph_estimate_growth(%struct.cgraph_node* %62) #7, !dbg !4054
  %cmp227 = icmp sgt i32 %call226, %allowed_growth.0, !dbg !4055
  br i1 %cmp227, label %if.then229, label %if.end240, !dbg !4056

if.then229:                                       ; preds = %land.lhs.true224
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4057
  %tobool230 = icmp eq %struct._IO_FILE* %63, null, !dbg !4057
  br i1 %tobool230, label %cleanup, label %if.then231, !dbg !4060

if.then231:                                       ; preds = %if.then229
  call void @indent_to(%struct._IO_FILE* nonnull %63, i32 %depth) #6, !dbg !4061
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4063
  %65 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4064
  %66 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4065
  %call234 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %65, %struct.cgraph_node* %66) #7, !dbg !4066
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4067
  %size237 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %67, i64 0, i32 19, i32 4, !dbg !4068
  %68 = load i32, i32* %size237, align 4, !dbg !4068
  %sub = sub nsw i32 %call234, %68, !dbg !4069
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %sub) #6, !dbg !4070
  br label %cleanup, !dbg !4071

if.end240:                                        ; preds = %land.lhs.true210, %lor.lhs.false208, %land.lhs.true224, %land.lhs.true218
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4072
  %call243 = call fastcc zeroext i8 @cgraph_check_inline_limits(%struct.cgraph_node* %node, %struct.cgraph_node* %69, i32* nonnull %inline_failed136, i8 zeroext 0) #7, !dbg !4074
  %tobool244 = icmp eq i8 %call243, 0, !dbg !4074
  br i1 %tobool244, label %if.then252, label %lor.lhs.false245, !dbg !4075

lor.lhs.false245:                                 ; preds = %if.end240
  %call_stmt_cannot_inline_p246 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 14, !dbg !4076
  %bf.load247 = load i8, i8* %call_stmt_cannot_inline_p246, align 2, !dbg !4076
  %bf.clear249 = and i8 %bf.load247, 2, !dbg !4076
  %tobool251 = icmp eq i8 %bf.clear249, 0, !dbg !4077
  br i1 %tobool251, label %if.end259, label %if.then252, !dbg !4078

if.then252:                                       ; preds = %lor.lhs.false245, %if.end240
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4079
  %tobool253 = icmp eq %struct._IO_FILE* %70, null, !dbg !4079
  br i1 %tobool253, label %cleanup, label %if.then254, !dbg !4082

if.then254:                                       ; preds = %if.then252
  call void @indent_to(%struct._IO_FILE* nonnull %70, i32 %depth) #6, !dbg !4083
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4085
  %72 = load i32, i32* %inline_failed136, align 8, !dbg !4086
  %call256 = call i8* @cgraph_inline_failed_string(i32 %72) #6, !dbg !4087
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %call256) #6, !dbg !4088
  br label %cleanup, !dbg !4089

if.end259:                                        ; preds = %lor.lhs.false245
  %73 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4090
  %analyzed261 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %73, i64 0, i32 27, !dbg !4092
  %bf.load262 = load i16, i16* %analyzed261, align 4, !dbg !4092
  %bf.clear264 = and i16 %bf.load262, 32, !dbg !4092
  %tobool266 = icmp eq i16 %bf.clear264, 0, !dbg !4093
  br i1 %tobool266, label %if.then267, label %if.end272, !dbg !4094

if.then267:                                       ; preds = %if.end259
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4095
  %tobool268 = icmp eq %struct._IO_FILE* %74, null, !dbg !4095
  br i1 %tobool268, label %cleanup, label %if.then269, !dbg !4098

if.then269:                                       ; preds = %if.then267
  call void @indent_to(%struct._IO_FILE* nonnull %74, i32 %depth) #6, !dbg !4099
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4101
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !4102
  br label %cleanup, !dbg !4103

if.end272:                                        ; preds = %if.end259
  %call273 = call zeroext i8 @tree_can_inline_p(%struct.cgraph_edge* nonnull %e.1) #6, !dbg !4104
  %tobool274 = icmp eq i8 %call273, 0, !dbg !4104
  br i1 %tobool274, label %if.then275, label %if.end282, !dbg !4106

if.then275:                                       ; preds = %if.end272
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4107
  %tobool276 = icmp eq %struct._IO_FILE* %76, null, !dbg !4107
  br i1 %tobool276, label %cleanup, label %if.then277, !dbg !4110

if.then277:                                       ; preds = %if.then275
  call void @indent_to(%struct._IO_FILE* nonnull %76, i32 %depth) #6, !dbg !4111
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4113
  %78 = load i32, i32* %inline_failed136, align 8, !dbg !4114
  %call279 = call i8* @cgraph_inline_failed_string(i32 %78) #6, !dbg !4115
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %call279) #6, !dbg !4116
  br label %cleanup, !dbg !4117

if.end282:                                        ; preds = %if.end272
  %79 = load %struct.cgraph_node*, %struct.cgraph_node** %callee127, align 8, !dbg !4118
  call void @llvm.dbg.value(metadata i32* %failed_reason, metadata !3826, metadata !DIExpression(DW_OP_deref)), !dbg !3835
  %call284 = call fastcc zeroext i8 @cgraph_default_inline_p(%struct.cgraph_node* %79, i32* nonnull %failed_reason) #7, !dbg !4120
  %tobool285 = icmp eq i8 %call284, 0, !dbg !4120
  br i1 %tobool285, label %cleanup, label %if.then286, !dbg !4121

if.then286:                                       ; preds = %if.end282
  %call287 = call fastcc zeroext i8 @try_inline(%struct.cgraph_edge* nonnull %e.1, i32 %mode.addr.0, i32 %depth) #7, !dbg !4122
  %or2903 = or i8 %inlined.3, %call287, !dbg !4123
  call void @llvm.dbg.value(metadata i8 %or2903, metadata !3825, metadata !DIExpression()), !dbg !3835
  br label %cleanup, !dbg !4124

cleanup:                                          ; preds = %if.then164, %if.then183, %if.then229, %if.end282, %if.then275, %if.then267, %if.then252, %if.end148, %lor.lhs.false138, %lor.lhs.false135, %for.body126, %if.then286, %if.then277, %if.then269, %if.then254, %if.then231, %if.then185, %if.then166
  %inlined.5 = phi i8 [ %inlined.3, %lor.lhs.false138 ], [ %inlined.3, %lor.lhs.false135 ], [ %inlined.3, %for.body126 ], [ %inlined.3, %if.end148 ], [ %inlined.3, %if.then166 ], [ %inlined.3, %if.then164 ], [ %inlined.3, %if.then185 ], [ %inlined.3, %if.then183 ], [ %inlined.3, %if.then231 ], [ %inlined.3, %if.then229 ], [ %inlined.3, %if.then254 ], [ %inlined.3, %if.then252 ], [ %inlined.3, %if.then269 ], [ %inlined.3, %if.then267 ], [ %inlined.3, %if.then277 ], [ %inlined.3, %if.then275 ], [ %or2903, %if.then286 ], [ %inlined.3, %if.end282 ], !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.5, metadata !3825, metadata !DIExpression()), !dbg !3835
  %next_callee294 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 6, !dbg !4125
  br label %for.cond124, !dbg !4126, !llvm.loop !4127

for.end295:                                       ; preds = %for.cond124
  %inlined.3.lcssa = phi i8 [ %inlined.3, %for.cond124 ], !dbg !3869
  call void @llvm.dbg.value(metadata i8 %inlined.3.lcssa, metadata !3825, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.3.lcssa, metadata !3825, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 %inlined.3.lcssa, metadata !3825, metadata !DIExpression()), !dbg !3835
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call122) #6, !dbg !4129
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3828, metadata !DIExpression()), !dbg !3970
  br label %if.end296, !dbg !4130

if.end296:                                        ; preds = %land.lhs.true113, %if.end107, %if.end107, %for.end295
  %inlined.6 = phi i8 [ %inlined.2, %land.lhs.true113 ], [ %inlined.3.lcssa, %for.end295 ], [ %inlined.2, %if.end107 ], [ %inlined.2, %if.end107 ], !dbg !3869
  call void @llvm.dbg.value(metadata i8 %inlined.6, metadata !3825, metadata !DIExpression()), !dbg !3835
  %conv297 = and i64 %2, 4294967295, !dbg !4131
  %80 = inttoptr i64 %conv297 to i8*, !dbg !4132
  store i8* %80, i8** %aux, align 8, !dbg !4133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4134
  ret i8 %inlined.6, !dbg !4135
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

declare dso_local i32 @optimize_inline_calls(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @indent_to(%struct._IO_FILE*, i32) local_unnamed_addr #2

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @try_inline(%struct.cgraph_edge* %e, i32 %mode, i32 %depth) unnamed_addr #5 !dbg !4136 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4140, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4141, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %depth, metadata !4142, metadata !DIExpression()), !dbg !4147
  %callee1 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !4148
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee1, align 8, !dbg !4148
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !4143, metadata !DIExpression()), !dbg !4147
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 16, !dbg !4149
  %1 = bitcast i8** %aux to i64*, !dbg !4149
  %2 = load i64, i64* %1, align 8, !dbg !4149
  %conv = trunc i64 %2 to i32, !dbg !4150
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4144, metadata !DIExpression()), !dbg !4147
  %disregard_inline_limits = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 18, i32 2, !dbg !4151
  %bf.load = load i8, i8* %disregard_inline_limits, align 8, !dbg !4151
  %bf.lshr = lshr i8 %bf.load, 4, !dbg !4151
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4151
  call void @llvm.dbg.value(metadata i8 %bf.clear, metadata !4145, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i8 0, metadata !4146, metadata !DIExpression()), !dbg !4147
  %tobool = icmp eq i32 %conv, 0, !dbg !4152
  br i1 %tobool, label %if.end26, label %if.then, !dbg !4154

if.then:                                          ; preds = %entry
  %tobool5 = icmp ne i8 %bf.clear, 0, !dbg !4155
  %cmp = icmp ne i32 %mode, 1, !dbg !4158
  %or.cond = and i1 %tobool5, %cmp, !dbg !4159
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4160
  %tobool8 = icmp ne %struct._IO_FILE* %3, null, !dbg !4160
  br i1 %or.cond, label %if.then7, label %if.else, !dbg !4159

if.then7:                                         ; preds = %if.then
  br i1 %tobool8, label %if.then9, label %if.end26, !dbg !4161

if.then9:                                         ; preds = %if.then7
  tail call void @indent_to(%struct._IO_FILE* nonnull %3, i32 %depth) #6, !dbg !4163
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4166
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* %0) #6, !dbg !4167
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i8* %call) #6, !dbg !4168
  br label %if.end26, !dbg !4169

if.else:                                          ; preds = %if.then
  br i1 %tobool8, label %if.then12, label %if.end16, !dbg !4170

if.then12:                                        ; preds = %if.else
  tail call void @indent_to(%struct._IO_FILE* nonnull %3, i32 %depth) #6, !dbg !4172
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4175
  %call13 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %0) #6, !dbg !4176
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !4177
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4177
  %call14 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %6) #6, !dbg !4178
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i8* %call13, i8* %call14) #6, !dbg !4179
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %callee1, align 8, !dbg !4180
  %disregard_inline_limits19.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.pre, i64 0, i32 18, i32 2, !dbg !4181
  %bf.load20.pre = load i8, i8* %disregard_inline_limits19.phi.trans.insert, align 8, !dbg !4182
  br label %if.end16, !dbg !4183

if.end16:                                         ; preds = %if.then12, %if.else
  %bf.load20 = phi i8 [ %bf.load20.pre, %if.then12 ], [ %bf.load, %if.else ], !dbg !4182
  %bf.clear22 = and i8 %bf.load20, 16, !dbg !4182
  %tobool24 = icmp eq i8 %bf.clear22, 0, !dbg !4184
  %cond = select i1 %tobool24, i32 1, i32 12, !dbg !4184
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4185
  store i32 %cond, i32* %inline_failed, align 8, !dbg !4186
  br label %cleanup, !dbg !4187

if.end26:                                         ; preds = %entry, %if.then9, %if.then7
  %mode.addr.0 = phi i32 [ %mode, %entry ], [ 1, %if.then7 ], [ 1, %if.then9 ]
  call void @llvm.dbg.value(metadata i32 %mode.addr.0, metadata !4141, metadata !DIExpression()), !dbg !4147
  %conv27 = zext i32 %mode.addr.0 to i64, !dbg !4188
  %7 = inttoptr i64 %conv27 to i8*, !dbg !4189
  store i8* %7, i8** %aux, align 8, !dbg !4190
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4191
  %tobool29 = icmp eq %struct._IO_FILE* %8, null, !dbg !4191
  br i1 %tobool29, label %if.end36, label %if.then30, !dbg !4193

if.then30:                                        ; preds = %if.end26
  tail call void @indent_to(%struct._IO_FILE* nonnull %8, i32 %depth) #6, !dbg !4194
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4196
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %callee1, align 8, !dbg !4197
  %call32 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %10) #6, !dbg !4198
  %caller33 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !4199
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %caller33, align 8, !dbg !4199
  %call34 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %11) #6, !dbg !4200
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %call32, i8* %call34) #6, !dbg !4201
  br label %if.end36, !dbg !4202

if.end36:                                         ; preds = %if.end26, %if.then30
  %inline_failed37 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4203
  %12 = load i32, i32* %inline_failed37, align 8, !dbg !4203
  %tobool38 = icmp eq i32 %12, 0, !dbg !4205
  br i1 %tobool38, label %if.end49, label %if.then39, !dbg !4206

if.then39:                                        ; preds = %if.end36
  %call40 = tail call fastcc %struct.cgraph_edge* @cgraph_mark_inline(%struct.cgraph_edge* %e) #7, !dbg !4207
  %cmp41 = icmp eq i32 %mode.addr.0, 4, !dbg !4209
  %tobool44 = icmp ne i8 %bf.clear, 0, !dbg !4211
  %or.cond1 = or i1 %cmp41, %tobool44, !dbg !4212
  br i1 %or.cond1, label %if.then45, label %if.end49, !dbg !4212

if.then45:                                        ; preds = %if.then39
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %callee1, align 8, !dbg !4213
  %add = add nsw i32 %depth, 1, !dbg !4214
  %call47 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(%struct.cgraph_node* %13, i32 %mode.addr.0, i32 %add) #7, !dbg !4215
  br label %if.end49, !dbg !4215

if.end49:                                         ; preds = %if.end36, %if.then45, %if.then39
  %inlined.0 = phi i8 [ 0, %if.end36 ], [ 1, %if.then39 ], [ 1, %if.then45 ], !dbg !4147
  call void @llvm.dbg.value(metadata i8 %inlined.0, metadata !4146, metadata !DIExpression()), !dbg !4147
  %conv50 = and i64 %2, 4294967295, !dbg !4216
  %14 = inttoptr i64 %conv50 to i8*, !dbg !4217
  store i8* %14, i8** %aux, align 8, !dbg !4218
  br label %cleanup, !dbg !4219

cleanup:                                          ; preds = %if.end49, %if.end16
  %retval.0 = phi i8 [ %inlined.0, %if.end49 ], [ 0, %if.end16 ], !dbg !4147
  ret i8 %retval.0, !dbg !4220
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %to, %struct.cgraph_node* %what, i32* %reason) unnamed_addr #5 !dbg !4221 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to, metadata !4226, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %what, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32* %reason, metadata !4228, metadata !DIExpression()), !dbg !4230
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %to, i64 0, i32 19, i32 2, !dbg !4231
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4231
  %tobool = icmp eq %struct.cgraph_node* %0, null, !dbg !4233
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %what, i64 0, i32 0, !dbg !4234
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4234
  br i1 %tobool, label %if.else, label %if.then, !dbg !4235

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !4236

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pn1 = phi %struct.cgraph_node* [ %0, %if.then ], [ %to, %if.else ]
  %.pn.in = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.pn1, i64 0, i32 0, !dbg !4234
  %.pn = load %union.tree_node*, %union.tree_node** %.pn.in, align 8, !dbg !4234
  %recursive.0.in = icmp eq %union.tree_node* %1, %.pn, !dbg !4234
  %recursive.0 = zext i1 %recursive.0.in to i8, !dbg !4234
  call void @llvm.dbg.value(metadata i8 %recursive.0, metadata !4229, metadata !DIExpression()), !dbg !4230
  %tobool12 = icmp ne i32* %reason, null, !dbg !4237
  %or.cond = and i1 %recursive.0.in, %tobool12, !dbg !4239
  br i1 %or.cond, label %if.then13, label %if.end15, !dbg !4239

if.then13:                                        ; preds = %if.end
  %disregard_inline_limits = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %what, i64 0, i32 18, i32 2, !dbg !4240
  %bf.load = load i8, i8* %disregard_inline_limits, align 8, !dbg !4240
  %bf.clear = and i8 %bf.load, 16, !dbg !4240
  %tobool14 = icmp eq i8 %bf.clear, 0, !dbg !4241
  %cond = select i1 %tobool14, i32 1, i32 12, !dbg !4241
  store i32 %cond, i32* %reason, align 4, !dbg !4242
  br label %if.end15, !dbg !4243

if.end15:                                         ; preds = %if.then13, %if.end
  ret i8 %recursive.0, !dbg !4244
}

declare dso_local zeroext i8 @tree_can_inline_p(%struct.cgraph_edge*) local_unnamed_addr #2

declare dso_local i8* @cgraph_inline_failed_string(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !4245 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !4252, metadata !DIExpression()), !dbg !4253
  %tobool = icmp eq %struct.function* %fun, null, !dbg !4254
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !4255

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !4256
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4256
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !4257
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !4258

land.rhs:                                         ; preds = %land.lhs.true
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 10, !dbg !4259
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !4259
  %bf.clear = and i8 %bf.load, 1, !dbg !4259
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.clear, %land.rhs ]
  ret i8 %1, !dbg !4260
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @leaf_node_p(%struct.cgraph_node* %n) unnamed_addr #5 !dbg !4261 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n, metadata !4263, metadata !DIExpression()), !dbg !4265
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 1, !dbg !4266
  br label %for.cond, !dbg !4268

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %entry ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4269
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4264, metadata !DIExpression()), !dbg !4265
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4270
  br i1 %tobool, label %cleanup, label %for.body, !dbg !4270

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !4271
  %0 = bitcast %struct.cgraph_node** %callee to %struct.tree_function_decl***, !dbg !4271
  %1 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %0, align 8, !dbg !4271
  %2 = load %struct.tree_function_decl*, %struct.tree_function_decl** %1, align 8, !dbg !4271
  %built_in_class = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %2, i64 0, i32 5, !dbg !4271
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !4271
  %bf.clear = and i32 %bf.load, 6144, !dbg !4271
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !4271
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !4274

lor.lhs.false:                                    ; preds = %for.body
  %3 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4274
  %bf.load3 = load i64, i64* %3, align 8, !dbg !4275
  %bf.cast1 = and i64 %bf.load3, 1048576, !dbg !4275
  %tobool6 = icmp eq i64 %bf.cast1, 0, !dbg !4275
  br i1 %tobool6, label %cleanup, label %lor.lhs.false7, !dbg !4276

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %bf.clear13 = and i32 %bf.load, 134217728, !dbg !4277
  %tobool14 = icmp eq i32 %bf.clear13, 0, !dbg !4277
  br i1 %tobool14, label %for.inc, label %cleanup, !dbg !4278

for.inc:                                          ; preds = %lor.lhs.false7
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !4279
  br label %for.cond, !dbg !4280, !llvm.loop !4281

cleanup:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %for.body, %for.cond
  %retval.0 = phi i8 [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %for.body ], [ 1, %for.cond ], !dbg !4265
  ret i8 %retval.0, !dbg !4283
}

declare dso_local zeroext i8 @optimize_function_for_speed_p(%struct.function*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cgraph_estimate_size_after_inlining(i32 %times, %struct.cgraph_node* %to, %struct.cgraph_node* %what) unnamed_addr #5 !dbg !4284 {
entry:
  call void @llvm.dbg.value(metadata i32 %times, metadata !4288, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to, metadata !4289, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %what, metadata !4290, metadata !DIExpression()), !dbg !4292
  %size1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %what, i64 0, i32 19, i32 4, !dbg !4293
  %0 = load i32, i32* %size1, align 4, !dbg !4293
  %call = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %what) #7, !dbg !4294
  %size_inlining_benefit = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call, i64 0, i32 2, !dbg !4295
  %1 = load i32, i32* %size_inlining_benefit, align 4, !dbg !4295
  %sub = sub nsw i32 %0, %1, !dbg !4296
  %mul = mul nsw i32 %sub, %times, !dbg !4297
  %size3 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %to, i64 0, i32 19, i32 4, !dbg !4298
  %2 = load i32, i32* %size3, align 4, !dbg !4298
  %add = add nsw i32 %mul, %2, !dbg !4299
  call void @llvm.dbg.value(metadata i32 %add, metadata !4291, metadata !DIExpression()), !dbg !4292
  %cmp = icmp sgt i32 %add, -1, !dbg !4300
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4300

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4300
  br label %cond.end, !dbg !4300

cond.end:                                         ; preds = %entry, %cond.true
  ret i32 %add, !dbg !4301
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cgraph_estimate_growth(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !4302 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4306, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 0, metadata !4307, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i8 0, metadata !4309, metadata !DIExpression()), !dbg !4310
  %estimated_growth = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 5, !dbg !4311
  %0 = load i32, i32* %estimated_growth, align 8, !dbg !4311
  %cmp = icmp eq i32 %0, -2147483648, !dbg !4313
  br i1 %cmp, label %if.end, label %if.then, !dbg !4314

if.then:                                          ; preds = %entry
  br label %cleanup, !dbg !4315

if.end:                                           ; preds = %entry
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !4316
  br label %for.cond, !dbg !4318

for.cond:                                         ; preds = %for.inc, %if.end
  %self_recursive.0 = phi i8 [ 0, %if.end ], [ %spec.select, %for.inc ], !dbg !4310
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %if.end ], [ %next_caller, %for.inc ]
  %growth.0 = phi i32 [ 0, %if.end ], [ %growth.1, %for.inc ], !dbg !4310
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4319
  call void @llvm.dbg.value(metadata i32 %growth.0, metadata !4307, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4308, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i8 %self_recursive.0, metadata !4309, metadata !DIExpression()), !dbg !4310
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4320
  br i1 %tobool, label %for.end, label %for.body, !dbg !4320

for.body:                                         ; preds = %for.cond
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 1, !dbg !4321
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4321
  %cmp3 = icmp eq %struct.cgraph_node* %1, %node, !dbg !4325
  %spec.select = select i1 %cmp3, i8 1, i8 %self_recursive.0, !dbg !4326
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !4309, metadata !DIExpression()), !dbg !4310
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !4327
  %2 = load i32, i32* %inline_failed, align 8, !dbg !4327
  %tobool6 = icmp eq i32 %2, 0, !dbg !4329
  br i1 %tobool6, label %for.inc, label %if.then7, !dbg !4330

if.then7:                                         ; preds = %for.body
  %call = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %1, %struct.cgraph_node* %node) #7, !dbg !4331
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4332
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %3, i64 0, i32 19, i32 4, !dbg !4333
  %4 = load i32, i32* %size, align 4, !dbg !4333
  %sub = sub nsw i32 %call, %4, !dbg !4334
  %add = add nsw i32 %growth.0, %sub, !dbg !4335
  call void @llvm.dbg.value(metadata i32 %add, metadata !4307, metadata !DIExpression()), !dbg !4310
  br label %for.inc, !dbg !4336

for.inc:                                          ; preds = %for.body, %if.then7
  %growth.1 = phi i32 [ %add, %if.then7 ], [ %growth.0, %for.body ], !dbg !4310
  call void @llvm.dbg.value(metadata i32 %growth.1, metadata !4307, metadata !DIExpression()), !dbg !4310
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !4337
  br label %for.cond, !dbg !4338, !llvm.loop !4339

for.end:                                          ; preds = %for.cond
  %self_recursive.0.lcssa = phi i8 [ %self_recursive.0, %for.cond ], !dbg !4310
  %growth.0.lcssa = phi i32 [ %growth.0, %for.cond ], !dbg !4310
  call void @llvm.dbg.value(metadata i8 %self_recursive.0.lcssa, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 %growth.0.lcssa, metadata !4307, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i8 %self_recursive.0.lcssa, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 %growth.0.lcssa, metadata !4307, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i8 %self_recursive.0.lcssa, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 %growth.0.lcssa, metadata !4307, metadata !DIExpression()), !dbg !4310
  %call12 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %node) #7, !dbg !4341
  %tobool13 = icmp eq i8 %call12, 0, !dbg !4341
  br i1 %tobool13, label %if.end21, label %land.lhs.true, !dbg !4343

land.lhs.true:                                    ; preds = %for.end
  %5 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_common**, !dbg !4344
  %6 = load %struct.tree_decl_common*, %struct.tree_decl_common** %5, align 8, !dbg !4344
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %6, i64 0, i32 2, !dbg !4344
  %7 = bitcast i40* %decl_flag_1 to i64*, !dbg !4344
  %bf.load = load i64, i64* %7, align 8, !dbg !4344
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !4344
  %tobool14 = icmp ne i64 %bf.cast1, 0, !dbg !4344
  %tobool16 = icmp ne i8 %self_recursive.0.lcssa, 0, !dbg !4345
  %or.cond = or i1 %tobool14, %tobool16, !dbg !4346
  br i1 %or.cond, label %if.end21, label %if.then17, !dbg !4346

if.then17:                                        ; preds = %land.lhs.true
  %size19 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 4, !dbg !4347
  %8 = load i32, i32* %size19, align 4, !dbg !4347
  %sub20 = sub nsw i32 %growth.0.lcssa, %8, !dbg !4348
  call void @llvm.dbg.value(metadata i32 %sub20, metadata !4307, metadata !DIExpression()), !dbg !4310
  br label %if.end21, !dbg !4349

if.end21:                                         ; preds = %for.end, %if.then17, %land.lhs.true
  %growth.2 = phi i32 [ %growth.0.lcssa, %land.lhs.true ], [ %sub20, %if.then17 ], [ %growth.0.lcssa, %for.end ], !dbg !4310
  call void @llvm.dbg.value(metadata i32 %growth.2, metadata !4307, metadata !DIExpression()), !dbg !4310
  store i32 %growth.2, i32* %estimated_growth, align 8, !dbg !4350
  br label %cleanup, !dbg !4351

cleanup:                                          ; preds = %if.end21, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %growth.2, %if.end21 ], !dbg !4310
  ret i32 %retval.0, !dbg !4352
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_check_inline_limits(%struct.cgraph_node* %to, %struct.cgraph_node* %what, i32* %reason, i8 zeroext %one_only) unnamed_addr #5 !dbg !4353 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to, metadata !4357, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %what, metadata !4358, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32* %reason, metadata !4359, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i8 %one_only, metadata !4360, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 0, metadata !4361, metadata !DIExpression()), !dbg !4367
  %tobool = icmp eq i8 %one_only, 0, !dbg !4368
  br i1 %tobool, label %if.else, label %if.end3, !dbg !4370

if.else:                                          ; preds = %entry
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %to, i64 0, i32 1, !dbg !4371
  br label %for.cond, !dbg !4373

for.cond:                                         ; preds = %for.body, %if.else
  %times.0 = phi i32 [ 0, %if.else ], [ %spec.select, %for.body ], !dbg !4367
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.else ], [ %next_callee, %for.body ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4374
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4362, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 %times.0, metadata !4361, metadata !DIExpression()), !dbg !4367
  %tobool1 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4375
  br i1 %tobool1, label %if.end3.loopexit, label %for.body, !dbg !4375

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !4376
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4376
  %cmp = icmp eq %struct.cgraph_node* %0, %what, !dbg !4379
  %inc = zext i1 %cmp to i32, !dbg !4380
  %spec.select = add nuw nsw i32 %times.0, %inc, !dbg !4380
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4361, metadata !DIExpression()), !dbg !4367
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !4381
  br label %for.cond, !dbg !4382, !llvm.loop !4383

if.end3.loopexit:                                 ; preds = %for.cond
  %times.0.lcssa = phi i32 [ %times.0, %for.cond ], !dbg !4367
  call void @llvm.dbg.value(metadata i32 %times.0.lcssa, metadata !4361, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 %times.0.lcssa, metadata !4361, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 %times.0.lcssa, metadata !4361, metadata !DIExpression()), !dbg !4367
  br label %if.end3, !dbg !4385

if.end3:                                          ; preds = %if.end3.loopexit, %entry
  %times.2 = phi i32 [ 1, %entry ], [ %times.0.lcssa, %if.end3.loopexit ], !dbg !4367
  call void @llvm.dbg.value(metadata i32 %times.2, metadata !4361, metadata !DIExpression()), !dbg !4367
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %to, i64 0, i32 19, i32 2, !dbg !4385
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4385
  %tobool4 = icmp eq %struct.cgraph_node* %1, null, !dbg !4387
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !4388

if.then5:                                         ; preds = %if.end3
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !4357, metadata !DIExpression()), !dbg !4367
  br label %if.end8, !dbg !4389

if.end8:                                          ; preds = %if.end3, %if.then5
  %to.addr.0 = phi %struct.cgraph_node* [ %1, %if.then5 ], [ %to, %if.end3 ]
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.addr.0, metadata !4357, metadata !DIExpression()), !dbg !4367
  %call = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %to.addr.0) #7, !dbg !4390
  %self_size = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call, i64 0, i32 1, !dbg !4392
  %2 = load i32, i32* %self_size, align 8, !dbg !4392
  %call9 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %what) #7, !dbg !4393
  %self_size10 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call9, i64 0, i32 1, !dbg !4394
  %3 = load i32, i32* %self_size10, align 8, !dbg !4394
  %cmp11 = icmp sgt i32 %2, %3, !dbg !4395
  br i1 %cmp11, label %if.then12, label %if.else15, !dbg !4396

if.then12:                                        ; preds = %if.end8
  %call13 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %to.addr.0) #7, !dbg !4397
  br label %if.end18, !dbg !4398

if.else15:                                        ; preds = %if.end8
  %call16 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %what) #7, !dbg !4399
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then12
  %call13.pn = phi %struct.inline_summary* [ %call13, %if.then12 ], [ %call16, %if.else15 ]
  %limit.0.in = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call13.pn, i64 0, i32 1, !dbg !4400
  %limit.0 = load i32, i32* %limit.0.in, align 8, !dbg !4400
  call void @llvm.dbg.value(metadata i32 %limit.0, metadata !4364, metadata !DIExpression()), !dbg !4367
  %4 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4401
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %4, i64 16, i32 1, !dbg !4401
  %5 = load i32, i32* %value, align 8, !dbg !4401
  call void @llvm.dbg.value(metadata i32 undef, metadata !4364, metadata !DIExpression()), !dbg !4367
  %call19 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 %times.2, %struct.cgraph_node* %to.addr.0, %struct.cgraph_node* %what) #7, !dbg !4402
  call void @llvm.dbg.value(metadata i32 %call19, metadata !4363, metadata !DIExpression()), !dbg !4367
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %to.addr.0, i64 0, i32 19, i32 4, !dbg !4403
  %6 = load i32, i32* %size, align 4, !dbg !4403
  %cmp21 = icmp slt i32 %call19, %6, !dbg !4405
  br i1 %cmp21, label %if.end31, label %land.lhs.true, !dbg !4406

land.lhs.true:                                    ; preds = %if.end18
  %mul = mul nsw i32 %limit.0, %5, !dbg !4407
  %div = sdiv i32 %mul, 100, !dbg !4408
  %add = add nsw i32 %limit.0, %div, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %add, metadata !4364, metadata !DIExpression()), !dbg !4367
  %7 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4410
  %value23 = getelementptr inbounds %struct.param_info, %struct.param_info* %7, i64 15, i32 1, !dbg !4410
  %8 = load i32, i32* %value23, align 8, !dbg !4410
  %cmp24 = icmp sgt i32 %call19, %8, !dbg !4411
  %cmp26 = icmp sgt i32 %call19, %add, !dbg !4412
  %or.cond = and i1 %cmp24, %cmp26, !dbg !4413
  br i1 %or.cond, label %if.then27, label %if.end31, !dbg !4413

if.then27:                                        ; preds = %land.lhs.true
  %tobool28 = icmp eq i32* %reason, null, !dbg !4414
  br i1 %tobool28, label %cleanup, label %if.then29, !dbg !4417

if.then29:                                        ; preds = %if.then27
  store i32 7, i32* %reason, align 4, !dbg !4418
  br label %cleanup, !dbg !4419

if.end31:                                         ; preds = %if.end18, %land.lhs.true
  %call32 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %to.addr.0) #7, !dbg !4420
  %estimated_self_stack_size = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call32, i64 0, i32 0, !dbg !4421
  %9 = load i64, i64* %estimated_self_stack_size, align 8, !dbg !4421
  call void @llvm.dbg.value(metadata i64 %9, metadata !4365, metadata !DIExpression()), !dbg !4367
  %10 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4422
  %value34 = getelementptr inbounds %struct.param_info, %struct.param_info* %10, i64 22, i32 1, !dbg !4422
  %11 = load i32, i32* %value34, align 8, !dbg !4422
  %conv = sext i32 %11 to i64, !dbg !4422
  %mul35 = mul nsw i64 %9, %conv, !dbg !4423
  %div36 = sdiv i64 %mul35, 100, !dbg !4424
  %add37 = add nsw i64 %9, %div36, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %add37, metadata !4365, metadata !DIExpression()), !dbg !4367
  %stack_frame_offset = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %to.addr.0, i64 0, i32 19, i32 1, !dbg !4426
  %12 = load i64, i64* %stack_frame_offset, align 8, !dbg !4426
  %call39 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %to.addr.0) #7, !dbg !4427
  %estimated_self_stack_size40 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call39, i64 0, i32 0, !dbg !4428
  %13 = load i64, i64* %estimated_self_stack_size40, align 8, !dbg !4428
  %add41 = add nsw i64 %12, %13, !dbg !4429
  %estimated_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %what, i64 0, i32 19, i32 0, !dbg !4430
  %14 = load i64, i64* %estimated_stack_size, align 8, !dbg !4430
  %add43 = add nsw i64 %add41, %14, !dbg !4431
  call void @llvm.dbg.value(metadata i64 %add43, metadata !4366, metadata !DIExpression()), !dbg !4367
  %cmp44 = icmp sgt i64 %add43, %add37, !dbg !4432
  br i1 %cmp44, label %land.lhs.true46, label %cleanup, !dbg !4434

land.lhs.true46:                                  ; preds = %if.end31
  %15 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4435
  %value48 = getelementptr inbounds %struct.param_info, %struct.param_info* %15, i64 21, i32 1, !dbg !4435
  %16 = load i32, i32* %value48, align 8, !dbg !4435
  %conv49 = sext i32 %16 to i64, !dbg !4435
  %cmp50 = icmp sgt i64 %add43, %conv49, !dbg !4436
  br i1 %cmp50, label %if.then52, label %cleanup, !dbg !4437

if.then52:                                        ; preds = %land.lhs.true46
  %tobool53 = icmp eq i32* %reason, null, !dbg !4438
  br i1 %tobool53, label %cleanup, label %if.then54, !dbg !4441

if.then54:                                        ; preds = %if.then52
  store i32 8, i32* %reason, align 4, !dbg !4442
  br label %cleanup, !dbg !4443

cleanup:                                          ; preds = %if.then27, %if.then52, %if.end31, %land.lhs.true46, %if.then54, %if.then29
  %retval.0 = phi i8 [ 0, %if.then29 ], [ 0, %if.then27 ], [ 0, %if.then54 ], [ 0, %if.then52 ], [ 1, %land.lhs.true46 ], [ 1, %if.end31 ], !dbg !4367
  ret i8 %retval.0, !dbg !4444
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_default_inline_p(%struct.cgraph_node* %n, i32* %reason) unnamed_addr #5 !dbg !4445 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n, metadata !4449, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32* %reason, metadata !4450, metadata !DIExpression()), !dbg !4452
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 0, !dbg !4453
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !4453
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4451, metadata !DIExpression()), !dbg !4452
  %1 = load i32, i32* @flag_inline_small_functions, align 4, !dbg !4454
  %tobool = icmp eq i32 %1, 0, !dbg !4454
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !4456

land.lhs.true:                                    ; preds = %entry
  %declared_inline_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 5, !dbg !4457
  %bf.load = load i32, i32* %declared_inline_flag, align 8, !dbg !4457
  %bf.clear = and i32 %bf.load, 2097152, !dbg !4457
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !4457
  br i1 %tobool2, label %if.then, label %if.end5, !dbg !4458

if.then:                                          ; preds = %land.lhs.true
  %tobool3 = icmp eq i32* %reason, null, !dbg !4459
  br i1 %tobool3, label %cleanup, label %if.then4, !dbg !4462

if.then4:                                         ; preds = %if.then
  store i32 6, i32* %reason, align 4, !dbg !4463
  br label %cleanup, !dbg !4464

if.end5:                                          ; preds = %land.lhs.true, %entry
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 27, !dbg !4465
  %bf.load6 = load i16, i16* %analyzed, align 4, !dbg !4465
  %bf.clear8 = and i16 %bf.load6, 32, !dbg !4465
  %tobool9 = icmp eq i16 %bf.clear8, 0, !dbg !4467
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !4468

if.then10:                                        ; preds = %if.end5
  %tobool11 = icmp eq i32* %reason, null, !dbg !4469
  br i1 %tobool11, label %cleanup, label %if.then12, !dbg !4472

if.then12:                                        ; preds = %if.then10
  store i32 3, i32* %reason, align 4, !dbg !4473
  br label %cleanup, !dbg !4474

if.end14:                                         ; preds = %if.end5
  %declared_inline_flag16 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 5, !dbg !4475
  %bf.load17 = load i32, i32* %declared_inline_flag16, align 8, !dbg !4475
  %bf.clear19 = and i32 %bf.load17, 2097152, !dbg !4475
  %tobool20 = icmp eq i32 %bf.clear19, 0, !dbg !4475
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 19, i32 4, !dbg !4477
  %2 = load i32, i32* %size, align 4, !dbg !4477
  %3 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4477
  br i1 %tobool20, label %if.else, label %if.then21, !dbg !4478

if.then21:                                        ; preds = %if.end14
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %3, i64 2, i32 1, !dbg !4479
  %4 = load i32, i32* %value, align 8, !dbg !4479
  %cmp = icmp slt i32 %2, %4, !dbg !4482
  br i1 %cmp, label %cleanup, label %if.then22, !dbg !4483

if.then22:                                        ; preds = %if.then21
  %tobool23 = icmp eq i32* %reason, null, !dbg !4484
  br i1 %tobool23, label %cleanup, label %if.then24, !dbg !4487

if.then24:                                        ; preds = %if.then22
  store i32 9, i32* %reason, align 4, !dbg !4488
  br label %cleanup, !dbg !4489

if.else:                                          ; preds = %if.end14
  %value30 = getelementptr inbounds %struct.param_info, %struct.param_info* %3, i64 3, i32 1, !dbg !4490
  %5 = load i32, i32* %value30, align 8, !dbg !4490
  %cmp31 = icmp slt i32 %2, %5, !dbg !4493
  br i1 %cmp31, label %cleanup, label %if.then32, !dbg !4494

if.then32:                                        ; preds = %if.else
  %tobool33 = icmp eq i32* %reason, null, !dbg !4495
  br i1 %tobool33, label %cleanup, label %if.then34, !dbg !4498

if.then34:                                        ; preds = %if.then32
  store i32 10, i32* %reason, align 4, !dbg !4499
  br label %cleanup, !dbg !4500

cleanup:                                          ; preds = %if.then22, %if.then21, %if.then32, %if.else, %if.then10, %if.then, %if.then34, %if.then24, %if.then12, %if.then4
  %retval.0 = phi i8 [ 0, %if.then4 ], [ 0, %if.then ], [ 0, %if.then12 ], [ 0, %if.then10 ], [ 0, %if.then24 ], [ 0, %if.then22 ], [ 0, %if.then34 ], [ 0, %if.then32 ], [ 1, %if.else ], [ 1, %if.then21 ], !dbg !4452
  ret i8 %retval.0, !dbg !4501
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cgraph_edge* @cgraph_mark_inline(%struct.cgraph_edge* %edge) unnamed_addr #5 !dbg !4502 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge, metadata !4506, metadata !DIExpression()), !dbg !4511
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 1, !dbg !4512
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4512
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !4507, metadata !DIExpression()), !dbg !4511
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 2, !dbg !4513
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4513
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !4508, metadata !DIExpression()), !dbg !4511
  %call_stmt_cannot_inline_p = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 14, !dbg !4514
  %bf.load = load i8, i8* %call_stmt_cannot_inline_p, align 2, !dbg !4514
  %bf.clear = and i8 %bf.load, 2, !dbg !4514
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !4514
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4514

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 360, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4514
  br label %cond.end, !dbg !4514

cond.end:                                         ; preds = %entry, %cond.true
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 2, !dbg !4515
  %2 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !4515
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %2, metadata !4509, metadata !DIExpression()), !dbg !4511
  br label %for.cond, !dbg !4517

for.cond:                                         ; preds = %for.inc, %cond.end
  %e.0 = phi %struct.cgraph_edge* [ %2, %cond.end ], [ %3, %for.inc ], !dbg !4518
  %edge.addr.0 = phi %struct.cgraph_edge* [ %edge, %cond.end ], [ %edge.addr.2, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.addr.0, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4509, metadata !DIExpression()), !dbg !4511
  %tobool1 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4519
  br i1 %tobool1, label %for.end, label %for.body, !dbg !4519

for.body:                                         ; preds = %for.cond
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !4520
  %3 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !4520
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %3, metadata !4510, metadata !DIExpression()), !dbg !4511
  %caller2 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 1, !dbg !4523
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %caller2, align 8, !dbg !4523
  %cmp = icmp eq %struct.cgraph_node* %4, %0, !dbg !4525
  br i1 %cmp, label %land.lhs.true, label %for.inc, !dbg !4526

land.lhs.true:                                    ; preds = %for.body
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !4527
  %5 = load i32, i32* %inline_failed, align 8, !dbg !4527
  %tobool3 = icmp eq i32 %5, 0, !dbg !4528
  br i1 %tobool3, label %for.inc, label %if.then, !dbg !4529

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(%struct.cgraph_edge* nonnull %e.0, i8 zeroext 1, %struct.VEC_cgraph_edge_p_heap** null) #7, !dbg !4530
  %cmp4 = icmp eq %struct.cgraph_edge* %e.0, %edge.addr.0, !dbg !4532
  %spec.select = select i1 %cmp4, %struct.cgraph_edge* %3, %struct.cgraph_edge* %edge.addr.0, !dbg !4534
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %spec.select, metadata !4506, metadata !DIExpression()), !dbg !4511
  br label %for.inc, !dbg !4535

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  %edge.addr.2 = phi %struct.cgraph_edge* [ %spec.select, %if.then ], [ %edge.addr.0, %land.lhs.true ], [ %edge.addr.0, %for.body ]
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.addr.2, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %3, metadata !4509, metadata !DIExpression()), !dbg !4511
  br label %for.cond, !dbg !4536, !llvm.loop !4537

for.end:                                          ; preds = %for.cond
  %edge.addr.0.lcssa = phi %struct.cgraph_edge* [ %edge.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.addr.0.lcssa, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.addr.0.lcssa, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.addr.0.lcssa, metadata !4506, metadata !DIExpression()), !dbg !4511
  ret %struct.cgraph_edge* %edge.addr.0.lcssa, !dbg !4539
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_mark_inline_edge(%struct.cgraph_edge* %e, i8 zeroext %update_original, %struct.VEC_cgraph_edge_p_heap** %new_edges) unnamed_addr #5 !dbg !4540 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4545, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i8 %update_original, metadata !4546, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap** %new_edges, metadata !4547, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4548, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* null, metadata !4550, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4552, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i8 0, metadata !4554, metadata !DIExpression()), !dbg !4556
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !4557
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4557
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 19, i32 4, !dbg !4558
  %1 = load i32, i32* %size, align 4, !dbg !4558
  call void @llvm.dbg.value(metadata i32 %1, metadata !4555, metadata !DIExpression()), !dbg !4556
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4559
  %2 = load i32, i32* %inline_failed, align 8, !dbg !4559
  %tobool = icmp eq i32 %2, 0, !dbg !4559
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4559

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4559
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4560
  br label %cond.end, !dbg !4559

cond.end:                                         ; preds = %entry, %cond.true
  %.in = phi %struct.cgraph_node* [ %0, %entry ], [ %.pre, %cond.true ]
  %3 = phi %struct.cgraph_node* [ %0, %entry ], [ %.pre, %cond.true ], !dbg !4560
  store i32 0, i32* %inline_failed, align 8, !dbg !4562
  %inlined = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %3, i64 0, i32 19, i32 6, !dbg !4563
  %4 = load i8, i8* %inlined, align 4, !dbg !4563
  %tobool4 = icmp eq i8 %4, 0, !dbg !4564
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4565

if.then:                                          ; preds = %cond.end
  %5 = bitcast %struct.cgraph_node* %.in to %struct.tree_function_decl**, !dbg !4559
  %6 = load %struct.tree_function_decl*, %struct.tree_function_decl** %5, align 8, !dbg !4566
  %possibly_inlined = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %6, i64 0, i32 5, !dbg !4566
  %bf.load = load i32, i32* %possibly_inlined, align 8, !dbg !4567
  %bf.set = or i32 %bf.load, 65536, !dbg !4567
  store i32 %bf.set, i32* %possibly_inlined, align 8, !dbg !4567
  %.pre1 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4568
  br label %if.end, !dbg !4566

if.end:                                           ; preds = %cond.end, %if.then
  %7 = phi %struct.cgraph_node* [ %3, %cond.end ], [ %.pre1, %if.then ], !dbg !4568
  %inlined8 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 19, i32 6, !dbg !4569
  store i8 1, i8* %inlined8, align 4, !dbg !4570
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4571
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 2, !dbg !4573
  %9 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !4573
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %9, i64 0, i32 4, !dbg !4574
  %10 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !4574
  %tobool10 = icmp eq %struct.cgraph_edge* %10, null, !dbg !4575
  br i1 %tobool10, label %lor.lhs.false, label %if.then16, !dbg !4576

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(%struct.cgraph_node* %8) #7, !dbg !4577
  %tobool12 = icmp eq i8 %call, 0, !dbg !4577
  br i1 %tobool12, label %if.then16, label %lor.lhs.false13, !dbg !4578

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4579
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %11, i64 0, i32 14, !dbg !4580
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !4580
  %tobool15 = icmp eq %struct.cgraph_node* %12, null, !dbg !4581
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4582

if.then16:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %if.end
  call void @llvm.dbg.value(metadata i8 1, metadata !4554, metadata !DIExpression()), !dbg !4556
  br label %if.end17, !dbg !4583

if.end17:                                         ; preds = %lor.lhs.false13, %if.then16
  %duplicate.0 = phi i8 [ 1, %if.then16 ], [ 0, %lor.lhs.false13 ], !dbg !4556
  call void @llvm.dbg.value(metadata i8 %duplicate.0, metadata !4554, metadata !DIExpression()), !dbg !4556
  tail call void @cgraph_clone_inlined_nodes(%struct.cgraph_edge* %e, i8 zeroext 1, i8 zeroext %update_original) #7, !dbg !4584
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4585
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %13, metadata !4551, metadata !DIExpression()), !dbg !4556
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 11, !dbg !4586
  %14 = load i32, i32* %frequency, align 8, !dbg !4586
  call void @llvm.dbg.value(metadata i32 %14, metadata !4553, metadata !DIExpression()), !dbg !4556
  br label %for.cond, !dbg !4587

for.cond:                                         ; preds = %for.body, %if.end17
  %to.0 = phi %struct.cgraph_node* [ null, %if.end17 ], [ %16, %for.body ], !dbg !4556
  %new_size.0 = phi i32 [ 0, %if.end17 ], [ %call25, %for.body ], !dbg !4556
  %old_size.0 = phi i32 [ 0, %if.end17 ], [ %17, %for.body ], !dbg !4556
  %e.addr.0 = phi %struct.cgraph_edge* [ %e, %if.end17 ], [ %19, %for.body ]
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.addr.0, metadata !4545, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %old_size.0, metadata !4548, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %new_size.0, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.0, metadata !4550, metadata !DIExpression()), !dbg !4556
  %tobool19 = icmp eq %struct.cgraph_edge* %e.addr.0, null, !dbg !4588
  br i1 %tobool19, label %for.end, label %land.rhs, !dbg !4591

land.rhs:                                         ; preds = %for.cond
  %inline_failed20 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.addr.0, i64 0, i32 9, !dbg !4592
  %15 = load i32, i32* %inline_failed20, align 8, !dbg !4592
  %tobool21 = icmp eq i32 %15, 0, !dbg !4593
  br i1 %tobool21, label %for.body, label %for.end, !dbg !4594

for.body:                                         ; preds = %land.rhs
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.addr.0, i64 0, i32 1, !dbg !4595
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4595
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %16, metadata !4550, metadata !DIExpression()), !dbg !4556
  %size24 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i64 0, i32 19, i32 4, !dbg !4597
  %17 = load i32, i32* %size24, align 4, !dbg !4597
  call void @llvm.dbg.value(metadata i32 %17, metadata !4548, metadata !DIExpression()), !dbg !4556
  %call25 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %16, %struct.cgraph_node* %13) #7, !dbg !4598
  call void @llvm.dbg.value(metadata i32 %call25, metadata !4549, metadata !DIExpression()), !dbg !4556
  store i32 %call25, i32* %size24, align 4, !dbg !4599
  %call28 = tail call fastcc i32 @cgraph_estimate_time_after_inlining(i32 %14, %struct.cgraph_node* %16, %struct.cgraph_node* %13) #7, !dbg !4600
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i64 0, i32 19, i32 3, !dbg !4601
  store i32 %call28, i32* %time, align 8, !dbg !4602
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4603
  %callers31 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i64 0, i32 2, !dbg !4604
  %19 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers31, align 8, !dbg !4604
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %19, metadata !4545, metadata !DIExpression()), !dbg !4556
  br label %for.cond, !dbg !4605, !llvm.loop !4606

for.end:                                          ; preds = %for.cond, %land.rhs
  %to.0.lcssa = phi %struct.cgraph_node* [ %to.0, %for.cond ], [ %to.0, %land.rhs ], !dbg !4556
  %new_size.0.lcssa = phi i32 [ %new_size.0, %for.cond ], [ %new_size.0, %land.rhs ], !dbg !4556
  %old_size.0.lcssa = phi i32 [ %old_size.0, %for.cond ], [ %old_size.0, %land.rhs ], !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %new_size.0.lcssa, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %new_size.0.lcssa, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %old_size.0.lcssa, metadata !4548, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %old_size.0.lcssa, metadata !4548, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %new_size.0.lcssa, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %new_size.0.lcssa, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %old_size.0.lcssa, metadata !4548, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %old_size.0.lcssa, metadata !4548, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %new_size.0.lcssa, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %new_size.0.lcssa, metadata !4549, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %old_size.0.lcssa, metadata !4548, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 %old_size.0.lcssa, metadata !4548, metadata !DIExpression()), !dbg !4556
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 19, i32 2, !dbg !4608
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4608
  %cmp = icmp eq %struct.cgraph_node* %20, %to.0.lcssa, !dbg !4608
  br i1 %cmp, label %cond.end35, label %cond.true33, !dbg !4608

cond.true33:                                      ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 336, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4608
  br label %cond.end35, !dbg !4608

cond.end35:                                       ; preds = %for.end, %cond.true33
  %cmp37 = icmp sgt i32 %new_size.0.lcssa, %old_size.0.lcssa, !dbg !4609
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !4611

if.then38:                                        ; preds = %cond.end35
  %sub = sub nsw i32 %new_size.0.lcssa, %old_size.0.lcssa, !dbg !4612
  %21 = load i32, i32* @overall_size, align 4, !dbg !4613
  %add = add nsw i32 %21, %sub, !dbg !4613
  store i32 %add, i32* @overall_size, align 4, !dbg !4613
  br label %if.end39, !dbg !4614

if.end39:                                         ; preds = %if.then38, %cond.end35
  %tobool40 = icmp eq i8 %duplicate.0, 0, !dbg !4615
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !4617

if.then41:                                        ; preds = %if.end39
  %22 = load i32, i32* @overall_size, align 4, !dbg !4618
  %sub42 = sub nsw i32 %22, %1, !dbg !4618
  store i32 %sub42, i32* @overall_size, align 4, !dbg !4618
  br label %if.end43, !dbg !4619

if.end43:                                         ; preds = %if.end39, %if.then41
  %23 = load i32, i32* @ncalls_inlined, align 4, !dbg !4620
  %inc = add nsw i32 %23, 1, !dbg !4620
  store i32 %inc, i32* @ncalls_inlined, align 4, !dbg !4620
  %24 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !4621
  %tobool44 = icmp eq i32 %24, 0, !dbg !4621
  br i1 %tobool44, label %cleanup, label %if.then45, !dbg !4623

if.then45:                                        ; preds = %if.end43
  %call46 = tail call zeroext i8 @ipa_propagate_indirect_call_infos(%struct.cgraph_edge* %e, %struct.VEC_cgraph_edge_p_heap** %new_edges) #6, !dbg !4624
  br label %cleanup, !dbg !4625

cleanup:                                          ; preds = %if.end43, %if.then45
  %retval.0 = phi i8 [ %call46, %if.then45 ], [ 0, %if.end43 ], !dbg !4626
  ret i8 %retval.0, !dbg !4627
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cgraph_estimate_time_after_inlining(i32 %frequency, %struct.cgraph_node* %to, %struct.cgraph_node* %what) unnamed_addr #5 !dbg !4628 {
entry:
  call void @llvm.dbg.value(metadata i32 %frequency, metadata !4630, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %to, metadata !4631, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %what, metadata !4632, metadata !DIExpression()), !dbg !4634
  %time1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %what, i64 0, i32 19, i32 3, !dbg !4635
  %0 = load i32, i32* %time1, align 8, !dbg !4635
  %conv = sext i32 %0 to i64, !dbg !4636
  %call = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %what) #7, !dbg !4637
  %time_inlining_benefit = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call, i64 0, i32 4, !dbg !4638
  %1 = load i32, i32* %time_inlining_benefit, align 4, !dbg !4638
  %conv2 = sext i32 %1 to i64, !dbg !4637
  %sub = sub nsw i64 %conv, %conv2, !dbg !4639
  %conv3 = sext i32 %frequency to i64, !dbg !4640
  %mul = mul nsw i64 %sub, %conv3, !dbg !4641
  %add = add nsw i64 %mul, 500, !dbg !4642
  %div = sdiv i64 %add, 1000, !dbg !4643
  %time5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %to, i64 0, i32 19, i32 3, !dbg !4644
  %2 = load i32, i32* %time5, align 8, !dbg !4644
  %conv6 = sext i32 %2 to i64, !dbg !4645
  %add7 = add nsw i64 %div, %conv6, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %add7, metadata !4633, metadata !DIExpression()), !dbg !4634
  %3 = icmp sgt i64 %add7, 0, !dbg !4647
  %spec.select = select i1 %3, i64 %add7, i64 0, !dbg !4647
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !4633, metadata !DIExpression()), !dbg !4634
  %4 = icmp slt i64 %spec.select, 1000000000, !dbg !4648
  %time.1 = select i1 %4, i64 %spec.select, i64 1000000000, !dbg !4648
  call void @llvm.dbg.value(metadata i64 %time.1, metadata !4633, metadata !DIExpression()), !dbg !4634
  %conv13 = trunc i64 %time.1 to i32, !dbg !4649
  ret i32 %conv13, !dbg !4650
}

declare dso_local zeroext i8 @ipa_propagate_indirect_call_infos(%struct.cgraph_edge*, %struct.VEC_cgraph_edge_p_heap**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !4651 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4653, metadata !DIExpression()), !dbg !4654
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4655
  %bf.load = load i16, i16* %needed, align 4, !dbg !4655
  %bf.clear = and i16 %bf.load, 1, !dbg !4655
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !4656
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4657

land.rhs:                                         ; preds = %entry
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !4658
  %bf.load1 = load i8, i8* %externally_visible, align 8, !dbg !4658
  %bf.clear2 = lshr i8 %bf.load1, 1
  %bf.clear2.lobit = and i8 %bf.clear2, 1
  %0 = xor i8 %bf.clear2.lobit, 1
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i8 [ 0, %entry ], [ %0, %land.rhs ]
  ret i8 %1, !dbg !4659
}

declare dso_local i32 @compute_call_stmt_bb_frequency(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4660 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4664, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4665, metadata !DIExpression()), !dbg !4668
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4669
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4666, metadata !DIExpression()), !dbg !4667
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4670
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4671
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4672
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4673
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4674
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4675
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4676
  ret void, !dbg !4677
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4678 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4682, metadata !DIExpression()), !dbg !4683
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4684
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4684
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !4685
  %conv1 = zext i1 %cmp to i8, !dbg !4686
  ret i8 %conv1, !dbg !4687
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4688 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4692, metadata !DIExpression()), !dbg !4693
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4694
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4694
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !4695
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4695
  ret %union.gimple_statement_d* %1, !dbg !4696
}

declare dso_local i32 @estimate_num_insns(%union.gimple_statement_d*, %struct.eni_weights_d*) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @likely_eliminated_by_inlining_p(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !4697 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4701, metadata !DIExpression()), !dbg !4712
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4713
  call void @llvm.dbg.value(metadata i32 %call, metadata !4702, metadata !DIExpression()), !dbg !4712
  switch i32 %call, label %sw.default [
    i32 9, label %cleanup160
    i32 6, label %sw.bb1
  ], !dbg !4714

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %stmt) #7, !dbg !4715
  %cmp = icmp eq i32 %call2, 2, !dbg !4717
  br i1 %cmp, label %if.end, label %cleanup160, !dbg !4718

if.end:                                           ; preds = %sw.bb1
  %call3 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !4719
  %cmp4 = icmp eq i32 %call3, 113, !dbg !4720
  br i1 %cmp4, label %if.then13, label %lor.lhs.false, !dbg !4721

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !4722
  %cmp6 = icmp eq i32 %call5, 116, !dbg !4723
  br i1 %cmp6, label %if.then13, label %lor.lhs.false7, !dbg !4724

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !4725
  %cmp9 = icmp eq i32 %call8, 118, !dbg !4726
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10, !dbg !4727

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = tail call fastcc i32 @gimple_assign_rhs_class(%union.gimple_statement_d* %stmt) #7, !dbg !4728
  %cmp12 = icmp eq i32 %call11, 3, !dbg !4729
  br i1 %cmp12, label %if.then13, label %if.end159, !dbg !4730

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false, %if.end
  %call14 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !4731
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !4703, metadata !DIExpression()), !dbg !4732
  %call15 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !4733
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !4707, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !4708, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !4709, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i8 0, metadata !4710, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i8 0, metadata !4711, metadata !DIExpression()), !dbg !4732
  br label %while.cond, !dbg !4734

while.cond:                                       ; preds = %while.body, %if.then13
  %inner_lhs.0 = phi %union.tree_node* [ %call15, %if.then13 ], [ %1, %while.body ], !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_lhs.0, metadata !4709, metadata !DIExpression()), !dbg !4732
  %call16 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %inner_lhs.0) #7, !dbg !4735
  %tobool = icmp eq i8 %call16, 0, !dbg !4735
  br i1 %tobool, label %lor.rhs, label %while.body, !dbg !4736

lor.rhs:                                          ; preds = %while.cond
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4737
  %bf.load = load i64, i64* %0, align 8, !dbg !4737
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !4738
  %cmp17 = icmp eq i64 %bf.cast3, 47, !dbg !4738
  br i1 %cmp17, label %while.body, label %while.cond19.preheader, !dbg !4734

while.cond19.preheader:                           ; preds = %lor.rhs
  %.lcssa = phi i64* [ %0, %lor.rhs ], !dbg !4737
  %inner_lhs.0.lcssa = phi %union.tree_node* [ %inner_lhs.0, %lor.rhs ], !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_lhs.0.lcssa, metadata !4709, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_lhs.0.lcssa, metadata !4709, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_lhs.0.lcssa, metadata !4709, metadata !DIExpression()), !dbg !4732
  br label %while.cond19, !dbg !4739

while.body:                                       ; preds = %while.cond, %lor.rhs
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4740
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4740
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !4709, metadata !DIExpression()), !dbg !4732
  br label %while.cond, !dbg !4734, !llvm.loop !4741

while.cond19:                                     ; preds = %while.cond19.preheader, %while.body38
  %inner_rhs.0 = phi %union.tree_node* [ %3, %while.body38 ], [ %call14, %while.cond19.preheader ], !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_rhs.0, metadata !4708, metadata !DIExpression()), !dbg !4732
  %call20 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %inner_rhs.0) #7, !dbg !4742
  %tobool22 = icmp eq i8 %call20, 0, !dbg !4742
  br i1 %tobool22, label %lor.lhs.false23, label %while.body38, !dbg !4743

lor.lhs.false23:                                  ; preds = %while.cond19
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_rhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4744
  %bf.load25 = load i64, i64* %2, align 8, !dbg !4744
  %bf.cast274 = and i64 %bf.load25, 65535, !dbg !4745
  %cmp28 = icmp eq i64 %bf.cast274, 121, !dbg !4745
  %cmp35 = icmp eq i64 %bf.cast274, 47, !dbg !4746
  %or.cond17 = or i1 %cmp28, %cmp35, !dbg !4747
  br i1 %or.cond17, label %while.body38, label %while.end42, !dbg !4747

while.body38:                                     ; preds = %while.cond19, %lor.lhs.false23
  %operands40 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_rhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4748
  %3 = load %union.tree_node*, %union.tree_node** %operands40, align 8, !dbg !4748
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !4708, metadata !DIExpression()), !dbg !4732
  br label %while.cond19, !dbg !4739, !llvm.loop !4749

while.end42:                                      ; preds = %lor.lhs.false23
  %bf.load25.lcssa = phi i64 [ %bf.load25, %lor.lhs.false23 ], !dbg !4744
  %bf.cast274.lcssa = phi i64 [ %bf.cast274, %lor.lhs.false23 ], !dbg !4745
  %inner_rhs.0.lcssa = phi %union.tree_node* [ %inner_rhs.0, %lor.lhs.false23 ], !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_rhs.0.lcssa, metadata !4708, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_rhs.0.lcssa, metadata !4708, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_rhs.0.lcssa, metadata !4708, metadata !DIExpression()), !dbg !4732
  %cmp47 = icmp eq i64 %bf.cast274.lcssa, 34, !dbg !4750
  br i1 %cmp47, label %if.then68, label %lor.lhs.false49, !dbg !4752

lor.lhs.false49:                                  ; preds = %while.end42
  %cmp54 = icmp eq i64 %bf.cast274.lcssa, 141, !dbg !4753
  br i1 %cmp54, label %land.lhs.true, label %if.end69, !dbg !4754

land.lhs.true:                                    ; preds = %lor.lhs.false49
  %bf.cast5915 = and i64 %bf.load25.lcssa, 4294967296, !dbg !4755
  %tobool60 = icmp eq i64 %bf.cast5915, 0, !dbg !4755
  br i1 %tobool60, label %if.end69, label %land.lhs.true61, !dbg !4756

land.lhs.true61:                                  ; preds = %land.lhs.true
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_rhs.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4757
  %4 = bitcast i32* %var to i64**, !dbg !4757
  %5 = load i64*, i64** %4, align 8, !dbg !4757
  %bf.load63 = load i64, i64* %5, align 8, !dbg !4757
  %bf.cast6516 = and i64 %bf.load63, 65535, !dbg !4758
  %cmp66 = icmp eq i64 %bf.cast6516, 34, !dbg !4758
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !4759

if.then68:                                        ; preds = %land.lhs.true61, %while.end42
  call void @llvm.dbg.value(metadata i8 1, metadata !4710, metadata !DIExpression()), !dbg !4732
  br label %if.end69, !dbg !4760

if.end69:                                         ; preds = %land.lhs.true, %if.then68, %land.lhs.true61, %lor.lhs.false49
  %rhs_free.0 = phi i8 [ 1, %if.then68 ], [ 0, %land.lhs.true61 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false49 ], !dbg !4732
  call void @llvm.dbg.value(metadata i8 %rhs_free.0, metadata !4710, metadata !DIExpression()), !dbg !4732
  %tobool71 = icmp eq i8 %rhs_free.0, 0, !dbg !4761
  br i1 %tobool71, label %if.end77, label %land.lhs.true72, !dbg !4763

land.lhs.true72:                                  ; preds = %if.end69
  %call73 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call15) #6, !dbg !4764
  %tobool75 = icmp ne i8 %call73, 0, !dbg !4764
  %spec.select = zext i1 %tobool75 to i8, !dbg !4765
  br label %if.end77, !dbg !4765

if.end77:                                         ; preds = %if.end69, %land.lhs.true72
  %lhs_free.0 = phi i8 [ 0, %if.end69 ], [ %spec.select, %land.lhs.true72 ], !dbg !4732
  call void @llvm.dbg.value(metadata i8 %lhs_free.0, metadata !4711, metadata !DIExpression()), !dbg !4732
  %bf.load79 = load i64, i64* %.lcssa, align 8, !dbg !4766
  %bf.cast818 = and i64 %bf.load79, 65535, !dbg !4768
  %cmp82 = icmp eq i64 %bf.cast818, 34, !dbg !4768
  br i1 %cmp82, label %land.lhs.true107, label %lor.lhs.false84, !dbg !4769

lor.lhs.false84:                                  ; preds = %if.end77
  %cmp89 = icmp eq i64 %bf.cast818, 141, !dbg !4770
  br i1 %cmp89, label %land.lhs.true91, label %lor.lhs.false110, !dbg !4771

land.lhs.true91:                                  ; preds = %lor.lhs.false84
  %bf.cast9613 = and i64 %bf.load79, 4294967296, !dbg !4772
  %tobool97 = icmp eq i64 %bf.cast9613, 0, !dbg !4772
  br i1 %tobool97, label %lor.lhs.false110, label %land.lhs.true98, !dbg !4773

land.lhs.true98:                                  ; preds = %land.lhs.true91
  %var100 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_lhs.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4774
  %6 = bitcast i32* %var100 to i64**, !dbg !4774
  %7 = load i64*, i64** %6, align 8, !dbg !4774
  %bf.load102 = load i64, i64* %7, align 8, !dbg !4774
  %bf.cast10414 = and i64 %bf.load102, 65535, !dbg !4775
  %cmp105 = icmp eq i64 %bf.cast10414, 34, !dbg !4775
  %cmp108 = icmp ne %union.tree_node* %inner_lhs.0.lcssa, %call15, !dbg !4776
  %or.cond = and i1 %cmp105, %cmp108, !dbg !4777
  br i1 %or.cond, label %if.then133, label %lor.lhs.false110, !dbg !4777

land.lhs.true107:                                 ; preds = %if.end77
  %cmp108.old = icmp eq %union.tree_node* %inner_lhs.0.lcssa, %call15, !dbg !4776
  br i1 %cmp108.old, label %lor.lhs.false110, label %if.then133, !dbg !4778

lor.lhs.false110:                                 ; preds = %land.lhs.true107, %land.lhs.true91, %land.lhs.true98, %lor.lhs.false84
  %cmp115 = icmp eq i64 %bf.cast818, 36, !dbg !4779
  br i1 %cmp115, label %if.then133, label %lor.lhs.false117, !dbg !4780

lor.lhs.false117:                                 ; preds = %lor.lhs.false110
  %cmp122 = icmp eq i64 %bf.cast818, 141, !dbg !4781
  br i1 %cmp122, label %land.lhs.true124, label %if.end134, !dbg !4782

land.lhs.true124:                                 ; preds = %lor.lhs.false117
  %var126 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_lhs.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4783
  %8 = bitcast i32* %var126 to i64**, !dbg !4783
  %9 = load i64*, i64** %8, align 8, !dbg !4783
  %bf.load128 = load i64, i64* %9, align 8, !dbg !4783
  %bf.cast13012 = and i64 %bf.load128, 65535, !dbg !4784
  %cmp131 = icmp eq i64 %bf.cast13012, 36, !dbg !4784
  br i1 %cmp131, label %if.then133, label %if.end134, !dbg !4785

if.then133:                                       ; preds = %land.lhs.true107, %land.lhs.true98, %land.lhs.true124, %lor.lhs.false110
  call void @llvm.dbg.value(metadata i8 1, metadata !4711, metadata !DIExpression()), !dbg !4732
  br label %if.end134, !dbg !4786

if.end134:                                        ; preds = %if.then133, %land.lhs.true124, %lor.lhs.false117
  %lhs_free.1 = phi i8 [ 1, %if.then133 ], [ %lhs_free.0, %land.lhs.true124 ], [ %lhs_free.0, %lor.lhs.false117 ], !dbg !4732
  call void @llvm.dbg.value(metadata i8 %lhs_free.1, metadata !4711, metadata !DIExpression()), !dbg !4732
  %tobool136 = icmp eq i8 %lhs_free.1, 0, !dbg !4787
  br i1 %tobool136, label %if.end146, label %land.lhs.true137, !dbg !4789

land.lhs.true137:                                 ; preds = %if.end134
  %call138 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call14) #6, !dbg !4790
  %tobool140 = icmp eq i8 %call138, 0, !dbg !4790
  br i1 %tobool140, label %lor.lhs.false141, label %if.then145, !dbg !4791

lor.lhs.false141:                                 ; preds = %land.lhs.true137
  %call142 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call14) #6, !dbg !4792
  %tobool144 = icmp eq i8 %call142, 0, !dbg !4792
  br i1 %tobool144, label %if.end146, label %if.then145, !dbg !4793

if.then145:                                       ; preds = %lor.lhs.false141, %land.lhs.true137
  call void @llvm.dbg.value(metadata i8 1, metadata !4710, metadata !DIExpression()), !dbg !4732
  br label %if.end146, !dbg !4794

if.end146:                                        ; preds = %lor.lhs.false141, %if.end134, %if.then145
  %rhs_free.1 = phi i8 [ 1, %if.then145 ], [ %rhs_free.0, %lor.lhs.false141 ], [ %rhs_free.0, %if.end134 ], !dbg !4732
  call void @llvm.dbg.value(metadata i8 %rhs_free.1, metadata !4710, metadata !DIExpression()), !dbg !4732
  %tobool151 = icmp eq i8 %rhs_free.1, 0, !dbg !4795
  %cond = or i1 %tobool151, %tobool136
  br i1 %cond, label %if.end159, label %cleanup160

if.end159:                                        ; preds = %if.end146, %lor.lhs.false10
  br label %cleanup160, !dbg !4797

sw.default:                                       ; preds = %entry
  br label %cleanup160, !dbg !4798

cleanup160:                                       ; preds = %sw.bb1, %entry, %if.end146, %sw.default, %if.end159
  %retval.1 = phi i8 [ 0, %sw.default ], [ 1, %if.end146 ], [ 0, %if.end159 ], [ 1, %entry ], [ 0, %sw.bb1 ], !dbg !4799
  ret i8 %retval.1, !dbg !4800
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4801 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4806, metadata !DIExpression()), !dbg !4807
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4808
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4808
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !4809
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !4809
  %2 = load i64, i64* %1, align 8, !dbg !4809
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4810
  store i64 %2, i64* %3, align 8, !dbg !4810
  ret void, !dbg !4811
}

declare dso_local i32 @estimate_move_cost(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4812 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4819, metadata !DIExpression()), !dbg !4820
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4821
  %0 = load i32, i32* %flags, align 8, !dbg !4821
  %and = and i32 %0, 512, !dbg !4822
  %tobool = icmp eq i32 %and, 0, !dbg !4822
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4823

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4824
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4824
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4825
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4826

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4827
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4827
  br label %cond.end, !dbg !4826

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4826
  ret %struct.gimple_seq_d* %cond, !dbg !4828
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4829 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4836, metadata !DIExpression()), !dbg !4837
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4838
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4838

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4839
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4839
  br label %cond.end, !dbg !4838

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4838
  ret %struct.gimple_seq_node_d* %cond, !dbg !4840
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4841 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4847
  %bf.load = load i32, i32* %0, align 8, !dbg !4847
  %bf.clear = and i32 %bf.load, 255, !dbg !4847
  ret i32 %bf.clear, !dbg !4848
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4849 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4853, metadata !DIExpression()), !dbg !4854
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4855
  %0 = load i32, i32* %num_ops, align 4, !dbg !4855
  ret i32 %0, !dbg !4856
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4857 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4861, metadata !DIExpression()), !dbg !4863
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !4864
  call void @llvm.dbg.value(metadata i32 %call, metadata !4862, metadata !DIExpression()), !dbg !4863
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !4865
  %cmp = icmp eq i32 %call1, 3, !dbg !4867
  br i1 %cmp, label %if.then, label %if.end, !dbg !4868

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !4869
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4869
  %bf.load = load i64, i64* %0, align 8, !dbg !4869
  %1 = trunc i64 %bf.load to i32, !dbg !4869
  %bf.cast = and i32 %1, 65535, !dbg !4869
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !4862, metadata !DIExpression()), !dbg !4863
  br label %if.end, !dbg !4870

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !4863
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !4862, metadata !DIExpression()), !dbg !4863
  ret i32 %code.0, !dbg !4871
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_class(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4872 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4876, metadata !DIExpression()), !dbg !4877
  %call = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) #7, !dbg !4878
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !4879
  ret i32 %call1, !dbg !4880
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4881 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4885, metadata !DIExpression()), !dbg !4886
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4887
  ret %union.tree_node* %call, !dbg !4888
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4889 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4891, metadata !DIExpression()), !dbg !4892
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !4893
  ret %union.tree_node* %call, !dbg !4894
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !4895 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4902, metadata !DIExpression()), !dbg !4903
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4904
  %bf.load = load i64, i64* %0, align 8, !dbg !4904
  %1 = trunc i64 %bf.load to i16, !dbg !4904
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !4905

sw.default:                                       ; preds = %entry
  br label %return, !dbg !4906

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !4908
  ret i8 %retval.0, !dbg !4909
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4910 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4912, metadata !DIExpression()), !dbg !4914
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4915
  call void @llvm.dbg.value(metadata i32 %call, metadata !4913, metadata !DIExpression()), !dbg !4914
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4916

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4918
  %bf.load = load i32, i32* %0, align 8, !dbg !4918
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4918
  br label %cleanup, !dbg !4919

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4920
  br label %cleanup, !dbg !4922

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !4914
  ret i32 %retval.0, !dbg !4923
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !4924 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4928, metadata !DIExpression()), !dbg !4929
  %idxprom = sext i32 %code to i64, !dbg !4930
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !4930
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4930
  %conv = zext i8 %0 to i32, !dbg !4931
  ret i32 %conv, !dbg !4932
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4933 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4937, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 %i, metadata !4938, metadata !DIExpression()), !dbg !4939
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4940
  %tobool = icmp eq i8 %call, 0, !dbg !4940
  br i1 %tobool, label %return, label %if.then, !dbg !4942

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4943
  %idxprom = zext i32 %i to i64, !dbg !4943
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4943
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4943
  br label %return, !dbg !4945

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4946
  ret %union.tree_node* %retval.0, !dbg !4947
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4948 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4952, metadata !DIExpression()), !dbg !4953
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4954
  %cmp = icmp eq i32 %call, 0, !dbg !4955
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4956

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4957
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4958
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4959
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4960 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4964, metadata !DIExpression()), !dbg !4966
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4967
  %idxprom = zext i32 %call to i64, !dbg !4968
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4968
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4968
  call void @llvm.dbg.value(metadata i64 %0, metadata !4965, metadata !DIExpression()), !dbg !4966
  %cmp = icmp eq i64 %0, 0, !dbg !4969
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4969

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4969
  br label %cond.end, !dbg !4969

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4970
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4971
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4972
  ret %union.tree_node** %2, !dbg !4973
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4974 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4978, metadata !DIExpression()), !dbg !4979
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4980
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4981
  ret i32 %call1, !dbg !4982
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4983 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4987, metadata !DIExpression()), !dbg !4988
  %idxprom = zext i32 %code to i64, !dbg !4989
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4989
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4989
  ret i32 %0, !dbg !4990
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local void @cgraph_remove_function_insertion_hook(%struct.cgraph_node_hook_list*) local_unnamed_addr #2

declare dso_local void @ipa_update_after_lto_read() local_unnamed_addr #2

declare dso_local i32 @cgraph_postorder(%struct.cgraph_node**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_decide_inlining_of_small_functions() unnamed_addr #5 !dbg !4991 {
entry:
  %failed_reason = alloca i32, align 4
  %new_indirect_edges = alloca %struct.VEC_cgraph_edge_p_heap*, align 8
  %0 = bitcast i32* %failed_reason to i8*, !dbg !5009
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !5009
  %call = tail call %struct.fibheap* @fibheap_new() #6, !dbg !5010
  call void @llvm.dbg.value(metadata %struct.fibheap* %call, metadata !4996, metadata !DIExpression()), !dbg !5011
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !5012
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !4997, metadata !DIExpression()), !dbg !5011
  %1 = bitcast %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges to i8*, !dbg !5013
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5013
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* null, metadata !5000, metadata !DIExpression()), !dbg !5011
  store %struct.VEC_cgraph_edge_p_heap* null, %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, align 8, !dbg !5014
  %2 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !5015
  %tobool = icmp eq i32 %2, 0, !dbg !5015
  br i1 %tobool, label %if.end, label %if.then, !dbg !5017

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %struct.VEC_cgraph_edge_p_heap* @VEC_cgraph_edge_p_heap_alloc(i32 8) #7, !dbg !5018
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %call2, metadata !5000, metadata !DIExpression()), !dbg !5011
  store %struct.VEC_cgraph_edge_p_heap* %call2, %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, align 8, !dbg !5019
  br label %if.end, !dbg !5020

if.end:                                           ; preds = %entry, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5021
  %tobool3 = icmp eq %struct._IO_FILE* %3, null, !dbg !5021
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !5023

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !5024
  br label %if.end6, !dbg !5024

if.end6:                                          ; preds = %if.end, %if.then4
  br label %for.cond, !dbg !5025

for.cond:                                         ; preds = %for.inc39, %if.end6
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end6 ], [ %next, %for.inc39 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !5027
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4993, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* null, metadata !4994, metadata !DIExpression()), !dbg !5011
  %tobool7 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !5028
  br i1 %tobool7, label %for.end40, label %for.body, !dbg !5028

for.body:                                         ; preds = %for.cond
  %inlinable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 2, !dbg !5029
  %bf.load = load i8, i8* %inlinable, align 8, !dbg !5029
  %bf.clear = and i8 %bf.load, 8, !dbg !5029
  %tobool8 = icmp eq i8 %bf.clear, 0, !dbg !5033
  br i1 %tobool8, label %for.inc39, label %lor.lhs.false, !dbg !5034

lor.lhs.false:                                    ; preds = %for.body
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 2, !dbg !5035
  %4 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !5035
  %tobool9 = icmp eq %struct.cgraph_edge* %4, null, !dbg !5036
  br i1 %tobool9, label %for.inc39, label %lor.lhs.false10, !dbg !5037

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %bf.clear14 = and i8 %bf.load, 16, !dbg !5038
  %tobool16 = icmp eq i8 %bf.clear14, 0, !dbg !5039
  br i1 %tobool16, label %if.end18, label %for.inc39, !dbg !5040

if.end18:                                         ; preds = %lor.lhs.false10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5041
  %tobool19 = icmp eq %struct._IO_FILE* %5, null, !dbg !5041
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !5043

if.then20:                                        ; preds = %if.end18
  %call21 = call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.0) #6, !dbg !5044
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %call21) #6, !dbg !5045
  br label %if.end23, !dbg !5045

if.end23:                                         ; preds = %if.end18, %if.then20
  %estimated_growth = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 5, !dbg !5046
  store i32 -2147483648, i32* %estimated_growth, align 8, !dbg !5047
  call void @llvm.dbg.value(metadata i32* %failed_reason, metadata !4995, metadata !DIExpression(DW_OP_deref)), !dbg !5011
  %call24 = call fastcc zeroext i8 @cgraph_default_inline_p(%struct.cgraph_node* nonnull %node.0, i32* nonnull %failed_reason) #7, !dbg !5048
  %tobool25 = icmp eq i8 %call24, 0, !dbg !5048
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5050

if.then26:                                        ; preds = %if.end23
  %6 = load i32, i32* %failed_reason, align 4, !dbg !5051
  call void @llvm.dbg.value(metadata i32 %6, metadata !4995, metadata !DIExpression()), !dbg !5011
  call fastcc void @cgraph_set_inline_failed(%struct.cgraph_node* nonnull %node.0, i32 %6) #7, !dbg !5053
  br label %for.inc39, !dbg !5054

if.end27:                                         ; preds = %if.end23
  br label %for.cond29, !dbg !5055

for.cond29:                                       ; preds = %for.inc, %if.end27
  %edge.1.in = phi %struct.cgraph_edge** [ %callers, %if.end27 ], [ %next_caller, %for.inc ]
  %edge.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.1.in, align 8, !dbg !5057
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.1, metadata !4994, metadata !DIExpression()), !dbg !5011
  %tobool30 = icmp eq %struct.cgraph_edge* %edge.1, null, !dbg !5058
  br i1 %tobool30, label %for.inc39.loopexit, label %for.body31, !dbg !5058

for.body31:                                       ; preds = %for.cond29
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 9, !dbg !5059
  %7 = load i32, i32* %inline_failed, align 8, !dbg !5059
  %tobool32 = icmp eq i32 %7, 0, !dbg !5062
  br i1 %tobool32, label %for.inc, label %if.then33, !dbg !5063

if.then33:                                        ; preds = %for.body31
  %aux = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 8, !dbg !5064
  %8 = load i8*, i8** %aux, align 8, !dbg !5064
  %tobool34 = icmp eq i8* %8, null, !dbg !5064
  br i1 %tobool34, label %cond.end, label %cond.true, !dbg !5064

cond.true:                                        ; preds = %if.then33
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 935, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5064
  br label %cond.end, !dbg !5064

cond.end:                                         ; preds = %if.then33, %cond.true
  %call35 = call fastcc i32 @cgraph_edge_badness(%struct.cgraph_edge* nonnull %edge.1) #7, !dbg !5066
  %conv = sext i32 %call35 to i64, !dbg !5066
  %9 = bitcast %struct.cgraph_edge* %edge.1 to i8*, !dbg !5067
  %call36 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %call, i64 %conv, i8* nonnull %9) #6, !dbg !5068
  %10 = bitcast i8** %aux to %struct.fibnode**, !dbg !5069
  store %struct.fibnode* %call36, %struct.fibnode** %10, align 8, !dbg !5069
  br label %for.inc, !dbg !5070

for.inc:                                          ; preds = %for.body31, %cond.end
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 4, !dbg !5071
  br label %for.cond29, !dbg !5072, !llvm.loop !5073

for.inc39.loopexit:                               ; preds = %for.cond29
  br label %for.inc39, !dbg !5075

for.inc39:                                        ; preds = %for.inc39.loopexit, %lor.lhs.false10, %lor.lhs.false, %for.body, %if.then26
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* null, metadata !4994, metadata !DIExpression()), !dbg !5011
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !5075
  br label %for.cond, !dbg !5076, !llvm.loop !5077

for.end40:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* null, metadata !4994, metadata !DIExpression()), !dbg !5011
  %11 = load i32, i32* @overall_size, align 4, !dbg !5079
  %call41 = call fastcc i32 @compute_max_insns(i32 %11) #7, !dbg !5080
  call void @llvm.dbg.value(metadata i32 %call41, metadata !4999, metadata !DIExpression()), !dbg !5011
  %12 = load i32, i32* @overall_size, align 4, !dbg !5081
  call void @llvm.dbg.value(metadata i32 %12, metadata !4998, metadata !DIExpression()), !dbg !5011
  br label %while.cond, !dbg !5082

while.cond:                                       ; preds = %cleanup276, %for.end40
  %13 = phi i32 [ %12, %for.end40 ], [ %.pre, %cleanup276 ], !dbg !5083
  %max_size.0 = phi i32 [ %call41, %for.end40 ], [ %max_size.2, %cleanup276 ], !dbg !5084
  %min_size.0 = phi i32 [ %12, %for.end40 ], [ %min_size.2, %cleanup276 ], !dbg !5085
  %edge.3 = phi %struct.cgraph_edge* [ null, %for.end40 ], [ %edge.4, %cleanup276 ]
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.3, metadata !4994, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.value(metadata i32 %min_size.0, metadata !4998, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.value(metadata i32 %max_size.0, metadata !4999, metadata !DIExpression()), !dbg !5011
  %cmp = icmp sgt i32 %13, %max_size.0, !dbg !5086
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !5087

land.rhs:                                         ; preds = %while.cond
  %call43 = call i8* @fibheap_extract_min(%struct.fibheap* %call) #6, !dbg !5088
  %14 = bitcast i8* %call43 to %struct.cgraph_edge*, !dbg !5089
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %14, metadata !4994, metadata !DIExpression()), !dbg !5011
  %tobool44 = icmp ne i8* %call43, null, !dbg !5087
  br label %land.end

land.end:                                         ; preds = %while.cond, %land.rhs
  %edge.4 = phi %struct.cgraph_edge* [ %14, %land.rhs ], [ %edge.3, %while.cond ]
  %15 = phi i1 [ %tobool44, %land.rhs ], [ false, %while.cond ], !dbg !5011
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.4, metadata !4994, metadata !DIExpression()), !dbg !5011
  br i1 %15, label %while.body, label %while.cond283.preheader, !dbg !5082

while.cond283.preheader:                          ; preds = %land.end
  br label %while.cond283, !dbg !5090

while.body:                                       ; preds = %land.end
  %16 = load i32, i32* @overall_size, align 4, !dbg !5091
  call void @llvm.dbg.value(metadata i32 %16, metadata !5001, metadata !DIExpression()), !dbg !5092
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 1, !dbg !5093
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5093
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 2, !dbg !5094
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5094
  %call45 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %17, %struct.cgraph_node* %18) #7, !dbg !5095
  call void @llvm.dbg.value(metadata i32 %call45, metadata !5004, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata i32 0, metadata !5005, metadata !DIExpression()), !dbg !5092
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5096
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i64 0, i32 19, i32 4, !dbg !5097
  %20 = load i32, i32* %size, align 4, !dbg !5097
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5098
  %tobool48 = icmp eq %struct._IO_FILE* %21, null, !dbg !5098
  br i1 %tobool48, label %if.end71, label %if.then49, !dbg !5100

if.then49:                                        ; preds = %while.body
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5101
  %call51 = call i8* @cgraph_node_name(%struct.cgraph_node* %22) #6, !dbg !5103
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5104
  %size54 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %23, i64 0, i32 19, i32 4, !dbg !5105
  %24 = load i32, i32* %size54, align 4, !dbg !5105
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), i8* %call51, i32 %24) #6, !dbg !5106
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5107
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5108
  %call57 = call i8* @cgraph_node_name(%struct.cgraph_node* %26) #6, !dbg !5109
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 7, !dbg !5110
  %27 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !5110
  %call58 = call fastcc i8* @gimple_filename(%union.gimple_statement_d* %27) #7, !dbg !5111
  %28 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !5112
  %call60 = call fastcc i32 @gimple_lineno(%union.gimple_statement_d* %28) #7, !dbg !5113
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5114
  %call62 = call fastcc i32 @cgraph_estimate_growth(%struct.cgraph_node* %29) #7, !dbg !5115
  %call63 = call fastcc i32 @cgraph_edge_badness(%struct.cgraph_edge* %edge.4) #7, !dbg !5116
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 11, !dbg !5117
  %30 = load i32, i32* %frequency, align 8, !dbg !5117
  %conv64 = sitofp i32 %30 to double, !dbg !5118
  %div = fdiv double %conv64, 1.000000e+03, !dbg !5119
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.40, i64 0, i64 0), i8* %call57, i8* %call58, i32 %call60, i32 %call62, i32 %call63, double %div) #6, !dbg !5120
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 0, !dbg !5121
  %31 = load i64, i64* %count, align 8, !dbg !5121
  %tobool66 = icmp eq i64 %31, 0, !dbg !5123
  br i1 %tobool66, label %if.end71, label %if.then67, !dbg !5124

if.then67:                                        ; preds = %if.then49
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5125
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i64 %31) #6, !dbg !5126
  br label %if.end71, !dbg !5126

if.end71:                                         ; preds = %if.then49, %while.body, %if.then67
  %aux72 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 8, !dbg !5127
  %33 = load i8*, i8** %aux72, align 8, !dbg !5127
  %tobool73 = icmp eq i8* %33, null, !dbg !5127
  br i1 %tobool73, label %cond.true74, label %cond.end76, !dbg !5127

cond.true74:                                      ; preds = %if.end71
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 973, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5127
  br label %cond.end76, !dbg !5127

cond.end76:                                       ; preds = %if.end71, %cond.true74
  store i8* null, i8** %aux72, align 8, !dbg !5128
  %inline_failed79 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 9, !dbg !5129
  %34 = load i32, i32* %inline_failed79, align 8, !dbg !5129
  %tobool80 = icmp eq i32 %34, 0, !dbg !5131
  br i1 %tobool80, label %cleanup276, label %if.end82, !dbg !5132, !llvm.loop !5133

if.end82:                                         ; preds = %cond.end76
  %count83 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 0, !dbg !5135
  %35 = load i64, i64* %count83, align 8, !dbg !5135
  %tobool84 = icmp eq i64 %35, 0, !dbg !5137
  br i1 %tobool84, label %if.then85, label %if.end118, !dbg !5138

if.then85:                                        ; preds = %if.end82
  br label %while.cond87, !dbg !5139

while.cond87:                                     ; preds = %if.end96, %if.then85
  %edge.4.pn = phi %struct.cgraph_edge* [ %edge.4, %if.then85 ], [ %40, %if.end96 ]
  %where.0.in = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4.pn, i64 0, i32 1, !dbg !5141
  %where.0 = load %struct.cgraph_node*, %struct.cgraph_node** %where.0.in, align 8, !dbg !5141
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %where.0, metadata !5003, metadata !DIExpression()), !dbg !5092
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %where.0, i64 0, i32 19, i32 2, !dbg !5142
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !5142
  %tobool89 = icmp eq %struct.cgraph_node* %36, null, !dbg !5139
  br i1 %tobool89, label %while.end, label %while.body90, !dbg !5139

while.body90:                                     ; preds = %while.cond87
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %where.0, i64 0, i32 0, !dbg !5143
  %37 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5143
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5146
  %decl92 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %38, i64 0, i32 0, !dbg !5147
  %39 = load %union.tree_node*, %union.tree_node** %decl92, align 8, !dbg !5147
  %cmp93 = icmp eq %union.tree_node* %37, %39, !dbg !5148
  br i1 %cmp93, label %while.end, label %if.end96, !dbg !5149

if.end96:                                         ; preds = %while.body90
  %callers97 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %where.0, i64 0, i32 2, !dbg !5150
  %40 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers97, align 8, !dbg !5150
  br label %while.cond87, !dbg !5139, !llvm.loop !5151

while.end:                                        ; preds = %while.cond87, %while.body90
  %tobool89.lcssa = phi i1 [ %tobool89, %while.cond87 ], [ %tobool89, %while.body90 ], !dbg !5139
  br i1 %tobool89.lcssa, label %if.end118, label %if.then102, !dbg !5153

if.then102:                                       ; preds = %while.end
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5154
  %disregard_inline_limits105 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %41, i64 0, i32 18, i32 2, !dbg !5157
  %bf.load106 = load i8, i8* %disregard_inline_limits105, align 8, !dbg !5157
  %bf.clear108 = and i8 %bf.load106, 16, !dbg !5157
  %tobool110 = icmp eq i8 %bf.clear108, 0, !dbg !5158
  %cond111 = select i1 %tobool110, i32 1, i32 12, !dbg !5158
  store i32 %cond111, i32* %inline_failed79, align 8, !dbg !5159
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5160
  %tobool113 = icmp eq %struct._IO_FILE* %42, null, !dbg !5160
  br i1 %tobool113, label %cleanup276, label %if.then114, !dbg !5162, !llvm.loop !5133

if.then114:                                       ; preds = %if.then102
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %42, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !5163
  br label %cleanup276, !dbg !5163, !llvm.loop !5133

if.end118:                                        ; preds = %while.end, %if.end82
  %call119 = call zeroext i8 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge* %edge.4) #6, !dbg !5164
  %tobool120 = icmp eq i8 %call119, 0, !dbg !5164
  %spec.select = select i1 %tobool120, i32 13, i32 0, !dbg !5166
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !5005, metadata !DIExpression()), !dbg !5092
  %43 = load i32, i32* @flag_inline_functions, align 4, !dbg !5167
  %tobool123 = icmp eq i32 %43, 0, !dbg !5167
  br i1 %tobool123, label %land.lhs.true, label %if.end131, !dbg !5169

land.lhs.true:                                    ; preds = %if.end118
  %44 = bitcast %struct.cgraph_node** %callee to %struct.tree_function_decl***, !dbg !5170
  %45 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %44, align 8, !dbg !5170
  %46 = load %struct.tree_function_decl*, %struct.tree_function_decl** %45, align 8, !dbg !5170
  %declared_inline_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %46, i64 0, i32 5, !dbg !5170
  %bf.load126 = load i32, i32* %declared_inline_flag, align 8, !dbg !5170
  %bf.clear128 = and i32 %bf.load126, 2097152, !dbg !5170
  %tobool129 = icmp eq i32 %bf.clear128, 0, !dbg !5170
  %spec.select2 = select i1 %tobool129, i32 14, i32 %spec.select, !dbg !5171
  br label %if.end131, !dbg !5171

if.end131:                                        ; preds = %if.end118, %land.lhs.true
  %not_good.1 = phi i32 [ %spec.select, %if.end118 ], [ %spec.select2, %land.lhs.true ], !dbg !5092
  call void @llvm.dbg.value(metadata i32 %not_good.1, metadata !5005, metadata !DIExpression()), !dbg !5092
  %47 = bitcast %struct.cgraph_node** %caller to %struct.tree_function_decl***, !dbg !5172
  %48 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %47, align 8, !dbg !5172
  %49 = load %struct.tree_function_decl*, %struct.tree_function_decl** %48, align 8, !dbg !5172
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %49, i64 0, i32 1, !dbg !5172
  %50 = load %struct.function*, %struct.function** %f, align 8, !dbg !5172
  %call135 = call zeroext i8 @optimize_function_for_size_p(%struct.function* %50) #6, !dbg !5174
  %tobool136 = icmp eq i8 %call135, 0, !dbg !5174
  %spec.select3 = select i1 %tobool136, i32 %not_good.1, i32 15, !dbg !5175
  call void @llvm.dbg.value(metadata i32 %spec.select3, metadata !5005, metadata !DIExpression()), !dbg !5092
  %tobool139 = icmp ne i32 %spec.select3, 0, !dbg !5176
  %cmp141 = icmp sgt i32 %call45, %20, !dbg !5178
  %or.cond = and i1 %tobool139, %cmp141, !dbg !5179
  br i1 %or.cond, label %land.lhs.true143, label %if.end163, !dbg !5179

land.lhs.true143:                                 ; preds = %if.end131
  %51 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5180
  %call145 = call fastcc i32 @cgraph_estimate_growth(%struct.cgraph_node* %51) #7, !dbg !5181
  %cmp146 = icmp sgt i32 %call145, 0, !dbg !5182
  br i1 %cmp146, label %if.then148, label %if.end163, !dbg !5183

if.then148:                                       ; preds = %land.lhs.true143
  %52 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5184
  %53 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5187
  %call152 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %52, %struct.cgraph_node* %53, i32* nonnull %inline_failed79) #7, !dbg !5188
  %tobool153 = icmp eq i8 %call152, 0, !dbg !5188
  br i1 %tobool153, label %if.then154, label %cleanup276, !dbg !5189, !llvm.loop !5133

if.then154:                                       ; preds = %if.then148
  store i32 %spec.select3, i32* %inline_failed79, align 8, !dbg !5190
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5192
  %tobool156 = icmp eq %struct._IO_FILE* %54, null, !dbg !5192
  br i1 %tobool156, label %cleanup276, label %if.then157, !dbg !5194, !llvm.loop !5133

if.then157:                                       ; preds = %if.then154
  %call159 = call i8* @cgraph_inline_failed_string(i32 %spec.select3) #6, !dbg !5195
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8* %call159) #6, !dbg !5196
  br label %cleanup276, !dbg !5196, !llvm.loop !5133

if.end163:                                        ; preds = %land.lhs.true143, %if.end131
  %55 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5197
  %call166 = call fastcc zeroext i8 @cgraph_default_inline_p(%struct.cgraph_node* %55, i32* nonnull %inline_failed79) #7, !dbg !5199
  %tobool167 = icmp eq i8 %call166, 0, !dbg !5199
  br i1 %tobool167, label %if.then168, label %if.end182, !dbg !5200

if.then168:                                       ; preds = %if.end163
  %56 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5201
  %57 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5204
  %call172 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %56, %struct.cgraph_node* %57, i32* nonnull %inline_failed79) #7, !dbg !5205
  %tobool173 = icmp eq i8 %call172, 0, !dbg !5205
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5206
  %tobool175 = icmp ne %struct._IO_FILE* %58, null, !dbg !5206
  %or.cond4 = and i1 %tobool173, %tobool175, !dbg !5209
  br i1 %or.cond4, label %if.then176, label %cleanup276, !dbg !5209, !llvm.loop !5133

if.then176:                                       ; preds = %if.then168
  %59 = load i32, i32* %inline_failed79, align 8, !dbg !5210
  %call178 = call i8* @cgraph_inline_failed_string(i32 %59) #6, !dbg !5211
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8* %call178) #6, !dbg !5212
  br label %cleanup276, !dbg !5212, !llvm.loop !5133

if.end182:                                        ; preds = %if.end163
  %call183 = call zeroext i8 @tree_can_inline_p(%struct.cgraph_edge* %edge.4) #6, !dbg !5213
  %tobool184 = icmp eq i8 %call183, 0, !dbg !5213
  br i1 %tobool184, label %if.then185, label %if.end192, !dbg !5215

if.then185:                                       ; preds = %if.end182
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5216
  %tobool186 = icmp eq %struct._IO_FILE* %60, null, !dbg !5216
  br i1 %tobool186, label %cleanup276, label %if.then187, !dbg !5219, !llvm.loop !5133

if.then187:                                       ; preds = %if.then185
  %61 = load i32, i32* %inline_failed79, align 8, !dbg !5220
  %call189 = call i8* @cgraph_inline_failed_string(i32 %61) #6, !dbg !5221
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8* %call189) #6, !dbg !5222
  br label %cleanup276, !dbg !5222, !llvm.loop !5133

if.end192:                                        ; preds = %if.end182
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5223
  %63 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5224
  %call196 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %62, %struct.cgraph_node* %63, i32* nonnull %inline_failed79) #7, !dbg !5225
  %tobool197 = icmp eq i8 %call196, 0, !dbg !5225
  br i1 %tobool197, label %if.else, label %if.then198, !dbg !5226

if.then198:                                       ; preds = %if.end192
  %64 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5227
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %64, metadata !5003, metadata !DIExpression()), !dbg !5092
  %inlined_to201 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %64, i64 0, i32 19, i32 2, !dbg !5229
  %65 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to201, align 8, !dbg !5229
  %tobool202 = icmp eq %struct.cgraph_node* %65, null, !dbg !5231
  br i1 %tobool202, label %if.end206, label %if.then203, !dbg !5232

if.then203:                                       ; preds = %if.then198
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %65, metadata !5003, metadata !DIExpression()), !dbg !5092
  br label %if.end206, !dbg !5233

if.end206:                                        ; preds = %if.then198, %if.then203
  %where.1 = phi %struct.cgraph_node* [ %65, %if.then203 ], [ %64, %if.then198 ], !dbg !5234
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %where.1, metadata !5003, metadata !DIExpression()), !dbg !5092
  %66 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !5235
  %tobool207 = icmp eq i32 %66, 0, !dbg !5235
  %new_indirect_edges. = select i1 %tobool207, %struct.VEC_cgraph_edge_p_heap** null, %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, !dbg !5235
  %call212 = call fastcc zeroext i8 @cgraph_decide_recursive_inlining(%struct.cgraph_node* %where.1, %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges.) #7, !dbg !5237
  %tobool213 = icmp eq i8 %call212, 0, !dbg !5237
  br i1 %tobool213, label %cleanup276, label %if.end215, !dbg !5238, !llvm.loop !5133

if.end215:                                        ; preds = %if.end206
  %67 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !5239
  %tobool216 = icmp eq i32 %67, 0, !dbg !5239
  br i1 %tobool216, label %if.end218, label %if.then217, !dbg !5241

if.then217:                                       ; preds = %if.end215
  %68 = load %struct.VEC_cgraph_edge_p_heap*, %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, align 8, !dbg !5242
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %68, metadata !5000, metadata !DIExpression()), !dbg !5011
  call fastcc void @add_new_edges_to_heap(%struct.fibheap* %call, %struct.VEC_cgraph_edge_p_heap* %68) #7, !dbg !5243
  br label %if.end218, !dbg !5243

if.end218:                                        ; preds = %if.end215, %if.then217
  call fastcc void @update_callee_keys(%struct.fibheap* %call, %struct.cgraph_node* %where.1, %struct.bitmap_head_def* %call1) #7, !dbg !5244
  br label %if.end246, !dbg !5245

if.else:                                          ; preds = %if.end192
  %call_stmt_cannot_inline_p = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.4, i64 0, i32 14, !dbg !5246
  %bf.load220 = load i8, i8* %call_stmt_cannot_inline_p, align 2, !dbg !5246
  %bf.clear222 = and i8 %bf.load220, 2, !dbg !5246
  %tobool224 = icmp eq i8 %bf.clear222, 0, !dbg !5248
  br i1 %tobool224, label %lor.lhs.false225, label %if.then231, !dbg !5249

lor.lhs.false225:                                 ; preds = %if.else
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5250
  %70 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5251
  %call229 = call fastcc zeroext i8 @cgraph_check_inline_limits(%struct.cgraph_node* %69, %struct.cgraph_node* %70, i32* nonnull %inline_failed79, i8 zeroext 1) #7, !dbg !5252
  %tobool230 = icmp eq i8 %call229, 0, !dbg !5252
  br i1 %tobool230, label %if.then231, label %if.end240, !dbg !5253

if.then231:                                       ; preds = %lor.lhs.false225, %if.else
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5254
  %tobool232 = icmp eq %struct._IO_FILE* %71, null, !dbg !5254
  br i1 %tobool232, label %cleanup, label %if.then233, !dbg !5257, !llvm.loop !5133

if.then233:                                       ; preds = %if.then231
  %72 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5258
  %call235 = call i8* @cgraph_node_name(%struct.cgraph_node* %72) #6, !dbg !5259
  %73 = load i32, i32* %inline_failed79, align 8, !dbg !5260
  %call237 = call i8* @cgraph_inline_failed_string(i32 %73) #6, !dbg !5261
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* %call235, i8* %call237) #6, !dbg !5262
  br label %cleanup, !dbg !5262, !llvm.loop !5133

if.end240:                                        ; preds = %lor.lhs.false225
  %74 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5263
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %74, metadata !5006, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, metadata !5000, metadata !DIExpression(DW_OP_deref)), !dbg !5011
  %call242 = call fastcc zeroext i8 @cgraph_mark_inline_edge(%struct.cgraph_edge* %edge.4, i8 zeroext 1, %struct.VEC_cgraph_edge_p_heap** nonnull %new_indirect_edges) #7, !dbg !5265
  %75 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !5266
  %tobool243 = icmp eq i32 %75, 0, !dbg !5266
  br i1 %tobool243, label %if.end245, label %if.then244, !dbg !5268

if.then244:                                       ; preds = %if.end240
  %76 = load %struct.VEC_cgraph_edge_p_heap*, %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, align 8, !dbg !5269
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %76, metadata !5000, metadata !DIExpression()), !dbg !5011
  call fastcc void @add_new_edges_to_heap(%struct.fibheap* %call, %struct.VEC_cgraph_edge_p_heap* %76) #7, !dbg !5270
  br label %if.end245, !dbg !5270

if.end245:                                        ; preds = %if.end240, %if.then244
  call fastcc void @update_callee_keys(%struct.fibheap* %call, %struct.cgraph_node* %74, %struct.bitmap_head_def* %call1) #7, !dbg !5271
  br label %cleanup, !dbg !5272

cleanup:                                          ; preds = %if.then231, %if.then233, %if.end245
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end245 ], [ false, %if.then233 ], [ false, %if.then231 ]
  br i1 %cleanup.dest.slot.0, label %if.end246, label %cleanup276

if.end246:                                        ; preds = %cleanup, %if.end218
  %77 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5273
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %77, metadata !5003, metadata !DIExpression()), !dbg !5092
  %inlined_to249 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %77, i64 0, i32 19, i32 2, !dbg !5274
  %78 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to249, align 8, !dbg !5274
  %tobool250 = icmp eq %struct.cgraph_node* %78, null, !dbg !5276
  br i1 %tobool250, label %if.end254, label %if.then251, !dbg !5277

if.then251:                                       ; preds = %if.end246
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %78, metadata !5003, metadata !DIExpression()), !dbg !5092
  br label %if.end254, !dbg !5278

if.end254:                                        ; preds = %if.end246, %if.then251
  %where.2 = phi %struct.cgraph_node* [ %78, %if.then251 ], [ %77, %if.end246 ], !dbg !5092
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %where.2, metadata !5003, metadata !DIExpression()), !dbg !5092
  call fastcc void @update_caller_keys(%struct.fibheap* %call, %struct.cgraph_node* %where.2, %struct.bitmap_head_def* %call1) #7, !dbg !5279
  call void @bitmap_clear(%struct.bitmap_head_def* %call1) #6, !dbg !5280
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5281
  %tobool255 = icmp eq %struct._IO_FILE* %79, null, !dbg !5281
  br i1 %tobool255, label %if.end266, label %if.then256, !dbg !5283

if.then256:                                       ; preds = %if.end254
  %80 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5284
  %call258 = call i8* @cgraph_node_name(%struct.cgraph_node* %80) #6, !dbg !5286
  %81 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5287
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %81, i64 0, i32 19, i32 3, !dbg !5288
  %82 = load i32, i32* %time, align 8, !dbg !5288
  %size263 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %81, i64 0, i32 19, i32 4, !dbg !5289
  %83 = load i32, i32* %size263, align 4, !dbg !5289
  %84 = load i32, i32* @overall_size, align 4, !dbg !5290
  %sub264 = sub nsw i32 %84, %16, !dbg !5291
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %79, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.45, i64 0, i64 0), i8* %call258, i32 %82, i32 %83, i32 %sub264) #6, !dbg !5292
  br label %if.end266, !dbg !5293

if.end266:                                        ; preds = %if.end254, %if.then256
  %85 = load i32, i32* @overall_size, align 4, !dbg !5294
  %cmp267 = icmp sgt i32 %min_size.0, %85, !dbg !5296
  br i1 %cmp267, label %if.then269, label %cleanup276, !dbg !5297

if.then269:                                       ; preds = %if.end266
  call void @llvm.dbg.value(metadata i32 %85, metadata !4998, metadata !DIExpression()), !dbg !5011
  %call270 = call fastcc i32 @compute_max_insns(i32 %85) #7, !dbg !5298
  call void @llvm.dbg.value(metadata i32 %call270, metadata !4999, metadata !DIExpression()), !dbg !5011
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5300
  %tobool271 = icmp eq %struct._IO_FILE* %86, null, !dbg !5300
  br i1 %tobool271, label %cleanup276, label %if.then272, !dbg !5302

if.then272:                                       ; preds = %if.then269
  %call273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i64 0, i64 0), i32 %85) #6, !dbg !5303
  br label %cleanup276, !dbg !5303

cleanup276:                                       ; preds = %if.then102, %if.then154, %if.then148, %if.end206, %if.then269, %if.then185, %cond.end76, %if.then168, %if.end266, %if.then272, %if.then187, %if.then176, %if.then157, %if.then114, %cleanup
  %max_size.2 = phi i32 [ %max_size.0, %cleanup ], [ %max_size.0, %cond.end76 ], [ %max_size.0, %if.then114 ], [ %max_size.0, %if.then102 ], [ %max_size.0, %if.then154 ], [ %max_size.0, %if.then157 ], [ %max_size.0, %if.then148 ], [ %max_size.0, %if.then176 ], [ %max_size.0, %if.then168 ], [ %max_size.0, %if.then187 ], [ %max_size.0, %if.then185 ], [ %max_size.0, %if.end206 ], [ %max_size.0, %if.end266 ], [ %call270, %if.then272 ], [ %call270, %if.then269 ], !dbg !5011
  %min_size.2 = phi i32 [ %min_size.0, %cleanup ], [ %min_size.0, %cond.end76 ], [ %min_size.0, %if.then114 ], [ %min_size.0, %if.then102 ], [ %min_size.0, %if.then154 ], [ %min_size.0, %if.then157 ], [ %min_size.0, %if.then148 ], [ %min_size.0, %if.then176 ], [ %min_size.0, %if.then168 ], [ %min_size.0, %if.then187 ], [ %min_size.0, %if.then185 ], [ %min_size.0, %if.end206 ], [ %min_size.0, %if.end266 ], [ %85, %if.then272 ], [ %85, %if.then269 ], !dbg !5011
  call void @llvm.dbg.value(metadata i32 %min_size.2, metadata !4998, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.value(metadata i32 %max_size.2, metadata !4999, metadata !DIExpression()), !dbg !5011
  %.pre = load i32, i32* @overall_size, align 4, !dbg !5083
  br label %while.cond

while.cond283:                                    ; preds = %while.cond283.preheader, %if.end314
  %call284 = call i8* @fibheap_extract_min(%struct.fibheap* %call) #6, !dbg !5304
  call void @llvm.dbg.value(metadata i8* %call284, metadata !4994, metadata !DIExpression()), !dbg !5011
  %cmp285 = icmp eq i8* %call284, null, !dbg !5305
  br i1 %cmp285, label %while.end315, label %while.body287, !dbg !5090

while.body287:                                    ; preds = %while.cond283
  %aux288 = getelementptr inbounds i8, i8* %call284, i64 64, !dbg !5306
  %87 = bitcast i8* %aux288 to i8**, !dbg !5306
  %88 = load i8*, i8** %87, align 8, !dbg !5306
  %tobool289 = icmp eq i8* %88, null, !dbg !5306
  br i1 %tobool289, label %cond.true290, label %cond.end292, !dbg !5306

cond.true290:                                     ; preds = %while.body287
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5306
  br label %cond.end292, !dbg !5306

cond.end292:                                      ; preds = %while.body287, %cond.true290
  store i8* null, i8** %87, align 8, !dbg !5308
  %callee295 = getelementptr inbounds i8, i8* %call284, i64 16, !dbg !5309
  %89 = bitcast i8* %callee295 to %struct.cgraph_node**, !dbg !5309
  %90 = load %struct.cgraph_node*, %struct.cgraph_node** %89, align 8, !dbg !5309
  %disregard_inline_limits297 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %90, i64 0, i32 18, i32 2, !dbg !5311
  %bf.load298 = load i8, i8* %disregard_inline_limits297, align 8, !dbg !5311
  %bf.clear300 = and i8 %bf.load298, 16, !dbg !5311
  %tobool302 = icmp eq i8 %bf.clear300, 0, !dbg !5312
  br i1 %tobool302, label %land.lhs.true303, label %if.end314, !dbg !5313

land.lhs.true303:                                 ; preds = %cond.end292
  %inline_failed304 = getelementptr inbounds i8, i8* %call284, i64 72, !dbg !5314
  %91 = bitcast i8* %inline_failed304 to i32*, !dbg !5314
  %92 = load i32, i32* %91, align 8, !dbg !5314
  %tobool305 = icmp eq i32 %92, 0, !dbg !5315
  br i1 %tobool305, label %if.end314, label %land.lhs.true306, !dbg !5316

land.lhs.true306:                                 ; preds = %land.lhs.true303
  %caller307 = getelementptr inbounds i8, i8* %call284, i64 8, !dbg !5317
  %93 = bitcast i8* %caller307 to %struct.cgraph_node**, !dbg !5317
  %94 = load %struct.cgraph_node*, %struct.cgraph_node** %93, align 8, !dbg !5317
  %call310 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %94, %struct.cgraph_node* %90, i32* nonnull %91) #7, !dbg !5318
  %tobool311 = icmp eq i8 %call310, 0, !dbg !5318
  br i1 %tobool311, label %if.then312, label %if.end314, !dbg !5319

if.then312:                                       ; preds = %land.lhs.true306
  store i32 11, i32* %91, align 8, !dbg !5320
  br label %if.end314, !dbg !5321

if.end314:                                        ; preds = %land.lhs.true306, %land.lhs.true303, %cond.end292, %if.then312
  br label %while.cond283, !dbg !5090, !llvm.loop !5322

while.end315:                                     ; preds = %while.cond283
  %95 = load %struct.VEC_cgraph_edge_p_heap*, %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, align 8, !dbg !5324
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %95, metadata !5000, metadata !DIExpression()), !dbg !5011
  %tobool316 = icmp eq %struct.VEC_cgraph_edge_p_heap* %95, null, !dbg !5324
  br i1 %tobool316, label %if.end318, label %if.then317, !dbg !5326

if.then317:                                       ; preds = %while.end315
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap** %new_indirect_edges, metadata !5000, metadata !DIExpression(DW_OP_deref)), !dbg !5011
  call fastcc void @VEC_cgraph_edge_p_heap_free(%struct.VEC_cgraph_edge_p_heap** nonnull %new_indirect_edges) #7, !dbg !5327
  br label %if.end318, !dbg !5327

if.end318:                                        ; preds = %while.end315, %if.then317
  call void @fibheap_delete(%struct.fibheap* %call) #6, !dbg !5328
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !5329
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !4997, metadata !DIExpression()), !dbg !5011
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5330
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !5330
  ret void, !dbg !5330
}

declare dso_local void @free_all_ipa_structures_after_iinln() local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local %struct.fibheap* @fibheap_new() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_cgraph_edge_p_heap* @VEC_cgraph_edge_p_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !5331 {
entry:
  call void @llvm.dbg.value(metadata i32 8, metadata !5335, metadata !DIExpression()), !dbg !5336
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 8) #6, !dbg !5337
  %0 = bitcast i8* %call to %struct.VEC_cgraph_edge_p_heap*, !dbg !5337
  ret %struct.VEC_cgraph_edge_p_heap* %0, !dbg !5337
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_set_inline_failed(%struct.cgraph_node* %node, i32 %reason) unnamed_addr #5 !dbg !5338 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5342, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.value(metadata i32 %reason, metadata !5343, metadata !DIExpression()), !dbg !5345
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5346
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !5346
  br i1 %tobool, label %if.end, label %if.then, !dbg !5348

if.then:                                          ; preds = %entry
  %call = tail call i8* @cgraph_inline_failed_string(i32 %reason) #6, !dbg !5349
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i8* %call) #6, !dbg !5350
  br label %if.end, !dbg !5350

if.end:                                           ; preds = %entry, %if.then
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !5351
  br label %for.cond, !dbg !5353

for.cond:                                         ; preds = %for.inc, %if.end
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %if.end ], [ %next_caller, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !5354
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !5344, metadata !DIExpression()), !dbg !5345
  %tobool2 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !5355
  br i1 %tobool2, label %for.end, label %for.body, !dbg !5355

for.body:                                         ; preds = %for.cond
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !5356
  %1 = load i32, i32* %inline_failed, align 8, !dbg !5356
  %tobool3 = icmp eq i32 %1, 0, !dbg !5359
  br i1 %tobool3, label %for.inc, label %if.then4, !dbg !5360

if.then4:                                         ; preds = %for.body
  store i32 %reason, i32* %inline_failed, align 8, !dbg !5361
  br label %for.inc, !dbg !5362

for.inc:                                          ; preds = %for.body, %if.then4
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !5363
  br label %for.cond, !dbg !5364, !llvm.loop !5365

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5367
}

declare dso_local %struct.fibnode* @fibheap_insert(%struct.fibheap*, i64, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cgraph_edge_badness(%struct.cgraph_edge* %edge) unnamed_addr #5 !dbg !5368 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge, metadata !5372, metadata !DIExpression()), !dbg !5382
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 1, !dbg !5383
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5383
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 2, !dbg !5384
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5384
  %call = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %0, %struct.cgraph_node* %1) #7, !dbg !5385
  call void @llvm.dbg.value(metadata i32 %call, metadata !5374, metadata !DIExpression()), !dbg !5382
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5386
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 19, i32 4, !dbg !5387
  %3 = load i32, i32* %size, align 4, !dbg !5387
  %sub = sub nsw i32 %call, %3, !dbg !5388
  call void @llvm.dbg.value(metadata i32 %sub, metadata !5374, metadata !DIExpression()), !dbg !5382
  %cmp = icmp slt i32 %sub, 1, !dbg !5389
  br i1 %cmp, label %if.then, label %if.else, !dbg !5390

if.then:                                          ; preds = %entry
  %sub2 = sub nsw i32 -2147483648, %sub, !dbg !5391
  %conv = sext i32 %sub2 to i64, !dbg !5392
  call void @llvm.dbg.value(metadata i64 %conv, metadata !5373, metadata !DIExpression()), !dbg !5382
  br label %if.end93, !dbg !5393

if.else:                                          ; preds = %entry
  %4 = load i64, i64* @max_count, align 8, !dbg !5394
  %tobool = icmp eq i64 %4, 0, !dbg !5394
  br i1 %tobool, label %if.else15, label %if.then3, !dbg !5395

if.then3:                                         ; preds = %if.else
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 0, !dbg !5396
  %5 = load i64, i64* %count, align 8, !dbg !5396
  %conv4 = sitofp i64 %5 to double, !dbg !5397
  %mul = fmul double %conv4, 0xC1E0000000000000, !dbg !5398
  %conv5 = sitofp i64 %4 to double, !dbg !5399
  %div = fdiv double %mul, %conv5, !dbg !5400
  %6 = load i64, i64* @max_benefit, align 8, !dbg !5401
  %add = add nsw i64 %6, 1, !dbg !5402
  %conv6 = sitofp i64 %add to double, !dbg !5403
  %div7 = fdiv double %div, %conv6, !dbg !5404
  %conv8 = fptosi double %div7 to i32, !dbg !5405
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5406
  %call10 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %7) #7, !dbg !5407
  %time_inlining_benefit = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call10, i64 0, i32 4, !dbg !5408
  %8 = load i32, i32* %time_inlining_benefit, align 4, !dbg !5408
  %add11 = add nsw i32 %8, 1, !dbg !5409
  %mul12 = mul nsw i32 %add11, %conv8, !dbg !5410
  %div13 = sdiv i32 %mul12, %sub, !dbg !5411
  %conv14 = sext i32 %div13 to i64, !dbg !5412
  call void @llvm.dbg.value(metadata i64 %conv14, metadata !5373, metadata !DIExpression()), !dbg !5382
  br label %if.end93, !dbg !5413

if.else15:                                        ; preds = %if.else
  %9 = load i32, i32* @flag_guess_branch_prob, align 4, !dbg !5414
  %tobool16 = icmp eq i32 %9, 0, !dbg !5414
  br i1 %tobool16, label %if.else71, label %if.then17, !dbg !5415

if.then17:                                        ; preds = %if.else15
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 11, !dbg !5416
  %10 = load i32, i32* %frequency, align 8, !dbg !5416
  %div20 = sdiv i32 %10, 10, !dbg !5417
  %add21 = add nsw i32 %div20, 1, !dbg !5418
  call void @llvm.dbg.value(metadata i32 %add21, metadata !5375, metadata !DIExpression()), !dbg !5419
  %mul22 = mul nsw i32 %sub, 10000, !dbg !5420
  %conv23 = sext i32 %mul22 to i64, !dbg !5421
  call void @llvm.dbg.value(metadata i64 %conv23, metadata !5373, metadata !DIExpression()), !dbg !5382
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5422
  %call25 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %11) #7, !dbg !5422
  %time_inlining_benefit26 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call25, i64 0, i32 4, !dbg !5422
  %12 = load i32, i32* %time_inlining_benefit26, align 4, !dbg !5422
  %mul27 = mul nsw i32 %12, 100, !dbg !5422
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5422
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 19, i32 3, !dbg !5422
  %14 = load i32, i32* %time, align 8, !dbg !5422
  %add30 = add nsw i32 %14, 1, !dbg !5422
  %div31 = sdiv i32 %mul27, %add30, !dbg !5422
  %cmp33 = icmp slt i32 %div31, 99, !dbg !5422
  br i1 %cmp33, label %cond.true, label %cond.end, !dbg !5422

cond.true:                                        ; preds = %if.then17
  %call36 = tail call fastcc %struct.inline_summary* @inline_summary(%struct.cgraph_node* %13) #7, !dbg !5422
  %time_inlining_benefit37 = getelementptr inbounds %struct.inline_summary, %struct.inline_summary* %call36, i64 0, i32 4, !dbg !5422
  %15 = load i32, i32* %time_inlining_benefit37, align 4, !dbg !5422
  %mul38 = mul nsw i32 %15, 100, !dbg !5422
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5422
  %time41 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i64 0, i32 19, i32 3, !dbg !5422
  %17 = load i32, i32* %time41, align 8, !dbg !5422
  %add42 = add nsw i32 %17, 1, !dbg !5422
  %div43 = sdiv i32 %mul38, %add42, !dbg !5422
  %add44 = add nsw i32 %div43, 1, !dbg !5422
  br label %cond.end, !dbg !5422

cond.end:                                         ; preds = %if.then17, %cond.true
  %cond = phi i32 [ %add44, %cond.true ], [ 100, %if.then17 ], !dbg !5422
  %mul45 = mul nsw i32 %add21, %cond, !dbg !5423
  call void @llvm.dbg.value(metadata i32 %mul45, metadata !5375, metadata !DIExpression()), !dbg !5419
  %cmp46 = icmp sgt i32 %mul45, 10000, !dbg !5424
  br i1 %cmp46, label %if.then48, label %if.end, !dbg !5426

if.then48:                                        ; preds = %cond.end
  %conv49 = sext i32 %mul45 to i64, !dbg !5427
  %call50 = tail call i32 @ceil_log2(i64 %conv49) #6, !dbg !5428
  %sub52 = add nsw i32 %call50, 9992, !dbg !5429
  call void @llvm.dbg.value(metadata i32 %sub52, metadata !5375, metadata !DIExpression()), !dbg !5419
  br label %if.end, !dbg !5430

if.end:                                           ; preds = %if.then48, %cond.end
  %div18.0 = phi i32 [ %sub52, %if.then48 ], [ %mul45, %cond.end ], !dbg !5419
  call void @llvm.dbg.value(metadata i32 %div18.0, metadata !5375, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.value(metadata i32 undef, metadata !5375, metadata !DIExpression()), !dbg !5419
  %cmp57 = icmp sgt i32 %sub, 0, !dbg !5431
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !5433

if.then59:                                        ; preds = %if.end
  %18 = icmp sgt i32 %div18.0, 1, !dbg !5434
  %spec.select = select i1 %18, i32 %div18.0, i32 1, !dbg !5434
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !5375, metadata !DIExpression()), !dbg !5419
  %conv60 = zext i32 %spec.select to i64, !dbg !5435
  %div61 = sdiv i64 %conv23, %conv60, !dbg !5436
  call void @llvm.dbg.value(metadata i64 %div61, metadata !5373, metadata !DIExpression()), !dbg !5382
  br label %if.end62, !dbg !5437

if.end62:                                         ; preds = %if.then59, %if.end
  %badness.0 = phi i64 [ %div61, %if.then59 ], [ %conv23, %if.end ], !dbg !5419
  call void @llvm.dbg.value(metadata i64 %badness.0, metadata !5373, metadata !DIExpression()), !dbg !5382
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5438
  %call64 = tail call fastcc i32 @cgraph_estimate_growth(%struct.cgraph_node* %19) #7, !dbg !5439
  %conv65 = sext i32 %call64 to i64, !dbg !5439
  %add66 = add nsw i64 %badness.0, %conv65, !dbg !5440
  call void @llvm.dbg.value(metadata i64 %add66, metadata !5373, metadata !DIExpression()), !dbg !5382
  %20 = icmp slt i64 %add66, 2147483647, !dbg !5441
  %spec.select1 = select i1 %20, i64 %add66, i64 2147483647, !dbg !5441
  call void @llvm.dbg.value(metadata i64 %spec.select1, metadata !5373, metadata !DIExpression()), !dbg !5382
  br label %if.end93, !dbg !5442

if.else71:                                        ; preds = %if.else15
  %loop_nest = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 13, !dbg !5443
  %21 = load i16, i16* %loop_nest, align 8, !dbg !5443
  %cmp73 = icmp ult i16 %21, 8, !dbg !5443
  br i1 %cmp73, label %cond.true75, label %cond.end79, !dbg !5443

cond.true75:                                      ; preds = %if.else71
  %phitmp = zext i16 %21 to i64, !dbg !5443
  br label %cond.end79, !dbg !5443

cond.end79:                                       ; preds = %if.else71, %cond.true75
  %cond80 = phi i64 [ %phitmp, %cond.true75 ], [ 8, %if.else71 ]
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5444
  %call82 = tail call fastcc i32 @cgraph_estimate_growth(%struct.cgraph_node* %22) #7, !dbg !5445
  %mul83 = shl nsw i32 %call82, 8, !dbg !5446
  %conv84 = sext i32 %mul83 to i64, !dbg !5445
  call void @llvm.dbg.value(metadata i64 %conv84, metadata !5373, metadata !DIExpression()), !dbg !5382
  %cmp85 = icmp sgt i32 %call82, 0, !dbg !5447
  %shr = ashr i64 %conv84, %cond80, !dbg !5449
  %shl = shl i64 %conv84, %cond80, !dbg !5449
  %badness.2 = select i1 %cmp85, i64 %shr, i64 %shl, !dbg !5449
  br label %if.end93, !dbg !5449

if.end93:                                         ; preds = %if.then3, %cond.end79, %if.end62, %if.then
  %badness.5 = phi i64 [ %conv, %if.then ], [ %conv14, %if.then3 ], [ %spec.select1, %if.end62 ], [ %badness.2, %cond.end79 ], !dbg !5450
  call void @llvm.dbg.value(metadata i64 %badness.5, metadata !5373, metadata !DIExpression()), !dbg !5382
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5451
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5453
  %call96 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(%struct.cgraph_node* %23, %struct.cgraph_node* %24, i32* null) #7, !dbg !5454
  %tobool97 = icmp ne i8 %call96, 0, !dbg !5454
  %25 = trunc i64 %badness.5 to i32, !dbg !5455
  %conv100 = zext i1 %tobool97 to i32, !dbg !5455
  %retval.0 = add i32 %conv100, %25, !dbg !5455
  ret i32 %retval.0, !dbg !5456
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compute_max_insns(i32 %insns) unnamed_addr #5 !dbg !5457 {
entry:
  call void @llvm.dbg.value(metadata i32 %insns, metadata !5459, metadata !DIExpression()), !dbg !5461
  call void @llvm.dbg.value(metadata i32 %insns, metadata !5460, metadata !DIExpression()), !dbg !5461
  %0 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !5462
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %0, i64 17, i32 1, !dbg !5462
  %1 = load i32, i32* %value, align 8, !dbg !5462
  %cmp = icmp sgt i32 %1, %insns, !dbg !5464
  br i1 %cmp, label %if.then, label %if.end, !dbg !5465

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %1, metadata !5460, metadata !DIExpression()), !dbg !5461
  br label %if.end, !dbg !5466

if.end:                                           ; preds = %if.then, %entry
  %max_insns.0 = phi i32 [ %1, %if.then ], [ %insns, %entry ], !dbg !5461
  call void @llvm.dbg.value(metadata i32 %max_insns.0, metadata !5460, metadata !DIExpression()), !dbg !5461
  %conv = sext i32 %max_insns.0 to i64, !dbg !5467
  %value4 = getelementptr inbounds %struct.param_info, %struct.param_info* %0, i64 18, i32 1, !dbg !5468
  %2 = load i32, i32* %value4, align 8, !dbg !5468
  %add = add nsw i32 %2, 100, !dbg !5469
  %conv5 = sext i32 %add to i64, !dbg !5470
  %mul = mul nsw i64 %conv, %conv5, !dbg !5471
  %div = sdiv i64 %mul, 100, !dbg !5472
  %conv6 = trunc i64 %div to i32, !dbg !5473
  ret i32 %conv6, !dbg !5474
}

declare dso_local i8* @fibheap_extract_min(%struct.fibheap*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @gimple_filename(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !5475 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5479, metadata !DIExpression()), !dbg !5480
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #7, !dbg !5481
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %call) #6, !dbg !5481
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 0, !dbg !5481
  %0 = load i8*, i8** %file, align 8, !dbg !5481
  ret i8* %0, !dbg !5482
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_lineno(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !5483 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5487, metadata !DIExpression()), !dbg !5488
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #7, !dbg !5489
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %call) #6, !dbg !5489
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 1, !dbg !5489
  %0 = load i32, i32* %line, align 8, !dbg !5489
  ret i32 %0, !dbg !5490
}

declare dso_local zeroext i8 @optimize_function_for_size_p(%struct.function*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_decide_recursive_inlining(%struct.cgraph_node* %node, %struct.VEC_cgraph_edge_p_heap** %new_edges) unnamed_addr #5 !dbg !5491 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5495, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap** %new_edges, metadata !5496, metadata !DIExpression()), !dbg !5509
  %0 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !5510
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %0, i64 5, i32 1, !dbg !5510
  %1 = load i32, i32* %value, align 8, !dbg !5510
  call void @llvm.dbg.value(metadata i32 %1, metadata !5497, metadata !DIExpression()), !dbg !5509
  %value2 = getelementptr inbounds %struct.param_info, %struct.param_info* %0, i64 7, i32 1, !dbg !5511
  %2 = load i32, i32* %value2, align 8, !dbg !5511
  call void @llvm.dbg.value(metadata i32 %2, metadata !5498, metadata !DIExpression()), !dbg !5509
  %value4 = getelementptr inbounds %struct.param_info, %struct.param_info* %0, i64 8, i32 1, !dbg !5512
  %3 = load i32, i32* %value4, align 8, !dbg !5512
  call void @llvm.dbg.value(metadata i32 %3, metadata !5499, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 0, metadata !5504, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 0, metadata !5505, metadata !DIExpression()), !dbg !5509
  %4 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !5513
  %5 = load %struct.tree_function_decl*, %struct.tree_function_decl** %4, align 8, !dbg !5513
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %5, i64 0, i32 1, !dbg !5513
  %6 = load %struct.function*, %struct.function** %f, align 8, !dbg !5513
  %call = tail call zeroext i8 @optimize_function_for_size_p(%struct.function* %6) #6, !dbg !5515
  %tobool = icmp eq i8 %call, 0, !dbg !5515
  br i1 %tobool, label %lor.lhs.false, label %cleanup145, !dbg !5516

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* @flag_inline_functions, align 4, !dbg !5517
  %tobool5 = icmp eq i32 %7, 0, !dbg !5517
  br i1 %tobool5, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge, !dbg !5518

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  %.pre = load %struct.tree_function_decl*, %struct.tree_function_decl** %4, align 8, !dbg !5519
  %declared_inline_flag11.phi.trans.insert = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %.pre, i64 0, i32 5, !dbg !5521
  %bf.load12.pre = load i32, i32* %declared_inline_flag11.phi.trans.insert, align 8, !dbg !5519
  %.pre2 = and i32 %bf.load12.pre, 2097152, !dbg !5519
  br label %if.end, !dbg !5518

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load %struct.tree_function_decl*, %struct.tree_function_decl** %4, align 8, !dbg !5522
  %declared_inline_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %8, i64 0, i32 5, !dbg !5522
  %bf.load = load i32, i32* %declared_inline_flag, align 8, !dbg !5522
  %bf.clear = and i32 %bf.load, 2097152, !dbg !5522
  %tobool8 = icmp eq i32 %bf.clear, 0, !dbg !5522
  br i1 %tobool8, label %cleanup145, label %if.end, !dbg !5523

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true
  %bf.clear14.pre-phi = phi i32 [ %.pre2, %lor.lhs.false.if.end_crit_edge ], [ %bf.clear, %land.lhs.true ], !dbg !5519
  %tobool15 = icmp eq i32 %bf.clear14.pre-phi, 0, !dbg !5519
  br i1 %tobool15, label %if.end21, label %if.then16, !dbg !5524

if.then16:                                        ; preds = %if.end
  %9 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !5525
  %value18 = getelementptr inbounds %struct.param_info, %struct.param_info* %9, i64 4, i32 1, !dbg !5525
  %10 = load i32, i32* %value18, align 8, !dbg !5525
  call void @llvm.dbg.value(metadata i32 %10, metadata !5497, metadata !DIExpression()), !dbg !5509
  %value20 = getelementptr inbounds %struct.param_info, %struct.param_info* %9, i64 6, i32 1, !dbg !5527
  %11 = load i32, i32* %value20, align 8, !dbg !5527
  call void @llvm.dbg.value(metadata i32 %11, metadata !5498, metadata !DIExpression()), !dbg !5509
  br label %if.end21, !dbg !5528

if.end21:                                         ; preds = %if.end, %if.then16
  %max_depth.0 = phi i32 [ %11, %if.then16 ], [ %2, %if.end ], !dbg !5509
  %limit.0 = phi i32 [ %10, %if.then16 ], [ %1, %if.end ], !dbg !5509
  call void @llvm.dbg.value(metadata i32 %limit.0, metadata !5497, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 %max_depth.0, metadata !5498, metadata !DIExpression()), !dbg !5509
  %tobool22 = icmp eq i32 %max_depth.0, 0, !dbg !5529
  br i1 %tobool22, label %cleanup145, label %lor.lhs.false23, !dbg !5531

lor.lhs.false23:                                  ; preds = %if.end21
  %call24 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %node, %struct.cgraph_node* %node) #7, !dbg !5532
  %cmp = icmp slt i32 %call24, %limit.0, !dbg !5533
  br i1 %cmp, label %if.end27, label %cleanup145, !dbg !5534

if.end27:                                         ; preds = %lor.lhs.false23
  %call28 = tail call %struct.fibheap* @fibheap_new() #6, !dbg !5535
  call void @llvm.dbg.value(metadata %struct.fibheap* %call28, metadata !5500, metadata !DIExpression()), !dbg !5509
  tail call fastcc void @lookup_recursive_calls(%struct.cgraph_node* %node, %struct.cgraph_node* %node, %struct.fibheap* %call28) #7, !dbg !5536
  %call29 = tail call i32 @fibheap_empty(%struct.fibheap* %call28) #6, !dbg !5537
  %tobool30 = icmp eq i32 %call29, 0, !dbg !5537
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !5539

if.then31:                                        ; preds = %if.end27
  tail call void @fibheap_delete(%struct.fibheap* %call28) #6, !dbg !5540
  br label %cleanup145, !dbg !5542

if.end32:                                         ; preds = %if.end27
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5543
  %tobool33 = icmp eq %struct._IO_FILE* %12, null, !dbg !5543
  br i1 %tobool33, label %if.end37, label %if.then34, !dbg !5545

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !5546
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i8* %call35) #6, !dbg !5547
  br label %if.end37, !dbg !5547

if.end37:                                         ; preds = %if.end32, %if.then34
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 23, !dbg !5548
  %13 = load i64, i64* %count, align 8, !dbg !5548
  %call38 = tail call %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node* %node, i64 %13, i32 1000, i32 1, i8 zeroext 0, %struct.VEC_cgraph_edge_p_heap* null) #6, !dbg !5549
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call38, metadata !5502, metadata !DIExpression()), !dbg !5509
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call38, i64 0, i32 27, !dbg !5550
  %bf.load39 = load i16, i16* %needed, align 4, !dbg !5551
  %bf.set = or i16 %bf.load39, 1, !dbg !5551
  store i16 %bf.set, i16* %needed, align 4, !dbg !5551
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call38, i64 0, i32 1, !dbg !5552
  br label %for.cond, !dbg !5554

for.cond:                                         ; preds = %for.inc, %if.end37
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.end37 ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !5555
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !5501, metadata !DIExpression()), !dbg !5509
  %tobool41 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !5556
  br i1 %tobool41, label %while.cond.preheader, label %for.body, !dbg !5556

while.cond.preheader:                             ; preds = %for.cond
  %decl54 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !5557
  %conv83 = sext i32 %3 to i64, !dbg !5561
  br label %while.cond, !dbg !5565

for.body:                                         ; preds = %for.cond
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !5566
  %14 = load i32, i32* %inline_failed, align 8, !dbg !5566
  %tobool42 = icmp eq i32 %14, 0, !dbg !5569
  br i1 %tobool42, label %if.then43, label %for.inc, !dbg !5570

if.then43:                                        ; preds = %for.body
  tail call void @cgraph_clone_inlined_nodes(%struct.cgraph_edge* nonnull %e.0, i8 zeroext 1, i8 zeroext 0) #7, !dbg !5571
  br label %for.inc, !dbg !5571

for.inc:                                          ; preds = %for.body, %if.then43
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !5572
  br label %for.cond, !dbg !5573, !llvm.loop !5574

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %n.0 = phi i32 [ %n.1, %cleanup ], [ 0, %while.cond.preheader ], !dbg !5576
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !5505, metadata !DIExpression()), !dbg !5509
  %call45 = tail call i32 @fibheap_empty(%struct.fibheap* %call28) #6, !dbg !5577
  %tobool46 = icmp eq i32 %call45, 0, !dbg !5577
  br i1 %tobool46, label %land.rhs, label %while.end, !dbg !5565

land.rhs:                                         ; preds = %while.cond
  %call47 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %node, %struct.cgraph_node* %call38) #7, !dbg !5578
  %cmp48 = icmp sgt i32 %call47, %limit.0, !dbg !5579
  br i1 %cmp48, label %while.end, label %while.body, !dbg !5580

while.body:                                       ; preds = %land.rhs
  %call50 = tail call i8* @fibheap_extract_min(%struct.fibheap* %call28) #6, !dbg !5581
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %22, metadata !5506, metadata !DIExpression()), !dbg !5582
  call void @llvm.dbg.value(metadata i32 1, metadata !5504, metadata !DIExpression()), !dbg !5509
  %caller = getelementptr inbounds i8, i8* %call50, i64 8, !dbg !5583
  %15 = bitcast i8* %caller to %struct.cgraph_node**, !dbg !5583
  %callee = getelementptr inbounds i8, i8* %call50, i64 16, !dbg !5557
  %16 = bitcast i8* %callee to %struct.cgraph_node**, !dbg !5557
  br label %for.cond51, !dbg !5584

for.cond51:                                       ; preds = %for.body53, %while.body
  %depth.0 = phi i32 [ 1, %while.body ], [ %spec.select, %for.body53 ], !dbg !5582
  %cnode.0.in = phi %struct.cgraph_node** [ %15, %while.body ], [ %caller61, %for.body53 ]
  %cnode.0 = load %struct.cgraph_node*, %struct.cgraph_node** %cnode.0.in, align 8, !dbg !5585
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %cnode.0, metadata !5508, metadata !DIExpression()), !dbg !5582
  call void @llvm.dbg.value(metadata i32 %depth.0, metadata !5504, metadata !DIExpression()), !dbg !5509
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %cnode.0, i64 0, i32 19, i32 2, !dbg !5586
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !5586
  %tobool52 = icmp eq %struct.cgraph_node* %17, null, !dbg !5587
  br i1 %tobool52, label %for.end62, label %for.body53, !dbg !5587

for.body53:                                       ; preds = %for.cond51
  %18 = load %union.tree_node*, %union.tree_node** %decl54, align 8, !dbg !5588
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8, !dbg !5589
  %decl55 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i64 0, i32 0, !dbg !5590
  %20 = load %union.tree_node*, %union.tree_node** %decl55, align 8, !dbg !5590
  %cmp56 = icmp eq %union.tree_node* %18, %20, !dbg !5591
  %inc = zext i1 %cmp56 to i32, !dbg !5592
  %spec.select = add nuw nsw i32 %depth.0, %inc, !dbg !5592
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !5504, metadata !DIExpression()), !dbg !5509
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %cnode.0, i64 0, i32 2, !dbg !5593
  %21 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !5593
  %caller61 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %21, i64 0, i32 1, !dbg !5594
  br label %for.cond51, !dbg !5595, !llvm.loop !5596

for.end62:                                        ; preds = %for.cond51
  %depth.0.lcssa = phi i32 [ %depth.0, %for.cond51 ], !dbg !5582
  call void @llvm.dbg.value(metadata i32 %depth.0.lcssa, metadata !5504, metadata !DIExpression()), !dbg !5509
  %22 = bitcast i8* %call50 to %struct.cgraph_edge*, !dbg !5598
  call void @llvm.dbg.value(metadata i32 %depth.0.lcssa, metadata !5504, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 %depth.0.lcssa, metadata !5504, metadata !DIExpression()), !dbg !5509
  %cmp63 = icmp sgt i32 %depth.0.lcssa, %max_depth.0, !dbg !5599
  br i1 %cmp63, label %if.then65, label %if.end70, !dbg !5601

if.then65:                                        ; preds = %for.end62
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5602
  %tobool66 = icmp eq %struct._IO_FILE* %23, null, !dbg !5602
  br i1 %tobool66, label %cleanup, label %if.then67, !dbg !5605, !llvm.loop !5606

if.then67:                                        ; preds = %if.then65
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !5608
  br label %cleanup, !dbg !5608, !llvm.loop !5606

if.end70:                                         ; preds = %for.end62
  %24 = load i64, i64* @max_count, align 8, !dbg !5609
  %tobool71 = icmp eq i64 %24, 0, !dbg !5609
  br i1 %tobool71, label %if.end92, label %if.then72, !dbg !5610

if.then72:                                        ; preds = %if.end70
  %call73 = tail call zeroext i8 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge* %22) #6, !dbg !5611
  %tobool74 = icmp eq i8 %call73, 0, !dbg !5611
  br i1 %tobool74, label %if.then75, label %if.end80, !dbg !5613

if.then75:                                        ; preds = %if.then72
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5614
  %tobool76 = icmp eq %struct._IO_FILE* %25, null, !dbg !5614
  br i1 %tobool76, label %cleanup, label %if.then77, !dbg !5617, !llvm.loop !5606

if.then77:                                        ; preds = %if.then75
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !5618
  br label %cleanup, !dbg !5618, !llvm.loop !5606

if.end80:                                         ; preds = %if.then72
  %count81 = bitcast i8* %call50 to i64*, !dbg !5619
  %26 = load i64, i64* %count81, align 8, !dbg !5619
  %mul = mul nsw i64 %26, 100, !dbg !5620
  %27 = load i64, i64* %count, align 8, !dbg !5621
  %div = sdiv i64 %mul, %27, !dbg !5622
  %cmp84 = icmp slt i64 %div, %conv83, !dbg !5623
  br i1 %cmp84, label %if.then86, label %if.end92, !dbg !5624

if.then86:                                        ; preds = %if.end80
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5625
  %tobool87 = icmp eq %struct._IO_FILE* %28, null, !dbg !5625
  br i1 %tobool87, label %cleanup, label %if.then88, !dbg !5628, !llvm.loop !5606

if.then88:                                        ; preds = %if.then86
  %call89 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !5629
  br label %cleanup, !dbg !5629, !llvm.loop !5606

if.end92:                                         ; preds = %if.end70, %if.end80
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5630
  %tobool93 = icmp eq %struct._IO_FILE* %29, null, !dbg !5630
  br i1 %tobool93, label %if.end107, label %if.then94, !dbg !5632

if.then94:                                        ; preds = %if.end92
  %call95 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0), i32 %depth.0.lcssa) #6, !dbg !5633
  %30 = load i64, i64* %count, align 8, !dbg !5635
  %tobool97 = icmp eq i64 %30, 0, !dbg !5637
  br i1 %tobool97, label %if.end105, label %if.then98, !dbg !5638

if.then98:                                        ; preds = %if.then94
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5639
  %count99 = bitcast i8* %call50 to i64*, !dbg !5641
  %32 = load i64, i64* %count99, align 8, !dbg !5641
  %conv100 = sitofp i64 %32 to double, !dbg !5642
  %conv102 = sitofp i64 %30 to double, !dbg !5643
  %div103 = fdiv double %conv100, %conv102, !dbg !5644
  %call104 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), double %div103) #6, !dbg !5645
  br label %if.end105, !dbg !5646

if.end105:                                        ; preds = %if.then94, %if.then98
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5647
  %call106 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #6, !dbg !5648
  br label %if.end107, !dbg !5649

if.end107:                                        ; preds = %if.end92, %if.end105
  tail call void @cgraph_redirect_edge_callee(%struct.cgraph_edge* %22, %struct.cgraph_node* %call38) #6, !dbg !5650
  %call108 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(%struct.cgraph_edge* %22, i8 zeroext 0, %struct.VEC_cgraph_edge_p_heap** %new_edges) #7, !dbg !5651
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8, !dbg !5652
  tail call fastcc void @lookup_recursive_calls(%struct.cgraph_node* %node, %struct.cgraph_node* %34, %struct.fibheap* %call28) #7, !dbg !5653
  %inc110 = add nsw i32 %n.0, 1, !dbg !5654
  call void @llvm.dbg.value(metadata i32 %inc110, metadata !5505, metadata !DIExpression()), !dbg !5509
  br label %cleanup, !dbg !5607

cleanup:                                          ; preds = %if.then65, %if.then86, %if.then75, %if.then88, %if.then77, %if.then67, %if.end107
  %n.1 = phi i32 [ %inc110, %if.end107 ], [ %n.0, %if.then67 ], [ %n.0, %if.then65 ], [ %n.0, %if.then77 ], [ %n.0, %if.then75 ], [ %n.0, %if.then88 ], [ %n.0, %if.then86 ], !dbg !5509
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !5505, metadata !DIExpression()), !dbg !5509
  br label %while.cond

while.end:                                        ; preds = %land.rhs, %while.cond
  %n.0.lcssa = phi i32 [ %n.0, %land.rhs ], [ %n.0, %while.cond ], !dbg !5576
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !5505, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !5505, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !5505, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !5505, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !5505, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !5505, metadata !DIExpression()), !dbg !5509
  %call112 = tail call i32 @fibheap_empty(%struct.fibheap* %call28) #6, !dbg !5655
  %tobool113 = icmp eq i32 %call112, 0, !dbg !5655
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5657
  %tobool115 = icmp ne %struct._IO_FILE* %35, null, !dbg !5657
  %or.cond = and i1 %tobool113, %tobool115, !dbg !5658
  br i1 %or.cond, label %if.then116, label %if.end118, !dbg !5658

if.then116:                                       ; preds = %while.end
  %call117 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !5659
  br label %if.end118, !dbg !5659

if.end118:                                        ; preds = %while.end, %if.then116
  tail call void @fibheap_delete(%struct.fibheap* %call28) #6, !dbg !5660
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5661
  %tobool119 = icmp eq %struct._IO_FILE* %36, null, !dbg !5661
  br i1 %tobool119, label %if.end128, label %if.then120, !dbg !5663

if.then120:                                       ; preds = %if.end118
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call38, i64 0, i32 19, i32 4, !dbg !5664
  %37 = load i32, i32* %size, align 4, !dbg !5664
  %size123 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 4, !dbg !5665
  %38 = load i32, i32* %size123, align 4, !dbg !5665
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call38, i64 0, i32 19, i32 3, !dbg !5666
  %39 = load i32, i32* %time, align 8, !dbg !5666
  %time126 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 3, !dbg !5667
  %40 = load i32, i32* %time126, align 8, !dbg !5667
  %call127 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %36, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.56, i64 0, i64 0), i32 %n.0.lcssa, i32 %37, i32 %38, i32 %39, i32 %40) #6, !dbg !5668
  br label %if.end128, !dbg !5668

if.end128:                                        ; preds = %if.end118, %if.then120
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8, !dbg !5669
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %41, metadata !5495, metadata !DIExpression()), !dbg !5509
  br label %for.cond129, !dbg !5671

for.cond129:                                      ; preds = %for.inc140, %if.end128
  %node.addr.0 = phi %struct.cgraph_node* [ %41, %if.end128 ], [ %42, %for.inc140 ], !dbg !5672
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.addr.0, metadata !5495, metadata !DIExpression()), !dbg !5509
  %cmp130 = icmp eq %struct.cgraph_node* %node.addr.0, %call38, !dbg !5673
  br i1 %cmp130, label %for.end141, label %for.body132, !dbg !5675

for.body132:                                      ; preds = %for.cond129
  %next133 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.addr.0, i64 0, i32 3, !dbg !5676
  %42 = load %struct.cgraph_node*, %struct.cgraph_node** %next133, align 8, !dbg !5676
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %42, metadata !5503, metadata !DIExpression()), !dbg !5509
  %inlined_to135 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.addr.0, i64 0, i32 19, i32 2, !dbg !5678
  %43 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to135, align 8, !dbg !5678
  %cmp136 = icmp eq %struct.cgraph_node* %43, %call38, !dbg !5680
  br i1 %cmp136, label %if.then138, label %for.inc140, !dbg !5681

if.then138:                                       ; preds = %for.body132
  tail call void @cgraph_remove_node(%struct.cgraph_node* %node.addr.0) #6, !dbg !5682
  br label %for.inc140, !dbg !5682

for.inc140:                                       ; preds = %for.body132, %if.then138
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %42, metadata !5495, metadata !DIExpression()), !dbg !5509
  br label %for.cond129, !dbg !5683, !llvm.loop !5684

for.end141:                                       ; preds = %for.cond129
  tail call void @cgraph_remove_node(%struct.cgraph_node* %call38) #6, !dbg !5686
  %cmp142 = icmp sgt i32 %n.0.lcssa, 0, !dbg !5687
  %conv144 = zext i1 %cmp142 to i8, !dbg !5688
  br label %cleanup145, !dbg !5689

cleanup145:                                       ; preds = %lor.lhs.false23, %if.end21, %land.lhs.true, %entry, %for.end141, %if.then31
  %retval.0 = phi i8 [ 0, %if.then31 ], [ %conv144, %for.end141 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ 0, %lor.lhs.false23 ], [ 0, %if.end21 ], !dbg !5509
  ret i8 %retval.0, !dbg !5690
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_new_edges_to_heap(%struct.fibheap* %heap, %struct.VEC_cgraph_edge_p_heap* %new_edges) unnamed_addr #5 !dbg !5691 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !5695, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %new_edges, metadata !5696, metadata !DIExpression()), !dbg !5699
  %base = getelementptr inbounds %struct.VEC_cgraph_edge_p_heap, %struct.VEC_cgraph_edge_p_heap* %new_edges, i64 0, i32 0, !dbg !5699
  br label %while.cond, !dbg !5700

while.cond:                                       ; preds = %cond.end11, %entry
  %call = tail call fastcc i32 @VEC_cgraph_edge_p_base_length(%struct.VEC_cgraph_edge_p_base* %base) #7, !dbg !5701
  %cmp = icmp eq i32 %call, 0, !dbg !5702
  br i1 %cmp, label %while.end, label %while.body, !dbg !5700

while.body:                                       ; preds = %while.cond
  %call7 = tail call fastcc %struct.cgraph_edge* @VEC_cgraph_edge_p_base_pop(%struct.VEC_cgraph_edge_p_base* %base) #7, !dbg !5703
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call7, metadata !5697, metadata !DIExpression()), !dbg !5704
  %aux = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call7, i64 0, i32 8, !dbg !5705
  %0 = load i8*, i8** %aux, align 8, !dbg !5705
  %tobool8 = icmp eq i8* %0, null, !dbg !5705
  br i1 %tobool8, label %cond.end11, label %cond.true9, !dbg !5705

cond.true9:                                       ; preds = %while.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 885, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5705
  br label %cond.end11, !dbg !5705

cond.end11:                                       ; preds = %while.body, %cond.true9
  %call13 = tail call fastcc i32 @cgraph_edge_badness(%struct.cgraph_edge* %call7) #7, !dbg !5706
  %conv = sext i32 %call13 to i64, !dbg !5706
  %1 = bitcast %struct.cgraph_edge* %call7 to i8*, !dbg !5707
  %call14 = tail call %struct.fibnode* @fibheap_insert(%struct.fibheap* %heap, i64 %conv, i8* %1) #6, !dbg !5708
  %2 = bitcast i8** %aux to %struct.fibnode**, !dbg !5709
  store %struct.fibnode* %call14, %struct.fibnode** %2, align 8, !dbg !5709
  br label %while.cond, !dbg !5700, !llvm.loop !5710

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5712
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_callee_keys(%struct.fibheap* %heap, %struct.cgraph_node* %node, %struct.bitmap_head_def* %updated_nodes) unnamed_addr #5 !dbg !5713 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !5717, metadata !DIExpression()), !dbg !5721
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5718, metadata !DIExpression()), !dbg !5721
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %updated_nodes, metadata !5719, metadata !DIExpression()), !dbg !5721
  %estimated_growth = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 5, !dbg !5722
  store i32 -2147483648, i32* %estimated_growth, align 8, !dbg !5723
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !5724
  br label %for.cond, !dbg !5726

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %entry ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !5727
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !5720, metadata !DIExpression()), !dbg !5721
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !5728
  br i1 %tobool, label %for.end, label %for.body, !dbg !5728

for.body:                                         ; preds = %for.cond
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !5729
  %0 = load i32, i32* %inline_failed, align 8, !dbg !5729
  %tobool1 = icmp eq i32 %0, 0, !dbg !5732
  br i1 %tobool1, label %if.else, label %if.then, !dbg !5733

if.then:                                          ; preds = %for.body
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !5734
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5734
  tail call fastcc void @update_caller_keys(%struct.fibheap* %heap, %struct.cgraph_node* %1, %struct.bitmap_head_def* %updated_nodes) #7, !dbg !5735
  br label %for.inc, !dbg !5735

if.else:                                          ; preds = %for.body
  br i1 true, label %if.then4, label %if.else.for.inc_crit_edge, !dbg !5736

if.else.for.inc_crit_edge:                        ; preds = %if.else
  br label %for.inc, !dbg !5736

if.then4:                                         ; preds = %if.else
  %callee5 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !5737
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %callee5, align 8, !dbg !5737
  tail call fastcc void @update_callee_keys(%struct.fibheap* %heap, %struct.cgraph_node* %2, %struct.bitmap_head_def* %updated_nodes) #7, !dbg !5739
  br label %for.inc, !dbg !5739

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then, %if.then4
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !5740
  br label %for.cond, !dbg !5741, !llvm.loop !5742

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5744
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_caller_keys(%struct.fibheap* %heap, %struct.cgraph_node* %node, %struct.bitmap_head_def* %updated_nodes) unnamed_addr #5 !dbg !5745 {
entry:
  %failed_reason = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !5747, metadata !DIExpression()), !dbg !5760
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5748, metadata !DIExpression()), !dbg !5760
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %updated_nodes, metadata !5749, metadata !DIExpression()), !dbg !5760
  %0 = bitcast i32* %failed_reason to i8*, !dbg !5761
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !5761
  %inlinable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !5762
  %bf.load = load i8, i8* %inlinable, align 8, !dbg !5762
  %bf.clear = and i8 %bf.load, 8, !dbg !5762
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !5764
  br i1 %tobool, label %cleanup73, label %lor.lhs.false, !dbg !5765

lor.lhs.false:                                    ; preds = %entry
  %bf.clear4 = and i8 %bf.load, 16, !dbg !5766
  %tobool6 = icmp eq i8 %bf.clear4, 0, !dbg !5767
  br i1 %tobool6, label %lor.lhs.false7, label %cleanup73, !dbg !5768

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !5769
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !5769
  %tobool8 = icmp eq %struct.cgraph_node* %1, null, !dbg !5770
  br i1 %tobool8, label %if.end, label %cleanup73, !dbg !5771

if.end:                                           ; preds = %lor.lhs.false7
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !5772
  %2 = load i32, i32* %uid, align 8, !dbg !5772
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %updated_nodes, i32 %2) #6, !dbg !5774
  %tobool9 = icmp eq i32 %call, 0, !dbg !5774
  br i1 %tobool9, label %if.end11, label %cleanup73, !dbg !5775

if.end11:                                         ; preds = %if.end
  %3 = load i32, i32* %uid, align 8, !dbg !5776
  %call13 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %updated_nodes, i32 %3) #6, !dbg !5777
  %estimated_growth = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 5, !dbg !5778
  store i32 -2147483648, i32* %estimated_growth, align 8, !dbg !5779
  %bf.load17 = load i8, i8* %inlinable, align 8, !dbg !5780
  %bf.clear19 = and i8 %bf.load17, 8, !dbg !5780
  %tobool21 = icmp eq i8 %bf.clear19, 0, !dbg !5782
  br i1 %tobool21, label %cleanup73, label %if.end23, !dbg !5783

if.end23:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i32* %failed_reason, metadata !5751, metadata !DIExpression(DW_OP_deref)), !dbg !5760
  %call24 = call fastcc zeroext i8 @cgraph_default_inline_p(%struct.cgraph_node* %node, i32* nonnull %failed_reason) #7, !dbg !5784
  %tobool25 = icmp eq i8 %call24, 0, !dbg !5784
  %callers39 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !5760
  %4 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers39, align 8, !dbg !5760
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %4, metadata !5750, metadata !DIExpression()), !dbg !5760
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %4, metadata !5750, metadata !DIExpression()), !dbg !5760
  br i1 %tobool25, label %for.cond.preheader, label %for.cond40.preheader, !dbg !5786

for.cond40.preheader:                             ; preds = %if.end23
  br label %for.cond40, !dbg !5787

for.cond.preheader:                               ; preds = %if.end23
  br label %for.cond, !dbg !5788

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %edge.0 = phi %struct.cgraph_edge* [ %9, %for.inc ], [ %4, %for.cond.preheader ], !dbg !5791
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0, metadata !5750, metadata !DIExpression()), !dbg !5760
  %tobool27 = icmp eq %struct.cgraph_edge* %edge.0, null, !dbg !5788
  br i1 %tobool27, label %cleanup73.loopexit, label %for.body, !dbg !5788

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 8, !dbg !5792
  %5 = load i8*, i8** %aux, align 8, !dbg !5792
  %tobool28 = icmp eq i8* %5, null, !dbg !5795
  br i1 %tobool28, label %for.inc, label %if.then29, !dbg !5796

if.then29:                                        ; preds = %for.body
  %6 = bitcast i8* %5 to %struct.fibnode*, !dbg !5796
  %call31 = call i8* @fibheap_delete_node(%struct.fibheap* %heap, %struct.fibnode* nonnull %6) #6, !dbg !5797
  store i8* null, i8** %aux, align 8, !dbg !5799
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 9, !dbg !5800
  %7 = load i32, i32* %inline_failed, align 8, !dbg !5800
  %tobool33 = icmp eq i32 %7, 0, !dbg !5802
  br i1 %tobool33, label %for.inc, label %if.then34, !dbg !5803

if.then34:                                        ; preds = %if.then29
  %8 = load i32, i32* %failed_reason, align 4, !dbg !5804
  call void @llvm.dbg.value(metadata i32 %8, metadata !5751, metadata !DIExpression()), !dbg !5760
  store i32 %8, i32* %inline_failed, align 8, !dbg !5805
  br label %for.inc, !dbg !5806

for.inc:                                          ; preds = %if.then29, %for.body, %if.then34
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 4, !dbg !5807
  %9 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !5807
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %9, metadata !5750, metadata !DIExpression()), !dbg !5760
  br label %for.cond, !dbg !5808, !llvm.loop !5809

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc70
  %edge.1 = phi %struct.cgraph_edge* [ %20, %for.inc70 ], [ %4, %for.cond40.preheader ], !dbg !5811
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.1, metadata !5750, metadata !DIExpression()), !dbg !5760
  %tobool41 = icmp eq %struct.cgraph_edge* %edge.1, null, !dbg !5787
  br i1 %tobool41, label %cleanup73.loopexit2, label %for.body42, !dbg !5787

for.body42:                                       ; preds = %for.cond40
  %inline_failed43 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 9, !dbg !5812
  %10 = load i32, i32* %inline_failed43, align 8, !dbg !5812
  %tobool44 = icmp eq i32 %10, 0, !dbg !5813
  br i1 %tobool44, label %for.inc70, label %if.then45, !dbg !5814

if.then45:                                        ; preds = %for.body42
  %call46 = call fastcc i32 @cgraph_edge_badness(%struct.cgraph_edge* nonnull %edge.1) #7, !dbg !5815
  call void @llvm.dbg.value(metadata i32 %call46, metadata !5752, metadata !DIExpression()), !dbg !5816
  %aux47 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 8, !dbg !5817
  %11 = load i8*, i8** %aux47, align 8, !dbg !5817
  %tobool48 = icmp eq i8* %11, null, !dbg !5818
  %12 = bitcast i8* %11 to %struct.fibnode*, !dbg !5819
  br i1 %tobool48, label %if.then45.if.end62_crit_edge, label %if.then49, !dbg !5819

if.then45.if.end62_crit_edge:                     ; preds = %if.then45
  %.pre = sext i32 %call46 to i64, !dbg !5820
  %.pre3 = bitcast %struct.cgraph_edge* %edge.1 to i8*, !dbg !5821
  %.pre4 = bitcast i8** %aux47 to %struct.fibnode**, !dbg !5822
  br label %if.end62, !dbg !5819

if.then49:                                        ; preds = %if.then45
  %13 = bitcast i8** %aux47 to %struct.fibnode**, !dbg !5823
  call void @llvm.dbg.value(metadata %struct.fibnode* %12, metadata !5757, metadata !DIExpression()), !dbg !5824
  %data = getelementptr inbounds i8, i8* %11, i64 40, !dbg !5825
  %14 = bitcast i8* %data to i8**, !dbg !5825
  %15 = load i8*, i8** %14, align 8, !dbg !5825
  %16 = bitcast %struct.cgraph_edge* %edge.1 to i8*, !dbg !5825
  %cmp = icmp eq i8* %15, %16, !dbg !5825
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5825

cond.true:                                        ; preds = %if.then49
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 658, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5825
  br label %cond.end, !dbg !5825

cond.end:                                         ; preds = %if.then49, %cond.true
  %key = getelementptr inbounds i8, i8* %11, i64 32, !dbg !5826
  %17 = bitcast i8* %key to i64*, !dbg !5826
  %18 = load i64, i64* %17, align 8, !dbg !5826
  %conv = sext i32 %call46 to i64, !dbg !5828
  %cmp51 = icmp eq i64 %18, %conv, !dbg !5829
  br i1 %cmp51, label %cleanup, label %if.end54, !dbg !5830

if.end54:                                         ; preds = %cond.end
  %call56 = call i64 @fibheap_replace_key(%struct.fibheap* %heap, %struct.fibnode* nonnull %12, i64 %conv) #6, !dbg !5831
  %tobool57 = icmp eq i64 %call56, 0, !dbg !5831
  br i1 %tobool57, label %if.end59, label %cleanup, !dbg !5833

if.end59:                                         ; preds = %if.end54
  %19 = load %struct.fibnode*, %struct.fibnode** %13, align 8, !dbg !5834
  %call61 = call i8* @fibheap_delete_node(%struct.fibheap* %heap, %struct.fibnode* %19) #6, !dbg !5835
  br label %cleanup, !dbg !5836

cleanup:                                          ; preds = %if.end54, %cond.end, %if.end59
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end59 ], [ false, %cond.end ], [ false, %if.end54 ]
  br i1 %cleanup.dest.slot.0, label %if.end62, label %for.inc70

if.end62:                                         ; preds = %if.then45.if.end62_crit_edge, %cleanup
  %.pre-phi5 = phi %struct.fibnode** [ %.pre4, %if.then45.if.end62_crit_edge ], [ %13, %cleanup ], !dbg !5822
  %.pre-phi = phi i8* [ %.pre3, %if.then45.if.end62_crit_edge ], [ %16, %cleanup ], !dbg !5821
  %conv63.pre-phi = phi i64 [ %.pre, %if.then45.if.end62_crit_edge ], [ %conv, %cleanup ], !dbg !5820
  %call64 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %heap, i64 %conv63.pre-phi, i8* nonnull %.pre-phi) #6, !dbg !5837
  store %struct.fibnode* %call64, %struct.fibnode** %.pre-phi5, align 8, !dbg !5822
  br label %for.inc70, !dbg !5838

for.inc70:                                        ; preds = %for.body42, %if.end62, %cleanup
  %next_caller71 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 4, !dbg !5839
  %20 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller71, align 8, !dbg !5839
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %20, metadata !5750, metadata !DIExpression()), !dbg !5760
  br label %for.cond40, !dbg !5840, !llvm.loop !5841

cleanup73.loopexit:                               ; preds = %for.cond
  br label %cleanup73, !dbg !5843

cleanup73.loopexit2:                              ; preds = %for.cond40
  br label %cleanup73, !dbg !5843

cleanup73:                                        ; preds = %cleanup73.loopexit2, %cleanup73.loopexit, %if.end11, %if.end, %lor.lhs.false7, %lor.lhs.false, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !5843
  ret void, !dbg !5843
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_free(%struct.VEC_cgraph_edge_p_heap** %vec_) unnamed_addr #0 !dbg !5844 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap** %vec_, metadata !5848, metadata !DIExpression()), !dbg !5849
  %0 = load %struct.VEC_cgraph_edge_p_heap*, %struct.VEC_cgraph_edge_p_heap** %vec_, align 8, !dbg !5850
  %tobool = icmp eq %struct.VEC_cgraph_edge_p_heap* %0, null, !dbg !5850
  br i1 %tobool, label %if.end, label %if.then, !dbg !5852

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_cgraph_edge_p_heap* %0 to i8*, !dbg !5852
  tail call void @free(i8* nonnull %1) #6, !dbg !5850
  br label %if.end, !dbg !5850

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_cgraph_edge_p_heap* null, %struct.VEC_cgraph_edge_p_heap** %vec_, align 8, !dbg !5852
  ret void, !dbg !5852
}

declare dso_local void @fibheap_delete(%struct.fibheap*) local_unnamed_addr #2

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local i32 @ceil_log2(i64) local_unnamed_addr #2

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5853 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5857, metadata !DIExpression()), !dbg !5858
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !5859
  %0 = load i32, i32* %location, align 8, !dbg !5859
  ret i32 %0, !dbg !5860
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lookup_recursive_calls(%struct.cgraph_node* %node, %struct.cgraph_node* %where, %struct.fibheap* %heap) unnamed_addr #5 !dbg !2477 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2488, metadata !DIExpression()), !dbg !5861
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %where, metadata !2489, metadata !DIExpression()), !dbg !5861
  call void @llvm.dbg.value(metadata %struct.fibheap* %heap, metadata !2490, metadata !DIExpression()), !dbg !5861
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %where, i64 0, i32 1, !dbg !5862
  br label %for.cond, !dbg !5864

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %entry ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !5865
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !2491, metadata !DIExpression()), !dbg !5861
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !5866
  br i1 %tobool, label %for.end, label %for.body, !dbg !5866

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !5867
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5867
  %cmp = icmp eq %struct.cgraph_node* %0, %node, !dbg !5870
  br i1 %cmp, label %if.then, label %for.inc, !dbg !5871

if.then:                                          ; preds = %for.body
  %1 = load i64, i64* @max_count, align 8, !dbg !5872
  %tobool1 = icmp eq i64 %1, 0, !dbg !5872
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !5874

cond.true:                                        ; preds = %if.then
  %2 = load i32, i32* @lookup_recursive_calls.priority, align 4, !dbg !5875
  %inc = add nsw i32 %2, 1, !dbg !5875
  store i32 %inc, i32* @lookup_recursive_calls.priority, align 4, !dbg !5875
  %conv = sext i32 %2 to i64, !dbg !5876
  br label %cond.end, !dbg !5874

cond.false:                                       ; preds = %if.then
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 0, !dbg !5877
  %3 = load i64, i64* %count, align 8, !dbg !5877
  %sub = add nsw i64 %1, 16777215, !dbg !5878
  %div = sdiv i64 %sub, 16777216, !dbg !5879
  %div2 = sdiv i64 %3, %div, !dbg !5880
  %sub3 = sub nsw i64 0, %div2, !dbg !5881
  br label %cond.end, !dbg !5874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %sub3, %cond.false ], !dbg !5874
  %4 = bitcast %struct.cgraph_edge* %e.0 to i8*, !dbg !5882
  %call = tail call %struct.fibnode* @fibheap_insert(%struct.fibheap* %heap, i64 %cond, i8* nonnull %4) #6, !dbg !5883
  br label %for.inc, !dbg !5884

for.inc:                                          ; preds = %for.body, %cond.end
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !5885
  br label %for.cond, !dbg !5886, !llvm.loop !5887

for.end:                                          ; preds = %for.cond
  br label %for.cond5, !dbg !5889

for.cond5:                                        ; preds = %for.inc12, %for.end
  %e.1.in = phi %struct.cgraph_edge** [ %callees, %for.end ], [ %next_callee13, %for.inc12 ]
  %e.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.1.in, align 8, !dbg !5891
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.1, metadata !2491, metadata !DIExpression()), !dbg !5861
  %tobool6 = icmp eq %struct.cgraph_edge* %e.1, null, !dbg !5892
  br i1 %tobool6, label %for.end14, label %for.body7, !dbg !5892

for.body7:                                        ; preds = %for.cond5
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 9, !dbg !5893
  %5 = load i32, i32* %inline_failed, align 8, !dbg !5893
  %tobool8 = icmp eq i32 %5, 0, !dbg !5896
  br i1 %tobool8, label %if.then9, label %for.inc12, !dbg !5897

if.then9:                                         ; preds = %for.body7
  %callee10 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 2, !dbg !5898
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %callee10, align 8, !dbg !5898
  tail call fastcc void @lookup_recursive_calls(%struct.cgraph_node* %node, %struct.cgraph_node* %6, %struct.fibheap* %heap) #7, !dbg !5899
  br label %for.inc12, !dbg !5899

for.inc12:                                        ; preds = %for.body7, %if.then9
  %next_callee13 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 6, !dbg !5900
  br label %for.cond5, !dbg !5901, !llvm.loop !5902

for.end14:                                        ; preds = %for.cond5
  ret void, !dbg !5904
}

declare dso_local i32 @fibheap_empty(%struct.fibheap*) local_unnamed_addr #2

declare dso_local void @cgraph_remove_node(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_edge_p_base_length(%struct.VEC_cgraph_edge_p_base* %vec_) unnamed_addr #0 !dbg !5905 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_base* %vec_, metadata !5911, metadata !DIExpression()), !dbg !5912
  %tobool = icmp eq %struct.VEC_cgraph_edge_p_base* %vec_, null, !dbg !5913
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5913

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 0, !dbg !5913
  %0 = load i32, i32* %num, align 8, !dbg !5913
  br label %cond.end, !dbg !5913

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5913
  ret i32 %cond, !dbg !5913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_edge* @VEC_cgraph_edge_p_base_pop(%struct.VEC_cgraph_edge_p_base* %vec_) unnamed_addr #0 !dbg !5914 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_base* %vec_, metadata !5919, metadata !DIExpression()), !dbg !5921
  %num1 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 0, !dbg !5922
  %0 = load i32, i32* %num1, align 8, !dbg !5922
  %dec = add i32 %0, -1, !dbg !5922
  store i32 %dec, i32* %num1, align 8, !dbg !5922
  %idxprom = zext i32 %dec to i64, !dbg !5922
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5922
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %arrayidx, align 8, !dbg !5922
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !5920, metadata !DIExpression()), !dbg !5921
  ret %struct.cgraph_edge* %1, !dbg !5922
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i8* @fibheap_delete_node(%struct.fibheap*, %struct.fibnode*) local_unnamed_addr #2

declare dso_local i64 @fibheap_replace_key(%struct.fibheap*, %struct.fibnode*, i64) local_unnamed_addr #2

declare dso_local %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @add_new_function(%struct.cgraph_node* %node, i8* %data) #5 !dbg !5923 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5927, metadata !DIExpression()), !dbg !5929
  call void @llvm.dbg.value(metadata i8* %data, metadata !5928, metadata !DIExpression()), !dbg !5929
  tail call fastcc void @analyze_function(%struct.cgraph_node* %node) #7, !dbg !5930
  ret void, !dbg !5931
}

declare dso_local void @ipa_register_cgraph_hooks() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ipa_check_create_node_params() unnamed_addr #0 !dbg !5932 {
entry:
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !5933
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !5933
  br i1 %tobool, label %if.then, label %if.end, !dbg !5935

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @cgraph_max_uid, align 4, !dbg !5936
  %call = tail call fastcc %struct.VEC_ipa_node_params_t_heap* @VEC_ipa_node_params_t_heap_alloc(i32 %1) #7, !dbg !5936
  store %struct.VEC_ipa_node_params_t_heap* %call, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !5937
  br label %if.end, !dbg !5938

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.VEC_ipa_node_params_t_heap* [ %0, %entry ], [ %call, %if.then ], !dbg !5939
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %2, i64 0, i32 0, !dbg !5939
  %call2 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %base) #7, !dbg !5939
  %3 = load i32, i32* @cgraph_max_uid, align 4, !dbg !5941
  %cmp = icmp ugt i32 %call2, %3, !dbg !5942
  br i1 %cmp, label %if.end4, label %if.then3, !dbg !5943

if.then3:                                         ; preds = %if.end
  %add = add nsw i32 %3, 1, !dbg !5944
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(%struct.VEC_ipa_node_params_t_heap** nonnull @ipa_node_params_vector, i32 %add) #7, !dbg !5944
  br label %if.end4, !dbg !5944

if.end4:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !5945
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ipa_check_create_edge_args() unnamed_addr #0 !dbg !5946 {
entry:
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !5947
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !5947
  br i1 %tobool, label %if.then, label %if.end, !dbg !5949

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @cgraph_edge_max_uid, align 4, !dbg !5950
  %call = tail call fastcc %struct.VEC_ipa_edge_args_t_gc* @VEC_ipa_edge_args_t_gc_alloc(i32 %1) #7, !dbg !5950
  store %struct.VEC_ipa_edge_args_t_gc* %call, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !5951
  br label %if.end, !dbg !5952

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.VEC_ipa_edge_args_t_gc* [ %0, %entry ], [ %call, %if.then ], !dbg !5953
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %2, i64 0, i32 0, !dbg !5953
  %call2 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %base) #7, !dbg !5953
  %3 = load i32, i32* @cgraph_edge_max_uid, align 4, !dbg !5955
  %cmp = icmp ugt i32 %call2, %3, !dbg !5956
  br i1 %cmp, label %if.end4, label %if.then3, !dbg !5957

if.then3:                                         ; preds = %if.end
  %add = add nsw i32 %3, 1, !dbg !5958
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(%struct.VEC_ipa_edge_args_t_gc** nonnull @ipa_edge_args_vector, i32 %add) #7, !dbg !5958
  br label %if.end4, !dbg !5958

if.end4:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !5959
}

; Function Attrs: nounwind uwtable
define internal fastcc void @analyze_function(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !5960 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5962, metadata !DIExpression()), !dbg !5963
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !5964
  %1 = load %struct.tree_function_decl*, %struct.tree_function_decl** %0, align 8, !dbg !5964
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %1, i64 0, i32 1, !dbg !5964
  %2 = load %struct.function*, %struct.function** %f, align 8, !dbg !5964
  tail call void @push_cfun(%struct.function* %2) #6, !dbg !5965
  %3 = bitcast %struct.cgraph_node* %node to i64*, !dbg !5966
  %4 = load i64, i64* %3, align 8, !dbg !5966
  store i64 %4, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !5967
  %call = tail call i32 @compute_inline_parameters(%struct.cgraph_node* %node) #7, !dbg !5968
  %5 = load i32, i32* @flag_indirect_inlining, align 4, !dbg !5969
  %tobool = icmp eq i32 %5, 0, !dbg !5969
  br i1 %tobool, label %if.end, label %if.then, !dbg !5971

if.then:                                          ; preds = %entry
  tail call fastcc void @inline_indirect_intraprocedural_analysis(%struct.cgraph_node* %node) #7, !dbg !5972
  br label %if.end, !dbg !5972

if.end:                                           ; preds = %entry, %if.then
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !5973
  tail call void @pop_cfun() #6, !dbg !5974
  ret void, !dbg !5975
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_ipa_node_params_t_heap* @VEC_ipa_node_params_t_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !5976 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !5980, metadata !DIExpression()), !dbg !5981
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 48) #6, !dbg !5982
  %0 = bitcast i8* %call to %struct.VEC_ipa_node_params_t_heap*, !dbg !5982
  ret %struct.VEC_ipa_node_params_t_heap* %0, !dbg !5982
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %vec_) unnamed_addr #0 !dbg !5983 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_base* %vec_, metadata !5989, metadata !DIExpression()), !dbg !5990
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_base* %vec_, null, !dbg !5991
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5991

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 0, !dbg !5991
  %0 = load i32, i32* %num, align 8, !dbg !5991
  br label %cond.end, !dbg !5991

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5991
  ret i32 %cond, !dbg !5991
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(%struct.VEC_ipa_node_params_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !5992 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, metadata !5997, metadata !DIExpression()), !dbg !6000
  call void @llvm.dbg.value(metadata i32 %size_, metadata !5998, metadata !DIExpression()), !dbg !6000
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !6001
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !6001
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !6001

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !6001
  br label %cond.end, !dbg !6001

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_node_params_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !6001
  %call = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %cond) #7, !dbg !6001
  call void @llvm.dbg.value(metadata i32 %call, metadata !5999, metadata !DIExpression()), !dbg !6000
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow(%struct.VEC_ipa_node_params_t_heap** nonnull @ipa_node_params_vector, i32 %size_) #7, !dbg !6001
  %1 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !6001
  %tobool1 = icmp eq %struct.VEC_ipa_node_params_t_heap* %1, null, !dbg !6001
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !6001

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %1, i64 0, i32 0, !dbg !6001
  br label %cond.end5, !dbg !6001

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_ipa_node_params_t_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !6001
  %call7 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_address(%struct.VEC_ipa_node_params_t_base* %cond6) #7, !dbg !6001
  %idxprom = sext i32 %call to i64, !dbg !6001
  %arrayidx = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %call7, i64 %idxprom, !dbg !6001
  %2 = bitcast %struct.ipa_node_params* %arrayidx to i8*, !dbg !6001
  %sub = sub nsw i32 %size_, %call, !dbg !6001
  %conv = sext i32 %sub to i64, !dbg !6001
  %mul = mul nsw i64 %conv, 48, !dbg !6001
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !6001
  ret void, !dbg !6001
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow(%struct.VEC_ipa_node_params_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !6002 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, metadata !6004, metadata !DIExpression()), !dbg !6006
  call void @llvm.dbg.value(metadata i32 %size_, metadata !6005, metadata !DIExpression()), !dbg !6006
  %cmp = icmp sgt i32 %size_, -1, !dbg !6007
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6007

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !6007
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !6007
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !6007

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !6007
  br label %cond.end, !dbg !6007

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_ipa_node_params_t_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !6007
  %call = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %cond) #7, !dbg !6007
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !6007
  %tobool2 = icmp eq %struct.VEC_ipa_node_params_t_heap* %1, null, !dbg !6007
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !6007

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %1, i64 0, i32 0, i32 0, !dbg !6007
  %2 = load i32, i32* %num, align 8, !dbg !6007
  br label %cond.end11, !dbg !6007

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !6007
  %sub = sub nsw i32 %size_, %cond12, !dbg !6007
  %call13 = tail call fastcc i32 @VEC_ipa_node_params_t_heap_reserve_exact(%struct.VEC_ipa_node_params_t_heap** nonnull @ipa_node_params_vector, i32 %sub) #7, !dbg !6007
  %3 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !6007
  %num20 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %3, i64 0, i32 0, i32 0, !dbg !6007
  store i32 %size_, i32* %num20, align 8, !dbg !6007
  ret void, !dbg !6007
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_address(%struct.VEC_ipa_node_params_t_base* %vec_) unnamed_addr #0 !dbg !6008 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_base* %vec_, metadata !6014, metadata !DIExpression()), !dbg !6015
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_base* %vec_, null, !dbg !6016
  %arraydecay = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 2, i64 0, !dbg !6016
  %cond = select i1 %tobool, %struct.ipa_node_params* null, %struct.ipa_node_params* %arraydecay, !dbg !6016
  ret %struct.ipa_node_params* %cond, !dbg !6016
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_heap_reserve_exact(%struct.VEC_ipa_node_params_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !6017 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, metadata !6021, metadata !DIExpression()), !dbg !6024
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !6022, metadata !DIExpression()), !dbg !6024
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !6025
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !6025
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !6025

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !6025
  br label %cond.end, !dbg !6025

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_node_params_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !6025
  %call = tail call fastcc i32 @VEC_ipa_node_params_t_base_space(%struct.VEC_ipa_node_params_t_base* %cond, i32 %alloc_) #7, !dbg !6025
  %tobool1 = icmp eq i32 %call, 0, !dbg !6025
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !6025
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !6023, metadata !DIExpression()), !dbg !6024
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6025

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector to i8**), align 8, !dbg !6026
  %call3 = tail call i8* @vec_heap_o_reserve_exact(i8* %1, i32 %alloc_, i64 8, i64 48) #6, !dbg !6026
  store i8* %call3, i8** bitcast (%struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector to i8**), align 8, !dbg !6026
  br label %if.end, !dbg !6026

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !6025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_space(%struct.VEC_ipa_node_params_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !6028 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_base* %vec_, metadata !6032, metadata !DIExpression()), !dbg !6034
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !6033, metadata !DIExpression()), !dbg !6034
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_base* %vec_, null, !dbg !6035
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !6035

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 1, !dbg !6035
  %0 = load i32, i32* %alloc, align 4, !dbg !6035
  %num = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 0, !dbg !6035
  %1 = load i32, i32* %num, align 8, !dbg !6035
  %sub = sub i32 %0, %1, !dbg !6035
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !6035
  br label %cond.end, !dbg !6035

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !6035
  br label %cond.end, !dbg !6035

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !6035
  ret i32 %cond, !dbg !6035
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_ipa_edge_args_t_gc* @VEC_ipa_edge_args_t_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !6036 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !6040, metadata !DIExpression()), !dbg !6041
  %call = tail call i8* @vec_gc_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 16) #6, !dbg !6042
  %0 = bitcast i8* %call to %struct.VEC_ipa_edge_args_t_gc*, !dbg !6042
  ret %struct.VEC_ipa_edge_args_t_gc* %0, !dbg !6042
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %vec_) unnamed_addr #0 !dbg !6043 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_base* %vec_, metadata !6049, metadata !DIExpression()), !dbg !6050
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_base* %vec_, null, !dbg !6051
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !6051

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 0, !dbg !6051
  %0 = load i32, i32* %num, align 8, !dbg !6051
  br label %cond.end, !dbg !6051

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !6051
  ret i32 %cond, !dbg !6051
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(%struct.VEC_ipa_edge_args_t_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !6052 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, metadata !6057, metadata !DIExpression()), !dbg !6060
  call void @llvm.dbg.value(metadata i32 %size_, metadata !6058, metadata !DIExpression()), !dbg !6060
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !6061
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !6061
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !6061

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %0, i64 0, i32 0, !dbg !6061
  br label %cond.end, !dbg !6061

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_edge_args_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !6061
  %call = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %cond) #7, !dbg !6061
  call void @llvm.dbg.value(metadata i32 %call, metadata !6059, metadata !DIExpression()), !dbg !6060
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(%struct.VEC_ipa_edge_args_t_gc** nonnull @ipa_edge_args_vector, i32 %size_) #7, !dbg !6061
  %1 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !6061
  %tobool1 = icmp eq %struct.VEC_ipa_edge_args_t_gc* %1, null, !dbg !6061
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !6061

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %1, i64 0, i32 0, !dbg !6061
  br label %cond.end5, !dbg !6061

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_ipa_edge_args_t_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !6061
  %call7 = tail call fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_address(%struct.VEC_ipa_edge_args_t_base* %cond6) #7, !dbg !6061
  %idxprom = sext i32 %call to i64, !dbg !6061
  %arrayidx = getelementptr inbounds %struct.ipa_edge_args, %struct.ipa_edge_args* %call7, i64 %idxprom, !dbg !6061
  %2 = bitcast %struct.ipa_edge_args* %arrayidx to i8*, !dbg !6061
  %sub = sub nsw i32 %size_, %call, !dbg !6061
  %conv = sext i32 %sub to i64, !dbg !6061
  %mul = shl nsw i64 %conv, 4, !dbg !6061
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !6061
  ret void, !dbg !6061
}

declare dso_local i8* @vec_gc_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(%struct.VEC_ipa_edge_args_t_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !6062 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, metadata !6064, metadata !DIExpression()), !dbg !6066
  call void @llvm.dbg.value(metadata i32 %size_, metadata !6065, metadata !DIExpression()), !dbg !6066
  %cmp = icmp sgt i32 %size_, -1, !dbg !6067
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6067

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !6067
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !6067
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !6067

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %0, i64 0, i32 0, !dbg !6067
  br label %cond.end, !dbg !6067

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_ipa_edge_args_t_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !6067
  %call = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %cond) #7, !dbg !6067
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !6067
  %tobool2 = icmp eq %struct.VEC_ipa_edge_args_t_gc* %1, null, !dbg !6067
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !6067

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %1, i64 0, i32 0, i32 0, !dbg !6067
  %2 = load i32, i32* %num, align 8, !dbg !6067
  br label %cond.end11, !dbg !6067

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !6067
  %sub = sub nsw i32 %size_, %cond12, !dbg !6067
  %call13 = tail call fastcc i32 @VEC_ipa_edge_args_t_gc_reserve_exact(%struct.VEC_ipa_edge_args_t_gc** nonnull @ipa_edge_args_vector, i32 %sub) #7, !dbg !6067
  %3 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !6067
  %num20 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %3, i64 0, i32 0, i32 0, !dbg !6067
  store i32 %size_, i32* %num20, align 8, !dbg !6067
  ret void, !dbg !6067
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_address(%struct.VEC_ipa_edge_args_t_base* %vec_) unnamed_addr #0 !dbg !6068 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_base* %vec_, metadata !6074, metadata !DIExpression()), !dbg !6075
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_base* %vec_, null, !dbg !6076
  %arraydecay = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 2, i64 0, !dbg !6076
  %cond = select i1 %tobool, %struct.ipa_edge_args* null, %struct.ipa_edge_args* %arraydecay, !dbg !6076
  ret %struct.ipa_edge_args* %cond, !dbg !6076
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_gc_reserve_exact(%struct.VEC_ipa_edge_args_t_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !6077 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, metadata !6081, metadata !DIExpression()), !dbg !6084
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !6082, metadata !DIExpression()), !dbg !6084
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !6085
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !6085
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !6085

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %0, i64 0, i32 0, !dbg !6085
  br label %cond.end, !dbg !6085

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_edge_args_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !6085
  %call = tail call fastcc i32 @VEC_ipa_edge_args_t_base_space(%struct.VEC_ipa_edge_args_t_base* %cond, i32 %alloc_) #7, !dbg !6085
  %tobool1 = icmp eq i32 %call, 0, !dbg !6085
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !6085
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !6083, metadata !DIExpression()), !dbg !6084
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6085

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector to i8**), align 8, !dbg !6086
  %call3 = tail call i8* @vec_gc_o_reserve_exact(i8* %1, i32 %alloc_, i64 8, i64 16) #6, !dbg !6086
  store i8* %call3, i8** bitcast (%struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector to i8**), align 8, !dbg !6086
  br label %if.end, !dbg !6086

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !6085
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_space(%struct.VEC_ipa_edge_args_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !6088 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_base* %vec_, metadata !6092, metadata !DIExpression()), !dbg !6094
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !6093, metadata !DIExpression()), !dbg !6094
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_base* %vec_, null, !dbg !6095
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !6095

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 1, !dbg !6095
  %0 = load i32, i32* %alloc, align 4, !dbg !6095
  %num = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 0, !dbg !6095
  %1 = load i32, i32* %num, align 8, !dbg !6095
  %sub = sub i32 %0, %1, !dbg !6095
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !6095
  br label %cond.end, !dbg !6095

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !6095
  br label %cond.end, !dbg !6095

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !6095
  ret i32 %cond, !dbg !6095
}

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @inline_indirect_intraprocedural_analysis(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !6096 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !6098, metadata !DIExpression()), !dbg !6100
  %0 = load i32, i32* @flag_ipa_cp, align 4, !dbg !6101
  %tobool = icmp eq i32 %0, 0, !dbg !6101
  br i1 %tobool, label %if.then, label %if.end, !dbg !6103

if.then:                                          ; preds = %entry
  tail call void @ipa_initialize_node_params(%struct.cgraph_node* %node) #6, !dbg !6104
  tail call void @ipa_detect_param_modifications(%struct.cgraph_node* %node) #6, !dbg !6106
  br label %if.end, !dbg !6107

if.end:                                           ; preds = %entry, %if.then
  tail call void @ipa_analyze_params_uses(%struct.cgraph_node* %node) #6, !dbg !6108
  %1 = load i32, i32* @flag_ipa_cp, align 4, !dbg !6109
  %tobool1 = icmp eq i32 %1, 0, !dbg !6109
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !6111

if.then2:                                         ; preds = %if.end
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !6112
  br label %for.cond, !dbg !6114

for.cond:                                         ; preds = %for.body, %if.then2
  %cs.0.in = phi %struct.cgraph_edge** [ %callees, %if.then2 ], [ %next_callee, %for.body ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !6115
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !6099, metadata !DIExpression()), !dbg !6100
  %tobool3 = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !6116
  br i1 %tobool3, label %if.end4.loopexit, label %for.body, !dbg !6116

for.body:                                         ; preds = %for.cond
  tail call void @ipa_count_arguments(%struct.cgraph_edge* nonnull %cs.0) #6, !dbg !6117
  tail call void @ipa_compute_jump_functions(%struct.cgraph_edge* nonnull %cs.0) #6, !dbg !6120
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 6, !dbg !6121
  br label %for.cond, !dbg !6122, !llvm.loop !6123

if.end4.loopexit:                                 ; preds = %for.cond
  br label %if.end4, !dbg !6125

if.end4:                                          ; preds = %if.end4.loopexit, %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !6125
  %tobool5 = icmp eq %struct._IO_FILE* %2, null, !dbg !6125
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6127

if.then6:                                         ; preds = %if.end4
  tail call void @ipa_print_node_params(%struct._IO_FILE* nonnull %2, %struct.cgraph_node* %node) #6, !dbg !6128
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !6130
  tail call void @ipa_print_node_jump_functions(%struct._IO_FILE* %3, %struct.cgraph_node* %node) #6, !dbg !6131
  br label %if.end7, !dbg !6132

if.end7:                                          ; preds = %if.end4, %if.then6
  ret void, !dbg !6133
}

declare dso_local void @pop_cfun() local_unnamed_addr #2

declare dso_local void @ipa_initialize_node_params(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @ipa_detect_param_modifications(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @ipa_analyze_params_uses(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @ipa_count_arguments(%struct.cgraph_edge*) local_unnamed_addr #2

declare dso_local void @ipa_compute_jump_functions(%struct.cgraph_edge*) local_unnamed_addr #2

declare dso_local void @ipa_print_node_params(%struct._IO_FILE*, %struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @ipa_print_node_jump_functions(%struct._IO_FILE*, %struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @ipa_prop_write_jump_functions(%struct.cgraph_node_set_def*) local_unnamed_addr #2

declare dso_local void @ipa_prop_read_jump_functions() local_unnamed_addr #2

declare dso_local zeroext i8 @cgraph_preserve_function_body_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.cgraph_node* @save_inline_function_body(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local i32 @execute_fixup_cfg() local_unnamed_addr #2

declare dso_local void @gt_ggc_mx_cgraph_node(i8*) local_unnamed_addr #2

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #2

declare dso_local void @gt_pch_nx_cgraph_node(i8*) local_unnamed_addr #2

declare dso_local i32 @gt_pch_note_object(i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gt_pch_pa_order(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #5 !dbg !6134 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !6139, metadata !DIExpression()), !dbg !6146
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !6140, metadata !DIExpression()), !dbg !6146
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !6141, metadata !DIExpression()), !dbg !6146
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !6142, metadata !DIExpression()), !dbg !6146
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !6147
  %cmp = icmp eq %struct.cgraph_node** %0, null, !dbg !6148
  br i1 %cmp, label %if.end10, label %for.cond.preheader, !dbg !6149

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !6143, metadata !DIExpression()), !dbg !6150
  %cmp6 = icmp eq i8* %this_obj, bitcast (%struct.cgraph_node*** @order to i8*), !dbg !6151
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !6153

if.then8:                                         ; preds = %for.cond.preheader
  tail call void %op(i8* bitcast (%struct.cgraph_node*** @order to i8*), i8* %cookie) #6, !dbg !6154
  br label %if.end10, !dbg !6154

if.end10:                                         ; preds = %entry, %for.cond.preheader, %if.then8
  ret void, !dbg !6155
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
!llvm.module.flags = !{!2494, !2495, !2496}
!llvm.ident = !{!2497}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "overall_size", scope: !2, file: !3, line: 171, type: !684, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !681, globals: !2432, nameTableKind: None)
!3 = !DIFile(filename: "ipa-inline.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !336, !342, !347, !352, !370, !377, !384, !391, !567, !590, !597, !636, !642, !668, !674}
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
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !330, line: 30, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334, !335}
!332 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !337, line: 363, baseType: !7, size: 32, elements: !338)
!337 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!338 = !{!339, !340, !341}
!339 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!340 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!341 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !337, line: 355, baseType: !7, size: 32, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!345 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!346 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!347 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !348, line: 474, baseType: !7, size: 32, elements: !349)
!348 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!349 = !{!350, !351}
!350 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!351 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!354 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !378)
!378 = !{!379, !380, !381, !382, !383}
!379 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !385, line: 104, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390}
!387 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 74, baseType: !7, size: 32, elements: !393)
!392 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!394 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!566 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !568, line: 309, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!570 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "inlining_mode", file: !3, line: 156, baseType: !7, size: 32, elements: !591)
!591 = !{!592, !593, !594, !595, !596}
!592 = !DIEnumerator(name: "INLINE_NONE", value: 0, isUnsigned: true)
!593 = !DIEnumerator(name: "INLINE_ALWAYS_INLINE", value: 1, isUnsigned: true)
!594 = !DIEnumerator(name: "INLINE_SIZE_NORECURSIVE", value: 2, isUnsigned: true)
!595 = !DIEnumerator(name: "INLINE_SIZE", value: 3, isUnsigned: true)
!596 = !DIEnumerator(name: "INLINE_ALL", value: 4, isUnsigned: true)
!597 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !598, line: 51, baseType: !7, size: 32, elements: !599)
!598 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!600 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!619 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!620 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!621 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!622 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!623 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!624 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!625 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!626 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!627 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!628 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!629 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!630 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!631 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!632 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!633 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!634 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!635 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!636 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !598, line: 80, baseType: !7, size: 32, elements: !637)
!637 = !{!638, !639, !640, !641}
!638 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!639 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!640 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!641 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!642 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !598, line: 727, baseType: !7, size: 32, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!644 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!645 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!646 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!647 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!648 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!649 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!650 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!651 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!652 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!653 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!654 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!655 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!656 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!657 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!658 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!659 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!660 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!661 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!662 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!663 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!664 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!665 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!666 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!667 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!668 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ipa_lattice_type", file: !669, line: 66, baseType: !7, size: 32, elements: !670)
!669 = !DIFile(filename: "./ipa-prop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!670 = !{!671, !672, !673}
!671 = !DIEnumerator(name: "IPA_BOTTOM", value: 0, isUnsigned: true)
!672 = !DIEnumerator(name: "IPA_CONST_VALUE", value: 1, isUnsigned: true)
!673 = !DIEnumerator(name: "IPA_TOP", value: 2, isUnsigned: true)
!674 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "jump_func_type", file: !669, line: 48, baseType: !7, size: 32, elements: !675)
!675 = !{!676, !677, !678, !679, !680}
!676 = !DIEnumerator(name: "IPA_JF_UNKNOWN", value: 0, isUnsigned: true)
!677 = !DIEnumerator(name: "IPA_JF_CONST", value: 1, isUnsigned: true)
!678 = !DIEnumerator(name: "IPA_JF_CONST_MEMBER_PTR", value: 2, isUnsigned: true)
!679 = !DIEnumerator(name: "IPA_JF_PASS_THROUGH", value: 3, isUnsigned: true)
!680 = !DIEnumerator(name: "IPA_JF_ANCESTOR", value: 4, isUnsigned: true)
!681 = !{!682, !683, !684, !685, !688, !689, !691, !590, !693, !696, !134, !636, !757, !2084, !877, !1384, !686, !2086, !2092, !2316, !2317, !2318, !692, !2331, !7, !2345, !2390}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!684 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !337, line: 119, baseType: !692)
!692 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !694, line: 46, baseType: !695)
!694 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!695 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !697, line: 47, baseType: !698)
!697 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !700, line: 75, size: 256, elements: !701)
!700 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!701 = !{!702, !716, !717, !718}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !699, file: !700, line: 76, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !700, line: 68, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !700, line: 63, size: 320, elements: !706)
!706 = !{!707, !709, !710, !711}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !700, line: 64, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !705, file: !700, line: 65, baseType: !708, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !705, file: !700, line: 66, baseType: !7, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !705, file: !700, line: 67, baseType: !712, size: 128, offset: 192)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 128, elements: !714)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !700, line: 29, baseType: !695)
!714 = !{!715}
!715 = !DISubrange(count: 2)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !699, file: !700, line: 77, baseType: !703, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !699, file: !700, line: 78, baseType: !7, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !699, file: !700, line: 79, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !700, line: 49, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !700, line: 45, size: 832, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !721, file: !700, line: 46, baseType: !708, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !721, file: !700, line: 47, baseType: !698, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !721, file: !700, line: 48, baseType: !726, size: 704, offset: 128)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !727, line: 164, size: 704, elements: !728)
!727 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!728 = !{!729, !730, !740, !741, !742, !743, !744, !745, !749, !753, !754, !755, !756}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !726, file: !727, line: 166, baseType: !692, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !726, file: !727, line: 167, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !727, line: 157, size: 192, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !732, file: !727, line: 159, baseType: !686, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !732, file: !727, line: 160, baseType: !731, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !732, file: !727, line: 161, baseType: !737, size: 32, offset: 128)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 32, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 4)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !726, file: !727, line: 168, baseType: !686, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !726, file: !727, line: 169, baseType: !686, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !726, file: !727, line: 170, baseType: !686, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !726, file: !727, line: 171, baseType: !692, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !726, file: !727, line: 172, baseType: !684, size: 32, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !726, file: !727, line: 176, baseType: !746, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!731, !688, !692}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !726, file: !727, line: 177, baseType: !750, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !688, !731}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !726, file: !727, line: 178, baseType: !688, size: 64, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !726, file: !727, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !726, file: !727, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !726, file: !727, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !598, line: 737, size: 768, elements: !759)
!759 = !{!760, !1931, !1941, !1947, !1952, !1957, !1964, !1970, !1976, !1981, !1995, !2000, !2006, !2011, !2021, !2026, !2042, !2049, !2056, !2062, !2067, !2073, !2079}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !758, file: !598, line: 738, baseType: !761, size: 256)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !598, line: 271, size: 256, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !778, !779, !1930}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !761, file: !598, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !761, file: !598, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !761, file: !598, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !761, file: !598, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !761, file: !598, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !761, file: !598, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !761, file: !598, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !761, file: !598, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !761, file: !598, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !761, file: !598, line: 312, baseType: !7, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !761, file: !598, line: 316, baseType: !774, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !775, line: 58, baseType: !776)
!775 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !777, line: 44, baseType: !7)
!777 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !761, file: !598, line: 319, baseType: !7, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !761, file: !598, line: 323, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !337, line: 217, size: 832, elements: !782)
!782 = !{!783, !1895, !1896, !1897, !1900, !1904, !1905, !1906, !1924, !1925, !1926, !1927, !1928, !1929}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !781, file: !337, line: 219, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !337, line: 151, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !337, line: 151, size: 128, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !786, file: !337, line: 151, baseType: !789, size: 128)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !337, line: 150, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !337, line: 150, size: 128, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !790, file: !337, line: 150, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !790, file: !337, line: 150, baseType: !7, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !790, file: !337, line: 150, baseType: !795, size: 64, offset: 64)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 64, elements: !857)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !697, line: 108, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !337, line: 122, size: 512, elements: !799)
!799 = !{!800, !801, !802, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !798, file: !337, line: 124, baseType: !780, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !798, file: !337, line: 125, baseType: !780, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !798, file: !337, line: 131, baseType: !803, size: 64, offset: 128)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !337, line: 128, size: 64, elements: !804)
!804 = !{!805, !821}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !803, file: !337, line: 129, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !697, line: 66, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !598, line: 143, size: 192, elements: !809)
!809 = !{!810, !819, !820}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !808, file: !598, line: 145, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !697, line: 69, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !598, line: 136, size: 192, elements: !814)
!814 = !{!815, !817, !818}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !813, file: !598, line: 137, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !697, line: 58, baseType: !757)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !813, file: !598, line: 138, baseType: !812, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !813, file: !598, line: 139, baseType: !812, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !808, file: !598, line: 146, baseType: !811, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !808, file: !598, line: 152, baseType: !806, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !803, file: !337, line: 130, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !697, line: 50, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !825, line: 240, size: 384, elements: !826)
!825 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !824, file: !825, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !824, file: !825, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !824, file: !825, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !824, file: !825, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !824, file: !825, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !824, file: !825, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !824, file: !825, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !824, file: !825, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !824, file: !825, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !824, file: !825, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !824, file: !825, line: 321, baseType: !838, size: 320, offset: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !825, line: 315, size: 320, elements: !839)
!839 = !{!840, !1855, !1857, !1886, !1887}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !838, file: !825, line: 316, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 64, elements: !857)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !825, line: 183, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !825, line: 166, size: 64, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !859, !860, !872, !875, !876, !1833, !1834, !1845, !1852}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !843, file: !825, line: 168, baseType: !684, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !843, file: !825, line: 169, baseType: !7, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !843, file: !825, line: 170, baseType: !689, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !843, file: !825, line: 171, baseType: !822, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !843, file: !825, line: 172, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !697, line: 53, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !825, line: 359, size: 128, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !852, file: !825, line: 360, baseType: !684, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !852, file: !825, line: 361, baseType: !856, size: 64, offset: 64)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 64, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 1)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !843, file: !825, line: 173, baseType: !5, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !843, file: !825, line: 174, baseType: !861, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !825, line: 133, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !825, line: 115, size: 32, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !862, file: !825, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !862, file: !825, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !862, file: !825, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !862, file: !825, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !862, file: !825, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !862, file: !825, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !862, file: !825, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !862, file: !825, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !843, file: !825, line: 175, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !825, line: 175, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !843, file: !825, line: 176, baseType: !698, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !843, file: !825, line: 177, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !697, line: 56, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !880)
!880 = !{!881, !914, !920, !931, !950, !961, !966, !973, !979, !992, !1000, !1038, !1043, !1071, !1088, !1089, !1094, !1103, !1109, !1114, !1118, !1122, !1482, !1531, !1537, !1543, !1550, !1563, !1577, !1594, !1606, !1628, !1643, !1815}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !879, file: !135, line: 3372, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !882, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !882, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !882, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !882, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !882, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !882, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !882, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !882, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !882, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !882, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !882, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !882, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !882, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !882, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !882, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !882, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !882, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !882, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !882, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !882, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !882, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !882, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !882, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !882, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !882, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !882, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !882, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !882, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !882, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !882, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !879, file: !135, line: 3373, baseType: !915, size: 192)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !915, file: !135, line: 403, baseType: !882, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !915, file: !135, line: 404, baseType: !877, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !915, file: !135, line: 405, baseType: !877, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !879, file: !135, line: 3374, baseType: !921, size: 320)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !921, file: !135, line: 1385, baseType: !915, size: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !921, file: !135, line: 1386, baseType: !925, size: 128, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !926, line: 58, baseType: !927)
!926 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 54, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !927, file: !926, line: 56, baseType: !695, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !927, file: !926, line: 57, baseType: !692, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !879, file: !135, line: 3375, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !932, file: !135, line: 1398, baseType: !915, size: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !932, file: !135, line: 1399, baseType: !936, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !938, line: 52, size: 256, elements: !939)
!938 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!939 = !{!940, !941, !942, !943, !944, !945, !946}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !937, file: !938, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !937, file: !938, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !937, file: !938, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !937, file: !938, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !937, file: !938, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !937, file: !938, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !937, file: !938, line: 62, baseType: !947, size: 192, offset: 64)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 192, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 3)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !879, file: !135, line: 3376, baseType: !951, size: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !951, file: !135, line: 1409, baseType: !915, size: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !951, file: !135, line: 1410, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !957, line: 27, size: 192, elements: !958)
!957 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !956, file: !957, line: 29, baseType: !925, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !956, file: !957, line: 30, baseType: !5, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !879, file: !135, line: 3377, baseType: !962, size: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !135, line: 1438, baseType: !915, size: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !962, file: !135, line: 1439, baseType: !877, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !879, file: !135, line: 3378, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !967, file: !135, line: 1419, baseType: !915, size: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !967, file: !135, line: 1420, baseType: !684, size: 32, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !967, file: !135, line: 1421, baseType: !972, size: 8, offset: 224)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 8, elements: !857)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !879, file: !135, line: 3379, baseType: !974, size: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !974, file: !135, line: 1429, baseType: !915, size: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !974, file: !135, line: 1430, baseType: !877, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !974, file: !135, line: 1431, baseType: !877, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !879, file: !135, line: 3380, baseType: !980, size: 320)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !980, file: !135, line: 1461, baseType: !915, size: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !980, file: !135, line: 1462, baseType: !984, size: 128, offset: 192)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !985, line: 31, size: 128, elements: !986)
!985 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!986 = !{!987, !990, !991}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !984, file: !985, line: 32, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !984, file: !985, line: 33, baseType: !7, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !984, file: !985, line: 34, baseType: !7, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !879, file: !135, line: 3381, baseType: !993, size: 384)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !994)
!994 = !{!995, !996, !997, !998, !999}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !993, file: !135, line: 2508, baseType: !915, size: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !993, file: !135, line: 2509, baseType: !774, size: 32, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !993, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !993, file: !135, line: 2511, baseType: !877, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !993, file: !135, line: 2512, baseType: !877, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !879, file: !135, line: 3382, baseType: !1001, size: 896)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1001, file: !135, line: 2653, baseType: !993, size: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1001, file: !135, line: 2654, baseType: !877, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1001, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1001, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1001, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1001, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1001, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1001, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1001, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1001, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1001, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1001, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1001, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1001, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1001, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1001, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1001, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1001, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1001, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1001, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1001, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1001, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1001, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1001, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1001, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1001, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1001, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1001, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1001, file: !135, line: 2705, baseType: !877, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1001, file: !135, line: 2706, baseType: !877, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1001, file: !135, line: 2707, baseType: !877, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1001, file: !135, line: 2708, baseType: !877, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1001, file: !135, line: 2711, baseType: !1036, size: 64, offset: 832)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !879, file: !135, line: 3383, baseType: !1039, size: 960)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1039, file: !135, line: 2757, baseType: !1001, size: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1039, file: !135, line: 2758, baseType: !822, size: 64, offset: 896)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !879, file: !135, line: 3384, baseType: !1044, size: 1472)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1045)
!1045 = !{!1046, !1067, !1068, !1069, !1070}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1044, file: !135, line: 3115, baseType: !1047, size: 1216)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1047, file: !135, line: 2985, baseType: !1039, size: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1047, file: !135, line: 2986, baseType: !877, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1047, file: !135, line: 2987, baseType: !877, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1047, file: !135, line: 2988, baseType: !877, size: 64, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1047, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1047, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1047, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1047, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1047, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1047, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1047, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1047, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1047, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1047, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1047, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1047, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1047, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1047, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1044, file: !135, line: 3117, baseType: !877, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1044, file: !135, line: 3119, baseType: !877, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1044, file: !135, line: 3121, baseType: !877, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1044, file: !135, line: 3123, baseType: !877, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !879, file: !135, line: 3385, baseType: !1072, size: 1088)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1072, file: !135, line: 2875, baseType: !1039, size: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1072, file: !135, line: 2876, baseType: !822, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1072, file: !135, line: 2877, baseType: !1077, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1079, line: 172, size: 128, elements: !1080)
!1079 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1078, file: !1079, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1078, file: !1079, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1078, file: !1079, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1078, file: !1079, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1078, file: !1079, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1078, file: !1079, line: 195, baseType: !7, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1078, file: !1079, line: 199, baseType: !877, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !879, file: !135, line: 3386, baseType: !1047, size: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !879, file: !135, line: 3387, baseType: !1090, size: 1280)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1090, file: !135, line: 3094, baseType: !1047, size: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1090, file: !135, line: 3095, baseType: !1077, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !879, file: !135, line: 3388, baseType: !1095, size: 1216)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !135, line: 2825, baseType: !1001, size: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1095, file: !135, line: 2827, baseType: !877, size: 64, offset: 896)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1095, file: !135, line: 2828, baseType: !877, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1095, file: !135, line: 2829, baseType: !877, size: 64, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1095, file: !135, line: 2830, baseType: !877, size: 64, offset: 1088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1095, file: !135, line: 2831, baseType: !877, size: 64, offset: 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !879, file: !135, line: 3389, baseType: !1104, size: 1024)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1105)
!1105 = !{!1106, !1107, !1108}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1104, file: !135, line: 2851, baseType: !1039, size: 960)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1104, file: !135, line: 2852, baseType: !684, size: 32, offset: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1104, file: !135, line: 2853, baseType: !684, size: 32, offset: 992)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !879, file: !135, line: 3390, baseType: !1110, size: 1024)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1110, file: !135, line: 2858, baseType: !1039, size: 960)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1110, file: !135, line: 2859, baseType: !1077, size: 64, offset: 960)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !879, file: !135, line: 3391, baseType: !1115, size: 960)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1115, file: !135, line: 2863, baseType: !1039, size: 960)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !879, file: !135, line: 3392, baseType: !1119, size: 1472)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1119, file: !135, line: 3305, baseType: !1044, size: 1472)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !879, file: !135, line: 3393, baseType: !1123, size: 1792)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1124)
!1124 = !{!1125, !1126, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1123, file: !135, line: 3249, baseType: !1044, size: 1472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1123, file: !135, line: 3251, baseType: !1127, size: 64, offset: 1472)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1129, line: 463, size: 1152, elements: !1130)
!1129 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1130 = !{!1131, !1293, !1324, !1325, !1402, !1405, !1406, !1407, !1408, !1409, !1410, !1434, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1128, file: !1129, line: 464, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !330, line: 194, size: 384, elements: !1134)
!1134 = !{!1135, !1184, !1197, !1211, !1261, !1274}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1133, file: !330, line: 197, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !330, line: 182, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !330, line: 116, size: 704, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1172, !1181, !1182, !1183}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1138, file: !330, line: 119, baseType: !1137, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1138, file: !330, line: 122, baseType: !1137, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1138, file: !330, line: 123, baseType: !1137, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1138, file: !330, line: 126, baseType: !684, size: 32, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1138, file: !330, line: 129, baseType: !329, size: 32, offset: 224)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1138, file: !330, line: 165, baseType: !1146, size: 192, offset: 256)
!1146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !330, line: 132, size: 192, elements: !1147)
!1147 = !{!1148, !1161, !1167}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1146, file: !330, line: 137, baseType: !1149, size: 128)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !330, line: 133, size: 128, elements: !1150)
!1150 = !{!1151, !1160}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1149, file: !330, line: 135, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !330, line: 93, size: 320, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1153, file: !330, line: 96, baseType: !1152, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1153, file: !330, line: 97, baseType: !1152, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1153, file: !330, line: 101, baseType: !877, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1153, file: !330, line: 106, baseType: !877, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1153, file: !330, line: 111, baseType: !877, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1149, file: !330, line: 136, baseType: !1152, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1146, file: !330, line: 151, baseType: !1162, size: 192)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !330, line: 139, size: 192, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1162, file: !330, line: 141, baseType: !877, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1162, file: !330, line: 145, baseType: !877, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1162, file: !330, line: 150, baseType: !684, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1146, file: !330, line: 164, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !330, line: 153, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1168, file: !330, line: 161, baseType: !877, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1168, file: !330, line: 163, baseType: !774, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1138, file: !330, line: 168, baseType: !1173, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !330, line: 67, size: 320, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1174, file: !330, line: 70, baseType: !1173, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1174, file: !330, line: 73, baseType: !1137, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1174, file: !330, line: 78, baseType: !877, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1174, file: !330, line: 85, baseType: !822, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1174, file: !330, line: 88, baseType: !684, size: 32, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1138, file: !330, line: 173, baseType: !822, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1138, file: !330, line: 173, baseType: !822, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1138, file: !330, line: 177, baseType: !683, size: 8, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1133, file: !330, line: 200, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !330, line: 185, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !330, line: 185, size: 128, elements: !1188)
!1188 = !{!1189}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1187, file: !330, line: 185, baseType: !1190, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !330, line: 184, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !330, line: 184, size: 128, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1191, file: !330, line: 184, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1191, file: !330, line: 184, baseType: !7, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1191, file: !330, line: 184, baseType: !1196, size: 64, offset: 64)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 64, elements: !857)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1133, file: !330, line: 203, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !330, line: 189, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !330, line: 189, size: 128, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1200, file: !330, line: 189, baseType: !1203, size: 128)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !330, line: 188, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !330, line: 188, size: 128, elements: !1205)
!1205 = !{!1206, !1207, !1208}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1204, file: !330, line: 188, baseType: !7, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1204, file: !330, line: 188, baseType: !7, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1204, file: !330, line: 188, baseType: !1209, size: 64, offset: 64)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1210, size: 64, elements: !857)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !330, line: 180, baseType: !1173)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1133, file: !330, line: 207, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1213, line: 144, baseType: !1214)
!1213 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1213, line: 100, size: 896, elements: !1216)
!1216 = !{!1217, !1225, !1230, !1235, !1237, !1238, !1239, !1240, !1241, !1242, !1247, !1249, !1250, !1255, !1260}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1215, file: !1213, line: 102, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1213, line: 52, baseType: !1219)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1213, line: 47, baseType: !7)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1215, file: !1213, line: 105, baseType: !1226, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1213, line: 59, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!684, !1223, !1223}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1215, file: !1213, line: 108, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1213, line: 63, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !688}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1215, file: !1213, line: 111, baseType: !1236, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1215, file: !1213, line: 114, baseType: !693, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1215, file: !1213, line: 117, baseType: !693, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1215, file: !1213, line: 120, baseType: !693, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1215, file: !1213, line: 124, baseType: !7, size: 32, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1215, file: !1213, line: 128, baseType: !7, size: 32, offset: 480)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1215, file: !1213, line: 131, baseType: !1243, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1213, line: 75, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!688, !693, !693}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1215, file: !1213, line: 132, baseType: !1248, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1213, line: 78, baseType: !1232)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1215, file: !1213, line: 135, baseType: !688, size: 64, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1215, file: !1213, line: 136, baseType: !1251, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1213, line: 82, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!688, !688, !693, !693}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1215, file: !1213, line: 137, baseType: !1256, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1213, line: 83, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !688, !688}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1215, file: !1213, line: 141, baseType: !7, size: 32, offset: 832)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1133, file: !330, line: 211, baseType: !1262, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1264, file: !135, line: 183, baseType: !1267, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1268, file: !135, line: 182, baseType: !7, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1268, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1268, file: !135, line: 182, baseType: !1273, size: 64, offset: 64)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 64, elements: !857)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1133, file: !330, line: 220, baseType: !1275, size: 64, offset: 320)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !330, line: 217, size: 64, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1275, file: !330, line: 218, baseType: !1262, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1275, file: !330, line: 219, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1281, line: 29, baseType: !1282)
!1281 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1281, line: 29, size: 96, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1282, file: !1281, line: 29, baseType: !1285, size: 96)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1281, line: 27, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1281, line: 27, size: 96, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1286, file: !1281, line: 27, baseType: !7, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1286, file: !1281, line: 27, baseType: !7, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1286, file: !1281, line: 27, baseType: !1291, size: 8, offset: 64)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 8, elements: !857)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1281, line: 26, baseType: !683)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1128, file: !1129, line: 467, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !337, line: 374, size: 640, elements: !1296)
!1296 = !{!1297, !1299, !1300, !1313, !1314, !1315, !1316, !1317, !1318, !1320, !1322, !1323}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1295, file: !337, line: 377, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !697, line: 111, baseType: !780)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1295, file: !337, line: 378, baseType: !1298, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1295, file: !337, line: 381, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !337, line: 282, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !337, line: 282, size: 128, elements: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1303, file: !337, line: 282, baseType: !1306, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !337, line: 281, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !337, line: 281, size: 128, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1307, file: !337, line: 281, baseType: !7, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1307, file: !337, line: 281, baseType: !7, size: 32, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1307, file: !337, line: 281, baseType: !1312, size: 64, offset: 64)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 64, elements: !857)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1295, file: !337, line: 384, baseType: !684, size: 32, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1295, file: !337, line: 387, baseType: !684, size: 32, offset: 224)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1295, file: !337, line: 390, baseType: !684, size: 32, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1295, file: !337, line: 394, baseType: !1301, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1295, file: !337, line: 396, baseType: !336, size: 32, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1295, file: !337, line: 399, baseType: !1319, size: 64, offset: 416)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !714)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1295, file: !337, line: 402, baseType: !1321, size: 64, offset: 480)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !714)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1295, file: !337, line: 406, baseType: !684, size: 32, offset: 544)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1295, file: !337, line: 409, baseType: !684, size: 32, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1128, file: !1129, line: 470, baseType: !807, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1128, file: !1129, line: 473, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1079, line: 39, size: 1152, elements: !1328)
!1328 = !{!1329, !1330, !1343, !1344, !1345, !1356, !1357, !1361, !1362, !1363, !1364, !1365}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1327, file: !1079, line: 41, baseType: !1212, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1327, file: !1079, line: 48, baseType: !1331, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !598, line: 35, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !598, line: 35, size: 128, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1333, file: !598, line: 35, baseType: !1336, size: 128)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !598, line: 33, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !598, line: 33, size: 128, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1337, file: !598, line: 33, baseType: !7, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1337, file: !598, line: 33, baseType: !7, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1337, file: !598, line: 33, baseType: !1342, size: 64, offset: 64)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 64, elements: !857)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1327, file: !1079, line: 51, baseType: !1262, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1327, file: !1079, line: 54, baseType: !877, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1327, file: !1079, line: 57, baseType: !1346, size: 128, offset: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1347, line: 31, size: 128, elements: !1348)
!1347 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1346, file: !1347, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1346, file: !1347, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1346, file: !1347, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1346, file: !1347, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1346, file: !1347, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1346, file: !1347, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1346, file: !1347, line: 56, baseType: !696, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1327, file: !1079, line: 60, baseType: !1346, size: 128, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1327, file: !1079, line: 64, baseType: !1358, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1360, line: 33, flags: DIFlagFwdDecl)
!1360 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1327, file: !1079, line: 67, baseType: !877, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1327, file: !1079, line: 73, baseType: !1212, size: 64, offset: 640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1327, file: !1079, line: 77, baseType: !696, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1327, file: !1079, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1327, file: !1079, line: 82, baseType: !1366, size: 320, offset: 832)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1367, line: 62, size: 320, elements: !1368)
!1367 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1368 = !{!1369, !1375, !1376, !1377, !1378, !1385}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1366, file: !1367, line: 63, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1367, line: 56, size: 128, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1371, file: !1367, line: 57, baseType: !1370, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1371, file: !1367, line: 58, baseType: !972, size: 8, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1366, file: !1367, line: 64, baseType: !7, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1366, file: !1367, line: 66, baseType: !7, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1366, file: !1367, line: 68, baseType: !683, size: 8, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1366, file: !1367, line: 70, baseType: !1379, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1367, line: 37, size: 128, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1380, file: !1367, line: 39, baseType: !1379, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1380, file: !1367, line: 40, baseType: !1384, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1366, file: !1367, line: 71, baseType: !1386, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1367, line: 45, size: 320, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1387, file: !1367, line: 47, baseType: !1386, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1387, file: !1367, line: 48, baseType: !1391, size: 256, offset: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !1392)
!1392 = !{!1393, !1395, !1396, !1401}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1391, file: !135, line: 1884, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1391, file: !135, line: 1885, baseType: !1394, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1391, file: !135, line: 1891, baseType: !1397, size: 64, offset: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !135, line: 1891, size: 64, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1397, file: !135, line: 1891, baseType: !816, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1397, file: !135, line: 1891, baseType: !877, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1391, file: !135, line: 1892, baseType: !1384, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1128, file: !1129, line: 476, baseType: !1403, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1129, line: 476, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1128, file: !1129, line: 479, baseType: !1212, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1128, file: !1129, line: 484, baseType: !877, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1128, file: !1129, line: 488, baseType: !877, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1128, file: !1129, line: 493, baseType: !877, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1128, file: !1129, line: 496, baseType: !877, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1128, file: !1129, line: 501, baseType: !1411, size: 64, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !348, line: 2355, size: 576, elements: !1413)
!1413 = !{!1414, !1417, !1418, !1419, !1420, !1422, !1423, !1428, !1429, !1430, !1431, !1432, !1433}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1412, file: !348, line: 2356, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !348, line: 2356, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1412, file: !348, line: 2357, baseType: !689, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1412, file: !348, line: 2358, baseType: !684, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1412, file: !348, line: 2359, baseType: !684, size: 32, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1412, file: !348, line: 2360, baseType: !1421, size: 128, offset: 192)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !738)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1412, file: !348, line: 2364, baseType: !684, size: 32, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1412, file: !348, line: 2367, baseType: !1424, size: 128, offset: 384)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !348, line: 2349, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1424, file: !348, line: 2351, baseType: !822, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1424, file: !348, line: 2352, baseType: !692, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1412, file: !348, line: 2371, baseType: !347, size: 32, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1412, file: !348, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1412, file: !348, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1412, file: !348, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1412, file: !348, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1412, file: !348, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1128, file: !1129, line: 504, baseType: !1435, size: 64, offset: 704)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1129, line: 504, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1128, file: !1129, line: 507, baseType: !1212, size: 64, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1128, file: !1129, line: 510, baseType: !684, size: 32, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1128, file: !1129, line: 513, baseType: !684, size: 32, offset: 864)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1128, file: !1129, line: 516, baseType: !774, size: 32, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1128, file: !1129, line: 519, baseType: !774, size: 32, offset: 928)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1128, file: !1129, line: 522, baseType: !7, size: 32, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1128, file: !1129, line: 523, baseType: !7, size: 32, offset: 992)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1128, file: !1129, line: 528, baseType: !689, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1128, file: !1129, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1128, file: !1129, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1128, file: !1129, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1128, file: !1129, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1128, file: !1129, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1128, file: !1129, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1128, file: !1129, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1128, file: !1129, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1128, file: !1129, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1128, file: !1129, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1128, file: !1129, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1128, file: !1129, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1128, file: !1129, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1128, file: !1129, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1128, file: !1129, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1128, file: !1129, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1123, file: !135, line: 3254, baseType: !877, size: 64, offset: 1536)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1123, file: !135, line: 3257, baseType: !877, size: 64, offset: 1600)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1123, file: !135, line: 3258, baseType: !877, size: 64, offset: 1664)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1123, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1123, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1123, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1123, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1123, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1123, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1123, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1123, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1123, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1123, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1123, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1123, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1123, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1123, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1123, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1123, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1123, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1123, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !135, line: 3394, baseType: !1483, size: 1344)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1510, !1511, !1512, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1483, file: !135, line: 2280, baseType: !915, size: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1483, file: !135, line: 2281, baseType: !877, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1483, file: !135, line: 2282, baseType: !877, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1483, file: !135, line: 2283, baseType: !877, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1483, file: !135, line: 2284, baseType: !877, size: 64, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1483, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1483, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1483, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1483, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1483, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1483, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1483, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1483, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1483, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1483, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1483, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1483, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1483, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1483, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1483, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1483, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1483, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1483, file: !135, line: 2306, baseType: !1508, size: 32, offset: 544)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1509, line: 31, baseType: !684)
!1509 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1483, file: !135, line: 2307, baseType: !877, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1483, file: !135, line: 2308, baseType: !877, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1483, file: !135, line: 2314, baseType: !1513, size: 64, offset: 704)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1513, file: !135, line: 2310, baseType: !684, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1513, file: !135, line: 2311, baseType: !689, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1513, file: !135, line: 2312, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1483, file: !135, line: 2315, baseType: !877, size: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1483, file: !135, line: 2316, baseType: !877, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1483, file: !135, line: 2317, baseType: !877, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1483, file: !135, line: 2318, baseType: !877, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1483, file: !135, line: 2319, baseType: !877, size: 64, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1483, file: !135, line: 2320, baseType: !877, size: 64, offset: 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1483, file: !135, line: 2321, baseType: !877, size: 64, offset: 1152)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1483, file: !135, line: 2322, baseType: !877, size: 64, offset: 1216)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1483, file: !135, line: 2324, baseType: !1529, size: 64, offset: 1280)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !879, file: !135, line: 3395, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1532, file: !135, line: 1470, baseType: !915, size: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1532, file: !135, line: 1471, baseType: !877, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1532, file: !135, line: 1472, baseType: !877, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !879, file: !135, line: 3396, baseType: !1538, size: 320)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1538, file: !135, line: 1483, baseType: !915, size: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1538, file: !135, line: 1484, baseType: !684, size: 32, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1538, file: !135, line: 1485, baseType: !1273, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !879, file: !135, line: 3397, baseType: !1544, size: 384)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1544, file: !135, line: 1830, baseType: !915, size: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1544, file: !135, line: 1831, baseType: !774, size: 32, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1544, file: !135, line: 1832, baseType: !877, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1544, file: !135, line: 1835, baseType: !1273, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !879, file: !135, line: 3398, baseType: !1551, size: 704)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1562}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1551, file: !135, line: 1899, baseType: !915, size: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1551, file: !135, line: 1902, baseType: !877, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1551, file: !135, line: 1905, baseType: !816, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1551, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1551, file: !135, line: 1911, baseType: !1558, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1079, line: 117, size: 128, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1559, file: !1079, line: 120, baseType: !1346, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1551, file: !135, line: 1914, baseType: !1391, size: 256, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !879, file: !135, line: 3399, baseType: !1564, size: 704)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1564, file: !135, line: 2009, baseType: !915, size: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1564, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1564, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1564, file: !135, line: 2014, baseType: !774, size: 32, offset: 224)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1564, file: !135, line: 2016, baseType: !877, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1564, file: !135, line: 2017, baseType: !1262, size: 64, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1564, file: !135, line: 2019, baseType: !877, size: 64, offset: 384)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1564, file: !135, line: 2020, baseType: !877, size: 64, offset: 448)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1564, file: !135, line: 2021, baseType: !877, size: 64, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1564, file: !135, line: 2022, baseType: !877, size: 64, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1564, file: !135, line: 2023, baseType: !877, size: 64, offset: 640)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !879, file: !135, line: 3400, baseType: !1578, size: 832)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1578, file: !135, line: 2431, baseType: !915, size: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1578, file: !135, line: 2433, baseType: !877, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1578, file: !135, line: 2434, baseType: !877, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1578, file: !135, line: 2435, baseType: !877, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1578, file: !135, line: 2436, baseType: !877, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1578, file: !135, line: 2437, baseType: !1262, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1578, file: !135, line: 2438, baseType: !877, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1578, file: !135, line: 2440, baseType: !877, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1578, file: !135, line: 2441, baseType: !877, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1578, file: !135, line: 2443, baseType: !1590, size: 128, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1591, file: !135, line: 182, baseType: !1267, size: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !879, file: !135, line: 3401, baseType: !1595, size: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1596)
!1596 = !{!1597, !1598, !1605}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1595, file: !135, line: 3329, baseType: !915, size: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1595, file: !135, line: 3330, baseType: !1599, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1600, file: !135, line: 3322, baseType: !1599, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1600, file: !135, line: 3323, baseType: !1599, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1600, file: !135, line: 3324, baseType: !877, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1595, file: !135, line: 3331, baseType: !1599, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !879, file: !135, line: 3402, baseType: !1607, size: 256)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1607, file: !135, line: 1541, baseType: !915, size: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1607, file: !135, line: 1542, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1613, file: !135, line: 1538, baseType: !1616, size: 192)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1618)
!1618 = !{!1619, !1620, !1621}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1617, file: !135, line: 1537, baseType: !7, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1617, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1617, file: !135, line: 1537, baseType: !1622, size: 128, offset: 64)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1623, size: 128, elements: !857)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1624, file: !135, line: 1533, baseType: !877, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1624, file: !135, line: 1534, baseType: !877, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !879, file: !135, line: 3403, baseType: !1629, size: 512)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1640, !1641, !1642}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1629, file: !135, line: 1939, baseType: !915, size: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1629, file: !135, line: 1940, baseType: !774, size: 32, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1629, file: !135, line: 1941, baseType: !352, size: 32, offset: 224)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1629, file: !135, line: 1946, baseType: !1635, size: 32, offset: 256)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1636)
!1636 = !{!1637, !1638, !1639}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1635, file: !135, line: 1943, baseType: !370, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1635, file: !135, line: 1944, baseType: !377, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1635, file: !135, line: 1945, baseType: !134, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1629, file: !135, line: 1950, baseType: !806, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1629, file: !135, line: 1951, baseType: !806, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1629, file: !135, line: 1953, baseType: !1273, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !879, file: !135, line: 3404, baseType: !1644, size: 1664)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1644, file: !135, line: 3338, baseType: !915, size: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1644, file: !135, line: 3341, baseType: !1648, size: 1472, offset: 192)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1649, line: 410, size: 1472, elements: !1650)
!1649 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1648, file: !1649, line: 412, baseType: !684, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1648, file: !1649, line: 413, baseType: !684, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1648, file: !1649, line: 414, baseType: !684, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1648, file: !1649, line: 415, baseType: !684, size: 32, offset: 96)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1648, file: !1649, line: 416, baseType: !684, size: 32, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1648, file: !1649, line: 417, baseType: !684, size: 32, offset: 160)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1648, file: !1649, line: 418, baseType: !683, size: 8, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1648, file: !1649, line: 419, baseType: !683, size: 8, offset: 200)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1648, file: !1649, line: 420, baseType: !1660, size: 8, offset: 208)
!1660 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1648, file: !1649, line: 421, baseType: !1660, size: 8, offset: 216)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1648, file: !1649, line: 422, baseType: !1660, size: 8, offset: 224)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1648, file: !1649, line: 423, baseType: !1660, size: 8, offset: 232)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1648, file: !1649, line: 424, baseType: !1660, size: 8, offset: 240)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1648, file: !1649, line: 425, baseType: !1660, size: 8, offset: 248)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1648, file: !1649, line: 426, baseType: !1660, size: 8, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1648, file: !1649, line: 427, baseType: !1660, size: 8, offset: 264)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1648, file: !1649, line: 428, baseType: !1660, size: 8, offset: 272)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1648, file: !1649, line: 429, baseType: !1660, size: 8, offset: 280)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1648, file: !1649, line: 430, baseType: !1660, size: 8, offset: 288)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1648, file: !1649, line: 431, baseType: !1660, size: 8, offset: 296)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1648, file: !1649, line: 432, baseType: !1660, size: 8, offset: 304)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1648, file: !1649, line: 433, baseType: !1660, size: 8, offset: 312)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1648, file: !1649, line: 434, baseType: !1660, size: 8, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1648, file: !1649, line: 435, baseType: !1660, size: 8, offset: 328)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1648, file: !1649, line: 436, baseType: !1660, size: 8, offset: 336)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1648, file: !1649, line: 437, baseType: !1660, size: 8, offset: 344)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1648, file: !1649, line: 438, baseType: !1660, size: 8, offset: 352)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1648, file: !1649, line: 439, baseType: !1660, size: 8, offset: 360)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1648, file: !1649, line: 440, baseType: !1660, size: 8, offset: 368)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1648, file: !1649, line: 441, baseType: !1660, size: 8, offset: 376)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1648, file: !1649, line: 442, baseType: !1660, size: 8, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1648, file: !1649, line: 443, baseType: !1660, size: 8, offset: 392)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1648, file: !1649, line: 444, baseType: !1660, size: 8, offset: 400)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1648, file: !1649, line: 445, baseType: !1660, size: 8, offset: 408)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1648, file: !1649, line: 446, baseType: !1660, size: 8, offset: 416)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1648, file: !1649, line: 447, baseType: !1660, size: 8, offset: 424)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1648, file: !1649, line: 448, baseType: !1660, size: 8, offset: 432)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1648, file: !1649, line: 449, baseType: !1660, size: 8, offset: 440)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1648, file: !1649, line: 450, baseType: !1660, size: 8, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1648, file: !1649, line: 451, baseType: !1660, size: 8, offset: 456)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1648, file: !1649, line: 452, baseType: !1660, size: 8, offset: 464)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1648, file: !1649, line: 453, baseType: !1660, size: 8, offset: 472)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1648, file: !1649, line: 454, baseType: !1660, size: 8, offset: 480)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1648, file: !1649, line: 455, baseType: !1660, size: 8, offset: 488)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1648, file: !1649, line: 456, baseType: !1660, size: 8, offset: 496)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1648, file: !1649, line: 457, baseType: !1660, size: 8, offset: 504)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1648, file: !1649, line: 458, baseType: !1660, size: 8, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1648, file: !1649, line: 459, baseType: !1660, size: 8, offset: 520)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1648, file: !1649, line: 460, baseType: !1660, size: 8, offset: 528)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1648, file: !1649, line: 461, baseType: !1660, size: 8, offset: 536)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1648, file: !1649, line: 462, baseType: !1660, size: 8, offset: 544)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1648, file: !1649, line: 463, baseType: !1660, size: 8, offset: 552)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1648, file: !1649, line: 464, baseType: !1660, size: 8, offset: 560)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1648, file: !1649, line: 465, baseType: !1660, size: 8, offset: 568)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1648, file: !1649, line: 466, baseType: !1660, size: 8, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1648, file: !1649, line: 467, baseType: !1660, size: 8, offset: 584)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1648, file: !1649, line: 468, baseType: !1660, size: 8, offset: 592)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1648, file: !1649, line: 469, baseType: !1660, size: 8, offset: 600)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1648, file: !1649, line: 470, baseType: !1660, size: 8, offset: 608)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1648, file: !1649, line: 471, baseType: !1660, size: 8, offset: 616)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1648, file: !1649, line: 472, baseType: !1660, size: 8, offset: 624)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1648, file: !1649, line: 473, baseType: !1660, size: 8, offset: 632)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1648, file: !1649, line: 474, baseType: !1660, size: 8, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1648, file: !1649, line: 475, baseType: !1660, size: 8, offset: 648)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1648, file: !1649, line: 476, baseType: !1660, size: 8, offset: 656)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1648, file: !1649, line: 477, baseType: !1660, size: 8, offset: 664)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1648, file: !1649, line: 478, baseType: !1660, size: 8, offset: 672)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1648, file: !1649, line: 479, baseType: !1660, size: 8, offset: 680)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1648, file: !1649, line: 480, baseType: !1660, size: 8, offset: 688)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1648, file: !1649, line: 481, baseType: !1660, size: 8, offset: 696)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1648, file: !1649, line: 482, baseType: !1660, size: 8, offset: 704)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1648, file: !1649, line: 483, baseType: !1660, size: 8, offset: 712)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1648, file: !1649, line: 484, baseType: !1660, size: 8, offset: 720)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1648, file: !1649, line: 485, baseType: !1660, size: 8, offset: 728)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1648, file: !1649, line: 486, baseType: !1660, size: 8, offset: 736)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1648, file: !1649, line: 487, baseType: !1660, size: 8, offset: 744)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1648, file: !1649, line: 488, baseType: !1660, size: 8, offset: 752)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1648, file: !1649, line: 489, baseType: !1660, size: 8, offset: 760)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1648, file: !1649, line: 490, baseType: !1660, size: 8, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1648, file: !1649, line: 491, baseType: !1660, size: 8, offset: 776)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1648, file: !1649, line: 492, baseType: !1660, size: 8, offset: 784)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1648, file: !1649, line: 493, baseType: !1660, size: 8, offset: 792)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1648, file: !1649, line: 494, baseType: !1660, size: 8, offset: 800)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1648, file: !1649, line: 495, baseType: !1660, size: 8, offset: 808)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1648, file: !1649, line: 496, baseType: !1660, size: 8, offset: 816)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1648, file: !1649, line: 497, baseType: !1660, size: 8, offset: 824)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1648, file: !1649, line: 498, baseType: !1660, size: 8, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1648, file: !1649, line: 499, baseType: !1660, size: 8, offset: 840)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1648, file: !1649, line: 500, baseType: !1660, size: 8, offset: 848)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1648, file: !1649, line: 501, baseType: !1660, size: 8, offset: 856)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1648, file: !1649, line: 502, baseType: !1660, size: 8, offset: 864)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1648, file: !1649, line: 503, baseType: !1660, size: 8, offset: 872)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1648, file: !1649, line: 504, baseType: !1660, size: 8, offset: 880)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1648, file: !1649, line: 505, baseType: !1660, size: 8, offset: 888)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1648, file: !1649, line: 506, baseType: !1660, size: 8, offset: 896)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1648, file: !1649, line: 507, baseType: !1660, size: 8, offset: 904)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1648, file: !1649, line: 508, baseType: !1660, size: 8, offset: 912)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1648, file: !1649, line: 509, baseType: !1660, size: 8, offset: 920)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1648, file: !1649, line: 510, baseType: !1660, size: 8, offset: 928)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1648, file: !1649, line: 511, baseType: !1660, size: 8, offset: 936)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1648, file: !1649, line: 512, baseType: !1660, size: 8, offset: 944)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1648, file: !1649, line: 513, baseType: !1660, size: 8, offset: 952)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1648, file: !1649, line: 514, baseType: !1660, size: 8, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1648, file: !1649, line: 515, baseType: !1660, size: 8, offset: 968)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1648, file: !1649, line: 516, baseType: !1660, size: 8, offset: 976)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1648, file: !1649, line: 517, baseType: !1660, size: 8, offset: 984)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1648, file: !1649, line: 518, baseType: !1660, size: 8, offset: 992)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1648, file: !1649, line: 519, baseType: !1660, size: 8, offset: 1000)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1648, file: !1649, line: 520, baseType: !1660, size: 8, offset: 1008)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1648, file: !1649, line: 521, baseType: !1660, size: 8, offset: 1016)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1648, file: !1649, line: 522, baseType: !1660, size: 8, offset: 1024)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1648, file: !1649, line: 523, baseType: !1660, size: 8, offset: 1032)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1648, file: !1649, line: 524, baseType: !1660, size: 8, offset: 1040)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1648, file: !1649, line: 525, baseType: !1660, size: 8, offset: 1048)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1648, file: !1649, line: 526, baseType: !1660, size: 8, offset: 1056)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1648, file: !1649, line: 527, baseType: !1660, size: 8, offset: 1064)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1648, file: !1649, line: 528, baseType: !1660, size: 8, offset: 1072)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1648, file: !1649, line: 529, baseType: !1660, size: 8, offset: 1080)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1648, file: !1649, line: 530, baseType: !1660, size: 8, offset: 1088)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1648, file: !1649, line: 531, baseType: !1660, size: 8, offset: 1096)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1648, file: !1649, line: 532, baseType: !1660, size: 8, offset: 1104)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1648, file: !1649, line: 533, baseType: !1660, size: 8, offset: 1112)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1648, file: !1649, line: 534, baseType: !1660, size: 8, offset: 1120)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1648, file: !1649, line: 535, baseType: !1660, size: 8, offset: 1128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1648, file: !1649, line: 536, baseType: !1660, size: 8, offset: 1136)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1648, file: !1649, line: 537, baseType: !1660, size: 8, offset: 1144)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1648, file: !1649, line: 538, baseType: !1660, size: 8, offset: 1152)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1648, file: !1649, line: 539, baseType: !1660, size: 8, offset: 1160)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1648, file: !1649, line: 540, baseType: !1660, size: 8, offset: 1168)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1648, file: !1649, line: 541, baseType: !1660, size: 8, offset: 1176)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1648, file: !1649, line: 542, baseType: !1660, size: 8, offset: 1184)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1648, file: !1649, line: 543, baseType: !1660, size: 8, offset: 1192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1648, file: !1649, line: 544, baseType: !1660, size: 8, offset: 1200)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1648, file: !1649, line: 545, baseType: !1660, size: 8, offset: 1208)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1648, file: !1649, line: 546, baseType: !1660, size: 8, offset: 1216)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1648, file: !1649, line: 547, baseType: !1660, size: 8, offset: 1224)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1648, file: !1649, line: 548, baseType: !1660, size: 8, offset: 1232)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1648, file: !1649, line: 549, baseType: !1660, size: 8, offset: 1240)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1648, file: !1649, line: 550, baseType: !1660, size: 8, offset: 1248)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1648, file: !1649, line: 551, baseType: !1660, size: 8, offset: 1256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1648, file: !1649, line: 552, baseType: !1660, size: 8, offset: 1264)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1648, file: !1649, line: 553, baseType: !1660, size: 8, offset: 1272)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1648, file: !1649, line: 554, baseType: !1660, size: 8, offset: 1280)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1648, file: !1649, line: 555, baseType: !1660, size: 8, offset: 1288)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1648, file: !1649, line: 556, baseType: !1660, size: 8, offset: 1296)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1648, file: !1649, line: 557, baseType: !1660, size: 8, offset: 1304)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1648, file: !1649, line: 558, baseType: !1660, size: 8, offset: 1312)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1648, file: !1649, line: 559, baseType: !1660, size: 8, offset: 1320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1648, file: !1649, line: 560, baseType: !1660, size: 8, offset: 1328)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1648, file: !1649, line: 561, baseType: !1660, size: 8, offset: 1336)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1648, file: !1649, line: 562, baseType: !1660, size: 8, offset: 1344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1648, file: !1649, line: 563, baseType: !1660, size: 8, offset: 1352)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1648, file: !1649, line: 564, baseType: !1660, size: 8, offset: 1360)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1648, file: !1649, line: 565, baseType: !1660, size: 8, offset: 1368)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1648, file: !1649, line: 566, baseType: !1660, size: 8, offset: 1376)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1648, file: !1649, line: 567, baseType: !1660, size: 8, offset: 1384)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1648, file: !1649, line: 568, baseType: !1660, size: 8, offset: 1392)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1648, file: !1649, line: 569, baseType: !1660, size: 8, offset: 1400)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1648, file: !1649, line: 570, baseType: !1660, size: 8, offset: 1408)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1648, file: !1649, line: 571, baseType: !1660, size: 8, offset: 1416)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1648, file: !1649, line: 572, baseType: !1660, size: 8, offset: 1424)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1648, file: !1649, line: 573, baseType: !1660, size: 8, offset: 1432)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1648, file: !1649, line: 574, baseType: !1660, size: 8, offset: 1440)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !879, file: !135, line: 3405, baseType: !1816, size: 384)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1816, file: !135, line: 3353, baseType: !915, size: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1816, file: !135, line: 3356, baseType: !1820, size: 192, offset: 192)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1649, line: 578, size: 192, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1820, file: !1649, line: 580, baseType: !684, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1820, file: !1649, line: 581, baseType: !684, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1820, file: !1649, line: 582, baseType: !684, size: 32, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1820, file: !1649, line: 583, baseType: !684, size: 32, offset: 96)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1820, file: !1649, line: 584, baseType: !683, size: 8, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1820, file: !1649, line: 585, baseType: !683, size: 8, offset: 136)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1820, file: !1649, line: 586, baseType: !683, size: 8, offset: 144)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1820, file: !1649, line: 587, baseType: !683, size: 8, offset: 152)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1820, file: !1649, line: 588, baseType: !683, size: 8, offset: 160)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1820, file: !1649, line: 589, baseType: !683, size: 8, offset: 168)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1820, file: !1649, line: 590, baseType: !683, size: 8, offset: 176)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !843, file: !825, line: 178, baseType: !780, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !843, file: !825, line: 179, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !825, line: 150, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !825, line: 142, size: 320, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1837, file: !825, line: 144, baseType: !877, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1837, file: !825, line: 145, baseType: !822, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1837, file: !825, line: 146, baseType: !822, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1837, file: !825, line: 147, baseType: !1508, size: 32, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1837, file: !825, line: 148, baseType: !7, size: 32, offset: 224)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1837, file: !825, line: 149, baseType: !683, size: 8, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !843, file: !825, line: 180, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !825, line: 162, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !825, line: 159, size: 128, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1848, file: !825, line: 160, baseType: !877, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1848, file: !825, line: 161, baseType: !692, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !843, file: !825, line: 181, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !825, line: 181, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !838, file: !825, line: 317, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 64, elements: !857)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !838, file: !825, line: 318, baseType: !1858, size: 320)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !825, line: 188, size: 320, elements: !1859)
!1859 = !{!1860, !1862, !1885}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1858, file: !825, line: 190, baseType: !1861, size: 192)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 192, elements: !948)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1858, file: !825, line: 193, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !825, line: 206, size: 320, elements: !1865)
!1865 = !{!1866, !1870, !1871, !1872, !1884}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1864, file: !825, line: 208, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !697, line: 62, baseType: !1869)
!1869 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !697, line: 61, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1864, file: !825, line: 211, baseType: !7, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1864, file: !825, line: 214, baseType: !692, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1864, file: !825, line: 224, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !825, line: 202, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !825, line: 202, size: 128, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1875, file: !825, line: 202, baseType: !1878, size: 128)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !825, line: 200, baseType: !1879)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !825, line: 200, size: 128, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1879, file: !825, line: 200, baseType: !7, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1879, file: !825, line: 200, baseType: !7, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1879, file: !825, line: 200, baseType: !856, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1864, file: !825, line: 234, baseType: !1873, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1858, file: !825, line: 197, baseType: !692, size: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !838, file: !825, line: 319, baseType: !937, size: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !838, file: !825, line: 320, baseType: !956, size: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !798, file: !337, line: 134, baseType: !688, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !798, file: !337, line: 137, baseType: !877, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !798, file: !337, line: 138, baseType: !774, size: 32, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !798, file: !337, line: 142, baseType: !7, size: 32, offset: 352)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !337, line: 144, baseType: !684, size: 32, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !798, file: !337, line: 145, baseType: !684, size: 32, offset: 416)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !798, file: !337, line: 146, baseType: !691, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !781, file: !337, line: 220, baseType: !784, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !781, file: !337, line: 223, baseType: !688, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !781, file: !337, line: 226, baseType: !1898, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !337, line: 185, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !781, file: !337, line: 229, baseType: !1901, size: 128, offset: 256)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1902, size: 128, elements: !714)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !337, line: 229, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !781, file: !337, line: 232, baseType: !780, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !781, file: !337, line: 233, baseType: !780, size: 64, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !781, file: !337, line: 238, baseType: !1907, size: 64, offset: 512)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !337, line: 235, size: 64, elements: !1908)
!1908 = !{!1909, !1915}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1907, file: !337, line: 236, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !337, line: 273, size: 128, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1911, file: !337, line: 275, baseType: !806, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1911, file: !337, line: 278, baseType: !806, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1907, file: !337, line: 237, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !337, line: 259, size: 320, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1922, !1923}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1917, file: !337, line: 261, baseType: !822, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1917, file: !337, line: 262, baseType: !822, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1917, file: !337, line: 266, baseType: !822, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1917, file: !337, line: 267, baseType: !822, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1917, file: !337, line: 270, baseType: !684, size: 32, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !337, line: 241, baseType: !691, size: 64, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !781, file: !337, line: 244, baseType: !684, size: 32, offset: 640)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !781, file: !337, line: 247, baseType: !684, size: 32, offset: 672)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !781, file: !337, line: 250, baseType: !684, size: 32, offset: 704)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !781, file: !337, line: 253, baseType: !684, size: 32, offset: 736)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !337, line: 256, baseType: !684, size: 32, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !761, file: !598, line: 327, baseType: !877, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !758, file: !598, line: 739, baseType: !1932, size: 448)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !598, line: 350, size: 448, elements: !1933)
!1933 = !{!1934, !1940}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1932, file: !598, line: 353, baseType: !1935, size: 384)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !598, line: 333, size: 384, elements: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1935, file: !598, line: 336, baseType: !761, size: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1935, file: !598, line: 343, baseType: !1379, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1935, file: !598, line: 344, baseType: !1386, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1932, file: !598, line: 359, baseType: !1273, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !758, file: !598, line: 740, baseType: !1942, size: 512)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !598, line: 365, size: 512, elements: !1943)
!1943 = !{!1944, !1945, !1946}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1942, file: !598, line: 368, baseType: !1935, size: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1942, file: !598, line: 373, baseType: !877, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1942, file: !598, line: 374, baseType: !877, size: 64, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !758, file: !598, line: 741, baseType: !1948, size: 576)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !598, line: 380, size: 576, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1948, file: !598, line: 383, baseType: !1942, size: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1948, file: !598, line: 389, baseType: !1273, size: 64, offset: 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !758, file: !598, line: 742, baseType: !1953, size: 320)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !598, line: 395, size: 320, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1953, file: !598, line: 397, baseType: !761, size: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1953, file: !598, line: 400, baseType: !806, size: 64, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !758, file: !598, line: 743, baseType: !1958, size: 448)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !598, line: 406, size: 448, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1958, file: !598, line: 408, baseType: !761, size: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1958, file: !598, line: 412, baseType: !877, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1958, file: !598, line: 420, baseType: !877, size: 64, offset: 320)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1958, file: !598, line: 423, baseType: !806, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !758, file: !598, line: 744, baseType: !1965, size: 384)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !598, line: 429, size: 384, elements: !1966)
!1966 = !{!1967, !1968, !1969}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1965, file: !598, line: 431, baseType: !761, size: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1965, file: !598, line: 434, baseType: !877, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1965, file: !598, line: 437, baseType: !806, size: 64, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !758, file: !598, line: 745, baseType: !1971, size: 384)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !598, line: 443, size: 384, elements: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1971, file: !598, line: 445, baseType: !761, size: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1971, file: !598, line: 449, baseType: !877, size: 64, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1971, file: !598, line: 453, baseType: !806, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !758, file: !598, line: 746, baseType: !1977, size: 320)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !598, line: 459, size: 320, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1977, file: !598, line: 461, baseType: !761, size: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1977, file: !598, line: 464, baseType: !877, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !758, file: !598, line: 747, baseType: !1982, size: 768)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !598, line: 469, size: 768, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1982, file: !598, line: 471, baseType: !761, size: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1982, file: !598, line: 474, baseType: !7, size: 32, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1982, file: !598, line: 475, baseType: !7, size: 32, offset: 288)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1982, file: !598, line: 478, baseType: !877, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1982, file: !598, line: 481, baseType: !1989, size: 384, offset: 384)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1990, size: 384, elements: !857)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1991)
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1990, file: !135, line: 1920, baseType: !1391, size: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1990, file: !135, line: 1921, baseType: !877, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1990, file: !135, line: 1922, baseType: !774, size: 32, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !758, file: !598, line: 748, baseType: !1996, size: 320)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !598, line: 487, size: 320, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1996, file: !598, line: 490, baseType: !761, size: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1996, file: !598, line: 494, baseType: !684, size: 32, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !758, file: !598, line: 749, baseType: !2001, size: 384)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !598, line: 500, size: 384, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2001, file: !598, line: 502, baseType: !761, size: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !2001, file: !598, line: 506, baseType: !806, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2001, file: !598, line: 510, baseType: !806, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !758, file: !598, line: 750, baseType: !2007, size: 320)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !598, line: 529, size: 320, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2007, file: !598, line: 531, baseType: !761, size: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2007, file: !598, line: 540, baseType: !806, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !758, file: !598, line: 751, baseType: !2012, size: 704)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !598, line: 546, size: 704, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !2012, file: !598, line: 549, baseType: !1942, size: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2012, file: !598, line: 553, baseType: !689, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !2012, file: !598, line: 557, baseType: !683, size: 8, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !2012, file: !598, line: 558, baseType: !683, size: 8, offset: 584)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !2012, file: !598, line: 559, baseType: !683, size: 8, offset: 592)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !2012, file: !598, line: 560, baseType: !683, size: 8, offset: 600)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2012, file: !598, line: 566, baseType: !1273, size: 64, offset: 640)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !758, file: !598, line: 752, baseType: !2022, size: 384)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !598, line: 571, size: 384, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2022, file: !598, line: 573, baseType: !1953, size: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2022, file: !598, line: 577, baseType: !877, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !758, file: !598, line: 753, baseType: !2027, size: 576)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !598, line: 600, size: 576, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2041}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2027, file: !598, line: 602, baseType: !1953, size: 320)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2027, file: !598, line: 605, baseType: !877, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !2027, file: !598, line: 609, baseType: !693, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2027, file: !598, line: 612, baseType: !2033, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !598, line: 581, size: 320, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2039, !2040}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2034, file: !598, line: 583, baseType: !134, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2034, file: !598, line: 586, baseType: !877, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !2034, file: !598, line: 589, baseType: !877, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !2034, file: !598, line: 592, baseType: !877, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2034, file: !598, line: 595, baseType: !877, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !2027, file: !598, line: 616, baseType: !806, size: 64, offset: 512)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !758, file: !598, line: 754, baseType: !2043, size: 512)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !598, line: 622, size: 512, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2043, file: !598, line: 624, baseType: !1953, size: 320)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2043, file: !598, line: 628, baseType: !877, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !2043, file: !598, line: 632, baseType: !877, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !2043, file: !598, line: 636, baseType: !877, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !758, file: !598, line: 755, baseType: !2050, size: 704)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !598, line: 642, size: 704, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !2050, file: !598, line: 644, baseType: !2043, size: 512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !2050, file: !598, line: 648, baseType: !877, size: 64, offset: 512)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !2050, file: !598, line: 652, baseType: !877, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !2050, file: !598, line: 653, baseType: !877, size: 64, offset: 640)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !758, file: !598, line: 756, baseType: !2057, size: 448)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !598, line: 663, size: 448, elements: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2057, file: !598, line: 665, baseType: !1953, size: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2057, file: !598, line: 668, baseType: !877, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2057, file: !598, line: 673, baseType: !877, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !758, file: !598, line: 757, baseType: !2063, size: 384)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !598, line: 694, size: 384, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2063, file: !598, line: 696, baseType: !1953, size: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2063, file: !598, line: 699, baseType: !877, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !758, file: !598, line: 758, baseType: !2068, size: 384)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !598, line: 681, size: 384, elements: !2069)
!2069 = !{!2070, !2071, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2068, file: !598, line: 683, baseType: !761, size: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !2068, file: !598, line: 686, baseType: !877, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !2068, file: !598, line: 689, baseType: !877, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !758, file: !598, line: 759, baseType: !2074, size: 384)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !598, line: 707, size: 384, elements: !2075)
!2075 = !{!2076, !2077, !2078}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2074, file: !598, line: 709, baseType: !761, size: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !2074, file: !598, line: 712, baseType: !877, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !2074, file: !598, line: 712, baseType: !877, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !758, file: !598, line: 760, baseType: !2080, size: 320)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !598, line: 718, size: 320, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2080, file: !598, line: 720, baseType: !761, size: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2080, file: !598, line: 723, baseType: !877, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !568, line: 181, size: 2496, elements: !2089)
!2089 = !{!2090, !2091, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2231, !2253, !2263, !2267, !2293, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2088, file: !568, line: 182, baseType: !877, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2088, file: !568, line: 183, baseType: !2092, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !568, line: 314, size: 768, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2106, !2107, !2108, !2109, !2111, !2112, !2113}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2093, file: !568, line: 316, baseType: !691, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2093, file: !568, line: 317, baseType: !2087, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2093, file: !568, line: 318, baseType: !2087, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2093, file: !568, line: 319, baseType: !2092, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2093, file: !568, line: 320, baseType: !2092, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2093, file: !568, line: 321, baseType: !2092, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2093, file: !568, line: 322, baseType: !2092, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2093, file: !568, line: 323, baseType: !816, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2093, file: !568, line: 324, baseType: !688, size: 64, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2093, file: !568, line: 327, baseType: !2105, size: 32, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !568, line: 312, baseType: !567)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2093, file: !568, line: 330, baseType: !7, size: 32, offset: 608)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2093, file: !568, line: 334, baseType: !684, size: 32, offset: 640)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2093, file: !568, line: 336, baseType: !684, size: 32, offset: 672)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2093, file: !568, line: 338, baseType: !2110, size: 16, offset: 704)
!2110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2093, file: !568, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2093, file: !568, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2093, file: !568, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2088, file: !568, line: 184, baseType: !2092, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2088, file: !568, line: 185, baseType: !2087, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2088, file: !568, line: 186, baseType: !2087, size: 64, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2088, file: !568, line: 188, baseType: !2087, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2088, file: !568, line: 190, baseType: !2087, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2088, file: !568, line: 192, baseType: !2087, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2088, file: !568, line: 194, baseType: !2087, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2088, file: !568, line: 196, baseType: !2087, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2088, file: !568, line: 197, baseType: !2087, size: 64, offset: 640)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2088, file: !568, line: 198, baseType: !2087, size: 64, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2088, file: !568, line: 199, baseType: !2087, size: 64, offset: 768)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2088, file: !568, line: 202, baseType: !2087, size: 64, offset: 832)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2088, file: !568, line: 204, baseType: !2087, size: 64, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2088, file: !568, line: 207, baseType: !1212, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2088, file: !568, line: 209, baseType: !688, size: 64, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2088, file: !568, line: 214, baseType: !2130, size: 64, offset: 1088)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1129, line: 177, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1129, line: 177, size: 128, elements: !2133)
!2133 = !{!2134}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2132, file: !1129, line: 177, baseType: !2135, size: 128)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1129, line: 176, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1129, line: 176, size: 128, elements: !2137)
!2137 = !{!2138, !2139, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2136, file: !1129, line: 176, baseType: !7, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2136, file: !1129, line: 176, baseType: !7, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2136, file: !1129, line: 176, baseType: !2141, size: 64, offset: 64)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2142, size: 64, elements: !857)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1129, line: 174, baseType: !2143)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !385, line: 173, size: 1152, elements: !2145)
!2145 = !{!2146, !2170, !2174, !2197, !2198, !2202, !2207, !2208, !2212}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2144, file: !385, line: 175, baseType: !2147, size: 640)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !385, line: 114, size: 640, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2155, !2159, !2161, !2162, !2163, !2165, !2166, !2167, !2168, !2169}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2147, file: !385, line: 117, baseType: !384, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2147, file: !385, line: 121, baseType: !689, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2147, file: !385, line: 125, baseType: !2152, size: 64, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!683}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2147, file: !385, line: 130, baseType: !2156, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!7}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2147, file: !385, line: 133, baseType: !2160, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !385, line: 136, baseType: !2160, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2147, file: !385, line: 139, baseType: !684, size: 32, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2147, file: !385, line: 143, baseType: !2164, size: 32, offset: 416)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !392, line: 80, baseType: !391)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2147, file: !385, line: 146, baseType: !7, size: 32, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2147, file: !385, line: 147, baseType: !7, size: 32, offset: 480)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2147, file: !385, line: 148, baseType: !7, size: 32, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2147, file: !385, line: 151, baseType: !7, size: 32, offset: 544)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2147, file: !385, line: 152, baseType: !7, size: 32, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2144, file: !385, line: 179, baseType: !2171, size: 64, offset: 640)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2144, file: !385, line: 182, baseType: !2175, size: 64, offset: 704)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !568, line: 276, size: 192, elements: !2180)
!2180 = !{!2181, !2182, !2196}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2179, file: !568, line: 278, baseType: !1212, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2179, file: !568, line: 279, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !568, line: 272, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !568, line: 272, size: 128, elements: !2186)
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2185, file: !568, line: 272, baseType: !2188, size: 128)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !568, line: 270, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !568, line: 270, size: 128, elements: !2190)
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2189, file: !568, line: 270, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2189, file: !568, line: 270, baseType: !7, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2189, file: !568, line: 270, baseType: !2194, size: 64, offset: 64)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2195, size: 64, elements: !857)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !568, line: 268, baseType: !2087)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2179, file: !568, line: 280, baseType: !688, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2144, file: !385, line: 187, baseType: !2171, size: 64, offset: 768)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2144, file: !385, line: 188, baseType: !2199, size: 64, offset: 832)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2087}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2144, file: !385, line: 191, baseType: !2203, size: 64, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !2087, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2144, file: !385, line: 195, baseType: !7, size: 32, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2144, file: !385, line: 196, baseType: !2209, size: 64, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!7, !2087}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2144, file: !385, line: 197, baseType: !2213, size: 64, offset: 1088)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !568, line: 358, size: 320, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2217, file: !568, line: 359, baseType: !877, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2217, file: !568, line: 361, baseType: !2216, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2217, file: !568, line: 363, baseType: !2216, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2217, file: !568, line: 366, baseType: !2216, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2217, file: !568, line: 368, baseType: !684, size: 32, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2217, file: !568, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2217, file: !568, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2217, file: !568, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2217, file: !568, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2217, file: !568, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2217, file: !568, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2217, file: !568, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2088, file: !568, line: 216, baseType: !2232, size: 320, offset: 1152)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !568, line: 88, size: 320, elements: !2233)
!2233 = !{!2234, !2237, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2232, file: !568, line: 90, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !568, line: 51, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2232, file: !568, line: 92, baseType: !2238, size: 192, offset: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !568, line: 57, size: 192, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2238, file: !568, line: 60, baseType: !692, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2238, file: !568, line: 63, baseType: !684, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2238, file: !568, line: 65, baseType: !684, size: 32, offset: 96)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2238, file: !568, line: 67, baseType: !684, size: 32, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2238, file: !568, line: 69, baseType: !684, size: 32, offset: 160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2232, file: !568, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2232, file: !568, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2232, file: !568, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2232, file: !568, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2232, file: !568, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2232, file: !568, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2232, file: !568, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2232, file: !568, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2088, file: !568, line: 217, baseType: !2254, size: 320, offset: 1472)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !568, line: 126, size: 320, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2254, file: !568, line: 128, baseType: !692, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2254, file: !568, line: 130, baseType: !692, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2254, file: !568, line: 134, baseType: !2087, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2254, file: !568, line: 137, baseType: !684, size: 32, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2254, file: !568, line: 138, baseType: !684, size: 32, offset: 224)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2254, file: !568, line: 141, baseType: !684, size: 32, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2254, file: !568, line: 144, baseType: !683, size: 8, offset: 288)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2088, file: !568, line: 218, baseType: !2264, size: 32, offset: 1792)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !568, line: 150, size: 32, elements: !2265)
!2265 = !{!2266}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2264, file: !568, line: 151, baseType: !7, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2088, file: !568, line: 219, baseType: !2268, size: 192, offset: 1856)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !568, line: 171, size: 192, elements: !2269)
!2269 = !{!2270, !2291, !2292}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2268, file: !568, line: 173, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !568, line: 169, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !568, line: 169, size: 128, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2273, file: !568, line: 169, baseType: !2276, size: 128)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !568, line: 168, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !568, line: 168, size: 128, elements: !2278)
!2278 = !{!2279, !2280, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2277, file: !568, line: 168, baseType: !7, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2277, file: !568, line: 168, baseType: !7, size: 32, offset: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2277, file: !568, line: 168, baseType: !2282, size: 64, offset: 64)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 64, elements: !857)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !568, line: 167, baseType: !2284)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !568, line: 156, size: 192, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2285, file: !568, line: 159, baseType: !877, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2285, file: !568, line: 161, baseType: !877, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2285, file: !568, line: 163, baseType: !683, size: 8, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2285, file: !568, line: 165, baseType: !683, size: 8, offset: 136)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2268, file: !568, line: 174, baseType: !696, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2268, file: !568, line: 175, baseType: !696, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2088, file: !568, line: 220, baseType: !2294, size: 256, offset: 2048)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !568, line: 74, size: 256, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2294, file: !568, line: 76, baseType: !692, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2294, file: !568, line: 77, baseType: !692, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2294, file: !568, line: 78, baseType: !877, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2294, file: !568, line: 79, baseType: !683, size: 8, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2294, file: !568, line: 80, baseType: !683, size: 8, offset: 200)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2294, file: !568, line: 82, baseType: !683, size: 8, offset: 208)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2088, file: !568, line: 223, baseType: !691, size: 64, offset: 2304)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2088, file: !568, line: 225, baseType: !684, size: 32, offset: 2368)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2088, file: !568, line: 227, baseType: !684, size: 32, offset: 2400)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2088, file: !568, line: 231, baseType: !684, size: 32, offset: 2432)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2088, file: !568, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2088, file: !568, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2088, file: !568, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2088, file: !568, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2088, file: !568, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2088, file: !568, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2088, file: !568, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2088, file: !568, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2088, file: !568, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2088, file: !568, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !697, line: 60, baseType: !2084)
!2317 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_heap", file: !568, line: 353, baseType: !2320)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_heap", file: !568, line: 353, size: 128, elements: !2321)
!2321 = !{!2322}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2320, file: !568, line: 353, baseType: !2323, size: 128)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_base", file: !568, line: 352, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_base", file: !568, line: 352, size: 128, elements: !2325)
!2325 = !{!2326, !2327, !2328}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2324, file: !568, line: 352, baseType: !7, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2324, file: !568, line: 352, baseType: !7, size: 32, offset: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2324, file: !568, line: 352, baseType: !2329, size: 64, offset: 64)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2330, size: 64, elements: !857)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_edge_p", file: !568, line: 350, baseType: !2092)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibnode_t", file: !2332, line: 74, baseType: !2333)
!2332 = !DIFile(filename: "./include/fibheap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibnode", file: !2332, line: 59, size: 448, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2342, !2343, !2344}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2334, file: !2332, line: 61, baseType: !2333, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2334, file: !2332, line: 62, baseType: !2333, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !2334, file: !2332, line: 63, baseType: !2333, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !2334, file: !2332, line: 64, baseType: !2333, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2334, file: !2332, line: 65, baseType: !2341, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheapkey_t", file: !2332, line: 50, baseType: !692)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2334, file: !2332, line: 66, baseType: !688, size: 64, offset: 320)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "degree", scope: !2334, file: !2332, line: 71, baseType: !7, size: 31, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !2334, file: !2332, line: 72, baseType: !7, size: 1, offset: 415, flags: DIFlagBitField, extraData: i64 384)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_node_params_t_heap", file: !669, line: 315, baseType: !2347)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_node_params_t_heap", file: !669, line: 315, size: 448, elements: !2348)
!2348 = !{!2349}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2347, file: !669, line: 315, baseType: !2350, size: 448)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_node_params_t_base", file: !669, line: 314, baseType: !2351)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_node_params_t_base", file: !669, line: 314, size: 448, elements: !2352)
!2352 = !{!2353, !2354, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2351, file: !669, line: 314, baseType: !7, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2351, file: !669, line: 314, baseType: !7, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2351, file: !669, line: 314, baseType: !2356, size: 384, offset: 64)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2357, size: 384, elements: !857)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_node_params_t", file: !669, line: 311, baseType: !2358)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_node_params", file: !669, line: 178, size: 384, elements: !2359)
!2359 = !{!2360, !2361, !2372, !2384, !2385, !2386, !2387, !2388, !2389}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2358, file: !669, line: 183, baseType: !684, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !2358, file: !669, line: 186, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_param_descriptor", file: !669, line: 165, size: 256, elements: !2364)
!2364 = !{!2365, !2370, !2371}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ipcp_lattice", scope: !2363, file: !669, line: 168, baseType: !2366, size: 128)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipcp_lattice", file: !669, line: 132, size: 128, elements: !2367)
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2366, file: !669, line: 134, baseType: !668, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !2366, file: !669, line: 135, baseType: !877, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2363, file: !669, line: 170, baseType: !877, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !2363, file: !669, line: 172, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "param_calls", scope: !2358, file: !669, line: 188, baseType: !2373, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_param_call_note", file: !669, line: 141, size: 320, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2374, file: !669, line: 144, baseType: !691, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2374, file: !669, line: 146, baseType: !2373, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2374, file: !669, line: 148, baseType: !816, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2374, file: !669, line: 150, baseType: !7, size: 32, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "formal_id", scope: !2374, file: !669, line: 152, baseType: !684, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2374, file: !669, line: 155, baseType: !684, size: 32, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2374, file: !669, line: 157, baseType: !2110, size: 16, offset: 288)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "processed", scope: !2374, file: !669, line: 161, baseType: !683, size: 8, offset: 304)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ipcp_orig_node", scope: !2358, file: !669, line: 191, baseType: !2087, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "count_scale", scope: !2358, file: !669, line: 197, baseType: !691, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "called_with_var_arguments", scope: !2358, file: !669, line: 201, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "modification_analysis_done", scope: !2358, file: !669, line: 203, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "uses_analysis_done", scope: !2358, file: !669, line: 205, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "node_enqueued", scope: !2358, file: !669, line: 207, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_edge_args_t_gc", file: !669, line: 317, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_edge_args_t_gc", file: !669, line: 317, size: 192, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2392, file: !669, line: 317, baseType: !2395, size: 192)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_edge_args_t_base", file: !669, line: 316, baseType: !2396)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_edge_args_t_base", file: !669, line: 316, size: 192, elements: !2397)
!2397 = !{!2398, !2399, !2400}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2396, file: !669, line: 316, baseType: !7, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2396, file: !669, line: 316, baseType: !7, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2396, file: !669, line: 316, baseType: !2401, size: 128, offset: 64)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2402, size: 128, elements: !857)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_edge_args_t", file: !669, line: 279, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_edge_args", file: !669, line: 271, size: 128, elements: !2404)
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "argument_count", scope: !2403, file: !669, line: 276, baseType: !684, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "jump_functions", scope: !2403, file: !669, line: 278, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_jump_func", file: !669, line: 114, size: 256, elements: !2409)
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2408, file: !669, line: 116, baseType: !674, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2408, file: !669, line: 126, baseType: !2412, size: 192, offset: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "jump_func_value", file: !669, line: 120, size: 192, elements: !2413)
!2413 = !{!2414, !2415, !2421, !2427}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !2412, file: !669, line: 122, baseType: !877, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pass_through", scope: !2412, file: !669, line: 123, baseType: !2416, size: 128)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_pass_through_data", file: !669, line: 76, size: 128, elements: !2417)
!2417 = !{!2418, !2419, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "operand", scope: !2416, file: !669, line: 80, baseType: !877, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "formal_id", scope: !2416, file: !669, line: 82, baseType: !684, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "operation", scope: !2416, file: !669, line: 87, baseType: !134, size: 32, offset: 96)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !2412, file: !669, line: 124, baseType: !2422, size: 192)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_ancestor_jf_data", file: !669, line: 93, size: 192, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2422, file: !669, line: 96, baseType: !692, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2422, file: !669, line: 98, baseType: !877, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "formal_id", scope: !2422, file: !669, line: 100, baseType: !684, size: 32, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "member_cst", scope: !2412, file: !669, line: 125, baseType: !2428, size: 128)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_member_ptr_cst", file: !669, line: 105, size: 128, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pfn", scope: !2428, file: !669, line: 107, baseType: !877, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !2428, file: !669, line: 108, baseType: !877, size: 64, offset: 64)
!2432 = !{!2433, !2438, !2443, !2445, !2447, !2461, !0, !2463, !2465, !2467, !2471, !2473, !2475, !2492}
!2433 = !DIGlobalVariableExpression(var: !2434, expr: !DIExpression())
!2434 = distinct !DIGlobalVariable(name: "pass_early_inline", scope: !2, file: !3, line: 1659, type: !2435, isLocal: false, isDefinition: true)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !385, line: 156, size: 640, elements: !2436)
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2435, file: !385, line: 158, baseType: !2147, size: 640)
!2438 = !DIGlobalVariableExpression(var: !2439, expr: !DIExpression())
!2439 = distinct !DIGlobalVariable(name: "pass_ipa_early_inline", scope: !2, file: !3, line: 1690, type: !2440, isLocal: false, isDefinition: true)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_ipa_opt_pass", file: !385, line: 202, size: 640, elements: !2441)
!2441 = !{!2442}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2440, file: !385, line: 204, baseType: !2147, size: 640)
!2443 = !DIGlobalVariableExpression(var: !2444, expr: !DIExpression())
!2444 = distinct !DIGlobalVariable(name: "pass_inline_parameters", scope: !2, file: !3, line: 1896, type: !2435, isLocal: false, isDefinition: true)
!2445 = !DIGlobalVariableExpression(var: !2446, expr: !DIExpression())
!2446 = distinct !DIGlobalVariable(name: "pass_ipa_inline", scope: !2, file: !3, line: 2048, type: !2144, isLocal: false, isDefinition: true)
!2447 = !DIGlobalVariableExpression(var: !2448, expr: !DIExpression())
!2448 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_ipa_inline_h", scope: !2, file: !2449, line: 68, type: !2450, isLocal: false, isDefinition: true)
!2449 = !DIFile(filename: "./gt-ipa-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2451, size: 640, elements: !714)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !2453, line: 69, size: 320, elements: !2454)
!2453 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2454 = !{!2455, !2456, !2457, !2458, !2460}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2452, file: !2453, line: 70, baseType: !688, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !2452, file: !2453, line: 71, baseType: !693, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !2452, file: !2453, line: 72, baseType: !693, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2452, file: !2453, line: 73, baseType: !2459, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !2453, line: 65, baseType: !1232)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !2452, file: !2453, line: 74, baseType: !2459, size: 64, offset: 256)
!2461 = !DIGlobalVariableExpression(var: !2462, expr: !DIExpression())
!2462 = distinct !DIGlobalVariable(name: "nfunctions_inlined", scope: !2, file: !3, line: 170, type: !684, isLocal: true, isDefinition: true)
!2463 = !DIGlobalVariableExpression(var: !2464, expr: !DIExpression())
!2464 = distinct !DIGlobalVariable(name: "order", scope: !2, file: !3, line: 1622, type: !2086, isLocal: true, isDefinition: true)
!2465 = !DIGlobalVariableExpression(var: !2466, expr: !DIExpression())
!2466 = distinct !DIGlobalVariable(name: "ncalls_inlined", scope: !2, file: !3, line: 169, type: !684, isLocal: true, isDefinition: true)
!2467 = !DIGlobalVariableExpression(var: !2468, expr: !DIExpression())
!2468 = distinct !DIGlobalVariable(name: "function_insertion_hook_holder", scope: !2, file: !3, line: 175, type: !2469, isLocal: true, isDefinition: true)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_hook_list", file: !568, line: 520, flags: DIFlagFwdDecl)
!2471 = !DIGlobalVariableExpression(var: !2472, expr: !DIExpression())
!2472 = distinct !DIGlobalVariable(name: "max_count", scope: !2, file: !3, line: 172, type: !691, isLocal: true, isDefinition: true)
!2473 = !DIGlobalVariableExpression(var: !2474, expr: !DIExpression())
!2474 = distinct !DIGlobalVariable(name: "max_benefit", scope: !2, file: !3, line: 172, type: !691, isLocal: true, isDefinition: true)
!2475 = !DIGlobalVariableExpression(var: !2476, expr: !DIExpression())
!2476 = distinct !DIGlobalVariable(name: "priority", scope: !2477, file: !3, line: 694, type: !684, isLocal: true, isDefinition: true)
!2477 = distinct !DISubprogram(name: "lookup_recursive_calls", scope: !3, file: !3, line: 691, type: !2478, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !2087, !2087, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheap_t", file: !2332, line: 57, baseType: !2481)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibheap", file: !2332, line: 52, size: 192, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2482, file: !2332, line: 54, baseType: !693, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2482, file: !2332, line: 55, baseType: !2333, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2482, file: !2332, line: 56, baseType: !2333, size: 64, offset: 128)
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DILocalVariable(name: "node", arg: 1, scope: !2477, file: !3, line: 691, type: !2087)
!2489 = !DILocalVariable(name: "where", arg: 2, scope: !2477, file: !3, line: 691, type: !2087)
!2490 = !DILocalVariable(name: "heap", arg: 3, scope: !2477, file: !3, line: 692, type: !2480)
!2491 = !DILocalVariable(name: "e", scope: !2477, file: !3, line: 695, type: !2092)
!2492 = !DIGlobalVariableExpression(var: !2493, expr: !DIExpression())
!2493 = distinct !DIGlobalVariable(name: "nnodes", scope: !2, file: !3, line: 1621, type: !684, isLocal: true, isDefinition: true)
!2494 = !{i32 2, !"Dwarf Version", i32 4}
!2495 = !{i32 2, !"Debug Info Version", i32 3}
!2496 = !{i32 1, !"wchar_size", i32 4}
!2497 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2498 = distinct !DISubprogram(name: "vprintf", scope: !2499, file: !2499, line: 39, type: !2500, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2510)
!2499 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!684, !2502, !2503}
!2502 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !689)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2504, file: !3, baseType: !7, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2504, file: !3, baseType: !7, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2504, file: !3, baseType: !688, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2504, file: !3, baseType: !688, size: 64, offset: 128)
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2498, file: !2499, line: 39, type: !2502)
!2512 = !DILocalVariable(name: "__arg", arg: 2, scope: !2498, file: !2499, line: 39, type: !2503)
!2513 = !DILocation(line: 0, scope: !2498)
!2514 = !DILocation(line: 41, column: 20, scope: !2498)
!2515 = !DILocation(line: 41, column: 10, scope: !2498)
!2516 = !DILocation(line: 41, column: 3, scope: !2498)
!2517 = distinct !DISubprogram(name: "getchar", scope: !2499, file: !2499, line: 47, type: !2518, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!684}
!2520 = !{}
!2521 = !DILocation(line: 49, column: 16, scope: !2517)
!2522 = !DILocation(line: 49, column: 10, scope: !2517)
!2523 = !DILocation(line: 49, column: 3, scope: !2517)
!2524 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2499, file: !2499, line: 56, type: !2525, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2577)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!684, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2529, line: 7, baseType: !2530)
!2529 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2531, line: 49, size: 1728, elements: !2532)
!2531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2548, !2550, !2551, !2552, !2555, !2556, !2557, !2558, !2561, !2563, !2566, !2569, !2570, !2571, !2572, !2573}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2530, file: !2531, line: 51, baseType: !684, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2530, file: !2531, line: 54, baseType: !686, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2530, file: !2531, line: 55, baseType: !686, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2530, file: !2531, line: 56, baseType: !686, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2530, file: !2531, line: 57, baseType: !686, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2530, file: !2531, line: 58, baseType: !686, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2530, file: !2531, line: 59, baseType: !686, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2530, file: !2531, line: 60, baseType: !686, size: 64, offset: 448)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2530, file: !2531, line: 61, baseType: !686, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2530, file: !2531, line: 64, baseType: !686, size: 64, offset: 576)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2530, file: !2531, line: 65, baseType: !686, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2530, file: !2531, line: 66, baseType: !686, size: 64, offset: 704)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2530, file: !2531, line: 68, baseType: !2546, size: 64, offset: 768)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2531, line: 36, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2530, file: !2531, line: 70, baseType: !2549, size: 64, offset: 832)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2530, file: !2531, line: 72, baseType: !684, size: 32, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2530, file: !2531, line: 73, baseType: !684, size: 32, offset: 928)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2530, file: !2531, line: 74, baseType: !2553, size: 64, offset: 960)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2554, line: 152, baseType: !692)
!2554 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2530, file: !2531, line: 77, baseType: !2110, size: 16, offset: 1024)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2530, file: !2531, line: 78, baseType: !1660, size: 8, offset: 1040)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2530, file: !2531, line: 79, baseType: !972, size: 8, offset: 1048)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2530, file: !2531, line: 81, baseType: !2559, size: 64, offset: 1088)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2531, line: 43, baseType: null)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2530, file: !2531, line: 89, baseType: !2562, size: 64, offset: 1152)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2554, line: 153, baseType: !692)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2530, file: !2531, line: 91, baseType: !2564, size: 64, offset: 1216)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2531, line: 37, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2530, file: !2531, line: 92, baseType: !2567, size: 64, offset: 1280)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2531, line: 38, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2530, file: !2531, line: 93, baseType: !2549, size: 64, offset: 1344)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2530, file: !2531, line: 94, baseType: !688, size: 64, offset: 1408)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2530, file: !2531, line: 95, baseType: !693, size: 64, offset: 1472)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2530, file: !2531, line: 96, baseType: !684, size: 32, offset: 1536)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2530, file: !2531, line: 98, baseType: !2574, size: 160, offset: 1568)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 160, elements: !2575)
!2575 = !{!2576}
!2576 = !DISubrange(count: 20)
!2577 = !{!2578}
!2578 = !DILocalVariable(name: "__fp", arg: 1, scope: !2524, file: !2499, line: 56, type: !2527)
!2579 = !DILocation(line: 0, scope: !2524)
!2580 = !DILocation(line: 58, column: 10, scope: !2524)
!2581 = !DILocation(line: 58, column: 3, scope: !2524)
!2582 = distinct !DISubprogram(name: "getc_unlocked", scope: !2499, file: !2499, line: 66, type: !2525, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2583)
!2583 = !{!2584}
!2584 = !DILocalVariable(name: "__fp", arg: 1, scope: !2582, file: !2499, line: 66, type: !2527)
!2585 = !DILocation(line: 0, scope: !2582)
!2586 = !DILocation(line: 68, column: 10, scope: !2582)
!2587 = !DILocation(line: 68, column: 3, scope: !2582)
!2588 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2499, file: !2499, line: 73, type: !2518, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2589 = !DILocation(line: 75, column: 10, scope: !2588)
!2590 = !DILocation(line: 75, column: 3, scope: !2588)
!2591 = distinct !DISubprogram(name: "putchar", scope: !2499, file: !2499, line: 82, type: !2592, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!684, !684}
!2594 = !{!2595}
!2595 = !DILocalVariable(name: "__c", arg: 1, scope: !2591, file: !2499, line: 82, type: !684)
!2596 = !DILocation(line: 0, scope: !2591)
!2597 = !DILocation(line: 84, column: 21, scope: !2591)
!2598 = !DILocation(line: 84, column: 10, scope: !2591)
!2599 = !DILocation(line: 84, column: 3, scope: !2591)
!2600 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2499, file: !2499, line: 91, type: !2601, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!684, !684, !2527}
!2603 = !{!2604, !2605}
!2604 = !DILocalVariable(name: "__c", arg: 1, scope: !2600, file: !2499, line: 91, type: !684)
!2605 = !DILocalVariable(name: "__stream", arg: 2, scope: !2600, file: !2499, line: 91, type: !2527)
!2606 = !DILocation(line: 0, scope: !2600)
!2607 = !DILocation(line: 93, column: 10, scope: !2600)
!2608 = !DILocation(line: 93, column: 3, scope: !2600)
!2609 = distinct !DISubprogram(name: "putc_unlocked", scope: !2499, file: !2499, line: 101, type: !2601, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2610)
!2610 = !{!2611, !2612}
!2611 = !DILocalVariable(name: "__c", arg: 1, scope: !2609, file: !2499, line: 101, type: !684)
!2612 = !DILocalVariable(name: "__stream", arg: 2, scope: !2609, file: !2499, line: 101, type: !2527)
!2613 = !DILocation(line: 0, scope: !2609)
!2614 = !DILocation(line: 103, column: 10, scope: !2609)
!2615 = !DILocation(line: 103, column: 3, scope: !2609)
!2616 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2499, file: !2499, line: 108, type: !2592, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2617)
!2617 = !{!2618}
!2618 = !DILocalVariable(name: "__c", arg: 1, scope: !2616, file: !2499, line: 108, type: !684)
!2619 = !DILocation(line: 0, scope: !2616)
!2620 = !DILocation(line: 110, column: 10, scope: !2616)
!2621 = !DILocation(line: 110, column: 3, scope: !2616)
!2622 = distinct !DISubprogram(name: "getline", scope: !2499, file: !2499, line: 118, type: !2623, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2627)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!2625, !685, !2626, !2527}
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2554, line: 193, baseType: !692)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!2627 = !{!2628, !2629, !2630}
!2628 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2622, file: !2499, line: 118, type: !685)
!2629 = !DILocalVariable(name: "__n", arg: 2, scope: !2622, file: !2499, line: 118, type: !2626)
!2630 = !DILocalVariable(name: "__stream", arg: 3, scope: !2622, file: !2499, line: 118, type: !2527)
!2631 = !DILocation(line: 0, scope: !2622)
!2632 = !DILocation(line: 120, column: 10, scope: !2622)
!2633 = !DILocation(line: 120, column: 3, scope: !2622)
!2634 = distinct !DISubprogram(name: "feof_unlocked", scope: !2499, file: !2499, line: 128, type: !2525, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2635)
!2635 = !{!2636}
!2636 = !DILocalVariable(name: "__stream", arg: 1, scope: !2634, file: !2499, line: 128, type: !2527)
!2637 = !DILocation(line: 0, scope: !2634)
!2638 = !DILocation(line: 130, column: 10, scope: !2634)
!2639 = !DILocation(line: 130, column: 3, scope: !2634)
!2640 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2499, file: !2499, line: 135, type: !2525, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2641 = !{!2642}
!2642 = !DILocalVariable(name: "__stream", arg: 1, scope: !2640, file: !2499, line: 135, type: !2527)
!2643 = !DILocation(line: 0, scope: !2640)
!2644 = !DILocation(line: 137, column: 10, scope: !2640)
!2645 = !DILocation(line: 137, column: 3, scope: !2640)
!2646 = distinct !DISubprogram(name: "tolower", scope: !2647, file: !2647, line: 207, type: !2592, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2648)
!2647 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2648 = !{!2649}
!2649 = !DILocalVariable(name: "__c", arg: 1, scope: !2646, file: !2647, line: 207, type: !684)
!2650 = !DILocation(line: 0, scope: !2646)
!2651 = !DILocation(line: 209, column: 22, scope: !2646)
!2652 = !DILocation(line: 209, column: 39, scope: !2646)
!2653 = !DILocation(line: 209, column: 38, scope: !2646)
!2654 = !DILocation(line: 209, column: 37, scope: !2646)
!2655 = !DILocation(line: 209, column: 10, scope: !2646)
!2656 = !DILocation(line: 209, column: 3, scope: !2646)
!2657 = distinct !DISubprogram(name: "toupper", scope: !2647, file: !2647, line: 213, type: !2592, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2658)
!2658 = !{!2659}
!2659 = !DILocalVariable(name: "__c", arg: 1, scope: !2657, file: !2647, line: 213, type: !684)
!2660 = !DILocation(line: 0, scope: !2657)
!2661 = !DILocation(line: 215, column: 22, scope: !2657)
!2662 = !DILocation(line: 215, column: 39, scope: !2657)
!2663 = !DILocation(line: 215, column: 38, scope: !2657)
!2664 = !DILocation(line: 215, column: 37, scope: !2657)
!2665 = !DILocation(line: 215, column: 10, scope: !2657)
!2666 = !DILocation(line: 215, column: 3, scope: !2657)
!2667 = distinct !DISubprogram(name: "atoi", scope: !2668, file: !2668, line: 361, type: !2669, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2671)
!2668 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!684, !689}
!2671 = !{!2672}
!2672 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2667, file: !2668, line: 361, type: !689)
!2673 = !DILocation(line: 0, scope: !2667)
!2674 = !DILocation(line: 363, column: 16, scope: !2667)
!2675 = !DILocation(line: 363, column: 10, scope: !2667)
!2676 = !DILocation(line: 363, column: 3, scope: !2667)
!2677 = distinct !DISubprogram(name: "atol", scope: !2668, file: !2668, line: 366, type: !2678, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!692, !689}
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2677, file: !2668, line: 366, type: !689)
!2682 = !DILocation(line: 0, scope: !2677)
!2683 = !DILocation(line: 368, column: 10, scope: !2677)
!2684 = !DILocation(line: 368, column: 3, scope: !2677)
!2685 = distinct !DISubprogram(name: "atoll", scope: !2668, file: !2668, line: 373, type: !2686, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!2688, !689}
!2688 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2685, file: !2668, line: 373, type: !689)
!2691 = !DILocation(line: 0, scope: !2685)
!2692 = !DILocation(line: 375, column: 10, scope: !2685)
!2693 = !DILocation(line: 375, column: 3, scope: !2685)
!2694 = distinct !DISubprogram(name: "bsearch", scope: !2695, file: !2695, line: 20, type: !2696, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2695 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!688, !1223, !1223, !693, !693, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2668, line: 808, baseType: !1227)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2700 = !DILocalVariable(name: "__key", arg: 1, scope: !2694, file: !2695, line: 20, type: !1223)
!2701 = !DILocalVariable(name: "__base", arg: 2, scope: !2694, file: !2695, line: 20, type: !1223)
!2702 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2694, file: !2695, line: 20, type: !693)
!2703 = !DILocalVariable(name: "__size", arg: 4, scope: !2694, file: !2695, line: 20, type: !693)
!2704 = !DILocalVariable(name: "__compar", arg: 5, scope: !2694, file: !2695, line: 21, type: !2698)
!2705 = !DILocalVariable(name: "__l", scope: !2694, file: !2695, line: 23, type: !693)
!2706 = !DILocalVariable(name: "__u", scope: !2694, file: !2695, line: 23, type: !693)
!2707 = !DILocalVariable(name: "__idx", scope: !2694, file: !2695, line: 23, type: !693)
!2708 = !DILocalVariable(name: "__p", scope: !2694, file: !2695, line: 24, type: !1223)
!2709 = !DILocalVariable(name: "__comparison", scope: !2694, file: !2695, line: 25, type: !684)
!2710 = !DILocation(line: 0, scope: !2694)
!2711 = !DILocation(line: 29, column: 3, scope: !2694)
!2712 = !DILocation(line: 27, column: 7, scope: !2694)
!2713 = !DILocation(line: 29, column: 14, scope: !2694)
!2714 = !DILocation(line: 31, column: 20, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2694, file: !2695, line: 30, column: 5)
!2716 = !DILocation(line: 31, column: 27, scope: !2715)
!2717 = !DILocation(line: 32, column: 56, scope: !2715)
!2718 = !DILocation(line: 32, column: 47, scope: !2715)
!2719 = !DILocation(line: 33, column: 22, scope: !2715)
!2720 = !DILocation(line: 34, column: 24, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2715, file: !2695, line: 34, column: 11)
!2722 = !DILocation(line: 34, column: 11, scope: !2715)
!2723 = !DILocation(line: 36, column: 29, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !2695, line: 36, column: 16)
!2725 = !DILocation(line: 36, column: 16, scope: !2721)
!2726 = !DILocation(line: 37, column: 14, scope: !2724)
!2727 = distinct !{!2727, !2711, !2728}
!2728 = !DILocation(line: 40, column: 5, scope: !2694)
!2729 = !DILocation(line: 43, column: 1, scope: !2694)
!2730 = distinct !DISubprogram(name: "atof", scope: !2731, file: !2731, line: 25, type: !2732, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2731 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!2317, !689}
!2734 = !{!2735}
!2735 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2730, file: !2731, line: 25, type: !689)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 27, column: 10, scope: !2730)
!2738 = !DILocation(line: 27, column: 3, scope: !2730)
!2739 = distinct !DISubprogram(name: "strtoimax", scope: !2740, file: !2740, line: 324, type: !2741, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2747)
!2740 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!2743, !2502, !2746, !684}
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2744, line: 101, baseType: !2745)
!2744 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2554, line: 72, baseType: !692)
!2746 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !685)
!2747 = !{!2748, !2749, !2750}
!2748 = !DILocalVariable(name: "nptr", arg: 1, scope: !2739, file: !2740, line: 324, type: !2502)
!2749 = !DILocalVariable(name: "endptr", arg: 2, scope: !2739, file: !2740, line: 324, type: !2746)
!2750 = !DILocalVariable(name: "base", arg: 3, scope: !2739, file: !2740, line: 324, type: !684)
!2751 = !DILocation(line: 0, scope: !2739)
!2752 = !DILocation(line: 327, column: 10, scope: !2739)
!2753 = !DILocation(line: 327, column: 3, scope: !2739)
!2754 = distinct !DISubprogram(name: "strtoumax", scope: !2740, file: !2740, line: 336, type: !2755, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2759)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!2757, !2502, !2746, !684}
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2744, line: 102, baseType: !2758)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2554, line: 73, baseType: !695)
!2759 = !{!2760, !2761, !2762}
!2760 = !DILocalVariable(name: "nptr", arg: 1, scope: !2754, file: !2740, line: 336, type: !2502)
!2761 = !DILocalVariable(name: "endptr", arg: 2, scope: !2754, file: !2740, line: 336, type: !2746)
!2762 = !DILocalVariable(name: "base", arg: 3, scope: !2754, file: !2740, line: 336, type: !684)
!2763 = !DILocation(line: 0, scope: !2754)
!2764 = !DILocation(line: 339, column: 10, scope: !2754)
!2765 = !DILocation(line: 339, column: 3, scope: !2754)
!2766 = distinct !DISubprogram(name: "wcstoimax", scope: !2740, file: !2740, line: 348, type: !2767, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!2743, !2769, !2773, !684}
!2769 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2770)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2740, line: 34, baseType: !684)
!2773 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2774)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2776 = !{!2777, !2778, !2779}
!2777 = !DILocalVariable(name: "nptr", arg: 1, scope: !2766, file: !2740, line: 348, type: !2769)
!2778 = !DILocalVariable(name: "endptr", arg: 2, scope: !2766, file: !2740, line: 348, type: !2773)
!2779 = !DILocalVariable(name: "base", arg: 3, scope: !2766, file: !2740, line: 348, type: !684)
!2780 = !DILocation(line: 0, scope: !2766)
!2781 = !DILocation(line: 351, column: 10, scope: !2766)
!2782 = !DILocation(line: 351, column: 3, scope: !2766)
!2783 = distinct !DISubprogram(name: "wcstoumax", scope: !2740, file: !2740, line: 362, type: !2784, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!2757, !2769, !2773, !684}
!2786 = !{!2787, !2788, !2789}
!2787 = !DILocalVariable(name: "nptr", arg: 1, scope: !2783, file: !2740, line: 362, type: !2769)
!2788 = !DILocalVariable(name: "endptr", arg: 2, scope: !2783, file: !2740, line: 362, type: !2773)
!2789 = !DILocalVariable(name: "base", arg: 3, scope: !2783, file: !2740, line: 362, type: !684)
!2790 = !DILocation(line: 0, scope: !2783)
!2791 = !DILocation(line: 365, column: 10, scope: !2783)
!2792 = !DILocation(line: 365, column: 3, scope: !2783)
!2793 = distinct !DISubprogram(name: "stat", scope: !2794, file: !2794, line: 453, type: !2795, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2794 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!684, !689, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2799, line: 46, size: 1152, elements: !2800)
!2799 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2800 = !{!2801, !2803, !2805, !2807, !2809, !2811, !2813, !2814, !2815, !2816, !2818, !2820, !2828, !2829, !2830}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2798, file: !2799, line: 48, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2554, line: 145, baseType: !695)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2798, file: !2799, line: 53, baseType: !2804, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2554, line: 148, baseType: !695)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2798, file: !2799, line: 61, baseType: !2806, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2554, line: 151, baseType: !695)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2798, file: !2799, line: 62, baseType: !2808, size: 32, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2554, line: 150, baseType: !7)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2798, file: !2799, line: 64, baseType: !2810, size: 32, offset: 224)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2554, line: 146, baseType: !7)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2798, file: !2799, line: 65, baseType: !2812, size: 32, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2554, line: 147, baseType: !7)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2798, file: !2799, line: 67, baseType: !684, size: 32, offset: 288)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2798, file: !2799, line: 69, baseType: !2802, size: 64, offset: 320)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2798, file: !2799, line: 74, baseType: !2553, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2798, file: !2799, line: 78, baseType: !2817, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2554, line: 174, baseType: !692)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2798, file: !2799, line: 80, baseType: !2819, size: 64, offset: 512)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2554, line: 179, baseType: !692)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2798, file: !2799, line: 91, baseType: !2821, size: 128, offset: 576)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2822, line: 10, size: 128, elements: !2823)
!2822 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2823 = !{!2824, !2826}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2821, file: !2822, line: 12, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2554, line: 160, baseType: !692)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2821, file: !2822, line: 16, baseType: !2827, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2554, line: 196, baseType: !692)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2798, file: !2799, line: 92, baseType: !2821, size: 128, offset: 704)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2798, file: !2799, line: 93, baseType: !2821, size: 128, offset: 832)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2798, file: !2799, line: 106, baseType: !2831, size: 192, offset: 960)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2827, size: 192, elements: !948)
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "__path", arg: 1, scope: !2793, file: !2794, line: 453, type: !689)
!2834 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2793, file: !2794, line: 453, type: !2797)
!2835 = !DILocation(line: 0, scope: !2793)
!2836 = !DILocation(line: 455, column: 10, scope: !2793)
!2837 = !DILocation(line: 455, column: 3, scope: !2793)
!2838 = distinct !DISubprogram(name: "lstat", scope: !2794, file: !2794, line: 460, type: !2795, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2839)
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "__path", arg: 1, scope: !2838, file: !2794, line: 460, type: !689)
!2841 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2838, file: !2794, line: 460, type: !2797)
!2842 = !DILocation(line: 0, scope: !2838)
!2843 = !DILocation(line: 462, column: 10, scope: !2838)
!2844 = !DILocation(line: 462, column: 3, scope: !2838)
!2845 = distinct !DISubprogram(name: "fstat", scope: !2794, file: !2794, line: 467, type: !2846, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!684, !684, !2797}
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "__fd", arg: 1, scope: !2845, file: !2794, line: 467, type: !684)
!2850 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2845, file: !2794, line: 467, type: !2797)
!2851 = !DILocation(line: 0, scope: !2845)
!2852 = !DILocation(line: 469, column: 10, scope: !2845)
!2853 = !DILocation(line: 469, column: 3, scope: !2845)
!2854 = distinct !DISubprogram(name: "fstatat", scope: !2794, file: !2794, line: 474, type: !2855, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!684, !684, !689, !2797, !684}
!2857 = !{!2858, !2859, !2860, !2861}
!2858 = !DILocalVariable(name: "__fd", arg: 1, scope: !2854, file: !2794, line: 474, type: !684)
!2859 = !DILocalVariable(name: "__filename", arg: 2, scope: !2854, file: !2794, line: 474, type: !689)
!2860 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2854, file: !2794, line: 474, type: !2797)
!2861 = !DILocalVariable(name: "__flag", arg: 4, scope: !2854, file: !2794, line: 474, type: !684)
!2862 = !DILocation(line: 0, scope: !2854)
!2863 = !DILocation(line: 477, column: 10, scope: !2854)
!2864 = !DILocation(line: 477, column: 3, scope: !2854)
!2865 = distinct !DISubprogram(name: "mknod", scope: !2794, file: !2794, line: 483, type: !2866, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!684, !689, !2808, !2802}
!2868 = !{!2869, !2870, !2871}
!2869 = !DILocalVariable(name: "__path", arg: 1, scope: !2865, file: !2794, line: 483, type: !689)
!2870 = !DILocalVariable(name: "__mode", arg: 2, scope: !2865, file: !2794, line: 483, type: !2808)
!2871 = !DILocalVariable(name: "__dev", arg: 3, scope: !2865, file: !2794, line: 483, type: !2802)
!2872 = !DILocation(line: 0, scope: !2865)
!2873 = !DILocation(line: 485, column: 10, scope: !2865)
!2874 = !DILocation(line: 485, column: 3, scope: !2865)
!2875 = distinct !DISubprogram(name: "mknodat", scope: !2794, file: !2794, line: 491, type: !2876, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!684, !684, !689, !2808, !2802}
!2878 = !{!2879, !2880, !2881, !2882}
!2879 = !DILocalVariable(name: "__fd", arg: 1, scope: !2875, file: !2794, line: 491, type: !684)
!2880 = !DILocalVariable(name: "__path", arg: 2, scope: !2875, file: !2794, line: 491, type: !689)
!2881 = !DILocalVariable(name: "__mode", arg: 3, scope: !2875, file: !2794, line: 491, type: !2808)
!2882 = !DILocalVariable(name: "__dev", arg: 4, scope: !2875, file: !2794, line: 491, type: !2802)
!2883 = !DILocation(line: 0, scope: !2875)
!2884 = !DILocation(line: 494, column: 10, scope: !2875)
!2885 = !DILocation(line: 494, column: 3, scope: !2875)
!2886 = distinct !DISubprogram(name: "stat64", scope: !2794, file: !2794, line: 502, type: !2887, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2909)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!684, !689, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2799, line: 119, size: 1152, elements: !2891)
!2891 = !{!2892, !2893, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2905, !2906, !2907, !2908}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2890, file: !2799, line: 121, baseType: !2802, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2890, file: !2799, line: 123, baseType: !2894, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2554, line: 149, baseType: !695)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2890, file: !2799, line: 124, baseType: !2806, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2890, file: !2799, line: 125, baseType: !2808, size: 32, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2890, file: !2799, line: 132, baseType: !2810, size: 32, offset: 224)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2890, file: !2799, line: 133, baseType: !2812, size: 32, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2890, file: !2799, line: 135, baseType: !684, size: 32, offset: 288)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2890, file: !2799, line: 136, baseType: !2802, size: 64, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2890, file: !2799, line: 137, baseType: !2553, size: 64, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2890, file: !2799, line: 143, baseType: !2817, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2890, file: !2799, line: 144, baseType: !2904, size: 64, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2554, line: 180, baseType: !692)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2890, file: !2799, line: 152, baseType: !2821, size: 128, offset: 576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2890, file: !2799, line: 153, baseType: !2821, size: 128, offset: 704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2890, file: !2799, line: 154, baseType: !2821, size: 128, offset: 832)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2890, file: !2799, line: 164, baseType: !2831, size: 192, offset: 960)
!2909 = !{!2910, !2911}
!2910 = !DILocalVariable(name: "__path", arg: 1, scope: !2886, file: !2794, line: 502, type: !689)
!2911 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2886, file: !2794, line: 502, type: !2889)
!2912 = !DILocation(line: 0, scope: !2886)
!2913 = !DILocation(line: 504, column: 10, scope: !2886)
!2914 = !DILocation(line: 504, column: 3, scope: !2886)
!2915 = distinct !DISubprogram(name: "lstat64", scope: !2794, file: !2794, line: 509, type: !2887, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "__path", arg: 1, scope: !2915, file: !2794, line: 509, type: !689)
!2918 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2915, file: !2794, line: 509, type: !2889)
!2919 = !DILocation(line: 0, scope: !2915)
!2920 = !DILocation(line: 511, column: 10, scope: !2915)
!2921 = !DILocation(line: 511, column: 3, scope: !2915)
!2922 = distinct !DISubprogram(name: "fstat64", scope: !2794, file: !2794, line: 516, type: !2923, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!684, !684, !2889}
!2925 = !{!2926, !2927}
!2926 = !DILocalVariable(name: "__fd", arg: 1, scope: !2922, file: !2794, line: 516, type: !684)
!2927 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2922, file: !2794, line: 516, type: !2889)
!2928 = !DILocation(line: 0, scope: !2922)
!2929 = !DILocation(line: 518, column: 10, scope: !2922)
!2930 = !DILocation(line: 518, column: 3, scope: !2922)
!2931 = distinct !DISubprogram(name: "fstatat64", scope: !2794, file: !2794, line: 523, type: !2932, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!684, !684, !689, !2889, !684}
!2934 = !{!2935, !2936, !2937, !2938}
!2935 = !DILocalVariable(name: "__fd", arg: 1, scope: !2931, file: !2794, line: 523, type: !684)
!2936 = !DILocalVariable(name: "__filename", arg: 2, scope: !2931, file: !2794, line: 523, type: !689)
!2937 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2931, file: !2794, line: 523, type: !2889)
!2938 = !DILocalVariable(name: "__flag", arg: 4, scope: !2931, file: !2794, line: 523, type: !684)
!2939 = !DILocation(line: 0, scope: !2931)
!2940 = !DILocation(line: 526, column: 10, scope: !2931)
!2941 = !DILocation(line: 526, column: 3, scope: !2931)
!2942 = distinct !DISubprogram(name: "cgraph_clone_inlined_nodes", scope: !3, file: !3, line: 240, type: !2943, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !2092, !683, !683}
!2945 = !{!2946, !2947, !2948, !2949, !2950}
!2946 = !DILocalVariable(name: "e", arg: 1, scope: !2942, file: !3, line: 240, type: !2092)
!2947 = !DILocalVariable(name: "duplicate", arg: 2, scope: !2942, file: !3, line: 240, type: !683)
!2948 = !DILocalVariable(name: "update_original", arg: 3, scope: !2942, file: !3, line: 241, type: !683)
!2949 = !DILocalVariable(name: "peak", scope: !2942, file: !3, line: 243, type: !692)
!2950 = !DILocalVariable(name: "n", scope: !2951, file: !3, line: 269, type: !2087)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 268, column: 2)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 249, column: 11)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 246, column: 5)
!2954 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 245, column: 7)
!2955 = !DILocation(line: 0, scope: !2942)
!2956 = !DILocation(line: 245, column: 7, scope: !2954)
!2957 = !DILocation(line: 245, column: 7, scope: !2942)
!2958 = !DILocation(line: 249, column: 15, scope: !2952)
!2959 = !DILocation(line: 249, column: 23, scope: !2952)
!2960 = !DILocation(line: 249, column: 32, scope: !2952)
!2961 = !DILocation(line: 249, column: 12, scope: !2952)
!2962 = !DILocation(line: 250, column: 4, scope: !2952)
!2963 = !DILocation(line: 250, column: 7, scope: !2952)
!2964 = !DILocation(line: 254, column: 4, scope: !2952)
!2965 = !DILocation(line: 270, column: 30, scope: !2951)
!2966 = !DILocation(line: 254, column: 11, scope: !2952)
!2967 = !DILocation(line: 254, column: 19, scope: !2952)
!2968 = !DILocation(line: 254, column: 8, scope: !2952)
!2969 = !DILocation(line: 255, column: 8, scope: !2952)
!2970 = !DILocation(line: 255, column: 4, scope: !2952)
!2971 = !DILocation(line: 257, column: 4, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 256, column: 2)
!2973 = !DILocation(line: 258, column: 11, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 258, column: 8)
!2975 = !DILocation(line: 258, column: 19, scope: !2974)
!2976 = !DILocation(line: 258, column: 8, scope: !2974)
!2977 = !DILocation(line: 258, column: 8, scope: !2972)
!2978 = !DILocation(line: 260, column: 42, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 259, column: 6)
!2980 = !DILocation(line: 260, column: 21, scope: !2979)
!2981 = !DILocation(line: 261, column: 26, scope: !2979)
!2982 = !DILocation(line: 262, column: 6, scope: !2979)
!2983 = !DILocation(line: 264, column: 21, scope: !2972)
!2984 = !DILocation(line: 264, column: 40, scope: !2972)
!2985 = !DILocation(line: 265, column: 44, scope: !2972)
!2986 = !DILocation(line: 265, column: 55, scope: !2972)
!2987 = !DILocation(line: 265, column: 69, scope: !2972)
!2988 = !DILocation(line: 265, column: 66, scope: !2972)
!2989 = !DILocation(line: 265, column: 11, scope: !2972)
!2990 = !DILocation(line: 266, column: 2, scope: !2972)
!2991 = !DILocation(line: 270, column: 41, scope: !2951)
!2992 = !DILocation(line: 270, column: 51, scope: !2951)
!2993 = !DILocation(line: 270, column: 65, scope: !2951)
!2994 = !DILocation(line: 270, column: 62, scope: !2951)
!2995 = !DILocation(line: 270, column: 8, scope: !2951)
!2996 = !DILocation(line: 0, scope: !2951)
!2997 = !DILocation(line: 272, column: 4, scope: !2951)
!2998 = !DILocation(line: 276, column: 10, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 276, column: 7)
!3000 = !DILocation(line: 276, column: 25, scope: !2999)
!3001 = !DILocation(line: 276, column: 7, scope: !2999)
!3002 = !DILocation(line: 276, column: 7, scope: !2942)
!3003 = !DILocation(line: 277, column: 8, scope: !2999)
!3004 = !DILocation(line: 277, column: 23, scope: !2999)
!3005 = !DILocation(line: 277, column: 34, scope: !2999)
!3006 = !DILocation(line: 277, column: 5, scope: !2999)
!3007 = !DILocation(line: 279, column: 8, scope: !2999)
!3008 = !DILocation(line: 279, column: 23, scope: !2999)
!3009 = !DILocation(line: 279, column: 34, scope: !2999)
!3010 = !DILocation(line: 281, column: 10, scope: !2942)
!3011 = !DILocation(line: 281, column: 25, scope: !2942)
!3012 = !DILocation(line: 282, column: 9, scope: !2942)
!3013 = !DILocation(line: 282, column: 37, scope: !2942)
!3014 = !DILocation(line: 282, column: 7, scope: !2942)
!3015 = !DILocation(line: 280, column: 6, scope: !2942)
!3016 = !DILocation(line: 280, column: 21, scope: !2942)
!3017 = !DILocation(line: 281, column: 5, scope: !2942)
!3018 = !DILocation(line: 283, column: 13, scope: !2942)
!3019 = !DILocation(line: 283, column: 28, scope: !2942)
!3020 = !DILocation(line: 284, column: 9, scope: !2942)
!3021 = !DILocation(line: 284, column: 37, scope: !2942)
!3022 = !DILocation(line: 284, column: 7, scope: !2942)
!3023 = !DILocation(line: 285, column: 10, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 285, column: 7)
!3025 = !DILocation(line: 285, column: 25, scope: !3024)
!3026 = !DILocation(line: 285, column: 44, scope: !3024)
!3027 = !DILocation(line: 285, column: 65, scope: !3024)
!3028 = !DILocation(line: 285, column: 7, scope: !2942)
!3029 = !DILocation(line: 286, column: 63, scope: !3024)
!3030 = !DILocation(line: 289, column: 15, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 289, column: 3)
!3032 = !DILocation(line: 286, column: 5, scope: !3024)
!3033 = !DILocation(line: 289, column: 23, scope: !3031)
!3034 = !DILocation(line: 289, column: 8, scope: !3031)
!3035 = !DILocation(line: 0, scope: !3031)
!3036 = !DILocation(line: 289, column: 3, scope: !3031)
!3037 = !DILocation(line: 290, column: 13, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 290, column: 9)
!3039 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 289, column: 3)
!3040 = !DILocation(line: 290, column: 10, scope: !3038)
!3041 = !DILocation(line: 290, column: 9, scope: !3039)
!3042 = !DILocation(line: 291, column: 7, scope: !3038)
!3043 = !DILocation(line: 289, column: 42, scope: !3039)
!3044 = !DILocation(line: 289, column: 3, scope: !3039)
!3045 = distinct !{!3045, !3036, !3046}
!3046 = !DILocation(line: 291, column: 64, scope: !3031)
!3047 = !DILocation(line: 292, column: 1, scope: !2942)
!3048 = distinct !DISubprogram(name: "cgraph_can_remove_if_no_direct_calls_p", scope: !568, file: !568, line: 724, type: !3049, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!683, !2087}
!3051 = !{!3052}
!3052 = !DILocalVariable(name: "node", arg: 1, scope: !3048, file: !568, line: 724, type: !2087)
!3053 = !DILocation(line: 0, scope: !3048)
!3054 = !DILocation(line: 726, column: 18, scope: !3048)
!3055 = !DILocation(line: 726, column: 12, scope: !3048)
!3056 = !DILocation(line: 727, column: 6, scope: !3048)
!3057 = !DILocation(line: 727, column: 10, scope: !3048)
!3058 = !DILocation(line: 727, column: 35, scope: !3048)
!3059 = !DILocation(line: 727, column: 51, scope: !3048)
!3060 = !DILocation(line: 726, column: 3, scope: !3048)
!3061 = distinct !DISubprogram(name: "update_noncloned_frequencies", scope: !3, file: !3, line: 215, type: !3062, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !2087, !684, !684}
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "node", arg: 1, scope: !3061, file: !3, line: 215, type: !2087)
!3066 = !DILocalVariable(name: "freq_scale", arg: 2, scope: !3061, file: !3, line: 216, type: !684)
!3067 = !DILocalVariable(name: "nest", arg: 3, scope: !3061, file: !3, line: 216, type: !684)
!3068 = !DILocalVariable(name: "e", scope: !3061, file: !3, line: 218, type: !2092)
!3069 = !DILocation(line: 0, scope: !3061)
!3070 = !DILocation(line: 221, column: 8, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 221, column: 7)
!3072 = !DILocation(line: 221, column: 7, scope: !3061)
!3073 = !DILocation(line: 223, column: 18, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 223, column: 3)
!3075 = !DILocation(line: 0, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 224, column: 5)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 223, column: 3)
!3078 = !DILocation(line: 223, column: 8, scope: !3074)
!3079 = !DILocation(line: 0, scope: !3074)
!3080 = !DILocation(line: 223, column: 3, scope: !3074)
!3081 = !DILocation(line: 225, column: 10, scope: !3076)
!3082 = !DILocation(line: 225, column: 20, scope: !3076)
!3083 = !DILocation(line: 226, column: 25, scope: !3076)
!3084 = !DILocation(line: 226, column: 22, scope: !3076)
!3085 = !DILocation(line: 226, column: 35, scope: !3076)
!3086 = !DILocation(line: 226, column: 60, scope: !3076)
!3087 = !DILocation(line: 227, column: 24, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 227, column: 11)
!3089 = !DILocation(line: 227, column: 11, scope: !3076)
!3090 = !DILocation(line: 228, column: 9, scope: !3088)
!3091 = !DILocation(line: 229, column: 15, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 229, column: 11)
!3093 = !DILocation(line: 229, column: 12, scope: !3092)
!3094 = !DILocation(line: 229, column: 11, scope: !3076)
!3095 = !DILocation(line: 230, column: 42, scope: !3092)
!3096 = !DILocation(line: 230, column: 9, scope: !3092)
!3097 = !DILocation(line: 223, column: 37, scope: !3077)
!3098 = !DILocation(line: 223, column: 3, scope: !3077)
!3099 = distinct !{!3099, !3080, !3100}
!3100 = !DILocation(line: 231, column: 5, scope: !3074)
!3101 = !DILocation(line: 232, column: 1, scope: !3061)
!3102 = distinct !DISubprogram(name: "inline_summary", scope: !3, file: !3, line: 178, type: !3103, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!3105, !2087}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!3106 = !{!3107}
!3107 = !DILocalVariable(name: "node", arg: 1, scope: !3102, file: !3, line: 178, type: !2087)
!3108 = !DILocation(line: 0, scope: !3102)
!3109 = !DILocation(line: 180, column: 23, scope: !3102)
!3110 = !DILocation(line: 180, column: 3, scope: !3102)
!3111 = distinct !DISubprogram(name: "cgraph_gate_early_inlining", scope: !3, file: !3, line: 1654, type: !2153, scopeLine: 1655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!3112 = !DILocation(line: 1656, column: 10, scope: !3111)
!3113 = !DILocation(line: 1656, column: 3, scope: !3111)
!3114 = distinct !DISubprogram(name: "cgraph_early_inlining", scope: !3, file: !3, line: 1628, type: !2157, scopeLine: 1629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3115 = !{!3116, !3117, !3118}
!3116 = !DILocalVariable(name: "node", scope: !3114, file: !3, line: 1630, type: !2087)
!3117 = !DILocalVariable(name: "todo", scope: !3114, file: !3, line: 1631, type: !7)
!3118 = !DILocalVariable(name: "iterations", scope: !3114, file: !3, line: 1632, type: !684)
!3119 = !DILocation(line: 1630, column: 43, scope: !3114)
!3120 = !DILocation(line: 1630, column: 30, scope: !3114)
!3121 = !DILocation(line: 0, scope: !3114)
!3122 = !DILocation(line: 1634, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 1634, column: 7)
!3124 = !DILocation(line: 1634, column: 18, scope: !3123)
!3125 = !DILocation(line: 1634, column: 21, scope: !3123)
!3126 = !DILocation(line: 1634, column: 7, scope: !3114)
!3127 = !DILocation(line: 1636, column: 3, scope: !3114)
!3128 = !DILocation(line: 1636, column: 23, scope: !3114)
!3129 = !DILocation(line: 1636, column: 21, scope: !3114)
!3130 = !DILocation(line: 1637, column: 10, scope: !3114)
!3131 = !DILocation(line: 1638, column: 18, scope: !3114)
!3132 = !DILocation(line: 1637, column: 13, scope: !3114)
!3133 = !DILocation(line: 1641, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 1641, column: 7)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1641, column: 7)
!3136 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 1640, column: 5)
!3137 = !DILocation(line: 1641, column: 7, scope: !3135)
!3138 = !DILocation(line: 1642, column: 38, scope: !3136)
!3139 = !DILocation(line: 1642, column: 15, scope: !3136)
!3140 = !DILocation(line: 1642, column: 12, scope: !3136)
!3141 = !DILocation(line: 1643, column: 17, scope: !3136)
!3142 = !DILocation(line: 1644, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1644, column: 7)
!3144 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1644, column: 7)
!3145 = !DILocation(line: 1644, column: 7, scope: !3144)
!3146 = distinct !{!3146, !3127, !3147}
!3147 = !DILocation(line: 1645, column: 5, scope: !3114)
!3148 = !DILocation(line: 1646, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 1646, column: 7)
!3150 = !DILocation(line: 1646, column: 7, scope: !3114)
!3151 = !DILocation(line: 1647, column: 5, scope: !3149)
!3152 = !DILocation(line: 1648, column: 3, scope: !3114)
!3153 = !DILocation(line: 1648, column: 9, scope: !3114)
!3154 = !DILocation(line: 1648, column: 41, scope: !3114)
!3155 = !DILocation(line: 1649, column: 3, scope: !3114)
!3156 = !DILocation(line: 1650, column: 1, scope: !3114)
!3157 = distinct !DISubprogram(name: "cgraph_gate_ipa_early_inlining", scope: !3, file: !3, line: 1680, type: !2153, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!3158 = !DILocation(line: 1682, column: 11, scope: !3157)
!3159 = !DILocation(line: 1683, column: 8, scope: !3157)
!3160 = !DILocation(line: 1683, column: 4, scope: !3157)
!3161 = !DILocation(line: 1684, column: 8, scope: !3157)
!3162 = !DILocation(line: 1684, column: 37, scope: !3157)
!3163 = !DILocation(line: 1684, column: 34, scope: !3157)
!3164 = !DILocation(line: 1685, column: 11, scope: !3157)
!3165 = !DILocation(line: 1685, column: 8, scope: !3157)
!3166 = !DILocation(line: 1682, column: 3, scope: !3157)
!3167 = distinct !DISubprogram(name: "compute_inline_parameters", scope: !3, file: !3, line: 1861, type: !2210, scopeLine: 1862, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3168)
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "node", arg: 1, scope: !3167, file: !3, line: 1861, type: !2087)
!3170 = !DILocalVariable(name: "self_stack_size", scope: !3167, file: !3, line: 1863, type: !692)
!3171 = !DILocation(line: 0, scope: !3167)
!3172 = !DILocation(line: 1865, column: 3, scope: !3167)
!3173 = !DILocation(line: 1869, column: 21, scope: !3167)
!3174 = !DILocation(line: 1869, column: 32, scope: !3167)
!3175 = !DILocation(line: 1870, column: 3, scope: !3167)
!3176 = !DILocation(line: 1870, column: 26, scope: !3167)
!3177 = !DILocation(line: 1870, column: 52, scope: !3167)
!3178 = !DILocation(line: 1871, column: 16, scope: !3167)
!3179 = !DILocation(line: 1871, column: 37, scope: !3167)
!3180 = !DILocation(line: 1872, column: 16, scope: !3167)
!3181 = !DILocation(line: 1872, column: 35, scope: !3167)
!3182 = !DILocation(line: 1875, column: 60, scope: !3167)
!3183 = !DILocation(line: 1875, column: 27, scope: !3167)
!3184 = !DILocation(line: 1875, column: 15, scope: !3167)
!3185 = !DILocation(line: 1875, column: 25, scope: !3167)
!3186 = !DILocation(line: 1876, column: 19, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1876, column: 7)
!3188 = !DILocation(line: 1876, column: 7, scope: !3187)
!3189 = !DILocation(line: 1876, column: 29, scope: !3187)
!3190 = !DILocation(line: 1876, column: 45, scope: !3187)
!3191 = !DILocation(line: 1876, column: 33, scope: !3187)
!3192 = !DILocation(line: 1876, column: 7, scope: !3167)
!3193 = !DILocation(line: 1878, column: 9, scope: !3187)
!3194 = !DILocation(line: 1878, column: 7, scope: !3187)
!3195 = !DILocation(line: 1877, column: 5, scope: !3187)
!3196 = !DILocation(line: 1879, column: 3, scope: !3167)
!3197 = !DILocation(line: 1881, column: 23, scope: !3167)
!3198 = !DILocation(line: 1881, column: 46, scope: !3167)
!3199 = !DILocation(line: 1881, column: 16, scope: !3167)
!3200 = !DILocation(line: 1881, column: 21, scope: !3167)
!3201 = !DILocation(line: 1882, column: 23, scope: !3167)
!3202 = !DILocation(line: 1882, column: 46, scope: !3167)
!3203 = !DILocation(line: 1882, column: 16, scope: !3167)
!3204 = !DILocation(line: 1882, column: 21, scope: !3167)
!3205 = !DILocation(line: 1883, column: 3, scope: !3167)
!3206 = distinct !DISubprogram(name: "estimate_function_body_sizes", scope: !3, file: !3, line: 1776, type: !2200, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213, !3214, !3221, !3222, !3223, !3224, !3225, !3232, !3233, !3234, !3237}
!3208 = !DILocalVariable(name: "node", arg: 1, scope: !3206, file: !3, line: 1776, type: !2087)
!3209 = !DILocalVariable(name: "time", scope: !3206, file: !3, line: 1778, type: !691)
!3210 = !DILocalVariable(name: "time_inlining_benefit", scope: !3206, file: !3, line: 1779, type: !691)
!3211 = !DILocalVariable(name: "size", scope: !3206, file: !3, line: 1780, type: !684)
!3212 = !DILocalVariable(name: "size_inlining_benefit", scope: !3206, file: !3, line: 1781, type: !684)
!3213 = !DILocalVariable(name: "bb", scope: !3206, file: !3, line: 1782, type: !1298)
!3214 = !DILocalVariable(name: "bsi", scope: !3206, file: !3, line: 1783, type: !3215)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !598, line: 265, baseType: !3216)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !598, line: 254, size: 192, elements: !3217)
!3217 = !{!3218, !3219, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3216, file: !598, line: 257, baseType: !811, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3216, file: !598, line: 263, baseType: !806, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3216, file: !598, line: 264, baseType: !1298, size: 64, offset: 128)
!3221 = !DILocalVariable(name: "my_function", scope: !3206, file: !3, line: 1784, type: !1127)
!3222 = !DILocalVariable(name: "arg", scope: !3206, file: !3, line: 1785, type: !877)
!3223 = !DILocalVariable(name: "freq", scope: !3206, file: !3, line: 1786, type: !684)
!3224 = !DILocalVariable(name: "funtype", scope: !3206, file: !3, line: 1787, type: !877)
!3225 = !DILocalVariable(name: "stmt", scope: !3226, file: !3, line: 1799, type: !816)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1798, column: 2)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1797, column: 7)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 1797, column: 7)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1795, column: 5)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1794, column: 3)
!3231 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1794, column: 3)
!3232 = !DILocalVariable(name: "this_size", scope: !3226, file: !3, line: 1800, type: !684)
!3233 = !DILocalVariable(name: "this_time", scope: !3226, file: !3, line: 1801, type: !684)
!3234 = !DILocalVariable(name: "cost", scope: !3235, file: !3, line: 1834, type: !684)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 1833, column: 5)
!3236 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1832, column: 7)
!3237 = !DILocalVariable(name: "cost", scope: !3238, file: !3, line: 1841, type: !684)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 1840, column: 7)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 1839, column: 9)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 1838, column: 3)
!3241 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1838, column: 3)
!3242 = !DILocation(line: 0, scope: !3206)
!3243 = !DILocation(line: 1783, column: 3, scope: !3206)
!3244 = !DILocation(line: 1784, column: 34, scope: !3206)
!3245 = !DILocation(line: 1787, column: 18, scope: !3206)
!3246 = !DILocation(line: 1789, column: 7, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1789, column: 7)
!3248 = !DILocation(line: 1789, column: 7, scope: !3206)
!3249 = !DILocation(line: 1791, column: 7, scope: !3247)
!3250 = !DILocation(line: 1790, column: 5, scope: !3247)
!3251 = !DILocation(line: 1793, column: 3, scope: !3206)
!3252 = !DILocation(line: 0, scope: !3231)
!3253 = !DILocation(line: 1794, column: 3, scope: !3231)
!3254 = !DILocation(line: 0, scope: !3229)
!3255 = !DILocation(line: 0, scope: !3228)
!3256 = !DILocation(line: 1794, column: 3, scope: !3230)
!3257 = !DILocation(line: 1781, column: 7, scope: !3206)
!3258 = !DILocation(line: 1780, column: 7, scope: !3206)
!3259 = !DILocation(line: 1779, column: 13, scope: !3206)
!3260 = !DILocation(line: 1778, column: 13, scope: !3206)
!3261 = !DILocation(line: 1796, column: 52, scope: !3229)
!3262 = !DILocation(line: 1796, column: 14, scope: !3229)
!3263 = !DILocation(line: 1797, column: 18, scope: !3228)
!3264 = !DILocation(line: 1797, column: 12, scope: !3228)
!3265 = !DILocation(line: 1797, column: 38, scope: !3227)
!3266 = !DILocation(line: 1797, column: 37, scope: !3227)
!3267 = !DILocation(line: 1797, column: 7, scope: !3228)
!3268 = !DILocation(line: 1799, column: 18, scope: !3226)
!3269 = !DILocation(line: 0, scope: !3226)
!3270 = !DILocation(line: 1800, column: 20, scope: !3226)
!3271 = !DILocation(line: 1801, column: 20, scope: !3226)
!3272 = !DILocation(line: 1803, column: 8, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1803, column: 8)
!3274 = !DILocation(line: 1803, column: 18, scope: !3273)
!3275 = !DILocation(line: 1803, column: 22, scope: !3273)
!3276 = !DILocation(line: 1803, column: 33, scope: !3273)
!3277 = !DILocation(line: 1803, column: 8, scope: !3226)
!3278 = !DILocation(line: 1805, column: 8, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 1804, column: 6)
!3280 = !DILocation(line: 1807, column: 27, scope: !3279)
!3281 = !DILocation(line: 1807, column: 8, scope: !3279)
!3282 = !DILocation(line: 1808, column: 6, scope: !3279)
!3283 = !DILocation(line: 1809, column: 14, scope: !3226)
!3284 = !DILocation(line: 1810, column: 12, scope: !3226)
!3285 = !DILocation(line: 1810, column: 9, scope: !3226)
!3286 = !DILocation(line: 1811, column: 9, scope: !3226)
!3287 = !DILocation(line: 1812, column: 8, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1812, column: 8)
!3289 = !DILocation(line: 1812, column: 8, scope: !3226)
!3290 = !DILocation(line: 1814, column: 30, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 1813, column: 6)
!3292 = !DILocation(line: 1815, column: 30, scope: !3291)
!3293 = !DILocation(line: 1816, column: 12, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 1816, column: 12)
!3295 = !DILocation(line: 1816, column: 22, scope: !3294)
!3296 = !DILocation(line: 1816, column: 26, scope: !3294)
!3297 = !DILocation(line: 1816, column: 37, scope: !3294)
!3298 = !DILocation(line: 1816, column: 12, scope: !3291)
!3299 = !DILocation(line: 1817, column: 3, scope: !3294)
!3300 = !DILocation(line: 1819, column: 4, scope: !3226)
!3301 = !DILocation(line: 1820, column: 4, scope: !3226)
!3302 = !DILocation(line: 1797, column: 55, scope: !3227)
!3303 = !DILocation(line: 1797, column: 7, scope: !3227)
!3304 = distinct !{!3304, !3267, !3305}
!3305 = !DILocation(line: 1821, column: 2, scope: !3228)
!3306 = distinct !{!3306, !3253, !3307}
!3307 = !DILocation(line: 1822, column: 5, scope: !3231)
!3308 = !DILocation(line: 1823, column: 16, scope: !3206)
!3309 = !DILocation(line: 1823, column: 40, scope: !3206)
!3310 = !DILocation(line: 1824, column: 51, scope: !3206)
!3311 = !DILocation(line: 1825, column: 9, scope: !3206)
!3312 = !DILocation(line: 1826, column: 7, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1826, column: 7)
!3314 = !DILocation(line: 1826, column: 7, scope: !3206)
!3315 = !DILocation(line: 1828, column: 7, scope: !3313)
!3316 = !DILocation(line: 1828, column: 18, scope: !3313)
!3317 = !DILocation(line: 1827, column: 5, scope: !3313)
!3318 = !DILocation(line: 1830, column: 45, scope: !3206)
!3319 = !DILocation(line: 1830, column: 28, scope: !3206)
!3320 = !DILocation(line: 1830, column: 25, scope: !3206)
!3321 = !DILocation(line: 1831, column: 45, scope: !3206)
!3322 = !DILocation(line: 1831, column: 25, scope: !3206)
!3323 = !DILocation(line: 1832, column: 8, scope: !3236)
!3324 = !DILocation(line: 1832, column: 7, scope: !3206)
!3325 = !DILocation(line: 1834, column: 18, scope: !3235)
!3326 = !DILocation(line: 0, scope: !3235)
!3327 = !DILocation(line: 1835, column: 32, scope: !3235)
!3328 = !DILocation(line: 1835, column: 29, scope: !3235)
!3329 = !DILocation(line: 1836, column: 29, scope: !3235)
!3330 = !DILocation(line: 1837, column: 5, scope: !3235)
!3331 = !DILocation(line: 1838, column: 14, scope: !3241)
!3332 = !DILocation(line: 1838, column: 8, scope: !3241)
!3333 = !DILocation(line: 0, scope: !3241)
!3334 = !DILocation(line: 1838, column: 3, scope: !3241)
!3335 = !DILocation(line: 1839, column: 10, scope: !3239)
!3336 = !DILocation(line: 1839, column: 9, scope: !3240)
!3337 = !DILocation(line: 1841, column: 20, scope: !3238)
!3338 = !DILocation(line: 0, scope: !3238)
!3339 = !DILocation(line: 1842, column: 34, scope: !3238)
!3340 = !DILocation(line: 1842, column: 31, scope: !3238)
!3341 = !DILocation(line: 1843, column: 31, scope: !3238)
!3342 = !DILocation(line: 1844, column: 7, scope: !3238)
!3343 = !DILocation(line: 1838, column: 54, scope: !3240)
!3344 = !DILocation(line: 1838, column: 3, scope: !3240)
!3345 = distinct !{!3345, !3334, !3346}
!3346 = !DILocation(line: 1844, column: 7, scope: !3241)
!3347 = !DILocation(line: 1845, column: 7, scope: !3206)
!3348 = !DILocation(line: 1847, column: 7, scope: !3206)
!3349 = !DILocation(line: 1849, column: 38, scope: !3206)
!3350 = !DILocation(line: 1849, column: 3, scope: !3206)
!3351 = !DILocation(line: 1849, column: 26, scope: !3206)
!3352 = !DILocation(line: 1849, column: 36, scope: !3206)
!3353 = !DILocation(line: 1850, column: 3, scope: !3206)
!3354 = !DILocation(line: 1850, column: 26, scope: !3206)
!3355 = !DILocation(line: 1850, column: 36, scope: !3206)
!3356 = !DILocation(line: 1851, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1851, column: 7)
!3358 = !DILocation(line: 1851, column: 7, scope: !3206)
!3359 = !DILocation(line: 1855, column: 50, scope: !3206)
!3360 = !DILocation(line: 1853, column: 18, scope: !3357)
!3361 = !DILocation(line: 1852, column: 5, scope: !3357)
!3362 = !DILocation(line: 1855, column: 3, scope: !3206)
!3363 = !DILocation(line: 1855, column: 26, scope: !3206)
!3364 = !DILocation(line: 1855, column: 48, scope: !3206)
!3365 = !DILocation(line: 1856, column: 3, scope: !3206)
!3366 = !DILocation(line: 1856, column: 26, scope: !3206)
!3367 = !DILocation(line: 1856, column: 48, scope: !3206)
!3368 = !DILocation(line: 1857, column: 1, scope: !3206)
!3369 = distinct !DISubprogram(name: "compute_inline_parameters_for_current", scope: !3, file: !3, line: 1890, type: !2157, scopeLine: 1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!3370 = !DILocation(line: 1892, column: 43, scope: !3369)
!3371 = !DILocation(line: 1892, column: 30, scope: !3369)
!3372 = !DILocation(line: 1892, column: 3, scope: !3369)
!3373 = !DILocation(line: 1893, column: 3, scope: !3369)
!3374 = distinct !DISubprogram(name: "cgraph_decide_inlining", scope: !3, file: !3, line: 1135, type: !2157, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3388, !3393, !3394}
!3376 = !DILocalVariable(name: "node", scope: !3374, file: !3, line: 1137, type: !2087)
!3377 = !DILocalVariable(name: "nnodes", scope: !3374, file: !3, line: 1138, type: !684)
!3378 = !DILocalVariable(name: "order", scope: !3374, file: !3, line: 1139, type: !2086)
!3379 = !DILocalVariable(name: "old_size", scope: !3374, file: !3, line: 1141, type: !684)
!3380 = !DILocalVariable(name: "i", scope: !3374, file: !3, line: 1142, type: !684)
!3381 = !DILocalVariable(name: "redo_always_inline", scope: !3374, file: !3, line: 1143, type: !683)
!3382 = !DILocalVariable(name: "initial_size", scope: !3374, file: !3, line: 1144, type: !684)
!3383 = !DILocalVariable(name: "e", scope: !3384, file: !3, line: 1155, type: !2092)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 1154, column: 7)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 1153, column: 9)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1152, column: 3)
!3387 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1152, column: 3)
!3388 = !DILocalVariable(name: "e", scope: !3389, file: !3, line: 1190, type: !2092)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1189, column: 2)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 1188, column: 7)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 1188, column: 7)
!3392 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1186, column: 5)
!3393 = !DILocalVariable(name: "next", scope: !3389, file: !3, line: 1190, type: !2092)
!3394 = !DILocalVariable(name: "reason", scope: !3395, file: !3, line: 1266, type: !2105)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 1265, column: 6)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1255, column: 8)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 1252, column: 2)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 1251, column: 7)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1251, column: 7)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1246, column: 5)
!3401 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1245, column: 7)
!3402 = !DILocation(line: 1140, column: 5, scope: !3374)
!3403 = !DILocation(line: 0, scope: !3374)
!3404 = !DILocation(line: 1146, column: 42, scope: !3374)
!3405 = !DILocation(line: 1146, column: 3, scope: !3374)
!3406 = !DILocation(line: 1147, column: 7, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1147, column: 7)
!3408 = !DILocation(line: 1147, column: 19, scope: !3407)
!3409 = !DILocation(line: 1147, column: 16, scope: !3407)
!3410 = !DILocation(line: 1148, column: 5, scope: !3407)
!3411 = !DILocation(line: 1150, column: 13, scope: !3374)
!3412 = !DILocation(line: 1151, column: 15, scope: !3374)
!3413 = !DILocation(line: 1152, column: 8, scope: !3387)
!3414 = !DILocation(line: 0, scope: !3387)
!3415 = !DILocation(line: 1152, column: 3, scope: !3387)
!3416 = !DILocation(line: 1153, column: 15, scope: !3385)
!3417 = !DILocation(line: 1153, column: 9, scope: !3385)
!3418 = !DILocation(line: 1153, column: 9, scope: !3386)
!3419 = !DILocation(line: 1157, column: 2, scope: !3384)
!3420 = !DILocation(line: 1158, column: 31, scope: !3384)
!3421 = !DILocation(line: 1159, column: 17, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1159, column: 2)
!3423 = !DILocation(line: 1159, column: 7, scope: !3422)
!3424 = !DILocation(line: 0, scope: !3422)
!3425 = !DILocation(line: 0, scope: !3384)
!3426 = !DILocation(line: 1159, column: 2, scope: !3422)
!3427 = !DILocation(line: 1160, column: 8, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1160, column: 8)
!3429 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1159, column: 2)
!3430 = !DILocation(line: 1160, column: 23, scope: !3428)
!3431 = !DILocation(line: 1160, column: 18, scope: !3428)
!3432 = !DILocation(line: 1160, column: 8, scope: !3429)
!3433 = !DILocation(line: 1161, column: 16, scope: !3428)
!3434 = !DILocation(line: 1161, column: 6, scope: !3428)
!3435 = !DILocation(line: 1159, column: 36, scope: !3429)
!3436 = !DILocation(line: 1159, column: 2, scope: !3429)
!3437 = distinct !{!3437, !3426, !3438}
!3438 = !DILocation(line: 1161, column: 21, scope: !3422)
!3439 = !DILocation(line: 1158, column: 15, scope: !3384)
!3440 = !DILocation(line: 1162, column: 6, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1162, column: 6)
!3442 = !DILocation(line: 1162, column: 20, scope: !3441)
!3443 = !DILocation(line: 1162, column: 43, scope: !3441)
!3444 = !DILocation(line: 1162, column: 18, scope: !3441)
!3445 = !DILocation(line: 1162, column: 6, scope: !3384)
!3446 = !DILocation(line: 1163, column: 18, scope: !3441)
!3447 = !DILocation(line: 1163, column: 41, scope: !3441)
!3448 = !DILocation(line: 1163, column: 16, scope: !3441)
!3449 = !DILocation(line: 1163, column: 4, scope: !3441)
!3450 = !DILocation(line: 1152, column: 48, scope: !3386)
!3451 = !DILocation(line: 1152, column: 3, scope: !3386)
!3452 = distinct !{!3452, !3415, !3453}
!3453 = !DILocation(line: 1164, column: 7, scope: !3387)
!3454 = !DILocation(line: 1165, column: 3, scope: !3374)
!3455 = !DILocation(line: 1168, column: 16, scope: !3374)
!3456 = !DILocation(line: 1170, column: 12, scope: !3374)
!3457 = !DILocation(line: 1172, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1172, column: 7)
!3459 = !DILocation(line: 1172, column: 7, scope: !3374)
!3460 = !DILocation(line: 1173, column: 5, scope: !3458)
!3461 = !DILocation(line: 1177, column: 8, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1177, column: 3)
!3463 = !DILocation(line: 0, scope: !3462)
!3464 = !DILocation(line: 1177, column: 3, scope: !3462)
!3465 = !DILocation(line: 1178, column: 11, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1177, column: 3)
!3467 = !DILocation(line: 1178, column: 15, scope: !3466)
!3468 = !DILocation(line: 1177, column: 48, scope: !3466)
!3469 = !DILocation(line: 1177, column: 3, scope: !3466)
!3470 = distinct !{!3470, !3464, !3471}
!3471 = !DILocation(line: 1178, column: 17, scope: !3462)
!3472 = !DILocation(line: 1180, column: 7, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1180, column: 7)
!3474 = !DILocation(line: 1180, column: 7, scope: !3374)
!3475 = !DILocation(line: 1181, column: 5, scope: !3473)
!3476 = !DILocation(line: 1185, column: 3, scope: !3374)
!3477 = !DILocation(line: 1187, column: 26, scope: !3392)
!3478 = !DILocation(line: 1188, column: 12, scope: !3391)
!3479 = !DILocation(line: 0, scope: !3391)
!3480 = !DILocation(line: 1188, column: 30, scope: !3390)
!3481 = !DILocation(line: 1188, column: 7, scope: !3391)
!3482 = distinct !{!3482, !3476, !3483}
!3483 = !DILocation(line: 1241, column: 5, scope: !3374)
!3484 = !DILocation(line: 1192, column: 11, scope: !3389)
!3485 = !DILocation(line: 1197, column: 5, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1196, column: 8)
!3487 = !DILocation(line: 1196, column: 8, scope: !3486)
!3488 = !DILocation(line: 1197, column: 35, scope: !3486)
!3489 = !DILocation(line: 1196, column: 8, scope: !3389)
!3490 = !DILocation(line: 1199, column: 12, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 1199, column: 12)
!3492 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 1198, column: 6)
!3493 = !DILocation(line: 1199, column: 12, scope: !3492)
!3494 = !DILocation(line: 1201, column: 24, scope: !3491)
!3495 = !DILocation(line: 1200, column: 3, scope: !3491)
!3496 = !DILocation(line: 1202, column: 8, scope: !3492)
!3497 = !DILocation(line: 1203, column: 6, scope: !3492)
!3498 = !DILocation(line: 1205, column: 21, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1205, column: 8)
!3500 = !DILocation(line: 1205, column: 9, scope: !3499)
!3501 = !DILocation(line: 1205, column: 8, scope: !3389)
!3502 = !DILocation(line: 1207, column: 8, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1207, column: 8)
!3504 = !DILocation(line: 1207, column: 8, scope: !3389)
!3505 = !DILocation(line: 1210, column: 8, scope: !3503)
!3506 = !DILocation(line: 1210, column: 46, scope: !3503)
!3507 = !DILocation(line: 1208, column: 6, scope: !3503)
!3508 = !DILocation(line: 1211, column: 15, scope: !3389)
!3509 = !DILocation(line: 1212, column: 19, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1212, column: 4)
!3511 = !DILocation(line: 0, scope: !3389)
!3512 = !DILocation(line: 1212, column: 9, scope: !3510)
!3513 = !DILocation(line: 0, scope: !3510)
!3514 = !DILocation(line: 1212, column: 4, scope: !3510)
!3515 = !DILocation(line: 1214, column: 18, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1213, column: 6)
!3517 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 1212, column: 4)
!3518 = !DILocation(line: 1215, column: 16, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1215, column: 12)
!3520 = !DILocation(line: 1215, column: 13, scope: !3519)
!3521 = !DILocation(line: 1215, column: 30, scope: !3519)
!3522 = !DILocation(line: 1215, column: 36, scope: !3519)
!3523 = !DILocation(line: 1215, column: 33, scope: !3519)
!3524 = !DILocation(line: 1215, column: 12, scope: !3516)
!3525 = !DILocation(line: 1217, column: 44, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1217, column: 12)
!3527 = !DILocation(line: 1217, column: 55, scope: !3526)
!3528 = !DILocation(line: 1217, column: 12, scope: !3526)
!3529 = !DILocation(line: 1217, column: 12, scope: !3516)
!3530 = !DILocation(line: 1220, column: 13, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1220, column: 12)
!3532 = !DILocation(line: 1220, column: 12, scope: !3516)
!3533 = !DILocation(line: 1222, column: 12, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1222, column: 12)
!3535 = !DILocation(line: 1222, column: 12, scope: !3516)
!3536 = !DILocation(line: 1224, column: 12, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1224, column: 12)
!3538 = !DILocation(line: 1224, column: 12, scope: !3516)
!3539 = !DILocation(line: 1227, column: 26, scope: !3537)
!3540 = !DILocation(line: 1227, column: 5, scope: !3537)
!3541 = !DILocation(line: 1228, column: 8, scope: !3537)
!3542 = !DILocation(line: 1228, column: 23, scope: !3537)
!3543 = !DILocation(line: 1225, column: 3, scope: !3537)
!3544 = !DILocation(line: 0, scope: !3392)
!3545 = !DILocation(line: 1212, column: 4, scope: !3517)
!3546 = distinct !{!3546, !3514, !3547}
!3547 = !DILocation(line: 1229, column: 6, scope: !3510)
!3548 = !DILocation(line: 1233, column: 9, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1233, column: 4)
!3550 = !DILocation(line: 0, scope: !3549)
!3551 = !DILocation(line: 1233, column: 4, scope: !3549)
!3552 = !DILocation(line: 1234, column: 13, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1234, column: 10)
!3554 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1233, column: 4)
!3555 = !DILocation(line: 1234, column: 10, scope: !3553)
!3556 = !DILocation(line: 1234, column: 10, scope: !3554)
!3557 = !DILocation(line: 1235, column: 25, scope: !3553)
!3558 = !DILocation(line: 1235, column: 8, scope: !3553)
!3559 = !DILocation(line: 1233, column: 38, scope: !3554)
!3560 = !DILocation(line: 1233, column: 4, scope: !3554)
!3561 = distinct !{!3561, !3551, !3562}
!3562 = !DILocation(line: 1235, column: 27, scope: !3549)
!3563 = !DILocation(line: 1236, column: 8, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1236, column: 8)
!3565 = !DILocation(line: 1236, column: 8, scope: !3389)
!3566 = !DILocation(line: 1239, column: 8, scope: !3564)
!3567 = !DILocation(line: 1239, column: 21, scope: !3564)
!3568 = !DILocation(line: 1237, column: 6, scope: !3564)
!3569 = !DILocation(line: 1188, column: 7, scope: !3390)
!3570 = distinct !{!3570, !3481, !3571}
!3571 = !DILocation(line: 1240, column: 2, scope: !3391)
!3572 = !DILocation(line: 1243, column: 3, scope: !3374)
!3573 = !DILocation(line: 1245, column: 7, scope: !3401)
!3574 = !DILocation(line: 1245, column: 7, scope: !3374)
!3575 = !DILocation(line: 1247, column: 11, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1247, column: 11)
!3577 = !DILocation(line: 1247, column: 11, scope: !3400)
!3578 = !DILocation(line: 1248, column: 2, scope: !3576)
!3579 = !DILocation(line: 0, scope: !3395)
!3580 = !DILocation(line: 1251, column: 12, scope: !3399)
!3581 = !DILocation(line: 0, scope: !3399)
!3582 = !DILocation(line: 1251, column: 30, scope: !3398)
!3583 = !DILocation(line: 1251, column: 7, scope: !3399)
!3584 = !DILocation(line: 1253, column: 11, scope: !3397)
!3585 = !DILocation(line: 1255, column: 14, scope: !3396)
!3586 = !DILocation(line: 1255, column: 8, scope: !3396)
!3587 = !DILocation(line: 1256, column: 8, scope: !3396)
!3588 = !DILocation(line: 1256, column: 27, scope: !3396)
!3589 = !DILocation(line: 1256, column: 12, scope: !3396)
!3590 = !DILocation(line: 1257, column: 8, scope: !3396)
!3591 = !DILocation(line: 1257, column: 11, scope: !3396)
!3592 = !DILocation(line: 1258, column: 8, scope: !3396)
!3593 = !DILocation(line: 1258, column: 23, scope: !3396)
!3594 = !DILocation(line: 1258, column: 11, scope: !3396)
!3595 = !DILocation(line: 1259, column: 8, scope: !3396)
!3596 = !DILocation(line: 1259, column: 17, scope: !3396)
!3597 = !DILocation(line: 1259, column: 26, scope: !3396)
!3598 = !DILocation(line: 1259, column: 11, scope: !3396)
!3599 = !DILocation(line: 1260, column: 8, scope: !3396)
!3600 = !DILocation(line: 1260, column: 26, scope: !3396)
!3601 = !DILocation(line: 1260, column: 33, scope: !3396)
!3602 = !DILocation(line: 1261, column: 8, scope: !3396)
!3603 = !DILocation(line: 1261, column: 41, scope: !3396)
!3604 = !DILocation(line: 1261, column: 52, scope: !3396)
!3605 = !DILocation(line: 1262, column: 8, scope: !3396)
!3606 = !DILocation(line: 1262, column: 27, scope: !3396)
!3607 = !DILocation(line: 1262, column: 12, scope: !3396)
!3608 = !DILocation(line: 1263, column: 8, scope: !3396)
!3609 = !DILocation(line: 1263, column: 12, scope: !3396)
!3610 = !DILocation(line: 1264, column: 8, scope: !3396)
!3611 = !DILocation(line: 1264, column: 12, scope: !3396)
!3612 = !DILocation(line: 1255, column: 8, scope: !3397)
!3613 = !DILocation(line: 1266, column: 8, scope: !3395)
!3614 = !DILocation(line: 1267, column: 19, scope: !3395)
!3615 = !DILocation(line: 1268, column: 12, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1268, column: 12)
!3617 = !DILocation(line: 1268, column: 12, scope: !3395)
!3618 = !DILocation(line: 1272, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1269, column: 3)
!3620 = !DILocation(line: 1272, column: 45, scope: !3619)
!3621 = !DILocation(line: 1270, column: 5, scope: !3619)
!3622 = !DILocation(line: 1273, column: 14, scope: !3619)
!3623 = !DILocation(line: 1275, column: 31, scope: !3619)
!3624 = !DILocation(line: 1275, column: 40, scope: !3619)
!3625 = !DILocation(line: 1275, column: 7, scope: !3619)
!3626 = !DILocation(line: 1276, column: 13, scope: !3619)
!3627 = !DILocation(line: 1276, column: 22, scope: !3619)
!3628 = !DILocation(line: 1276, column: 37, scope: !3619)
!3629 = !DILocation(line: 1273, column: 5, scope: !3619)
!3630 = !DILocation(line: 1279, column: 46, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1279, column: 12)
!3632 = !DILocation(line: 0, scope: !3631)
!3633 = !DILocation(line: 1279, column: 55, scope: !3631)
!3634 = !DILocation(line: 1277, column: 3, scope: !3619)
!3635 = !DILocation(line: 1279, column: 12, scope: !3631)
!3636 = !DILocation(line: 1279, column: 12, scope: !3395)
!3637 = !DILocation(line: 1282, column: 31, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1281, column: 3)
!3639 = !DILocation(line: 1282, column: 5, scope: !3638)
!3640 = !DILocation(line: 1283, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 1283, column: 9)
!3642 = !DILocation(line: 1283, column: 9, scope: !3638)
!3643 = !DILocation(line: 1287, column: 33, scope: !3641)
!3644 = !DILocation(line: 1287, column: 42, scope: !3641)
!3645 = !DILocation(line: 1287, column: 9, scope: !3641)
!3646 = !DILocation(line: 1288, column: 15, scope: !3641)
!3647 = !DILocation(line: 1288, column: 24, scope: !3641)
!3648 = !DILocation(line: 1288, column: 39, scope: !3641)
!3649 = !DILocation(line: 1289, column: 9, scope: !3641)
!3650 = !DILocation(line: 1289, column: 22, scope: !3641)
!3651 = !DILocation(line: 1284, column: 7, scope: !3641)
!3652 = !DILocation(line: 1293, column: 9, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 1293, column: 9)
!3654 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1292, column: 3)
!3655 = !DILocation(line: 1293, column: 9, scope: !3654)
!3656 = !DILocation(line: 1296, column: 59, scope: !3653)
!3657 = !DILocation(line: 1296, column: 30, scope: !3653)
!3658 = !DILocation(line: 1294, column: 7, scope: !3653)
!3659 = !DILocation(line: 1298, column: 6, scope: !3396)
!3660 = !DILocation(line: 1298, column: 6, scope: !3395)
!3661 = !DILocation(line: 1251, column: 7, scope: !3398)
!3662 = distinct !{!3662, !3583, !3663}
!3663 = !DILocation(line: 1299, column: 2, scope: !3399)
!3664 = !DILocation(line: 1303, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1303, column: 7)
!3666 = !DILocation(line: 1303, column: 7, scope: !3374)
!3667 = !DILocation(line: 1304, column: 5, scope: !3665)
!3668 = !DILocation(line: 1306, column: 7, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1306, column: 7)
!3670 = !DILocation(line: 1306, column: 7, scope: !3374)
!3671 = !DILocation(line: 1310, column: 7, scope: !3669)
!3672 = !DILocation(line: 1310, column: 23, scope: !3669)
!3673 = !DILocation(line: 1311, column: 7, scope: !3669)
!3674 = !DILocation(line: 1307, column: 5, scope: !3669)
!3675 = !DILocation(line: 1312, column: 3, scope: !3374)
!3676 = !DILocation(line: 1313, column: 3, scope: !3374)
!3677 = distinct !DISubprogram(name: "inline_generate_summary", scope: !3, file: !3, line: 1967, type: !2172, scopeLine: 1968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3678)
!3678 = !{!3679}
!3679 = !DILocalVariable(name: "node", scope: !3677, file: !3, line: 1969, type: !2087)
!3680 = !DILocation(line: 1972, column: 7, scope: !3677)
!3681 = !DILocation(line: 1971, column: 34, scope: !3677)
!3682 = !DILocation(line: 1974, column: 7, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1974, column: 7)
!3684 = !DILocation(line: 1974, column: 7, scope: !3677)
!3685 = !DILocation(line: 1976, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1975, column: 5)
!3687 = !DILocation(line: 1977, column: 7, scope: !3686)
!3688 = !DILocation(line: 1978, column: 7, scope: !3686)
!3689 = !DILocation(line: 1979, column: 5, scope: !3686)
!3690 = !DILocation(line: 1981, column: 8, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1981, column: 3)
!3692 = !DILocation(line: 0, scope: !3691)
!3693 = !DILocation(line: 0, scope: !3677)
!3694 = !DILocation(line: 1981, column: 3, scope: !3691)
!3695 = !DILocation(line: 1982, column: 15, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 1982, column: 9)
!3697 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1981, column: 3)
!3698 = !DILocation(line: 1982, column: 9, scope: !3696)
!3699 = !DILocation(line: 1982, column: 9, scope: !3697)
!3700 = !DILocation(line: 1983, column: 7, scope: !3696)
!3701 = !DILocation(line: 1981, column: 48, scope: !3697)
!3702 = !DILocation(line: 1981, column: 3, scope: !3697)
!3703 = distinct !{!3703, !3694, !3704}
!3704 = !DILocation(line: 1983, column: 29, scope: !3691)
!3705 = !DILocation(line: 1986, column: 1, scope: !3677)
!3706 = distinct !DISubprogram(name: "inline_write_summary", scope: !3, file: !3, line: 2042, type: !3707, scopeLine: 2043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !568, line: 283, baseType: !2178)
!3710 = !{!3711}
!3711 = !DILocalVariable(name: "set", arg: 1, scope: !3706, file: !3, line: 2042, type: !3709)
!3712 = !DILocation(line: 0, scope: !3706)
!3713 = !DILocation(line: 2044, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 2044, column: 7)
!3715 = !DILocation(line: 2044, column: 34, scope: !3714)
!3716 = !DILocation(line: 2044, column: 30, scope: !3714)
!3717 = !DILocation(line: 2045, column: 5, scope: !3714)
!3718 = !DILocation(line: 2046, column: 1, scope: !3706)
!3719 = distinct !DISubprogram(name: "inline_read_summary", scope: !3, file: !3, line: 2025, type: !2172, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!3720 = !DILocation(line: 2027, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 2027, column: 7)
!3722 = !DILocation(line: 2027, column: 7, scope: !3719)
!3723 = !DILocation(line: 2029, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 2028, column: 5)
!3725 = !DILocation(line: 2030, column: 12, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 2030, column: 11)
!3727 = !DILocation(line: 2030, column: 11, scope: !3724)
!3728 = !DILocation(line: 2031, column: 9, scope: !3726)
!3729 = !DILocation(line: 2034, column: 7, scope: !3719)
!3730 = !DILocation(line: 2033, column: 34, scope: !3719)
!3731 = !DILocation(line: 2035, column: 1, scope: !3719)
!3732 = distinct !DISubprogram(name: "inline_transform", scope: !3, file: !3, line: 1990, type: !2210, scopeLine: 1991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3733)
!3733 = !{!3734, !3735, !3736}
!3734 = !DILocalVariable(name: "node", arg: 1, scope: !3732, file: !3, line: 1990, type: !2087)
!3735 = !DILocalVariable(name: "todo", scope: !3732, file: !3, line: 1992, type: !7)
!3736 = !DILocalVariable(name: "e", scope: !3732, file: !3, line: 1993, type: !2092)
!3737 = !DILocation(line: 0, scope: !3732)
!3738 = !DILocation(line: 1997, column: 7, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1997, column: 7)
!3740 = !DILocation(line: 1997, column: 13, scope: !3739)
!3741 = !DILocation(line: 1997, column: 7, scope: !3732)
!3742 = !DILocation(line: 2002, column: 46, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 2002, column: 7)
!3744 = !DILocation(line: 2002, column: 7, scope: !3743)
!3745 = !DILocation(line: 2002, column: 7, scope: !3732)
!3746 = !DILocation(line: 2003, column: 5, scope: !3743)
!3747 = !DILocation(line: 2005, column: 18, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 2005, column: 3)
!3749 = !DILocation(line: 0, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 2006, column: 9)
!3751 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 2005, column: 3)
!3752 = !DILocation(line: 2005, column: 8, scope: !3748)
!3753 = !DILocation(line: 0, scope: !3748)
!3754 = !DILocation(line: 2005, column: 3, scope: !3748)
!3755 = !DILocation(line: 2009, column: 7, scope: !3732)
!3756 = !DILocation(line: 2015, column: 3, scope: !3732)
!3757 = !DILocation(line: 2006, column: 13, scope: !3750)
!3758 = !DILocation(line: 2006, column: 10, scope: !3750)
!3759 = !DILocation(line: 2006, column: 27, scope: !3750)
!3760 = !DILocation(line: 2005, column: 37, scope: !3751)
!3761 = !DILocation(line: 2005, column: 3, scope: !3751)
!3762 = distinct !{!3762, !3754, !3763}
!3763 = !DILocation(line: 2007, column: 7, scope: !3748)
!3764 = !DILocation(line: 2011, column: 7, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 2011, column: 7)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 2011, column: 7)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 2010, column: 5)
!3768 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 2009, column: 7)
!3769 = !DILocation(line: 2011, column: 7, scope: !3766)
!3770 = !DILocation(line: 2012, column: 37, scope: !3767)
!3771 = !DILocation(line: 2012, column: 14, scope: !3767)
!3772 = !DILocation(line: 2013, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 2013, column: 7)
!3774 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 2013, column: 7)
!3775 = !DILocation(line: 2013, column: 7, scope: !3774)
!3776 = !DILocation(line: 2015, column: 9, scope: !3732)
!3777 = !DILocation(line: 2015, column: 41, scope: !3732)
!3778 = !DILocation(line: 2016, column: 24, scope: !3732)
!3779 = !DILocation(line: 2017, column: 17, scope: !3732)
!3780 = !DILocation(line: 2017, column: 15, scope: !3732)
!3781 = !DILocation(line: 2017, column: 3, scope: !3732)
!3782 = !DILocation(line: 2018, column: 1, scope: !3732)
!3783 = distinct !DISubprogram(name: "gt_ggc_ma_order", scope: !2449, file: !2449, line: 26, type: !1233, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3784 = !{!3785, !3786, !3789}
!3785 = !DILocalVariable(name: "x_p", arg: 1, scope: !3783, file: !2449, line: 26, type: !688)
!3786 = !DILocalVariable(name: "i0", scope: !3787, file: !2449, line: 29, type: !693)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !2449, line: 28, column: 22)
!3788 = distinct !DILexicalBlock(scope: !3783, file: !2449, line: 28, column: 7)
!3789 = !DILocalVariable(name: "a__", scope: !3790, file: !2449, line: 33, type: !3791)
!3790 = distinct !DILexicalBlock(scope: !3787, file: !2449, line: 33, column: 5)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!3792 = !DILocation(line: 0, scope: !3783)
!3793 = !DILocation(line: 28, column: 7, scope: !3788)
!3794 = !DILocation(line: 28, column: 13, scope: !3788)
!3795 = !DILocation(line: 28, column: 7, scope: !3783)
!3796 = !DILocation(line: 0, scope: !3787)
!3797 = !DILocation(line: 0, scope: !3790)
!3798 = !DILocation(line: 33, column: 5, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3790, file: !2449, line: 33, column: 5)
!3800 = !DILocation(line: 33, column: 5, scope: !3790)
!3801 = !DILocation(line: 35, column: 1, scope: !3783)
!3802 = distinct !DISubprogram(name: "gt_pch_na_order", scope: !2449, file: !2449, line: 57, type: !1233, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3803)
!3803 = !{!3804, !3805}
!3804 = !DILocalVariable(name: "x_p", arg: 1, scope: !3802, file: !2449, line: 57, type: !688)
!3805 = !DILocalVariable(name: "i1", scope: !3806, file: !2449, line: 60, type: !693)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !2449, line: 59, column: 22)
!3807 = distinct !DILexicalBlock(scope: !3802, file: !2449, line: 59, column: 7)
!3808 = !DILocation(line: 0, scope: !3802)
!3809 = !DILocation(line: 59, column: 7, scope: !3807)
!3810 = !DILocation(line: 59, column: 13, scope: !3807)
!3811 = !DILocation(line: 59, column: 7, scope: !3802)
!3812 = !DILocation(line: 0, scope: !3806)
!3813 = !DILocation(line: 64, column: 25, scope: !3806)
!3814 = !DILocation(line: 64, column: 5, scope: !3806)
!3815 = !DILocation(line: 65, column: 3, scope: !3806)
!3816 = !DILocation(line: 66, column: 1, scope: !3802)
!3817 = distinct !DISubprogram(name: "cgraph_decide_inlining_incrementally", scope: !3, file: !3, line: 1415, type: !3818, scopeLine: 1418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!683, !2087, !590, !684}
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3831}
!3821 = !DILocalVariable(name: "node", arg: 1, scope: !3817, file: !3, line: 1415, type: !2087)
!3822 = !DILocalVariable(name: "mode", arg: 2, scope: !3817, file: !3, line: 1416, type: !590)
!3823 = !DILocalVariable(name: "depth", arg: 3, scope: !3817, file: !3, line: 1417, type: !684)
!3824 = !DILocalVariable(name: "e", scope: !3817, file: !3, line: 1419, type: !2092)
!3825 = !DILocalVariable(name: "inlined", scope: !3817, file: !3, line: 1420, type: !683)
!3826 = !DILocalVariable(name: "failed_reason", scope: !3817, file: !3, line: 1421, type: !2105)
!3827 = !DILocalVariable(name: "old_mode", scope: !3817, file: !3, line: 1422, type: !590)
!3828 = !DILocalVariable(name: "visited", scope: !3829, file: !3, line: 1515, type: !696)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 1514, column: 5)
!3830 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1510, column: 7)
!3831 = !DILocalVariable(name: "allowed_growth", scope: !3832, file: !3, line: 1518, type: !684)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 1517, column: 2)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 1516, column: 7)
!3834 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1516, column: 7)
!3835 = !DILocation(line: 0, scope: !3817)
!3836 = !DILocation(line: 1421, column: 3, scope: !3817)
!3837 = !DILocation(line: 1428, column: 49, scope: !3817)
!3838 = !DILocation(line: 1430, column: 36, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1430, column: 7)
!3840 = !DILocation(line: 1431, column: 39, scope: !3839)
!3841 = !DILocation(line: 1431, column: 10, scope: !3839)
!3842 = !DILocation(line: 1431, column: 69, scope: !3839)
!3843 = !DILocation(line: 1430, column: 7, scope: !3817)
!3844 = !DILocation(line: 1433, column: 11, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 1433, column: 11)
!3846 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 1432, column: 5)
!3847 = !DILocation(line: 1433, column: 11, scope: !3846)
!3848 = !DILocation(line: 1435, column: 4, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 1434, column: 2)
!3850 = !DILocation(line: 1436, column: 13, scope: !3849)
!3851 = !DILocation(line: 1436, column: 43, scope: !3849)
!3852 = !DILocation(line: 1436, column: 4, scope: !3849)
!3853 = !DILocation(line: 1437, column: 2, scope: !3849)
!3854 = !DILocation(line: 1441, column: 23, scope: !3817)
!3855 = !DILocation(line: 1441, column: 15, scope: !3817)
!3856 = !DILocation(line: 1441, column: 13, scope: !3817)
!3857 = !DILocation(line: 1444, column: 12, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1444, column: 7)
!3859 = !DILocation(line: 1444, column: 7, scope: !3817)
!3860 = !DILocation(line: 1445, column: 20, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1445, column: 5)
!3862 = !DILocation(line: 0, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1447, column: 6)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 1446, column: 7)
!3865 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 1445, column: 5)
!3866 = !DILocation(line: 0, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1486, column: 6)
!3868 = !DILocation(line: 1445, column: 10, scope: !3861)
!3869 = !DILocation(line: 1420, column: 8, scope: !3817)
!3870 = !DILocation(line: 0, scope: !3861)
!3871 = !DILocation(line: 1445, column: 5, scope: !3861)
!3872 = !DILocation(line: 1447, column: 10, scope: !3863)
!3873 = !DILocation(line: 1447, column: 24, scope: !3863)
!3874 = !DILocation(line: 1447, column: 7, scope: !3863)
!3875 = !DILocation(line: 1448, column: 6, scope: !3863)
!3876 = !DILocation(line: 1448, column: 29, scope: !3863)
!3877 = !DILocation(line: 1448, column: 50, scope: !3863)
!3878 = !DILocation(line: 1448, column: 33, scope: !3863)
!3879 = !DILocation(line: 1447, column: 6, scope: !3864)
!3880 = !DILocation(line: 1450, column: 9, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1450, column: 6)
!3882 = !DILocation(line: 1450, column: 6, scope: !3881)
!3883 = !DILocation(line: 1450, column: 6, scope: !3864)
!3884 = !DILocation(line: 1454, column: 10, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1454, column: 6)
!3886 = !DILocation(line: 1454, column: 7, scope: !3885)
!3887 = !DILocation(line: 1454, column: 24, scope: !3885)
!3888 = !DILocation(line: 1456, column: 17, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 1455, column: 4)
!3890 = !DILocation(line: 1456, column: 14, scope: !3889)
!3891 = !DILocation(line: 1457, column: 6, scope: !3889)
!3892 = !DILocation(line: 1459, column: 6, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1459, column: 6)
!3894 = !DILocation(line: 1459, column: 6, scope: !3864)
!3895 = !DILocation(line: 1461, column: 6, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 1460, column: 4)
!3897 = !DILocation(line: 1462, column: 15, scope: !3896)
!3898 = !DILocation(line: 1464, column: 29, scope: !3896)
!3899 = !DILocation(line: 1464, column: 8, scope: !3896)
!3900 = !DILocation(line: 1462, column: 6, scope: !3896)
!3901 = !DILocation(line: 1466, column: 44, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1466, column: 6)
!3903 = !DILocation(line: 1465, column: 4, scope: !3896)
!3904 = !DILocation(line: 1466, column: 6, scope: !3902)
!3905 = !DILocation(line: 1466, column: 6, scope: !3864)
!3906 = !DILocation(line: 1468, column: 10, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 1468, column: 10)
!3908 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1467, column: 4)
!3909 = !DILocation(line: 1468, column: 10, scope: !3908)
!3910 = !DILocation(line: 1470, column: 3, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 1469, column: 8)
!3912 = !DILocation(line: 1471, column: 12, scope: !3911)
!3913 = !DILocation(line: 1471, column: 3, scope: !3911)
!3914 = !DILocation(line: 1472, column: 8, scope: !3911)
!3915 = !DILocation(line: 1475, column: 7, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1475, column: 6)
!3917 = !DILocation(line: 1475, column: 6, scope: !3864)
!3918 = !DILocation(line: 1477, column: 10, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 1477, column: 10)
!3920 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1476, column: 4)
!3921 = !DILocation(line: 1477, column: 10, scope: !3920)
!3922 = !DILocation(line: 1479, column: 3, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 1478, column: 8)
!3924 = !DILocation(line: 1480, column: 12, scope: !3923)
!3925 = !DILocation(line: 1482, column: 58, scope: !3923)
!3926 = !DILocation(line: 1482, column: 26, scope: !3923)
!3927 = !DILocation(line: 1480, column: 3, scope: !3923)
!3928 = !DILocation(line: 1483, column: 8, scope: !3923)
!3929 = !DILocation(line: 1486, column: 23, scope: !3867)
!3930 = !DILocation(line: 1486, column: 6, scope: !3867)
!3931 = !DILocation(line: 1487, column: 26, scope: !3867)
!3932 = !DILocation(line: 1487, column: 9, scope: !3867)
!3933 = !DILocation(line: 1487, column: 6, scope: !3867)
!3934 = !DILocation(line: 1486, column: 6, scope: !3864)
!3935 = !DILocation(line: 1489, column: 10, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1489, column: 10)
!3937 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1488, column: 4)
!3938 = !DILocation(line: 1489, column: 10, scope: !3937)
!3939 = !DILocation(line: 1491, column: 3, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 1490, column: 8)
!3941 = !DILocation(line: 1492, column: 12, scope: !3940)
!3942 = !DILocation(line: 1492, column: 3, scope: !3940)
!3943 = !DILocation(line: 1493, column: 8, scope: !3940)
!3944 = !DILocation(line: 1496, column: 10, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1496, column: 6)
!3946 = !DILocation(line: 1496, column: 18, scope: !3945)
!3947 = !DILocation(line: 1496, column: 7, scope: !3945)
!3948 = !DILocation(line: 1496, column: 6, scope: !3864)
!3949 = !DILocation(line: 1498, column: 10, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 1498, column: 10)
!3951 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 1497, column: 4)
!3952 = !DILocation(line: 1498, column: 10, scope: !3951)
!3953 = !DILocation(line: 1500, column: 3, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 1499, column: 8)
!3955 = !DILocation(line: 1501, column: 12, scope: !3954)
!3956 = !DILocation(line: 1501, column: 3, scope: !3954)
!3957 = !DILocation(line: 1503, column: 8, scope: !3954)
!3958 = !DILocation(line: 1506, column: 13, scope: !3864)
!3959 = !DILocation(line: 1506, column: 10, scope: !3864)
!3960 = !DILocation(line: 1507, column: 7, scope: !3864)
!3961 = !DILocation(line: 1445, column: 39, scope: !3865)
!3962 = !DILocation(line: 1445, column: 5, scope: !3865)
!3963 = distinct !{!3963, !3871, !3964}
!3964 = !DILocation(line: 1507, column: 7, scope: !3861)
!3965 = !DILocation(line: 1510, column: 26, scope: !3830)
!3966 = !DILocation(line: 1513, column: 23, scope: !3830)
!3967 = !DILocation(line: 1513, column: 11, scope: !3830)
!3968 = !DILocation(line: 1510, column: 7, scope: !3817)
!3969 = !DILocation(line: 1515, column: 24, scope: !3829)
!3970 = !DILocation(line: 0, scope: !3829)
!3971 = !DILocation(line: 1516, column: 22, scope: !3834)
!3972 = !DILocation(line: 0, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1539, column: 8)
!3974 = !DILocation(line: 0, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1558, column: 8)
!3976 = !DILocation(line: 1516, column: 12, scope: !3834)
!3977 = !DILocation(line: 0, scope: !3834)
!3978 = !DILocation(line: 1516, column: 7, scope: !3834)
!3979 = !DILocation(line: 0, scope: !3832)
!3980 = !DILocation(line: 1519, column: 12, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1519, column: 8)
!3982 = !DILocation(line: 1519, column: 26, scope: !3981)
!3983 = !DILocation(line: 1519, column: 9, scope: !3981)
!3984 = !DILocation(line: 1520, column: 8, scope: !3981)
!3985 = !DILocation(line: 1520, column: 15, scope: !3981)
!3986 = !DILocation(line: 1520, column: 12, scope: !3981)
!3987 = !DILocation(line: 1521, column: 8, scope: !3981)
!3988 = !DILocation(line: 1521, column: 28, scope: !3981)
!3989 = !DILocation(line: 1521, column: 11, scope: !3981)
!3990 = !DILocation(line: 1519, column: 8, scope: !3832)
!3991 = !DILocation(line: 1525, column: 45, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1525, column: 8)
!3993 = !DILocation(line: 1525, column: 9, scope: !3992)
!3994 = !DILocation(line: 1525, column: 8, scope: !3832)
!3995 = !DILocation(line: 1527, column: 8, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1527, column: 8)
!3997 = !DILocation(line: 1527, column: 8, scope: !3832)
!3998 = !DILocation(line: 1529, column: 29, scope: !3996)
!3999 = !DILocation(line: 1529, column: 8, scope: !3996)
!4000 = !DILocation(line: 1528, column: 6, scope: !3996)
!4001 = !DILocation(line: 1530, column: 46, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1530, column: 8)
!4003 = !DILocation(line: 1530, column: 8, scope: !4002)
!4004 = !DILocation(line: 1530, column: 8, scope: !3832)
!4005 = !DILocation(line: 1532, column: 12, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1532, column: 12)
!4007 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 1531, column: 6)
!4008 = !DILocation(line: 1532, column: 12, scope: !4007)
!4009 = !DILocation(line: 1534, column: 5, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 1533, column: 3)
!4011 = !DILocation(line: 1535, column: 14, scope: !4010)
!4012 = !DILocation(line: 1535, column: 5, scope: !4010)
!4013 = !DILocation(line: 1536, column: 3, scope: !4010)
!4014 = !DILocation(line: 1539, column: 25, scope: !3973)
!4015 = !DILocation(line: 1539, column: 8, scope: !3973)
!4016 = !DILocation(line: 1540, column: 28, scope: !3973)
!4017 = !DILocation(line: 1540, column: 11, scope: !3973)
!4018 = !DILocation(line: 1540, column: 8, scope: !3973)
!4019 = !DILocation(line: 1539, column: 8, scope: !3832)
!4020 = !DILocation(line: 1542, column: 12, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 1542, column: 12)
!4022 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 1541, column: 6)
!4023 = !DILocation(line: 1542, column: 12, scope: !4022)
!4024 = !DILocation(line: 1544, column: 5, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1543, column: 3)
!4026 = !DILocation(line: 1545, column: 14, scope: !4025)
!4027 = !DILocation(line: 1545, column: 5, scope: !4025)
!4028 = !DILocation(line: 1547, column: 3, scope: !4025)
!4029 = !DILocation(line: 1551, column: 8, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1551, column: 8)
!4031 = !DILocation(line: 1551, column: 36, scope: !4030)
!4032 = !DILocation(line: 1551, column: 55, scope: !4030)
!4033 = !DILocation(line: 1551, column: 39, scope: !4030)
!4034 = !DILocation(line: 1552, column: 8, scope: !4030)
!4035 = !DILocation(line: 1552, column: 42, scope: !4030)
!4036 = !DILocation(line: 1552, column: 11, scope: !4030)
!4037 = !DILocation(line: 1551, column: 8, scope: !3832)
!4038 = !DILocation(line: 1553, column: 23, scope: !4030)
!4039 = !DILocation(line: 1553, column: 6, scope: !4030)
!4040 = !DILocation(line: 1558, column: 30, scope: !3975)
!4041 = !DILocation(line: 1561, column: 66, scope: !3975)
!4042 = !DILocation(line: 1559, column: 14, scope: !3975)
!4043 = !DILocation(line: 1560, column: 6, scope: !3975)
!4044 = !DILocation(line: 1560, column: 10, scope: !3975)
!4045 = !DILocation(line: 1561, column: 8, scope: !3975)
!4046 = !DILocation(line: 1561, column: 55, scope: !3975)
!4047 = !DILocation(line: 1561, column: 12, scope: !3975)
!4048 = !DILocation(line: 1562, column: 10, scope: !3975)
!4049 = !DILocation(line: 1562, column: 25, scope: !3975)
!4050 = !DILocation(line: 1562, column: 30, scope: !3975)
!4051 = !DILocation(line: 1562, column: 5, scope: !3975)
!4052 = !DILocation(line: 1563, column: 8, scope: !3975)
!4053 = !DILocation(line: 1563, column: 38, scope: !3975)
!4054 = !DILocation(line: 1563, column: 11, scope: !3975)
!4055 = !DILocation(line: 1563, column: 46, scope: !3975)
!4056 = !DILocation(line: 1558, column: 8, scope: !3832)
!4057 = !DILocation(line: 1565, column: 12, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1565, column: 12)
!4059 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 1564, column: 6)
!4060 = !DILocation(line: 1565, column: 12, scope: !4059)
!4061 = !DILocation(line: 1567, column: 5, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1566, column: 3)
!4063 = !DILocation(line: 1568, column: 14, scope: !4062)
!4064 = !DILocation(line: 1570, column: 50, scope: !4062)
!4065 = !DILocation(line: 1571, column: 12, scope: !4062)
!4066 = !DILocation(line: 1570, column: 7, scope: !4062)
!4067 = !DILocation(line: 1572, column: 12, scope: !4062)
!4068 = !DILocation(line: 1572, column: 27, scope: !4062)
!4069 = !DILocation(line: 1572, column: 7, scope: !4062)
!4070 = !DILocation(line: 1568, column: 5, scope: !4062)
!4071 = !DILocation(line: 1573, column: 3, scope: !4062)
!4072 = !DILocation(line: 1576, column: 46, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1576, column: 8)
!4074 = !DILocation(line: 1576, column: 9, scope: !4073)
!4075 = !DILocation(line: 1578, column: 8, scope: !4073)
!4076 = !DILocation(line: 1578, column: 14, scope: !4073)
!4077 = !DILocation(line: 1578, column: 11, scope: !4073)
!4078 = !DILocation(line: 1576, column: 8, scope: !3832)
!4079 = !DILocation(line: 1580, column: 12, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 1580, column: 12)
!4081 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 1579, column: 6)
!4082 = !DILocation(line: 1580, column: 12, scope: !4081)
!4083 = !DILocation(line: 1582, column: 5, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1581, column: 3)
!4085 = !DILocation(line: 1583, column: 14, scope: !4084)
!4086 = !DILocation(line: 1584, column: 39, scope: !4084)
!4087 = !DILocation(line: 1584, column: 7, scope: !4084)
!4088 = !DILocation(line: 1583, column: 5, scope: !4084)
!4089 = !DILocation(line: 1585, column: 3, scope: !4084)
!4090 = !DILocation(line: 1588, column: 12, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1588, column: 8)
!4092 = !DILocation(line: 1588, column: 20, scope: !4091)
!4093 = !DILocation(line: 1588, column: 9, scope: !4091)
!4094 = !DILocation(line: 1588, column: 8, scope: !3832)
!4095 = !DILocation(line: 1590, column: 12, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 1590, column: 12)
!4097 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 1589, column: 6)
!4098 = !DILocation(line: 1590, column: 12, scope: !4097)
!4099 = !DILocation(line: 1592, column: 5, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 1591, column: 3)
!4101 = !DILocation(line: 1593, column: 14, scope: !4100)
!4102 = !DILocation(line: 1593, column: 5, scope: !4100)
!4103 = !DILocation(line: 1595, column: 3, scope: !4100)
!4104 = !DILocation(line: 1598, column: 9, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1598, column: 8)
!4106 = !DILocation(line: 1598, column: 8, scope: !3832)
!4107 = !DILocation(line: 1600, column: 12, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 1600, column: 12)
!4109 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 1599, column: 6)
!4110 = !DILocation(line: 1600, column: 12, scope: !4109)
!4111 = !DILocation(line: 1602, column: 5, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1601, column: 3)
!4113 = !DILocation(line: 1603, column: 14, scope: !4112)
!4114 = !DILocation(line: 1605, column: 39, scope: !4112)
!4115 = !DILocation(line: 1605, column: 7, scope: !4112)
!4116 = !DILocation(line: 1603, column: 5, scope: !4112)
!4117 = !DILocation(line: 1606, column: 3, scope: !4112)
!4118 = !DILocation(line: 1609, column: 36, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1609, column: 8)
!4120 = !DILocation(line: 1609, column: 8, scope: !4119)
!4121 = !DILocation(line: 1609, column: 8, scope: !3832)
!4122 = !DILocation(line: 1610, column: 17, scope: !4119)
!4123 = !DILocation(line: 1610, column: 14, scope: !4119)
!4124 = !DILocation(line: 1610, column: 6, scope: !4119)
!4125 = !DILocation(line: 1516, column: 41, scope: !3833)
!4126 = !DILocation(line: 1516, column: 7, scope: !3833)
!4127 = distinct !{!4127, !3978, !4128}
!4128 = !DILocation(line: 1611, column: 2, scope: !3834)
!4129 = !DILocation(line: 1612, column: 7, scope: !3829)
!4130 = !DILocation(line: 1613, column: 5, scope: !3829)
!4131 = !DILocation(line: 1614, column: 23, scope: !3817)
!4132 = !DILocation(line: 1614, column: 15, scope: !3817)
!4133 = !DILocation(line: 1614, column: 13, scope: !3817)
!4134 = !DILocation(line: 1616, column: 1, scope: !3817)
!4135 = !DILocation(line: 1615, column: 3, scope: !3817)
!4136 = distinct !DISubprogram(name: "try_inline", scope: !3, file: !3, line: 1330, type: !4137, scopeLine: 1331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!683, !2092, !590, !684}
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4140 = !DILocalVariable(name: "e", arg: 1, scope: !4136, file: !3, line: 1330, type: !2092)
!4141 = !DILocalVariable(name: "mode", arg: 2, scope: !4136, file: !3, line: 1330, type: !590)
!4142 = !DILocalVariable(name: "depth", arg: 3, scope: !4136, file: !3, line: 1330, type: !684)
!4143 = !DILocalVariable(name: "callee", scope: !4136, file: !3, line: 1332, type: !2087)
!4144 = !DILocalVariable(name: "callee_mode", scope: !4136, file: !3, line: 1333, type: !590)
!4145 = !DILocalVariable(name: "always_inline", scope: !4136, file: !3, line: 1334, type: !683)
!4146 = !DILocalVariable(name: "inlined", scope: !4136, file: !3, line: 1335, type: !683)
!4147 = !DILocation(line: 0, scope: !4136)
!4148 = !DILocation(line: 1332, column: 35, scope: !4136)
!4149 = !DILocation(line: 1333, column: 74, scope: !4136)
!4150 = !DILocation(line: 1333, column: 36, scope: !4136)
!4151 = !DILocation(line: 1334, column: 41, scope: !4136)
!4152 = !DILocation(line: 1338, column: 7, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1338, column: 7)
!4154 = !DILocation(line: 1338, column: 7, scope: !4136)
!4155 = !DILocation(line: 1342, column: 11, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 1342, column: 11)
!4157 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 1339, column: 5)
!4158 = !DILocation(line: 1342, column: 33, scope: !4156)
!4159 = !DILocation(line: 1342, column: 25, scope: !4156)
!4160 = !DILocation(line: 0, scope: !4156)
!4161 = !DILocation(line: 1344, column: 8, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 1343, column: 2)
!4163 = !DILocation(line: 1346, column: 8, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1345, column: 6)
!4165 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1344, column: 8)
!4166 = !DILocation(line: 1347, column: 17, scope: !4164)
!4167 = !DILocation(line: 1349, column: 10, scope: !4164)
!4168 = !DILocation(line: 1347, column: 8, scope: !4164)
!4169 = !DILocation(line: 1350, column: 6, scope: !4164)
!4170 = !DILocation(line: 1356, column: 8, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 1355, column: 2)
!4172 = !DILocation(line: 1358, column: 8, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 1357, column: 6)
!4174 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 1356, column: 8)
!4175 = !DILocation(line: 1359, column: 17, scope: !4173)
!4176 = !DILocation(line: 1361, column: 10, scope: !4173)
!4177 = !DILocation(line: 1362, column: 31, scope: !4173)
!4178 = !DILocation(line: 1362, column: 10, scope: !4173)
!4179 = !DILocation(line: 1359, column: 8, scope: !4173)
!4180 = !DILocation(line: 1364, column: 27, scope: !4171)
!4181 = !DILocation(line: 0, scope: !4171)
!4182 = !DILocation(line: 1364, column: 41, scope: !4171)
!4183 = !DILocation(line: 1363, column: 6, scope: !4173)
!4184 = !DILocation(line: 1364, column: 24, scope: !4171)
!4185 = !DILocation(line: 1364, column: 7, scope: !4171)
!4186 = !DILocation(line: 1364, column: 21, scope: !4171)
!4187 = !DILocation(line: 1366, column: 11, scope: !4171)
!4188 = !DILocation(line: 1370, column: 25, scope: !4136)
!4189 = !DILocation(line: 1370, column: 17, scope: !4136)
!4190 = !DILocation(line: 1370, column: 15, scope: !4136)
!4191 = !DILocation(line: 1371, column: 7, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1371, column: 7)
!4193 = !DILocation(line: 1371, column: 7, scope: !4136)
!4194 = !DILocation(line: 1373, column: 7, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 1372, column: 5)
!4196 = !DILocation(line: 1374, column: 16, scope: !4195)
!4197 = !DILocation(line: 1375, column: 30, scope: !4195)
!4198 = !DILocation(line: 1375, column: 9, scope: !4195)
!4199 = !DILocation(line: 1376, column: 30, scope: !4195)
!4200 = !DILocation(line: 1376, column: 9, scope: !4195)
!4201 = !DILocation(line: 1374, column: 7, scope: !4195)
!4202 = !DILocation(line: 1377, column: 5, scope: !4195)
!4203 = !DILocation(line: 1378, column: 10, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1378, column: 7)
!4205 = !DILocation(line: 1378, column: 7, scope: !4204)
!4206 = !DILocation(line: 1378, column: 7, scope: !4136)
!4207 = !DILocation(line: 1380, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 1379, column: 5)
!4209 = !DILocation(line: 1388, column: 16, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 1388, column: 11)
!4211 = !DILocation(line: 1388, column: 33, scope: !4210)
!4212 = !DILocation(line: 1388, column: 30, scope: !4210)
!4213 = !DILocation(line: 1389, column: 43, scope: !4210)
!4214 = !DILocation(line: 1389, column: 63, scope: !4210)
!4215 = !DILocation(line: 1389, column: 2, scope: !4210)
!4216 = !DILocation(line: 1392, column: 25, scope: !4136)
!4217 = !DILocation(line: 1392, column: 17, scope: !4136)
!4218 = !DILocation(line: 1392, column: 15, scope: !4136)
!4219 = !DILocation(line: 1393, column: 3, scope: !4136)
!4220 = !DILocation(line: 1394, column: 1, scope: !4136)
!4221 = distinct !DISubprogram(name: "cgraph_recursive_inlining_p", scope: !3, file: !3, line: 523, type: !4222, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4225)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!683, !2087, !2087, !4224}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!4225 = !{!4226, !4227, !4228, !4229}
!4226 = !DILocalVariable(name: "to", arg: 1, scope: !4221, file: !3, line: 523, type: !2087)
!4227 = !DILocalVariable(name: "what", arg: 2, scope: !4221, file: !3, line: 524, type: !2087)
!4228 = !DILocalVariable(name: "reason", arg: 3, scope: !4221, file: !3, line: 525, type: !4224)
!4229 = !DILocalVariable(name: "recursive", scope: !4221, file: !3, line: 527, type: !683)
!4230 = !DILocation(line: 0, scope: !4221)
!4231 = !DILocation(line: 528, column: 18, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 528, column: 7)
!4233 = !DILocation(line: 528, column: 7, scope: !4232)
!4234 = !DILocation(line: 0, scope: !4232)
!4235 = !DILocation(line: 528, column: 7, scope: !4221)
!4236 = !DILocation(line: 529, column: 5, scope: !4232)
!4237 = !DILocation(line: 534, column: 20, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 534, column: 7)
!4239 = !DILocation(line: 534, column: 17, scope: !4238)
!4240 = !DILocation(line: 535, column: 28, scope: !4238)
!4241 = !DILocation(line: 535, column: 16, scope: !4238)
!4242 = !DILocation(line: 535, column: 13, scope: !4238)
!4243 = !DILocation(line: 535, column: 5, scope: !4238)
!4244 = !DILocation(line: 537, column: 3, scope: !4221)
!4245 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !4246, file: !4246, line: 33, type: !4247, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4251)
!4246 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!683, !4249}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!4251 = !{!4252}
!4252 = !DILocalVariable(name: "fun", arg: 1, scope: !4245, file: !4246, line: 33, type: !4249)
!4253 = !DILocation(line: 0, scope: !4245)
!4254 = !DILocation(line: 35, column: 10, scope: !4245)
!4255 = !DILocation(line: 35, column: 14, scope: !4245)
!4256 = !DILocation(line: 35, column: 22, scope: !4245)
!4257 = !DILocation(line: 35, column: 17, scope: !4245)
!4258 = !DILocation(line: 35, column: 32, scope: !4245)
!4259 = !DILocation(line: 35, column: 51, scope: !4245)
!4260 = !DILocation(line: 35, column: 3, scope: !4245)
!4261 = distinct !DISubprogram(name: "leaf_node_p", scope: !3, file: !3, line: 1399, type: !3049, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "n", arg: 1, scope: !4261, file: !3, line: 1399, type: !2087)
!4264 = !DILocalVariable(name: "e", scope: !4261, file: !3, line: 1401, type: !2092)
!4265 = !DILocation(line: 0, scope: !4261)
!4266 = !DILocation(line: 1402, column: 15, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 1402, column: 3)
!4268 = !DILocation(line: 1402, column: 8, scope: !4267)
!4269 = !DILocation(line: 0, scope: !4267)
!4270 = !DILocation(line: 1402, column: 3, scope: !4267)
!4271 = !DILocation(line: 1403, column: 10, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 1403, column: 9)
!4273 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 1402, column: 3)
!4274 = !DILocation(line: 1404, column: 2, scope: !4272)
!4275 = !DILocation(line: 1404, column: 7, scope: !4272)
!4276 = !DILocation(line: 1405, column: 6, scope: !4272)
!4277 = !DILocation(line: 1405, column: 9, scope: !4272)
!4278 = !DILocation(line: 1403, column: 9, scope: !4273)
!4279 = !DILocation(line: 1402, column: 34, scope: !4273)
!4280 = !DILocation(line: 1402, column: 3, scope: !4273)
!4281 = distinct !{!4281, !4270, !4282}
!4282 = !DILocation(line: 1406, column: 14, scope: !4267)
!4283 = !DILocation(line: 1408, column: 1, scope: !4261)
!4284 = distinct !DISubprogram(name: "cgraph_estimate_size_after_inlining", scope: !3, file: !3, line: 203, type: !4285, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!684, !684, !2087, !2087}
!4287 = !{!4288, !4289, !4290, !4291}
!4288 = !DILocalVariable(name: "times", arg: 1, scope: !4284, file: !3, line: 203, type: !684)
!4289 = !DILocalVariable(name: "to", arg: 2, scope: !4284, file: !3, line: 203, type: !2087)
!4290 = !DILocalVariable(name: "what", arg: 3, scope: !4284, file: !3, line: 204, type: !2087)
!4291 = !DILocalVariable(name: "size", scope: !4284, file: !3, line: 206, type: !684)
!4292 = !DILocation(line: 0, scope: !4284)
!4293 = !DILocation(line: 206, column: 28, scope: !4284)
!4294 = !DILocation(line: 206, column: 35, scope: !4284)
!4295 = !DILocation(line: 206, column: 58, scope: !4284)
!4296 = !DILocation(line: 206, column: 33, scope: !4284)
!4297 = !DILocation(line: 206, column: 81, scope: !4284)
!4298 = !DILocation(line: 206, column: 102, scope: !4284)
!4299 = !DILocation(line: 206, column: 89, scope: !4284)
!4300 = !DILocation(line: 207, column: 3, scope: !4284)
!4301 = !DILocation(line: 208, column: 3, scope: !4284)
!4302 = distinct !DISubprogram(name: "cgraph_estimate_growth", scope: !3, file: !3, line: 380, type: !4303, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!684, !2087}
!4305 = !{!4306, !4307, !4308, !4309}
!4306 = !DILocalVariable(name: "node", arg: 1, scope: !4302, file: !3, line: 380, type: !2087)
!4307 = !DILocalVariable(name: "growth", scope: !4302, file: !3, line: 382, type: !684)
!4308 = !DILocalVariable(name: "e", scope: !4302, file: !3, line: 383, type: !2092)
!4309 = !DILocalVariable(name: "self_recursive", scope: !4302, file: !3, line: 384, type: !683)
!4310 = !DILocation(line: 0, scope: !4302)
!4311 = !DILocation(line: 386, column: 20, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 386, column: 7)
!4313 = !DILocation(line: 386, column: 37, scope: !4312)
!4314 = !DILocation(line: 386, column: 7, scope: !4302)
!4315 = !DILocation(line: 387, column: 5, scope: !4312)
!4316 = !DILocation(line: 389, column: 18, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 389, column: 3)
!4318 = !DILocation(line: 389, column: 8, scope: !4317)
!4319 = !DILocation(line: 0, scope: !4317)
!4320 = !DILocation(line: 389, column: 3, scope: !4317)
!4321 = !DILocation(line: 391, column: 14, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 391, column: 11)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 390, column: 5)
!4324 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 389, column: 3)
!4325 = !DILocation(line: 391, column: 21, scope: !4322)
!4326 = !DILocation(line: 391, column: 11, scope: !4323)
!4327 = !DILocation(line: 393, column: 14, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 393, column: 11)
!4329 = !DILocation(line: 393, column: 11, scope: !4328)
!4330 = !DILocation(line: 393, column: 11, scope: !4323)
!4331 = !DILocation(line: 394, column: 13, scope: !4328)
!4332 = !DILocation(line: 395, column: 11, scope: !4328)
!4333 = !DILocation(line: 395, column: 26, scope: !4328)
!4334 = !DILocation(line: 395, column: 6, scope: !4328)
!4335 = !DILocation(line: 394, column: 9, scope: !4328)
!4336 = !DILocation(line: 394, column: 2, scope: !4328)
!4337 = !DILocation(line: 389, column: 37, scope: !4324)
!4338 = !DILocation(line: 389, column: 3, scope: !4324)
!4339 = distinct !{!4339, !4320, !4340}
!4340 = !DILocation(line: 396, column: 5, scope: !4317)
!4341 = !DILocation(line: 402, column: 7, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 402, column: 7)
!4343 = !DILocation(line: 403, column: 7, scope: !4342)
!4344 = !DILocation(line: 403, column: 11, scope: !4342)
!4345 = !DILocation(line: 403, column: 42, scope: !4342)
!4346 = !DILocation(line: 403, column: 38, scope: !4342)
!4347 = !DILocation(line: 404, column: 28, scope: !4342)
!4348 = !DILocation(line: 404, column: 12, scope: !4342)
!4349 = !DILocation(line: 404, column: 5, scope: !4342)
!4350 = !DILocation(line: 406, column: 33, scope: !4302)
!4351 = !DILocation(line: 407, column: 3, scope: !4302)
!4352 = !DILocation(line: 408, column: 1, scope: !4302)
!4353 = distinct !DISubprogram(name: "cgraph_check_inline_limits", scope: !3, file: !3, line: 418, type: !4354, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!683, !2087, !2087, !4224, !683}
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366}
!4357 = !DILocalVariable(name: "to", arg: 1, scope: !4353, file: !3, line: 418, type: !2087)
!4358 = !DILocalVariable(name: "what", arg: 2, scope: !4353, file: !3, line: 418, type: !2087)
!4359 = !DILocalVariable(name: "reason", arg: 3, scope: !4353, file: !3, line: 419, type: !4224)
!4360 = !DILocalVariable(name: "one_only", arg: 4, scope: !4353, file: !3, line: 419, type: !683)
!4361 = !DILocalVariable(name: "times", scope: !4353, file: !3, line: 421, type: !684)
!4362 = !DILocalVariable(name: "e", scope: !4353, file: !3, line: 422, type: !2092)
!4363 = !DILocalVariable(name: "newsize", scope: !4353, file: !3, line: 423, type: !684)
!4364 = !DILocalVariable(name: "limit", scope: !4353, file: !3, line: 424, type: !684)
!4365 = !DILocalVariable(name: "stack_size_limit", scope: !4353, file: !3, line: 425, type: !692)
!4366 = !DILocalVariable(name: "inlined_stack", scope: !4353, file: !3, line: 425, type: !692)
!4367 = !DILocation(line: 0, scope: !4353)
!4368 = !DILocation(line: 427, column: 7, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 427, column: 7)
!4370 = !DILocation(line: 427, column: 7, scope: !4353)
!4371 = !DILocation(line: 430, column: 18, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 430, column: 5)
!4373 = !DILocation(line: 430, column: 10, scope: !4372)
!4374 = !DILocation(line: 0, scope: !4372)
!4375 = !DILocation(line: 430, column: 5, scope: !4372)
!4376 = !DILocation(line: 431, column: 14, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 431, column: 11)
!4378 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 430, column: 5)
!4379 = !DILocation(line: 431, column: 21, scope: !4377)
!4380 = !DILocation(line: 431, column: 11, scope: !4378)
!4381 = !DILocation(line: 430, column: 37, scope: !4378)
!4382 = !DILocation(line: 430, column: 5, scope: !4378)
!4383 = distinct !{!4383, !4375, !4384}
!4384 = !DILocation(line: 432, column: 7, scope: !4372)
!4385 = !DILocation(line: 434, column: 18, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 434, column: 7)
!4387 = !DILocation(line: 434, column: 7, scope: !4386)
!4388 = !DILocation(line: 434, column: 7, scope: !4353)
!4389 = !DILocation(line: 435, column: 5, scope: !4386)
!4390 = !DILocation(line: 439, column: 7, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 439, column: 7)
!4392 = !DILocation(line: 439, column: 28, scope: !4391)
!4393 = !DILocation(line: 439, column: 40, scope: !4391)
!4394 = !DILocation(line: 439, column: 62, scope: !4391)
!4395 = !DILocation(line: 439, column: 38, scope: !4391)
!4396 = !DILocation(line: 439, column: 7, scope: !4353)
!4397 = !DILocation(line: 440, column: 13, scope: !4391)
!4398 = !DILocation(line: 440, column: 5, scope: !4391)
!4399 = !DILocation(line: 442, column: 13, scope: !4391)
!4400 = !DILocation(line: 0, scope: !4391)
!4401 = !DILocation(line: 444, column: 20, scope: !4353)
!4402 = !DILocation(line: 448, column: 13, scope: !4353)
!4403 = !DILocation(line: 449, column: 29, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 449, column: 7)
!4405 = !DILocation(line: 449, column: 15, scope: !4404)
!4406 = !DILocation(line: 450, column: 7, scope: !4404)
!4407 = !DILocation(line: 444, column: 18, scope: !4353)
!4408 = !DILocation(line: 444, column: 62, scope: !4353)
!4409 = !DILocation(line: 444, column: 9, scope: !4353)
!4410 = !DILocation(line: 450, column: 20, scope: !4404)
!4411 = !DILocation(line: 450, column: 18, scope: !4404)
!4412 = !DILocation(line: 451, column: 18, scope: !4404)
!4413 = !DILocation(line: 451, column: 7, scope: !4404)
!4414 = !DILocation(line: 453, column: 11, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 453, column: 11)
!4416 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 452, column: 5)
!4417 = !DILocation(line: 453, column: 11, scope: !4416)
!4418 = !DILocation(line: 454, column: 17, scope: !4415)
!4419 = !DILocation(line: 454, column: 9, scope: !4415)
!4420 = !DILocation(line: 458, column: 22, scope: !4353)
!4421 = !DILocation(line: 458, column: 43, scope: !4353)
!4422 = !DILocation(line: 460, column: 42, scope: !4353)
!4423 = !DILocation(line: 460, column: 40, scope: !4353)
!4424 = !DILocation(line: 460, column: 81, scope: !4353)
!4425 = !DILocation(line: 460, column: 20, scope: !4353)
!4426 = !DILocation(line: 462, column: 31, scope: !4353)
!4427 = !DILocation(line: 463, column: 8, scope: !4353)
!4428 = !DILocation(line: 463, column: 29, scope: !4353)
!4429 = !DILocation(line: 463, column: 6, scope: !4353)
!4430 = !DILocation(line: 464, column: 21, scope: !4353)
!4431 = !DILocation(line: 464, column: 6, scope: !4353)
!4432 = !DILocation(line: 465, column: 22, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 465, column: 7)
!4434 = !DILocation(line: 466, column: 7, scope: !4433)
!4435 = !DILocation(line: 466, column: 26, scope: !4433)
!4436 = !DILocation(line: 466, column: 24, scope: !4433)
!4437 = !DILocation(line: 465, column: 7, scope: !4353)
!4438 = !DILocation(line: 468, column: 11, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 468, column: 11)
!4440 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 467, column: 5)
!4441 = !DILocation(line: 468, column: 11, scope: !4440)
!4442 = !DILocation(line: 469, column: 17, scope: !4439)
!4443 = !DILocation(line: 469, column: 9, scope: !4439)
!4444 = !DILocation(line: 473, column: 1, scope: !4353)
!4445 = distinct !DISubprogram(name: "cgraph_default_inline_p", scope: !3, file: !3, line: 478, type: !4446, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4448)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!683, !2087, !4224}
!4448 = !{!4449, !4450, !4451}
!4449 = !DILocalVariable(name: "n", arg: 1, scope: !4445, file: !3, line: 478, type: !2087)
!4450 = !DILocalVariable(name: "reason", arg: 2, scope: !4445, file: !3, line: 478, type: !4224)
!4451 = !DILocalVariable(name: "decl", scope: !4445, file: !3, line: 480, type: !877)
!4452 = !DILocation(line: 0, scope: !4445)
!4453 = !DILocation(line: 480, column: 18, scope: !4445)
!4454 = !DILocation(line: 482, column: 8, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 482, column: 7)
!4456 = !DILocation(line: 482, column: 36, scope: !4455)
!4457 = !DILocation(line: 482, column: 40, scope: !4455)
!4458 = !DILocation(line: 482, column: 7, scope: !4445)
!4459 = !DILocation(line: 484, column: 11, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 484, column: 11)
!4461 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 483, column: 5)
!4462 = !DILocation(line: 484, column: 11, scope: !4461)
!4463 = !DILocation(line: 485, column: 10, scope: !4460)
!4464 = !DILocation(line: 485, column: 2, scope: !4460)
!4465 = !DILocation(line: 489, column: 11, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 489, column: 7)
!4467 = !DILocation(line: 489, column: 8, scope: !4466)
!4468 = !DILocation(line: 489, column: 7, scope: !4445)
!4469 = !DILocation(line: 491, column: 11, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 491, column: 11)
!4471 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 490, column: 5)
!4472 = !DILocation(line: 491, column: 11, scope: !4471)
!4473 = !DILocation(line: 492, column: 10, scope: !4470)
!4474 = !DILocation(line: 492, column: 2, scope: !4470)
!4475 = !DILocation(line: 496, column: 7, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 496, column: 7)
!4477 = !DILocation(line: 0, scope: !4476)
!4478 = !DILocation(line: 496, column: 7, scope: !4445)
!4479 = !DILocation(line: 498, column: 29, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 498, column: 11)
!4481 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 497, column: 5)
!4482 = !DILocation(line: 498, column: 26, scope: !4480)
!4483 = !DILocation(line: 498, column: 11, scope: !4481)
!4484 = !DILocation(line: 500, column: 8, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 500, column: 8)
!4486 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 499, column: 2)
!4487 = !DILocation(line: 500, column: 8, scope: !4486)
!4488 = !DILocation(line: 501, column: 14, scope: !4485)
!4489 = !DILocation(line: 501, column: 6, scope: !4485)
!4490 = !DILocation(line: 507, column: 29, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 507, column: 11)
!4492 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 506, column: 5)
!4493 = !DILocation(line: 507, column: 26, scope: !4491)
!4494 = !DILocation(line: 507, column: 11, scope: !4492)
!4495 = !DILocation(line: 509, column: 8, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 509, column: 8)
!4497 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 508, column: 2)
!4498 = !DILocation(line: 509, column: 8, scope: !4497)
!4499 = !DILocation(line: 510, column: 14, scope: !4496)
!4500 = !DILocation(line: 510, column: 6, scope: !4496)
!4501 = !DILocation(line: 516, column: 1, scope: !4445)
!4502 = distinct !DISubprogram(name: "cgraph_mark_inline", scope: !3, file: !3, line: 354, type: !4503, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!2092, !2092}
!4505 = !{!4506, !4507, !4508, !4509, !4510}
!4506 = !DILocalVariable(name: "edge", arg: 1, scope: !4502, file: !3, line: 354, type: !2092)
!4507 = !DILocalVariable(name: "to", scope: !4502, file: !3, line: 356, type: !2087)
!4508 = !DILocalVariable(name: "what", scope: !4502, file: !3, line: 357, type: !2087)
!4509 = !DILocalVariable(name: "e", scope: !4502, file: !3, line: 358, type: !2092)
!4510 = !DILocalVariable(name: "next", scope: !4502, file: !3, line: 358, type: !2092)
!4511 = !DILocation(line: 0, scope: !4502)
!4512 = !DILocation(line: 356, column: 34, scope: !4502)
!4513 = !DILocation(line: 357, column: 36, scope: !4502)
!4514 = !DILocation(line: 360, column: 3, scope: !4502)
!4515 = !DILocation(line: 363, column: 18, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 363, column: 3)
!4517 = !DILocation(line: 363, column: 8, scope: !4516)
!4518 = !DILocation(line: 0, scope: !4516)
!4519 = !DILocation(line: 363, column: 3, scope: !4516)
!4520 = !DILocation(line: 365, column: 17, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 364, column: 5)
!4522 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 363, column: 3)
!4523 = !DILocation(line: 366, column: 14, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 366, column: 11)
!4525 = !DILocation(line: 366, column: 21, scope: !4524)
!4526 = !DILocation(line: 366, column: 27, scope: !4524)
!4527 = !DILocation(line: 366, column: 33, scope: !4524)
!4528 = !DILocation(line: 366, column: 30, scope: !4524)
!4529 = !DILocation(line: 366, column: 11, scope: !4521)
!4530 = !DILocation(line: 368, column: 11, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 367, column: 2)
!4532 = !DILocation(line: 369, column: 10, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 369, column: 8)
!4534 = !DILocation(line: 369, column: 8, scope: !4531)
!4535 = !DILocation(line: 371, column: 2, scope: !4531)
!4536 = !DILocation(line: 363, column: 3, scope: !4522)
!4537 = distinct !{!4537, !4519, !4538}
!4538 = !DILocation(line: 372, column: 5, scope: !4516)
!4539 = !DILocation(line: 374, column: 3, scope: !4502)
!4540 = distinct !DISubprogram(name: "cgraph_mark_inline_edge", scope: !3, file: !3, line: 301, type: !4541, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4544)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!683, !2092, !683, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!4544 = !{!4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555}
!4545 = !DILocalVariable(name: "e", arg: 1, scope: !4540, file: !3, line: 301, type: !2092)
!4546 = !DILocalVariable(name: "update_original", arg: 2, scope: !4540, file: !3, line: 301, type: !683)
!4547 = !DILocalVariable(name: "new_edges", arg: 3, scope: !4540, file: !3, line: 302, type: !4543)
!4548 = !DILocalVariable(name: "old_size", scope: !4540, file: !3, line: 304, type: !684)
!4549 = !DILocalVariable(name: "new_size", scope: !4540, file: !3, line: 304, type: !684)
!4550 = !DILocalVariable(name: "to", scope: !4540, file: !3, line: 305, type: !2087)
!4551 = !DILocalVariable(name: "what", scope: !4540, file: !3, line: 305, type: !2087)
!4552 = !DILocalVariable(name: "curr", scope: !4540, file: !3, line: 306, type: !2092)
!4553 = !DILocalVariable(name: "freq", scope: !4540, file: !3, line: 307, type: !684)
!4554 = !DILocalVariable(name: "duplicate", scope: !4540, file: !3, line: 308, type: !683)
!4555 = !DILocalVariable(name: "orig_size", scope: !4540, file: !3, line: 309, type: !684)
!4556 = !DILocation(line: 0, scope: !4540)
!4557 = !DILocation(line: 309, column: 22, scope: !4540)
!4558 = !DILocation(line: 309, column: 37, scope: !4540)
!4559 = !DILocation(line: 311, column: 3, scope: !4540)
!4560 = !DILocation(line: 314, column: 11, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 314, column: 7)
!4562 = !DILocation(line: 312, column: 20, scope: !4540)
!4563 = !DILocation(line: 314, column: 26, scope: !4561)
!4564 = !DILocation(line: 314, column: 8, scope: !4561)
!4565 = !DILocation(line: 314, column: 7, scope: !4540)
!4566 = !DILocation(line: 315, column: 5, scope: !4561)
!4567 = !DILocation(line: 315, column: 45, scope: !4561)
!4568 = !DILocation(line: 316, column: 6, scope: !4540)
!4569 = !DILocation(line: 316, column: 21, scope: !4540)
!4570 = !DILocation(line: 316, column: 29, scope: !4540)
!4571 = !DILocation(line: 318, column: 10, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 318, column: 7)
!4573 = !DILocation(line: 318, column: 18, scope: !4572)
!4574 = !DILocation(line: 318, column: 27, scope: !4572)
!4575 = !DILocation(line: 318, column: 7, scope: !4572)
!4576 = !DILocation(line: 319, column: 7, scope: !4572)
!4577 = !DILocation(line: 319, column: 11, scope: !4572)
!4578 = !DILocation(line: 320, column: 7, scope: !4572)
!4579 = !DILocation(line: 320, column: 13, scope: !4572)
!4580 = !DILocation(line: 320, column: 21, scope: !4572)
!4581 = !DILocation(line: 320, column: 10, scope: !4572)
!4582 = !DILocation(line: 318, column: 7, scope: !4540)
!4583 = !DILocation(line: 321, column: 5, scope: !4572)
!4584 = !DILocation(line: 322, column: 3, scope: !4540)
!4585 = !DILocation(line: 324, column: 13, scope: !4540)
!4586 = !DILocation(line: 326, column: 13, scope: !4540)
!4587 = !DILocation(line: 328, column: 3, scope: !4540)
!4588 = !DILocation(line: 328, column: 9, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 328, column: 3)
!4590 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 328, column: 3)
!4591 = !DILocation(line: 328, column: 11, scope: !4589)
!4592 = !DILocation(line: 328, column: 18, scope: !4589)
!4593 = !DILocation(line: 328, column: 14, scope: !4589)
!4594 = !DILocation(line: 328, column: 3, scope: !4590)
!4595 = !DILocation(line: 330, column: 15, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 329, column: 5)
!4597 = !DILocation(line: 331, column: 36, scope: !4596)
!4598 = !DILocation(line: 332, column: 18, scope: !4596)
!4599 = !DILocation(line: 333, column: 23, scope: !4596)
!4600 = !DILocation(line: 334, column: 25, scope: !4596)
!4601 = !DILocation(line: 334, column: 18, scope: !4596)
!4602 = !DILocation(line: 334, column: 23, scope: !4596)
!4603 = !DILocation(line: 328, column: 40, scope: !4589)
!4604 = !DILocation(line: 328, column: 48, scope: !4589)
!4605 = !DILocation(line: 328, column: 3, scope: !4589)
!4606 = distinct !{!4606, !4594, !4607}
!4607 = !DILocation(line: 335, column: 5, scope: !4590)
!4608 = !DILocation(line: 336, column: 3, scope: !4540)
!4609 = !DILocation(line: 337, column: 16, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 337, column: 7)
!4611 = !DILocation(line: 337, column: 7, scope: !4540)
!4612 = !DILocation(line: 338, column: 30, scope: !4610)
!4613 = !DILocation(line: 338, column: 18, scope: !4610)
!4614 = !DILocation(line: 338, column: 5, scope: !4610)
!4615 = !DILocation(line: 339, column: 8, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 339, column: 7)
!4617 = !DILocation(line: 339, column: 7, scope: !4540)
!4618 = !DILocation(line: 340, column: 18, scope: !4616)
!4619 = !DILocation(line: 340, column: 5, scope: !4616)
!4620 = !DILocation(line: 341, column: 17, scope: !4540)
!4621 = !DILocation(line: 343, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 343, column: 7)
!4623 = !DILocation(line: 343, column: 7, scope: !4540)
!4624 = !DILocation(line: 344, column: 12, scope: !4622)
!4625 = !DILocation(line: 344, column: 5, scope: !4622)
!4626 = !DILocation(line: 0, scope: !4622)
!4627 = !DILocation(line: 347, column: 1, scope: !4540)
!4628 = distinct !DISubprogram(name: "cgraph_estimate_time_after_inlining", scope: !3, file: !3, line: 186, type: !4285, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4629)
!4629 = !{!4630, !4631, !4632, !4633}
!4630 = !DILocalVariable(name: "frequency", arg: 1, scope: !4628, file: !3, line: 186, type: !684)
!4631 = !DILocalVariable(name: "to", arg: 2, scope: !4628, file: !3, line: 186, type: !2087)
!4632 = !DILocalVariable(name: "what", arg: 3, scope: !4628, file: !3, line: 187, type: !2087)
!4633 = !DILocalVariable(name: "time", scope: !4628, file: !3, line: 189, type: !691)
!4634 = !DILocation(line: 0, scope: !4628)
!4635 = !DILocation(line: 189, column: 46, scope: !4628)
!4636 = !DILocation(line: 189, column: 22, scope: !4628)
!4637 = !DILocation(line: 190, column: 10, scope: !4628)
!4638 = !DILocation(line: 190, column: 33, scope: !4628)
!4639 = !DILocation(line: 190, column: 8, scope: !4628)
!4640 = !DILocation(line: 191, column: 11, scope: !4628)
!4641 = !DILocation(line: 191, column: 9, scope: !4628)
!4642 = !DILocation(line: 191, column: 21, scope: !4628)
!4643 = !DILocation(line: 191, column: 45, scope: !4628)
!4644 = !DILocation(line: 192, column: 20, scope: !4628)
!4645 = !DILocation(line: 192, column: 9, scope: !4628)
!4646 = !DILocation(line: 192, column: 7, scope: !4628)
!4647 = !DILocation(line: 193, column: 7, scope: !4628)
!4648 = !DILocation(line: 195, column: 7, scope: !4628)
!4649 = !DILocation(line: 197, column: 10, scope: !4628)
!4650 = !DILocation(line: 197, column: 3, scope: !4628)
!4651 = distinct !DISubprogram(name: "cgraph_only_called_directly_p", scope: !568, file: !568, line: 715, type: !3049, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4652)
!4652 = !{!4653}
!4653 = !DILocalVariable(name: "node", arg: 1, scope: !4651, file: !568, line: 715, type: !2087)
!4654 = !DILocation(line: 0, scope: !4651)
!4655 = !DILocation(line: 717, column: 17, scope: !4651)
!4656 = !DILocation(line: 717, column: 11, scope: !4651)
!4657 = !DILocation(line: 717, column: 24, scope: !4651)
!4658 = !DILocation(line: 717, column: 40, scope: !4651)
!4659 = !DILocation(line: 717, column: 3, scope: !4651)
!4660 = distinct !DISubprogram(name: "gsi_start_bb", scope: !598, file: !598, line: 4418, type: !4661, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!3215, !1298}
!4663 = !{!4664, !4665, !4666}
!4664 = !DILocalVariable(name: "bb", arg: 1, scope: !4660, file: !598, line: 4418, type: !1298)
!4665 = !DILocalVariable(name: "i", scope: !4660, file: !598, line: 4420, type: !3215)
!4666 = !DILocalVariable(name: "seq", scope: !4660, file: !598, line: 4421, type: !806)
!4667 = !DILocation(line: 0, scope: !4660)
!4668 = !DILocation(line: 4420, column: 24, scope: !4660)
!4669 = !DILocation(line: 4423, column: 9, scope: !4660)
!4670 = !DILocation(line: 4424, column: 11, scope: !4660)
!4671 = !DILocation(line: 4424, column: 5, scope: !4660)
!4672 = !DILocation(line: 4424, column: 9, scope: !4660)
!4673 = !DILocation(line: 4425, column: 5, scope: !4660)
!4674 = !DILocation(line: 4425, column: 9, scope: !4660)
!4675 = !DILocation(line: 4426, column: 5, scope: !4660)
!4676 = !DILocation(line: 4426, column: 8, scope: !4660)
!4677 = !DILocation(line: 4429, column: 1, scope: !4660)
!4678 = distinct !DISubprogram(name: "gsi_end_p", scope: !598, file: !598, line: 4467, type: !4679, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4681)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!683, !3215}
!4681 = !{!4682}
!4682 = !DILocalVariable(name: "i", arg: 1, scope: !4678, file: !598, line: 4467, type: !3215)
!4683 = !DILocation(line: 4467, column: 33, scope: !4678)
!4684 = !DILocation(line: 4469, column: 12, scope: !4678)
!4685 = !DILocation(line: 4469, column: 16, scope: !4678)
!4686 = !DILocation(line: 4469, column: 10, scope: !4678)
!4687 = !DILocation(line: 4469, column: 3, scope: !4678)
!4688 = distinct !DISubprogram(name: "gsi_stmt", scope: !598, file: !598, line: 4501, type: !4689, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4691)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!816, !3215}
!4691 = !{!4692}
!4692 = !DILocalVariable(name: "i", arg: 1, scope: !4688, file: !598, line: 4501, type: !3215)
!4693 = !DILocation(line: 4501, column: 32, scope: !4688)
!4694 = !DILocation(line: 4503, column: 12, scope: !4688)
!4695 = !DILocation(line: 4503, column: 17, scope: !4688)
!4696 = !DILocation(line: 4503, column: 3, scope: !4688)
!4697 = distinct !DISubprogram(name: "likely_eliminated_by_inlining_p", scope: !3, file: !3, line: 1713, type: !4698, scopeLine: 1714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4700)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!683, !816}
!4700 = !{!4701, !4702, !4703, !4707, !4708, !4709, !4710, !4711}
!4701 = !DILocalVariable(name: "stmt", arg: 1, scope: !4697, file: !3, line: 1713, type: !816)
!4702 = !DILocalVariable(name: "code", scope: !4697, file: !3, line: 1715, type: !597)
!4703 = !DILocalVariable(name: "rhs", scope: !4704, file: !3, line: 1732, type: !877)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1731, column: 4)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 1727, column: 6)
!4706 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 1717, column: 5)
!4707 = !DILocalVariable(name: "lhs", scope: !4704, file: !3, line: 1733, type: !877)
!4708 = !DILocalVariable(name: "inner_rhs", scope: !4704, file: !3, line: 1734, type: !877)
!4709 = !DILocalVariable(name: "inner_lhs", scope: !4704, file: !3, line: 1735, type: !877)
!4710 = !DILocalVariable(name: "rhs_free", scope: !4704, file: !3, line: 1736, type: !683)
!4711 = !DILocalVariable(name: "lhs_free", scope: !4704, file: !3, line: 1737, type: !683)
!4712 = !DILocation(line: 0, scope: !4697)
!4713 = !DILocation(line: 1715, column: 27, scope: !4697)
!4714 = !DILocation(line: 1716, column: 3, scope: !4697)
!4715 = !DILocation(line: 1721, column: 6, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 1721, column: 6)
!4717 = !DILocation(line: 1721, column: 28, scope: !4716)
!4718 = !DILocation(line: 1721, column: 6, scope: !4706)
!4719 = !DILocation(line: 1727, column: 6, scope: !4705)
!4720 = !DILocation(line: 1727, column: 36, scope: !4705)
!4721 = !DILocation(line: 1728, column: 6, scope: !4705)
!4722 = !DILocation(line: 1728, column: 9, scope: !4705)
!4723 = !DILocation(line: 1728, column: 39, scope: !4705)
!4724 = !DILocation(line: 1729, column: 6, scope: !4705)
!4725 = !DILocation(line: 1729, column: 9, scope: !4705)
!4726 = !DILocation(line: 1729, column: 39, scope: !4705)
!4727 = !DILocation(line: 1730, column: 6, scope: !4705)
!4728 = !DILocation(line: 1730, column: 9, scope: !4705)
!4729 = !DILocation(line: 1730, column: 40, scope: !4705)
!4730 = !DILocation(line: 1727, column: 6, scope: !4706)
!4731 = !DILocation(line: 1732, column: 17, scope: !4704)
!4732 = !DILocation(line: 0, scope: !4704)
!4733 = !DILocation(line: 1733, column: 24, scope: !4704)
!4734 = !DILocation(line: 1739, column: 7, scope: !4704)
!4735 = !DILocation(line: 1739, column: 14, scope: !4704)
!4736 = !DILocation(line: 1739, column: 46, scope: !4704)
!4737 = !DILocation(line: 1739, column: 49, scope: !4704)
!4738 = !DILocation(line: 1739, column: 71, scope: !4704)
!4739 = !DILocation(line: 1741, column: 7, scope: !4704)
!4740 = !DILocation(line: 1740, column: 20, scope: !4704)
!4741 = distinct !{!4741, !4734, !4740}
!4742 = !DILocation(line: 1741, column: 14, scope: !4704)
!4743 = !DILocation(line: 1742, column: 13, scope: !4704)
!4744 = !DILocation(line: 1742, column: 16, scope: !4704)
!4745 = !DILocation(line: 1742, column: 38, scope: !4704)
!4746 = !DILocation(line: 1742, column: 76, scope: !4704)
!4747 = !DILocation(line: 1742, column: 51, scope: !4704)
!4748 = !DILocation(line: 1743, column: 20, scope: !4704)
!4749 = distinct !{!4749, !4739, !4748}
!4750 = !DILocation(line: 1746, column: 32, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 1746, column: 10)
!4752 = !DILocation(line: 1747, column: 10, scope: !4751)
!4753 = !DILocation(line: 1747, column: 36, scope: !4751)
!4754 = !DILocation(line: 1748, column: 7, scope: !4751)
!4755 = !DILocation(line: 1748, column: 10, scope: !4751)
!4756 = !DILocation(line: 1749, column: 7, scope: !4751)
!4757 = !DILocation(line: 1749, column: 10, scope: !4751)
!4758 = !DILocation(line: 1749, column: 47, scope: !4751)
!4759 = !DILocation(line: 1746, column: 10, scope: !4704)
!4760 = !DILocation(line: 1750, column: 8, scope: !4751)
!4761 = !DILocation(line: 1751, column: 10, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 1751, column: 10)
!4763 = !DILocation(line: 1751, column: 19, scope: !4762)
!4764 = !DILocation(line: 1751, column: 22, scope: !4762)
!4765 = !DILocation(line: 1751, column: 10, scope: !4704)
!4766 = !DILocation(line: 1753, column: 12, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 1753, column: 10)
!4768 = !DILocation(line: 1753, column: 34, scope: !4767)
!4769 = !DILocation(line: 1754, column: 12, scope: !4767)
!4770 = !DILocation(line: 1754, column: 38, scope: !4767)
!4771 = !DILocation(line: 1755, column: 9, scope: !4767)
!4772 = !DILocation(line: 1755, column: 12, scope: !4767)
!4773 = !DILocation(line: 1756, column: 9, scope: !4767)
!4774 = !DILocation(line: 1756, column: 12, scope: !4767)
!4775 = !DILocation(line: 1756, column: 49, scope: !4767)
!4776 = !DILocation(line: 1757, column: 17, scope: !4767)
!4777 = !DILocation(line: 1757, column: 4, scope: !4767)
!4778 = !DILocation(line: 1758, column: 10, scope: !4767)
!4779 = !DILocation(line: 1758, column: 35, scope: !4767)
!4780 = !DILocation(line: 1759, column: 10, scope: !4767)
!4781 = !DILocation(line: 1759, column: 36, scope: !4767)
!4782 = !DILocation(line: 1760, column: 7, scope: !4767)
!4783 = !DILocation(line: 1760, column: 10, scope: !4767)
!4784 = !DILocation(line: 1760, column: 47, scope: !4767)
!4785 = !DILocation(line: 1753, column: 10, scope: !4704)
!4786 = !DILocation(line: 1761, column: 8, scope: !4767)
!4787 = !DILocation(line: 1762, column: 10, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 1762, column: 10)
!4789 = !DILocation(line: 1762, column: 19, scope: !4788)
!4790 = !DILocation(line: 1762, column: 23, scope: !4788)
!4791 = !DILocation(line: 1762, column: 43, scope: !4788)
!4792 = !DILocation(line: 1762, column: 46, scope: !4788)
!4793 = !DILocation(line: 1762, column: 10, scope: !4704)
!4794 = !DILocation(line: 1763, column: 8, scope: !4788)
!4795 = !DILocation(line: 1764, column: 22, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 1764, column: 10)
!4797 = !DILocation(line: 1767, column: 2, scope: !4706)
!4798 = !DILocation(line: 1769, column: 2, scope: !4706)
!4799 = !DILocation(line: 0, scope: !4706)
!4800 = !DILocation(line: 1771, column: 1, scope: !4697)
!4801 = distinct !DISubprogram(name: "gsi_next", scope: !598, file: !598, line: 4485, type: !4802, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4805)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !4804}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!4805 = !{!4806}
!4806 = !DILocalVariable(name: "i", arg: 1, scope: !4801, file: !598, line: 4485, type: !4804)
!4807 = !DILocation(line: 0, scope: !4801)
!4808 = !DILocation(line: 4487, column: 15, scope: !4801)
!4809 = !DILocation(line: 4487, column: 20, scope: !4801)
!4810 = !DILocation(line: 4487, column: 10, scope: !4801)
!4811 = !DILocation(line: 4488, column: 1, scope: !4801)
!4812 = distinct !DISubprogram(name: "bb_seq", scope: !598, file: !598, line: 237, type: !4813, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4818)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!806, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !697, line: 112, baseType: !4816)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!4818 = !{!4819}
!4819 = !DILocalVariable(name: "bb", arg: 1, scope: !4812, file: !598, line: 237, type: !4815)
!4820 = !DILocation(line: 0, scope: !4812)
!4821 = !DILocation(line: 239, column: 17, scope: !4812)
!4822 = !DILocation(line: 239, column: 23, scope: !4812)
!4823 = !DILocation(line: 239, column: 33, scope: !4812)
!4824 = !DILocation(line: 239, column: 43, scope: !4812)
!4825 = !DILocation(line: 239, column: 36, scope: !4812)
!4826 = !DILocation(line: 239, column: 10, scope: !4812)
!4827 = !DILocation(line: 239, column: 68, scope: !4812)
!4828 = !DILocation(line: 239, column: 3, scope: !4812)
!4829 = distinct !DISubprogram(name: "gimple_seq_first", scope: !598, file: !598, line: 159, type: !4830, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4835)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!811, !4832}
!4832 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !697, line: 67, baseType: !4833)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!4835 = !{!4836}
!4836 = !DILocalVariable(name: "s", arg: 1, scope: !4829, file: !598, line: 159, type: !4832)
!4837 = !DILocation(line: 0, scope: !4829)
!4838 = !DILocation(line: 161, column: 10, scope: !4829)
!4839 = !DILocation(line: 161, column: 17, scope: !4829)
!4840 = !DILocation(line: 161, column: 3, scope: !4829)
!4841 = distinct !DISubprogram(name: "gimple_code", scope: !598, file: !598, line: 1052, type: !4842, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4844)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!597, !2316}
!4844 = !{!4845}
!4845 = !DILocalVariable(name: "g", arg: 1, scope: !4841, file: !598, line: 1052, type: !2316)
!4846 = !DILocation(line: 0, scope: !4841)
!4847 = !DILocation(line: 1054, column: 20, scope: !4841)
!4848 = !DILocation(line: 1054, column: 3, scope: !4841)
!4849 = distinct !DISubprogram(name: "gimple_num_ops", scope: !598, file: !598, line: 1596, type: !4850, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4852)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!7, !2316}
!4852 = !{!4853}
!4853 = !DILocalVariable(name: "gs", arg: 1, scope: !4849, file: !598, line: 1596, type: !2316)
!4854 = !DILocation(line: 0, scope: !4849)
!4855 = !DILocation(line: 1598, column: 21, scope: !4849)
!4856 = !DILocation(line: 1598, column: 3, scope: !4849)
!4857 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !598, file: !598, line: 1815, type: !4858, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4860)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!134, !2316}
!4860 = !{!4861, !4862}
!4861 = !DILocalVariable(name: "gs", arg: 1, scope: !4857, file: !598, line: 1815, type: !2316)
!4862 = !DILocalVariable(name: "code", scope: !4857, file: !598, line: 1817, type: !134)
!4863 = !DILocation(line: 0, scope: !4857)
!4864 = !DILocation(line: 1820, column: 10, scope: !4857)
!4865 = !DILocation(line: 1821, column: 7, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4857, file: !598, line: 1821, column: 7)
!4867 = !DILocation(line: 1821, column: 35, scope: !4866)
!4868 = !DILocation(line: 1821, column: 7, scope: !4857)
!4869 = !DILocation(line: 1822, column: 12, scope: !4866)
!4870 = !DILocation(line: 1822, column: 5, scope: !4866)
!4871 = !DILocation(line: 1824, column: 3, scope: !4857)
!4872 = distinct !DISubprogram(name: "gimple_assign_rhs_class", scope: !598, file: !598, line: 1844, type: !4873, scopeLine: 1845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4875)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!636, !2316}
!4875 = !{!4876}
!4876 = !DILocalVariable(name: "gs", arg: 1, scope: !4872, file: !598, line: 1844, type: !2316)
!4877 = !DILocation(line: 0, scope: !4872)
!4878 = !DILocation(line: 1846, column: 32, scope: !4872)
!4879 = !DILocation(line: 1846, column: 10, scope: !4872)
!4880 = !DILocation(line: 1846, column: 3, scope: !4872)
!4881 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !598, file: !598, line: 1727, type: !4882, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4884)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!877, !2316}
!4884 = !{!4885}
!4885 = !DILocalVariable(name: "gs", arg: 1, scope: !4881, file: !598, line: 1727, type: !2316)
!4886 = !DILocation(line: 0, scope: !4881)
!4887 = !DILocation(line: 1730, column: 10, scope: !4881)
!4888 = !DILocation(line: 1730, column: 3, scope: !4881)
!4889 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !598, file: !598, line: 1694, type: !4882, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4890 = !{!4891}
!4891 = !DILocalVariable(name: "gs", arg: 1, scope: !4889, file: !598, line: 1694, type: !2316)
!4892 = !DILocation(line: 0, scope: !4889)
!4893 = !DILocation(line: 1697, column: 10, scope: !4889)
!4894 = !DILocation(line: 1697, column: 3, scope: !4889)
!4895 = distinct !DISubprogram(name: "handled_component_p", scope: !135, file: !135, line: 4551, type: !4896, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4901)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!683, !4898}
!4898 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !697, line: 59, baseType: !4899)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!4901 = !{!4902}
!4902 = !DILocalVariable(name: "t", arg: 1, scope: !4895, file: !135, line: 4551, type: !4898)
!4903 = !DILocation(line: 0, scope: !4895)
!4904 = !DILocation(line: 4553, column: 11, scope: !4895)
!4905 = !DILocation(line: 4553, column: 3, scope: !4895)
!4906 = !DILocation(line: 4565, column: 7, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4895, file: !135, line: 4554, column: 5)
!4908 = !DILocation(line: 0, scope: !4907)
!4909 = !DILocation(line: 4567, column: 1, scope: !4895)
!4910 = distinct !DISubprogram(name: "gimple_expr_code", scope: !598, file: !598, line: 1438, type: !4858, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4911)
!4911 = !{!4912, !4913}
!4912 = !DILocalVariable(name: "stmt", arg: 1, scope: !4910, file: !598, line: 1438, type: !2316)
!4913 = !DILocalVariable(name: "code", scope: !4910, file: !598, line: 1440, type: !597)
!4914 = !DILocation(line: 0, scope: !4910)
!4915 = !DILocation(line: 1440, column: 27, scope: !4910)
!4916 = !DILocation(line: 1441, column: 29, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4910, file: !598, line: 1441, column: 7)
!4918 = !DILocation(line: 1442, column: 42, scope: !4917)
!4919 = !DILocation(line: 1442, column: 5, scope: !4917)
!4920 = !DILocation(line: 1446, column: 5, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !598, line: 1443, column: 12)
!4922 = !DILocation(line: 1448, column: 5, scope: !4910)
!4923 = !DILocation(line: 1450, column: 1, scope: !4910)
!4924 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !598, file: !598, line: 1686, type: !4925, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4927)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!636, !134}
!4927 = !{!4928}
!4928 = !DILocalVariable(name: "code", arg: 1, scope: !4924, file: !598, line: 1686, type: !134)
!4929 = !DILocation(line: 0, scope: !4924)
!4930 = !DILocation(line: 1688, column: 34, scope: !4924)
!4931 = !DILocation(line: 1688, column: 10, scope: !4924)
!4932 = !DILocation(line: 1688, column: 3, scope: !4924)
!4933 = distinct !DISubprogram(name: "gimple_op", scope: !598, file: !598, line: 1631, type: !4934, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4936)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!877, !2316, !7}
!4936 = !{!4937, !4938}
!4937 = !DILocalVariable(name: "gs", arg: 1, scope: !4933, file: !598, line: 1631, type: !2316)
!4938 = !DILocalVariable(name: "i", arg: 2, scope: !4933, file: !598, line: 1631, type: !7)
!4939 = !DILocation(line: 0, scope: !4933)
!4940 = !DILocation(line: 1633, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4933, file: !598, line: 1633, column: 7)
!4942 = !DILocation(line: 1633, column: 7, scope: !4933)
!4943 = !DILocation(line: 1638, column: 14, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4941, file: !598, line: 1634, column: 5)
!4945 = !DILocation(line: 1638, column: 7, scope: !4944)
!4946 = !DILocation(line: 0, scope: !4941)
!4947 = !DILocation(line: 1642, column: 1, scope: !4933)
!4948 = distinct !DISubprogram(name: "gimple_has_ops", scope: !598, file: !598, line: 1274, type: !4949, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4951)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!683, !2316}
!4951 = !{!4952}
!4952 = !DILocalVariable(name: "g", arg: 1, scope: !4948, file: !598, line: 1274, type: !2316)
!4953 = !DILocation(line: 0, scope: !4948)
!4954 = !DILocation(line: 1276, column: 10, scope: !4948)
!4955 = !DILocation(line: 1276, column: 26, scope: !4948)
!4956 = !DILocation(line: 1276, column: 41, scope: !4948)
!4957 = !DILocation(line: 1276, column: 44, scope: !4948)
!4958 = !DILocation(line: 1276, column: 60, scope: !4948)
!4959 = !DILocation(line: 1276, column: 3, scope: !4948)
!4960 = distinct !DISubprogram(name: "gimple_ops", scope: !598, file: !598, line: 1614, type: !4961, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4963)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!1384, !816}
!4963 = !{!4964, !4965}
!4964 = !DILocalVariable(name: "gs", arg: 1, scope: !4960, file: !598, line: 1614, type: !816)
!4965 = !DILocalVariable(name: "off", scope: !4960, file: !598, line: 1616, type: !693)
!4966 = !DILocation(line: 0, scope: !4960)
!4967 = !DILocation(line: 1621, column: 28, scope: !4960)
!4968 = !DILocation(line: 1621, column: 9, scope: !4960)
!4969 = !DILocation(line: 1622, column: 3, scope: !4960)
!4970 = !DILocation(line: 1624, column: 20, scope: !4960)
!4971 = !DILocation(line: 1624, column: 32, scope: !4960)
!4972 = !DILocation(line: 1624, column: 10, scope: !4960)
!4973 = !DILocation(line: 1624, column: 3, scope: !4960)
!4974 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !598, file: !598, line: 1073, type: !4975, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4977)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!642, !816}
!4977 = !{!4978}
!4978 = !DILocalVariable(name: "gs", arg: 1, scope: !4974, file: !598, line: 1073, type: !816)
!4979 = !DILocation(line: 0, scope: !4974)
!4980 = !DILocation(line: 1075, column: 24, scope: !4974)
!4981 = !DILocation(line: 1075, column: 10, scope: !4974)
!4982 = !DILocation(line: 1075, column: 3, scope: !4974)
!4983 = distinct !DISubprogram(name: "gss_for_code", scope: !598, file: !598, line: 1061, type: !4984, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4986)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!642, !597}
!4986 = !{!4987}
!4987 = !DILocalVariable(name: "code", arg: 1, scope: !4983, file: !598, line: 1061, type: !597)
!4988 = !DILocation(line: 0, scope: !4983)
!4989 = !DILocation(line: 1066, column: 10, scope: !4983)
!4990 = !DILocation(line: 1066, column: 3, scope: !4983)
!4991 = distinct !DISubprogram(name: "cgraph_decide_inlining_of_small_functions", scope: !3, file: !3, line: 899, type: !2172, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4992)
!4992 = !{!4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5003, !5004, !5005, !5006}
!4993 = !DILocalVariable(name: "node", scope: !4991, file: !3, line: 901, type: !2087)
!4994 = !DILocalVariable(name: "edge", scope: !4991, file: !3, line: 902, type: !2092)
!4995 = !DILocalVariable(name: "failed_reason", scope: !4991, file: !3, line: 903, type: !2105)
!4996 = !DILocalVariable(name: "heap", scope: !4991, file: !3, line: 904, type: !2480)
!4997 = !DILocalVariable(name: "updated_nodes", scope: !4991, file: !3, line: 905, type: !696)
!4998 = !DILocalVariable(name: "min_size", scope: !4991, file: !3, line: 906, type: !684)
!4999 = !DILocalVariable(name: "max_size", scope: !4991, file: !3, line: 906, type: !684)
!5000 = !DILocalVariable(name: "new_indirect_edges", scope: !4991, file: !3, line: 907, type: !2318)
!5001 = !DILocalVariable(name: "old_size", scope: !5002, file: !3, line: 946, type: !684)
!5002 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 945, column: 5)
!5003 = !DILocalVariable(name: "where", scope: !5002, file: !3, line: 947, type: !2087)
!5004 = !DILocalVariable(name: "growth", scope: !5002, file: !3, line: 948, type: !684)
!5005 = !DILocalVariable(name: "not_good", scope: !5002, file: !3, line: 950, type: !2105)
!5006 = !DILocalVariable(name: "callee", scope: !5007, file: !3, line: 1065, type: !2087)
!5007 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 1064, column: 2)
!5008 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1049, column: 11)
!5009 = !DILocation(line: 903, column: 3, scope: !4991)
!5010 = !DILocation(line: 904, column: 20, scope: !4991)
!5011 = !DILocation(line: 0, scope: !4991)
!5012 = !DILocation(line: 905, column: 26, scope: !4991)
!5013 = !DILocation(line: 907, column: 3, scope: !4991)
!5014 = !DILocation(line: 907, column: 30, scope: !4991)
!5015 = !DILocation(line: 909, column: 7, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 909, column: 7)
!5017 = !DILocation(line: 909, column: 7, scope: !4991)
!5018 = !DILocation(line: 910, column: 26, scope: !5016)
!5019 = !DILocation(line: 910, column: 24, scope: !5016)
!5020 = !DILocation(line: 910, column: 5, scope: !5016)
!5021 = !DILocation(line: 912, column: 7, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 912, column: 7)
!5023 = !DILocation(line: 912, column: 7, scope: !4991)
!5024 = !DILocation(line: 913, column: 5, scope: !5022)
!5025 = !DILocation(line: 917, column: 8, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 917, column: 3)
!5027 = !DILocation(line: 0, scope: !5026)
!5028 = !DILocation(line: 917, column: 3, scope: !5026)
!5029 = !DILocation(line: 919, column: 24, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 919, column: 11)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 918, column: 5)
!5032 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 917, column: 3)
!5033 = !DILocation(line: 919, column: 12, scope: !5030)
!5034 = !DILocation(line: 919, column: 34, scope: !5030)
!5035 = !DILocation(line: 919, column: 44, scope: !5030)
!5036 = !DILocation(line: 919, column: 38, scope: !5030)
!5037 = !DILocation(line: 920, column: 4, scope: !5030)
!5038 = !DILocation(line: 920, column: 19, scope: !5030)
!5039 = !DILocation(line: 920, column: 7, scope: !5030)
!5040 = !DILocation(line: 919, column: 11, scope: !5031)
!5041 = !DILocation(line: 922, column: 11, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 922, column: 11)
!5043 = !DILocation(line: 922, column: 11, scope: !5031)
!5044 = !DILocation(line: 923, column: 60, scope: !5042)
!5045 = !DILocation(line: 923, column: 2, scope: !5042)
!5046 = !DILocation(line: 925, column: 20, scope: !5031)
!5047 = !DILocation(line: 925, column: 37, scope: !5031)
!5048 = !DILocation(line: 926, column: 12, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 926, column: 11)
!5050 = !DILocation(line: 926, column: 11, scope: !5031)
!5051 = !DILocation(line: 928, column: 36, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 927, column: 2)
!5053 = !DILocation(line: 928, column: 4, scope: !5052)
!5054 = !DILocation(line: 929, column: 4, scope: !5052)
!5055 = !DILocation(line: 932, column: 12, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 932, column: 7)
!5057 = !DILocation(line: 0, scope: !5056)
!5058 = !DILocation(line: 932, column: 7, scope: !5056)
!5059 = !DILocation(line: 933, column: 12, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 933, column: 6)
!5061 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 932, column: 7)
!5062 = !DILocation(line: 933, column: 6, scope: !5060)
!5063 = !DILocation(line: 933, column: 6, scope: !5061)
!5064 = !DILocation(line: 935, column: 6, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 934, column: 4)
!5066 = !DILocation(line: 936, column: 40, scope: !5065)
!5067 = !DILocation(line: 936, column: 68, scope: !5065)
!5068 = !DILocation(line: 936, column: 18, scope: !5065)
!5069 = !DILocation(line: 936, column: 16, scope: !5065)
!5070 = !DILocation(line: 937, column: 4, scope: !5065)
!5071 = !DILocation(line: 932, column: 53, scope: !5061)
!5072 = !DILocation(line: 932, column: 7, scope: !5061)
!5073 = distinct !{!5073, !5058, !5074}
!5074 = !DILocation(line: 937, column: 4, scope: !5056)
!5075 = !DILocation(line: 917, column: 48, scope: !5032)
!5076 = !DILocation(line: 917, column: 3, scope: !5032)
!5077 = distinct !{!5077, !5028, !5078}
!5078 = !DILocation(line: 938, column: 5, scope: !5026)
!5079 = !DILocation(line: 940, column: 33, scope: !4991)
!5080 = !DILocation(line: 940, column: 14, scope: !4991)
!5081 = !DILocation(line: 941, column: 14, scope: !4991)
!5082 = !DILocation(line: 943, column: 3, scope: !4991)
!5083 = !DILocation(line: 943, column: 10, scope: !4991)
!5084 = !DILocation(line: 940, column: 12, scope: !4991)
!5085 = !DILocation(line: 941, column: 12, scope: !4991)
!5086 = !DILocation(line: 943, column: 23, scope: !4991)
!5087 = !DILocation(line: 944, column: 3, scope: !4991)
!5088 = !DILocation(line: 944, column: 37, scope: !4991)
!5089 = !DILocation(line: 944, column: 14, scope: !4991)
!5090 = !DILocation(line: 1115, column: 3, scope: !4991)
!5091 = !DILocation(line: 946, column: 22, scope: !5002)
!5092 = !DILocation(line: 0, scope: !5002)
!5093 = !DILocation(line: 949, column: 48, scope: !5002)
!5094 = !DILocation(line: 949, column: 62, scope: !5002)
!5095 = !DILocation(line: 949, column: 2, scope: !5002)
!5096 = !DILocation(line: 952, column: 23, scope: !5002)
!5097 = !DILocation(line: 952, column: 38, scope: !5002)
!5098 = !DILocation(line: 954, column: 11, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 954, column: 11)
!5100 = !DILocation(line: 954, column: 11, scope: !5002)
!5101 = !DILocation(line: 958, column: 30, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 955, column: 2)
!5103 = !DILocation(line: 958, column: 6, scope: !5102)
!5104 = !DILocation(line: 959, column: 12, scope: !5102)
!5105 = !DILocation(line: 959, column: 27, scope: !5102)
!5106 = !DILocation(line: 956, column: 4, scope: !5102)
!5107 = !DILocation(line: 960, column: 13, scope: !5102)
!5108 = !DILocation(line: 964, column: 30, scope: !5102)
!5109 = !DILocation(line: 964, column: 6, scope: !5102)
!5110 = !DILocation(line: 965, column: 44, scope: !5102)
!5111 = !DILocation(line: 965, column: 6, scope: !5102)
!5112 = !DILocation(line: 966, column: 42, scope: !5102)
!5113 = !DILocation(line: 966, column: 6, scope: !5102)
!5114 = !DILocation(line: 967, column: 36, scope: !5102)
!5115 = !DILocation(line: 967, column: 6, scope: !5102)
!5116 = !DILocation(line: 968, column: 6, scope: !5102)
!5117 = !DILocation(line: 969, column: 12, scope: !5102)
!5118 = !DILocation(line: 969, column: 6, scope: !5102)
!5119 = !DILocation(line: 969, column: 22, scope: !5102)
!5120 = !DILocation(line: 960, column: 4, scope: !5102)
!5121 = !DILocation(line: 970, column: 14, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 970, column: 8)
!5123 = !DILocation(line: 970, column: 8, scope: !5122)
!5124 = !DILocation(line: 970, column: 8, scope: !5102)
!5125 = !DILocation(line: 971, column: 15, scope: !5122)
!5126 = !DILocation(line: 971, column: 6, scope: !5122)
!5127 = !DILocation(line: 973, column: 7, scope: !5002)
!5128 = !DILocation(line: 974, column: 17, scope: !5002)
!5129 = !DILocation(line: 975, column: 18, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 975, column: 11)
!5131 = !DILocation(line: 975, column: 12, scope: !5130)
!5132 = !DILocation(line: 975, column: 11, scope: !5002)
!5133 = distinct !{!5133, !5082, !5134}
!5134 = !DILocation(line: 1114, column: 5, scope: !4991)
!5135 = !DILocation(line: 992, column: 18, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 992, column: 11)
!5137 = !DILocation(line: 992, column: 12, scope: !5136)
!5138 = !DILocation(line: 992, column: 11, scope: !5002)
!5139 = !DILocation(line: 995, column: 4, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 993, column: 2)
!5141 = !DILocation(line: 0, scope: !5140)
!5142 = !DILocation(line: 995, column: 25, scope: !5140)
!5143 = !DILocation(line: 997, column: 19, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 997, column: 12)
!5145 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 996, column: 6)
!5146 = !DILocation(line: 997, column: 33, scope: !5144)
!5147 = !DILocation(line: 997, column: 41, scope: !5144)
!5148 = !DILocation(line: 997, column: 24, scope: !5144)
!5149 = !DILocation(line: 997, column: 12, scope: !5145)
!5150 = !DILocation(line: 999, column: 23, scope: !5145)
!5151 = distinct !{!5151, !5139, !5152}
!5152 = !DILocation(line: 1000, column: 6, scope: !5140)
!5153 = !DILocation(line: 1001, column: 8, scope: !5140)
!5154 = !DILocation(line: 1004, column: 12, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 1002, column: 6)
!5156 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 1001, column: 8)
!5157 = !DILocation(line: 1004, column: 26, scope: !5155)
!5158 = !DILocation(line: 1004, column: 6, scope: !5155)
!5159 = !DILocation(line: 1004, column: 3, scope: !5155)
!5160 = !DILocation(line: 1006, column: 12, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 1006, column: 12)
!5162 = !DILocation(line: 1006, column: 12, scope: !5155)
!5163 = !DILocation(line: 1007, column: 3, scope: !5161)
!5164 = !DILocation(line: 1012, column: 12, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1012, column: 11)
!5166 = !DILocation(line: 1012, column: 11, scope: !5002)
!5167 = !DILocation(line: 1014, column: 12, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1014, column: 11)
!5169 = !DILocation(line: 1015, column: 4, scope: !5168)
!5170 = !DILocation(line: 1015, column: 8, scope: !5168)
!5171 = !DILocation(line: 1014, column: 11, scope: !5002)
!5172 = !DILocation(line: 1017, column: 41, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1017, column: 11)
!5174 = !DILocation(line: 1017, column: 11, scope: !5173)
!5175 = !DILocation(line: 1017, column: 11, scope: !5002)
!5176 = !DILocation(line: 1019, column: 11, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1019, column: 11)
!5178 = !DILocation(line: 1019, column: 30, scope: !5177)
!5179 = !DILocation(line: 1019, column: 20, scope: !5177)
!5180 = !DILocation(line: 1019, column: 67, scope: !5177)
!5181 = !DILocation(line: 1019, column: 37, scope: !5177)
!5182 = !DILocation(line: 1019, column: 75, scope: !5177)
!5183 = !DILocation(line: 1019, column: 11, scope: !5002)
!5184 = !DILocation(line: 1021, column: 51, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 1021, column: 15)
!5186 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 1020, column: 2)
!5187 = !DILocation(line: 1021, column: 65, scope: !5185)
!5188 = !DILocation(line: 1021, column: 16, scope: !5185)
!5189 = !DILocation(line: 1021, column: 15, scope: !5186)
!5190 = !DILocation(line: 1024, column: 28, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 1023, column: 6)
!5192 = !DILocation(line: 1025, column: 12, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 1025, column: 12)
!5194 = !DILocation(line: 1025, column: 12, scope: !5191)
!5195 = !DILocation(line: 1027, column: 5, scope: !5193)
!5196 = !DILocation(line: 1026, column: 3, scope: !5193)
!5197 = !DILocation(line: 1031, column: 43, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1031, column: 11)
!5199 = !DILocation(line: 1031, column: 12, scope: !5198)
!5200 = !DILocation(line: 1031, column: 11, scope: !5002)
!5201 = !DILocation(line: 1033, column: 51, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 1033, column: 15)
!5203 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 1032, column: 2)
!5204 = !DILocation(line: 1033, column: 65, scope: !5202)
!5205 = !DILocation(line: 1033, column: 16, scope: !5202)
!5206 = !DILocation(line: 1036, column: 12, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 1036, column: 12)
!5208 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 1035, column: 6)
!5209 = !DILocation(line: 1033, column: 15, scope: !5203)
!5210 = !DILocation(line: 1038, column: 40, scope: !5207)
!5211 = !DILocation(line: 1038, column: 5, scope: !5207)
!5212 = !DILocation(line: 1037, column: 3, scope: !5207)
!5213 = !DILocation(line: 1042, column: 12, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1042, column: 11)
!5215 = !DILocation(line: 1042, column: 11, scope: !5002)
!5216 = !DILocation(line: 1044, column: 8, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 1044, column: 8)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 1043, column: 2)
!5219 = !DILocation(line: 1044, column: 8, scope: !5218)
!5220 = !DILocation(line: 1046, column: 43, scope: !5217)
!5221 = !DILocation(line: 1046, column: 8, scope: !5217)
!5222 = !DILocation(line: 1045, column: 6, scope: !5217)
!5223 = !DILocation(line: 1049, column: 46, scope: !5008)
!5224 = !DILocation(line: 1049, column: 60, scope: !5008)
!5225 = !DILocation(line: 1049, column: 11, scope: !5008)
!5226 = !DILocation(line: 1049, column: 11, scope: !5002)
!5227 = !DILocation(line: 1052, column: 18, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 1051, column: 2)
!5229 = !DILocation(line: 1053, column: 22, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 1053, column: 8)
!5231 = !DILocation(line: 1053, column: 8, scope: !5230)
!5232 = !DILocation(line: 1053, column: 8, scope: !5228)
!5233 = !DILocation(line: 1054, column: 6, scope: !5230)
!5234 = !DILocation(line: 0, scope: !5228)
!5235 = !DILocation(line: 1056, column: 8, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 1055, column: 8)
!5237 = !DILocation(line: 1055, column: 9, scope: !5236)
!5238 = !DILocation(line: 1055, column: 8, scope: !5228)
!5239 = !DILocation(line: 1059, column: 8, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 1059, column: 8)
!5241 = !DILocation(line: 1059, column: 8, scope: !5228)
!5242 = !DILocation(line: 1060, column: 35, scope: !5240)
!5243 = !DILocation(line: 1060, column: 6, scope: !5240)
!5244 = !DILocation(line: 1061, column: 11, scope: !5228)
!5245 = !DILocation(line: 1062, column: 2, scope: !5228)
!5246 = !DILocation(line: 1066, column: 14, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 1066, column: 8)
!5248 = !DILocation(line: 1066, column: 8, scope: !5247)
!5249 = !DILocation(line: 1067, column: 8, scope: !5247)
!5250 = !DILocation(line: 1067, column: 46, scope: !5247)
!5251 = !DILocation(line: 1067, column: 60, scope: !5247)
!5252 = !DILocation(line: 1067, column: 12, scope: !5247)
!5253 = !DILocation(line: 1066, column: 8, scope: !5007)
!5254 = !DILocation(line: 1070, column: 12, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 1070, column: 12)
!5256 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 1069, column: 6)
!5257 = !DILocation(line: 1070, column: 12, scope: !5256)
!5258 = !DILocation(line: 1072, column: 29, scope: !5255)
!5259 = !DILocation(line: 1072, column: 5, scope: !5255)
!5260 = !DILocation(line: 1073, column: 40, scope: !5255)
!5261 = !DILocation(line: 1073, column: 5, scope: !5255)
!5262 = !DILocation(line: 1071, column: 3, scope: !5255)
!5263 = !DILocation(line: 1076, column: 19, scope: !5007)
!5264 = !DILocation(line: 0, scope: !5007)
!5265 = !DILocation(line: 1077, column: 4, scope: !5007)
!5266 = !DILocation(line: 1078, column: 8, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 1078, column: 8)
!5268 = !DILocation(line: 1078, column: 8, scope: !5007)
!5269 = !DILocation(line: 1079, column: 35, scope: !5267)
!5270 = !DILocation(line: 1079, column: 6, scope: !5267)
!5271 = !DILocation(line: 1081, column: 4, scope: !5007)
!5272 = !DILocation(line: 1082, column: 2, scope: !5008)
!5273 = !DILocation(line: 1083, column: 21, scope: !5002)
!5274 = !DILocation(line: 1084, column: 25, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1084, column: 11)
!5276 = !DILocation(line: 1084, column: 11, scope: !5275)
!5277 = !DILocation(line: 1084, column: 11, scope: !5002)
!5278 = !DILocation(line: 1085, column: 2, scope: !5275)
!5279 = !DILocation(line: 1093, column: 7, scope: !5002)
!5280 = !DILocation(line: 1094, column: 7, scope: !5002)
!5281 = !DILocation(line: 1096, column: 11, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1096, column: 11)
!5283 = !DILocation(line: 1096, column: 11, scope: !5002)
!5284 = !DILocation(line: 1101, column: 30, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 1097, column: 2)
!5286 = !DILocation(line: 1101, column: 6, scope: !5285)
!5287 = !DILocation(line: 1102, column: 12, scope: !5285)
!5288 = !DILocation(line: 1102, column: 27, scope: !5285)
!5289 = !DILocation(line: 1103, column: 27, scope: !5285)
!5290 = !DILocation(line: 1104, column: 6, scope: !5285)
!5291 = !DILocation(line: 1104, column: 19, scope: !5285)
!5292 = !DILocation(line: 1098, column: 4, scope: !5285)
!5293 = !DILocation(line: 1105, column: 2, scope: !5285)
!5294 = !DILocation(line: 1106, column: 22, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1106, column: 11)
!5296 = !DILocation(line: 1106, column: 20, scope: !5295)
!5297 = !DILocation(line: 1106, column: 11, scope: !5002)
!5298 = !DILocation(line: 1109, column: 15, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 1107, column: 2)
!5300 = !DILocation(line: 1111, column: 8, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 1111, column: 8)
!5302 = !DILocation(line: 1111, column: 8, scope: !5299)
!5303 = !DILocation(line: 1112, column: 6, scope: !5301)
!5304 = !DILocation(line: 1115, column: 41, scope: !4991)
!5305 = !DILocation(line: 1115, column: 69, scope: !4991)
!5306 = !DILocation(line: 1117, column: 7, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 1116, column: 5)
!5308 = !DILocation(line: 1118, column: 17, scope: !5307)
!5309 = !DILocation(line: 1119, column: 18, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 1119, column: 11)
!5311 = !DILocation(line: 1119, column: 32, scope: !5310)
!5312 = !DILocation(line: 1119, column: 12, scope: !5310)
!5313 = !DILocation(line: 1119, column: 56, scope: !5310)
!5314 = !DILocation(line: 1119, column: 65, scope: !5310)
!5315 = !DILocation(line: 1119, column: 59, scope: !5310)
!5316 = !DILocation(line: 1120, column: 11, scope: !5310)
!5317 = !DILocation(line: 1120, column: 50, scope: !5310)
!5318 = !DILocation(line: 1120, column: 15, scope: !5310)
!5319 = !DILocation(line: 1119, column: 11, scope: !5307)
!5320 = !DILocation(line: 1122, column: 22, scope: !5310)
!5321 = !DILocation(line: 1122, column: 2, scope: !5310)
!5322 = distinct !{!5322, !5090, !5323}
!5323 = !DILocation(line: 1123, column: 5, scope: !4991)
!5324 = !DILocation(line: 1125, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 1125, column: 7)
!5326 = !DILocation(line: 1125, column: 7, scope: !4991)
!5327 = !DILocation(line: 1126, column: 5, scope: !5325)
!5328 = !DILocation(line: 1127, column: 3, scope: !4991)
!5329 = !DILocation(line: 1128, column: 3, scope: !4991)
!5330 = !DILocation(line: 1129, column: 1, scope: !4991)
!5331 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_heap_alloc", scope: !568, file: !568, line: 353, type: !5332, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5334)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!2318, !684}
!5334 = !{!5335}
!5335 = !DILocalVariable(name: "alloc_", arg: 1, scope: !5331, file: !568, line: 353, type: !684)
!5336 = !DILocation(line: 0, scope: !5331)
!5337 = !DILocation(line: 353, column: 1, scope: !5331)
!5338 = distinct !DISubprogram(name: "cgraph_set_inline_failed", scope: !3, file: !3, line: 851, type: !5339, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5341)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{null, !2087, !2105}
!5341 = !{!5342, !5343, !5344}
!5342 = !DILocalVariable(name: "node", arg: 1, scope: !5338, file: !3, line: 851, type: !2087)
!5343 = !DILocalVariable(name: "reason", arg: 2, scope: !5338, file: !3, line: 852, type: !2105)
!5344 = !DILocalVariable(name: "e", scope: !5338, file: !3, line: 854, type: !2092)
!5345 = !DILocation(line: 0, scope: !5338)
!5346 = !DILocation(line: 856, column: 7, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 856, column: 7)
!5348 = !DILocation(line: 856, column: 7, scope: !5338)
!5349 = !DILocation(line: 858, column: 7, scope: !5347)
!5350 = !DILocation(line: 857, column: 5, scope: !5347)
!5351 = !DILocation(line: 859, column: 18, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 859, column: 3)
!5353 = !DILocation(line: 859, column: 8, scope: !5352)
!5354 = !DILocation(line: 0, scope: !5352)
!5355 = !DILocation(line: 859, column: 3, scope: !5352)
!5356 = !DILocation(line: 860, column: 12, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 860, column: 9)
!5358 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 859, column: 3)
!5359 = !DILocation(line: 860, column: 9, scope: !5357)
!5360 = !DILocation(line: 860, column: 9, scope: !5358)
!5361 = !DILocation(line: 861, column: 24, scope: !5357)
!5362 = !DILocation(line: 861, column: 7, scope: !5357)
!5363 = !DILocation(line: 859, column: 37, scope: !5358)
!5364 = !DILocation(line: 859, column: 3, scope: !5358)
!5365 = distinct !{!5365, !5355, !5366}
!5366 = !DILocation(line: 861, column: 26, scope: !5352)
!5367 = !DILocation(line: 862, column: 1, scope: !5338)
!5368 = distinct !DISubprogram(name: "cgraph_edge_badness", scope: !3, file: !3, line: 547, type: !5369, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5371)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!684, !2092}
!5371 = !{!5372, !5373, !5374, !5375, !5380}
!5372 = !DILocalVariable(name: "edge", arg: 1, scope: !5368, file: !3, line: 547, type: !2092)
!5373 = !DILocalVariable(name: "badness", scope: !5368, file: !3, line: 549, type: !691)
!5374 = !DILocalVariable(name: "growth", scope: !5368, file: !3, line: 550, type: !684)
!5375 = !DILocalVariable(name: "div", scope: !5376, file: !3, line: 576, type: !684)
!5376 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 575, column: 5)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 574, column: 12)
!5378 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 561, column: 12)
!5379 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 556, column: 7)
!5380 = !DILocalVariable(name: "nest", scope: !5381, file: !3, line: 600, type: !684)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 599, column: 5)
!5382 = !DILocation(line: 0, scope: !5368)
!5383 = !DILocation(line: 551, column: 51, scope: !5368)
!5384 = !DILocation(line: 551, column: 65, scope: !5368)
!5385 = !DILocation(line: 551, column: 5, scope: !5368)
!5386 = !DILocation(line: 553, column: 19, scope: !5368)
!5387 = !DILocation(line: 553, column: 34, scope: !5368)
!5388 = !DILocation(line: 553, column: 10, scope: !5368)
!5389 = !DILocation(line: 556, column: 14, scope: !5379)
!5390 = !DILocation(line: 556, column: 7, scope: !5368)
!5391 = !DILocation(line: 557, column: 23, scope: !5379)
!5392 = !DILocation(line: 557, column: 15, scope: !5379)
!5393 = !DILocation(line: 557, column: 5, scope: !5379)
!5394 = !DILocation(line: 561, column: 12, scope: !5378)
!5395 = !DILocation(line: 561, column: 12, scope: !5379)
!5396 = !DILocation(line: 562, column: 36, scope: !5378)
!5397 = !DILocation(line: 562, column: 22, scope: !5378)
!5398 = !DILocation(line: 562, column: 42, scope: !5378)
!5399 = !DILocation(line: 562, column: 54, scope: !5378)
!5400 = !DILocation(line: 562, column: 52, scope: !5378)
!5401 = !DILocation(line: 562, column: 67, scope: !5378)
!5402 = !DILocation(line: 562, column: 79, scope: !5378)
!5403 = !DILocation(line: 562, column: 66, scope: !5378)
!5404 = !DILocation(line: 562, column: 64, scope: !5378)
!5405 = !DILocation(line: 562, column: 16, scope: !5378)
!5406 = !DILocation(line: 563, column: 37, scope: !5378)
!5407 = !DILocation(line: 563, column: 15, scope: !5378)
!5408 = !DILocation(line: 563, column: 46, scope: !5378)
!5409 = !DILocation(line: 563, column: 68, scope: !5378)
!5410 = !DILocation(line: 563, column: 12, scope: !5378)
!5411 = !DILocation(line: 563, column: 74, scope: !5378)
!5412 = !DILocation(line: 562, column: 15, scope: !5378)
!5413 = !DILocation(line: 562, column: 5, scope: !5378)
!5414 = !DILocation(line: 574, column: 12, scope: !5377)
!5415 = !DILocation(line: 574, column: 12, scope: !5378)
!5416 = !DILocation(line: 576, column: 23, scope: !5376)
!5417 = !DILocation(line: 576, column: 39, scope: !5376)
!5418 = !DILocation(line: 576, column: 58, scope: !5376)
!5419 = !DILocation(line: 0, scope: !5376)
!5420 = !DILocation(line: 577, column: 24, scope: !5376)
!5421 = !DILocation(line: 577, column: 17, scope: !5376)
!5422 = !DILocation(line: 578, column: 14, scope: !5376)
!5423 = !DILocation(line: 578, column: 11, scope: !5376)
!5424 = !DILocation(line: 584, column: 15, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 584, column: 11)
!5426 = !DILocation(line: 584, column: 11, scope: !5376)
!5427 = !DILocation(line: 585, column: 27, scope: !5425)
!5428 = !DILocation(line: 585, column: 16, scope: !5425)
!5429 = !DILocation(line: 585, column: 32, scope: !5425)
!5430 = !DILocation(line: 585, column: 2, scope: !5425)
!5431 = !DILocation(line: 588, column: 19, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 588, column: 11)
!5433 = !DILocation(line: 588, column: 11, scope: !5376)
!5434 = !DILocation(line: 586, column: 11, scope: !5376)
!5435 = !DILocation(line: 589, column: 13, scope: !5432)
!5436 = !DILocation(line: 589, column: 10, scope: !5432)
!5437 = !DILocation(line: 589, column: 2, scope: !5432)
!5438 = !DILocation(line: 590, column: 48, scope: !5376)
!5439 = !DILocation(line: 590, column: 18, scope: !5376)
!5440 = !DILocation(line: 590, column: 15, scope: !5376)
!5441 = !DILocation(line: 591, column: 11, scope: !5376)
!5442 = !DILocation(line: 593, column: 5, scope: !5376)
!5443 = !DILocation(line: 600, column: 18, scope: !5381)
!5444 = !DILocation(line: 601, column: 47, scope: !5381)
!5445 = !DILocation(line: 601, column: 17, scope: !5381)
!5446 = !DILocation(line: 601, column: 55, scope: !5381)
!5447 = !DILocation(line: 604, column: 19, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 604, column: 11)
!5449 = !DILocation(line: 604, column: 11, scope: !5381)
!5450 = !DILocation(line: 0, scope: !5379)
!5451 = !DILocation(line: 612, column: 42, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 612, column: 7)
!5453 = !DILocation(line: 612, column: 56, scope: !5452)
!5454 = !DILocation(line: 612, column: 7, scope: !5452)
!5455 = !DILocation(line: 612, column: 7, scope: !5368)
!5456 = !DILocation(line: 616, column: 1, scope: !5368)
!5457 = distinct !DISubprogram(name: "compute_max_insns", scope: !3, file: !3, line: 867, type: !2592, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5458)
!5458 = !{!5459, !5460}
!5459 = !DILocalVariable(name: "insns", arg: 1, scope: !5457, file: !3, line: 867, type: !684)
!5460 = !DILocalVariable(name: "max_insns", scope: !5457, file: !3, line: 869, type: !684)
!5461 = !DILocation(line: 0, scope: !5457)
!5462 = !DILocation(line: 870, column: 19, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 870, column: 7)
!5464 = !DILocation(line: 870, column: 17, scope: !5463)
!5465 = !DILocation(line: 870, column: 7, scope: !5457)
!5466 = !DILocation(line: 871, column: 5, scope: !5463)
!5467 = !DILocation(line: 873, column: 11, scope: !5457)
!5468 = !DILocation(line: 874, column: 13, scope: !5457)
!5469 = !DILocation(line: 874, column: 11, scope: !5457)
!5470 = !DILocation(line: 874, column: 6, scope: !5457)
!5471 = !DILocation(line: 874, column: 4, scope: !5457)
!5472 = !DILocation(line: 874, column: 53, scope: !5457)
!5473 = !DILocation(line: 873, column: 10, scope: !5457)
!5474 = !DILocation(line: 873, column: 3, scope: !5457)
!5475 = distinct !DISubprogram(name: "gimple_filename", scope: !598, file: !598, line: 1174, type: !5476, scopeLine: 1175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5478)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!689, !2316}
!5478 = !{!5479}
!5479 = !DILocalVariable(name: "stmt", arg: 1, scope: !5475, file: !598, line: 1174, type: !2316)
!5480 = !DILocation(line: 0, scope: !5475)
!5481 = !DILocation(line: 1176, column: 10, scope: !5475)
!5482 = !DILocation(line: 1176, column: 3, scope: !5475)
!5483 = distinct !DISubprogram(name: "gimple_lineno", scope: !598, file: !598, line: 1183, type: !5484, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5486)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{!684, !2316}
!5486 = !{!5487}
!5487 = !DILocalVariable(name: "stmt", arg: 1, scope: !5483, file: !598, line: 1183, type: !2316)
!5488 = !DILocation(line: 0, scope: !5483)
!5489 = !DILocation(line: 1185, column: 10, scope: !5483)
!5490 = !DILocation(line: 1185, column: 3, scope: !5483)
!5491 = distinct !DISubprogram(name: "cgraph_decide_recursive_inlining", scope: !3, file: !3, line: 718, type: !5492, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5494)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!683, !2087, !4543}
!5494 = !{!5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5508}
!5495 = !DILocalVariable(name: "node", arg: 1, scope: !5491, file: !3, line: 718, type: !2087)
!5496 = !DILocalVariable(name: "new_edges", arg: 2, scope: !5491, file: !3, line: 719, type: !4543)
!5497 = !DILocalVariable(name: "limit", scope: !5491, file: !3, line: 721, type: !684)
!5498 = !DILocalVariable(name: "max_depth", scope: !5491, file: !3, line: 722, type: !684)
!5499 = !DILocalVariable(name: "probability", scope: !5491, file: !3, line: 723, type: !684)
!5500 = !DILocalVariable(name: "heap", scope: !5491, file: !3, line: 724, type: !2480)
!5501 = !DILocalVariable(name: "e", scope: !5491, file: !3, line: 725, type: !2092)
!5502 = !DILocalVariable(name: "master_clone", scope: !5491, file: !3, line: 726, type: !2087)
!5503 = !DILocalVariable(name: "next", scope: !5491, file: !3, line: 726, type: !2087)
!5504 = !DILocalVariable(name: "depth", scope: !5491, file: !3, line: 727, type: !684)
!5505 = !DILocalVariable(name: "n", scope: !5491, file: !3, line: 728, type: !684)
!5506 = !DILocalVariable(name: "curr", scope: !5507, file: !3, line: 770, type: !2092)
!5507 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 769, column: 5)
!5508 = !DILocalVariable(name: "cnode", scope: !5507, file: !3, line: 772, type: !2087)
!5509 = !DILocation(line: 0, scope: !5491)
!5510 = !DILocation(line: 721, column: 15, scope: !5491)
!5511 = !DILocation(line: 722, column: 19, scope: !5491)
!5512 = !DILocation(line: 723, column: 21, scope: !5491)
!5513 = !DILocation(line: 730, column: 37, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 730, column: 7)
!5515 = !DILocation(line: 730, column: 7, scope: !5514)
!5516 = !DILocation(line: 731, column: 7, scope: !5514)
!5517 = !DILocation(line: 731, column: 12, scope: !5514)
!5518 = !DILocation(line: 731, column: 34, scope: !5514)
!5519 = !DILocation(line: 734, column: 7, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 734, column: 7)
!5521 = !DILocation(line: 0, scope: !5520)
!5522 = !DILocation(line: 731, column: 38, scope: !5514)
!5523 = !DILocation(line: 730, column: 7, scope: !5491)
!5524 = !DILocation(line: 734, column: 7, scope: !5491)
!5525 = !DILocation(line: 736, column: 15, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 735, column: 5)
!5527 = !DILocation(line: 737, column: 19, scope: !5526)
!5528 = !DILocation(line: 738, column: 5, scope: !5526)
!5529 = !DILocation(line: 741, column: 8, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 741, column: 7)
!5531 = !DILocation(line: 742, column: 7, scope: !5530)
!5532 = !DILocation(line: 742, column: 10, scope: !5530)
!5533 = !DILocation(line: 742, column: 63, scope: !5530)
!5534 = !DILocation(line: 741, column: 7, scope: !5491)
!5535 = !DILocation(line: 744, column: 10, scope: !5491)
!5536 = !DILocation(line: 745, column: 3, scope: !5491)
!5537 = !DILocation(line: 746, column: 7, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 746, column: 7)
!5539 = !DILocation(line: 746, column: 7, scope: !5491)
!5540 = !DILocation(line: 748, column: 7, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 747, column: 5)
!5542 = !DILocation(line: 749, column: 7, scope: !5541)
!5543 = !DILocation(line: 752, column: 7, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 752, column: 7)
!5545 = !DILocation(line: 752, column: 7, scope: !5491)
!5546 = !DILocation(line: 755, column: 7, scope: !5544)
!5547 = !DILocation(line: 753, column: 5, scope: !5544)
!5548 = !DILocation(line: 758, column: 49, scope: !5491)
!5549 = !DILocation(line: 758, column: 18, scope: !5491)
!5550 = !DILocation(line: 760, column: 17, scope: !5491)
!5551 = !DILocation(line: 760, column: 24, scope: !5491)
!5552 = !DILocation(line: 761, column: 26, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 761, column: 3)
!5554 = !DILocation(line: 761, column: 8, scope: !5553)
!5555 = !DILocation(line: 0, scope: !5553)
!5556 = !DILocation(line: 761, column: 3, scope: !5553)
!5557 = !DILocation(line: 0, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 777, column: 6)
!5559 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 775, column: 7)
!5560 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 775, column: 7)
!5561 = !DILocation(line: 0, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 795, column: 15)
!5563 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 788, column: 2)
!5564 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 787, column: 11)
!5565 = !DILocation(line: 767, column: 3, scope: !5491)
!5566 = !DILocation(line: 762, column: 13, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 762, column: 9)
!5568 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 761, column: 3)
!5569 = !DILocation(line: 762, column: 10, scope: !5567)
!5570 = !DILocation(line: 762, column: 9, scope: !5568)
!5571 = !DILocation(line: 763, column: 7, scope: !5567)
!5572 = !DILocation(line: 761, column: 45, scope: !5568)
!5573 = !DILocation(line: 761, column: 3, scope: !5568)
!5574 = distinct !{!5574, !5556, !5575}
!5575 = !DILocation(line: 763, column: 49, scope: !5553)
!5576 = !DILocation(line: 728, column: 7, scope: !5491)
!5577 = !DILocation(line: 766, column: 11, scope: !5491)
!5578 = !DILocation(line: 767, column: 7, scope: !5491)
!5579 = !DILocation(line: 768, column: 7, scope: !5491)
!5580 = !DILocation(line: 766, column: 3, scope: !5491)
!5581 = !DILocation(line: 771, column: 27, scope: !5507)
!5582 = !DILocation(line: 0, scope: !5507)
!5583 = !DILocation(line: 775, column: 26, scope: !5560)
!5584 = !DILocation(line: 775, column: 12, scope: !5560)
!5585 = !DILocation(line: 0, scope: !5560)
!5586 = !DILocation(line: 776, column: 19, scope: !5559)
!5587 = !DILocation(line: 775, column: 7, scope: !5560)
!5588 = !DILocation(line: 777, column: 12, scope: !5558)
!5589 = !DILocation(line: 777, column: 26, scope: !5558)
!5590 = !DILocation(line: 777, column: 34, scope: !5558)
!5591 = !DILocation(line: 777, column: 17, scope: !5558)
!5592 = !DILocation(line: 777, column: 6, scope: !5559)
!5593 = !DILocation(line: 776, column: 46, scope: !5559)
!5594 = !DILocation(line: 776, column: 55, scope: !5559)
!5595 = !DILocation(line: 775, column: 7, scope: !5559)
!5596 = distinct !{!5596, !5587, !5597}
!5597 = !DILocation(line: 778, column: 9, scope: !5560)
!5598 = !DILocation(line: 771, column: 4, scope: !5507)
!5599 = !DILocation(line: 779, column: 17, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 779, column: 11)
!5601 = !DILocation(line: 779, column: 11, scope: !5507)
!5602 = !DILocation(line: 781, column: 15, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 781, column: 15)
!5604 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 780, column: 2)
!5605 = !DILocation(line: 781, column: 15, scope: !5604)
!5606 = distinct !{!5606, !5580, !5607}
!5607 = !DILocation(line: 819, column: 5, scope: !5491)
!5608 = !DILocation(line: 782, column: 6, scope: !5603)
!5609 = !DILocation(line: 787, column: 11, scope: !5564)
!5610 = !DILocation(line: 787, column: 11, scope: !5507)
!5611 = !DILocation(line: 789, column: 16, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 789, column: 15)
!5613 = !DILocation(line: 789, column: 15, scope: !5563)
!5614 = !DILocation(line: 791, column: 12, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 791, column: 12)
!5616 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 790, column: 6)
!5617 = !DILocation(line: 791, column: 12, scope: !5616)
!5618 = !DILocation(line: 792, column: 3, scope: !5615)
!5619 = !DILocation(line: 795, column: 21, scope: !5562)
!5620 = !DILocation(line: 795, column: 27, scope: !5562)
!5621 = !DILocation(line: 795, column: 41, scope: !5562)
!5622 = !DILocation(line: 795, column: 33, scope: !5562)
!5623 = !DILocation(line: 795, column: 47, scope: !5562)
!5624 = !DILocation(line: 795, column: 15, scope: !5563)
!5625 = !DILocation(line: 797, column: 12, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 797, column: 12)
!5627 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 796, column: 6)
!5628 = !DILocation(line: 797, column: 12, scope: !5627)
!5629 = !DILocation(line: 798, column: 3, scope: !5626)
!5630 = !DILocation(line: 804, column: 11, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 804, column: 11)
!5632 = !DILocation(line: 804, column: 11, scope: !5507)
!5633 = !DILocation(line: 806, column: 4, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 805, column: 2)
!5635 = !DILocation(line: 808, column: 14, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 808, column: 8)
!5637 = !DILocation(line: 808, column: 8, scope: !5636)
!5638 = !DILocation(line: 808, column: 8, scope: !5634)
!5639 = !DILocation(line: 810, column: 17, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 809, column: 6)
!5641 = !DILocation(line: 811, column: 24, scope: !5640)
!5642 = !DILocation(line: 811, column: 10, scope: !5640)
!5643 = !DILocation(line: 811, column: 32, scope: !5640)
!5644 = !DILocation(line: 811, column: 30, scope: !5640)
!5645 = !DILocation(line: 810, column: 8, scope: !5640)
!5646 = !DILocation(line: 812, column: 6, scope: !5640)
!5647 = !DILocation(line: 813, column: 13, scope: !5634)
!5648 = !DILocation(line: 813, column: 4, scope: !5634)
!5649 = !DILocation(line: 814, column: 2, scope: !5634)
!5650 = !DILocation(line: 815, column: 7, scope: !5507)
!5651 = !DILocation(line: 816, column: 7, scope: !5507)
!5652 = !DILocation(line: 817, column: 43, scope: !5507)
!5653 = !DILocation(line: 817, column: 7, scope: !5507)
!5654 = !DILocation(line: 818, column: 8, scope: !5507)
!5655 = !DILocation(line: 820, column: 8, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 820, column: 7)
!5657 = !DILocation(line: 820, column: 32, scope: !5656)
!5658 = !DILocation(line: 820, column: 29, scope: !5656)
!5659 = !DILocation(line: 821, column: 5, scope: !5656)
!5660 = !DILocation(line: 823, column: 3, scope: !5491)
!5661 = !DILocation(line: 824, column: 7, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 824, column: 7)
!5663 = !DILocation(line: 824, column: 7, scope: !5491)
!5664 = !DILocation(line: 827, column: 28, scope: !5662)
!5665 = !DILocation(line: 827, column: 47, scope: !5662)
!5666 = !DILocation(line: 828, column: 28, scope: !5662)
!5667 = !DILocation(line: 828, column: 47, scope: !5662)
!5668 = !DILocation(line: 825, column: 5, scope: !5662)
!5669 = !DILocation(line: 833, column: 15, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 833, column: 3)
!5671 = !DILocation(line: 833, column: 8, scope: !5670)
!5672 = !DILocation(line: 0, scope: !5670)
!5673 = !DILocation(line: 833, column: 34, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 833, column: 3)
!5675 = !DILocation(line: 833, column: 3, scope: !5670)
!5676 = !DILocation(line: 836, column: 20, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 835, column: 5)
!5678 = !DILocation(line: 837, column: 24, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 837, column: 11)
!5680 = !DILocation(line: 837, column: 35, scope: !5679)
!5681 = !DILocation(line: 837, column: 11, scope: !5677)
!5682 = !DILocation(line: 838, column: 2, scope: !5679)
!5683 = !DILocation(line: 833, column: 3, scope: !5674)
!5684 = distinct !{!5684, !5675, !5685}
!5685 = !DILocation(line: 839, column: 5, scope: !5670)
!5686 = !DILocation(line: 840, column: 3, scope: !5491)
!5687 = !DILocation(line: 845, column: 12, scope: !5491)
!5688 = !DILocation(line: 845, column: 10, scope: !5491)
!5689 = !DILocation(line: 845, column: 3, scope: !5491)
!5690 = !DILocation(line: 846, column: 1, scope: !5491)
!5691 = distinct !DISubprogram(name: "add_new_edges_to_heap", scope: !3, file: !3, line: 879, type: !5692, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5694)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{null, !2480, !2318}
!5694 = !{!5695, !5696, !5697}
!5695 = !DILocalVariable(name: "heap", arg: 1, scope: !5691, file: !3, line: 879, type: !2480)
!5696 = !DILocalVariable(name: "new_edges", arg: 2, scope: !5691, file: !3, line: 879, type: !2318)
!5697 = !DILocalVariable(name: "edge", scope: !5698, file: !3, line: 883, type: !2092)
!5698 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 882, column: 5)
!5699 = !DILocation(line: 0, scope: !5691)
!5700 = !DILocation(line: 881, column: 3, scope: !5691)
!5701 = !DILocation(line: 881, column: 10, scope: !5691)
!5702 = !DILocation(line: 881, column: 48, scope: !5691)
!5703 = !DILocation(line: 883, column: 34, scope: !5698)
!5704 = !DILocation(line: 0, scope: !5698)
!5705 = !DILocation(line: 885, column: 7, scope: !5698)
!5706 = !DILocation(line: 886, column: 41, scope: !5698)
!5707 = !DILocation(line: 886, column: 69, scope: !5698)
!5708 = !DILocation(line: 886, column: 19, scope: !5698)
!5709 = !DILocation(line: 886, column: 17, scope: !5698)
!5710 = distinct !{!5710, !5700, !5711}
!5711 = !DILocation(line: 887, column: 5, scope: !5691)
!5712 = !DILocation(line: 888, column: 1, scope: !5691)
!5713 = distinct !DISubprogram(name: "update_callee_keys", scope: !3, file: !3, line: 674, type: !5714, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5716)
!5714 = !DISubroutineType(types: !5715)
!5715 = !{null, !2480, !2087, !696}
!5716 = !{!5717, !5718, !5719, !5720}
!5717 = !DILocalVariable(name: "heap", arg: 1, scope: !5713, file: !3, line: 674, type: !2480)
!5718 = !DILocalVariable(name: "node", arg: 2, scope: !5713, file: !3, line: 674, type: !2087)
!5719 = !DILocalVariable(name: "updated_nodes", arg: 3, scope: !5713, file: !3, line: 675, type: !696)
!5720 = !DILocalVariable(name: "e", scope: !5713, file: !3, line: 677, type: !2092)
!5721 = !DILocation(line: 0, scope: !5713)
!5722 = !DILocation(line: 678, column: 16, scope: !5713)
!5723 = !DILocation(line: 678, column: 33, scope: !5713)
!5724 = !DILocation(line: 680, column: 18, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 680, column: 3)
!5726 = !DILocation(line: 680, column: 8, scope: !5725)
!5727 = !DILocation(line: 0, scope: !5725)
!5728 = !DILocation(line: 680, column: 3, scope: !5725)
!5729 = !DILocation(line: 681, column: 12, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 681, column: 9)
!5731 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 680, column: 3)
!5732 = !DILocation(line: 681, column: 9, scope: !5730)
!5733 = !DILocation(line: 681, column: 9, scope: !5731)
!5734 = !DILocation(line: 682, column: 36, scope: !5730)
!5735 = !DILocation(line: 682, column: 7, scope: !5730)
!5736 = !DILocation(line: 683, column: 14, scope: !5730)
!5737 = !DILocation(line: 684, column: 36, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 683, column: 14)
!5739 = !DILocation(line: 684, column: 7, scope: !5738)
!5740 = !DILocation(line: 680, column: 37, scope: !5731)
!5741 = !DILocation(line: 680, column: 3, scope: !5731)
!5742 = distinct !{!5742, !5728, !5743}
!5743 = !DILocation(line: 684, column: 57, scope: !5725)
!5744 = !DILocation(line: 685, column: 1, scope: !5713)
!5745 = distinct !DISubprogram(name: "update_caller_keys", scope: !3, file: !3, line: 621, type: !5714, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5746)
!5746 = !{!5747, !5748, !5749, !5750, !5751, !5752, !5757}
!5747 = !DILocalVariable(name: "heap", arg: 1, scope: !5745, file: !3, line: 621, type: !2480)
!5748 = !DILocalVariable(name: "node", arg: 2, scope: !5745, file: !3, line: 621, type: !2087)
!5749 = !DILocalVariable(name: "updated_nodes", arg: 3, scope: !5745, file: !3, line: 622, type: !696)
!5750 = !DILocalVariable(name: "edge", scope: !5745, file: !3, line: 624, type: !2092)
!5751 = !DILocalVariable(name: "failed_reason", scope: !5745, file: !3, line: 625, type: !2105)
!5752 = !DILocalVariable(name: "badness", scope: !5753, file: !3, line: 654, type: !684)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 653, column: 7)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 652, column: 9)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !3, line: 651, column: 3)
!5756 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 651, column: 3)
!5757 = !DILocalVariable(name: "n", scope: !5758, file: !3, line: 657, type: !2331)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 656, column: 4)
!5759 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 655, column: 6)
!5760 = !DILocation(line: 0, scope: !5745)
!5761 = !DILocation(line: 625, column: 3, scope: !5745)
!5762 = !DILocation(line: 627, column: 20, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 627, column: 7)
!5764 = !DILocation(line: 627, column: 8, scope: !5763)
!5765 = !DILocation(line: 627, column: 30, scope: !5763)
!5766 = !DILocation(line: 627, column: 45, scope: !5763)
!5767 = !DILocation(line: 627, column: 33, scope: !5763)
!5768 = !DILocation(line: 628, column: 7, scope: !5763)
!5769 = !DILocation(line: 628, column: 23, scope: !5763)
!5770 = !DILocation(line: 628, column: 10, scope: !5763)
!5771 = !DILocation(line: 627, column: 7, scope: !5745)
!5772 = !DILocation(line: 630, column: 42, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 630, column: 7)
!5774 = !DILocation(line: 630, column: 7, scope: !5773)
!5775 = !DILocation(line: 630, column: 7, scope: !5745)
!5776 = !DILocation(line: 632, column: 40, scope: !5745)
!5777 = !DILocation(line: 632, column: 3, scope: !5745)
!5778 = !DILocation(line: 633, column: 16, scope: !5745)
!5779 = !DILocation(line: 633, column: 33, scope: !5745)
!5780 = !DILocation(line: 635, column: 20, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 635, column: 7)
!5782 = !DILocation(line: 635, column: 8, scope: !5781)
!5783 = !DILocation(line: 635, column: 7, scope: !5745)
!5784 = !DILocation(line: 638, column: 8, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 638, column: 7)
!5786 = !DILocation(line: 638, column: 7, scope: !5745)
!5787 = !DILocation(line: 651, column: 3, scope: !5756)
!5788 = !DILocation(line: 640, column: 7, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 640, column: 7)
!5790 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 639, column: 5)
!5791 = !DILocation(line: 0, scope: !5789)
!5792 = !DILocation(line: 641, column: 12, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 641, column: 6)
!5794 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 640, column: 7)
!5795 = !DILocation(line: 641, column: 6, scope: !5793)
!5796 = !DILocation(line: 641, column: 6, scope: !5794)
!5797 = !DILocation(line: 643, column: 6, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 642, column: 4)
!5799 = !DILocation(line: 644, column: 16, scope: !5798)
!5800 = !DILocation(line: 645, column: 16, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 645, column: 10)
!5802 = !DILocation(line: 645, column: 10, scope: !5801)
!5803 = !DILocation(line: 645, column: 10, scope: !5798)
!5804 = !DILocation(line: 646, column: 30, scope: !5801)
!5805 = !DILocation(line: 646, column: 28, scope: !5801)
!5806 = !DILocation(line: 646, column: 8, scope: !5801)
!5807 = !DILocation(line: 640, column: 53, scope: !5794)
!5808 = !DILocation(line: 640, column: 7, scope: !5794)
!5809 = distinct !{!5809, !5788, !5810}
!5810 = !DILocation(line: 647, column: 4, scope: !5789)
!5811 = !DILocation(line: 0, scope: !5756)
!5812 = !DILocation(line: 652, column: 15, scope: !5754)
!5813 = !DILocation(line: 652, column: 9, scope: !5754)
!5814 = !DILocation(line: 652, column: 9, scope: !5755)
!5815 = !DILocation(line: 654, column: 16, scope: !5753)
!5816 = !DILocation(line: 0, scope: !5753)
!5817 = !DILocation(line: 655, column: 12, scope: !5759)
!5818 = !DILocation(line: 655, column: 6, scope: !5759)
!5819 = !DILocation(line: 655, column: 6, scope: !5753)
!5820 = !DILocation(line: 667, column: 36, scope: !5753)
!5821 = !DILocation(line: 667, column: 45, scope: !5753)
!5822 = !DILocation(line: 667, column: 12, scope: !5753)
!5823 = !DILocation(line: 657, column: 38, scope: !5758)
!5824 = !DILocation(line: 0, scope: !5758)
!5825 = !DILocation(line: 658, column: 6, scope: !5758)
!5826 = !DILocation(line: 659, column: 13, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 659, column: 10)
!5828 = !DILocation(line: 659, column: 20, scope: !5827)
!5829 = !DILocation(line: 659, column: 17, scope: !5827)
!5830 = !DILocation(line: 659, column: 10, scope: !5758)
!5831 = !DILocation(line: 663, column: 10, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 663, column: 10)
!5833 = !DILocation(line: 663, column: 10, scope: !5758)
!5834 = !DILocation(line: 665, column: 51, scope: !5758)
!5835 = !DILocation(line: 665, column: 6, scope: !5758)
!5836 = !DILocation(line: 666, column: 4, scope: !5759)
!5837 = !DILocation(line: 667, column: 14, scope: !5753)
!5838 = !DILocation(line: 668, column: 7, scope: !5754)
!5839 = !DILocation(line: 651, column: 49, scope: !5755)
!5840 = !DILocation(line: 651, column: 3, scope: !5755)
!5841 = distinct !{!5841, !5787, !5842}
!5842 = !DILocation(line: 668, column: 7, scope: !5756)
!5843 = !DILocation(line: 669, column: 1, scope: !5745)
!5844 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_heap_free", scope: !568, file: !568, line: 353, type: !5845, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5847)
!5845 = !DISubroutineType(types: !5846)
!5846 = !{null, !4543}
!5847 = !{!5848}
!5848 = !DILocalVariable(name: "vec_", arg: 1, scope: !5844, file: !568, line: 353, type: !4543)
!5849 = !DILocation(line: 0, scope: !5844)
!5850 = !DILocation(line: 353, column: 1, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5844, file: !568, line: 353, column: 1)
!5852 = !DILocation(line: 353, column: 1, scope: !5844)
!5853 = distinct !DISubprogram(name: "gimple_location", scope: !598, file: !598, line: 1139, type: !5854, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5856)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!774, !2316}
!5856 = !{!5857}
!5857 = !DILocalVariable(name: "g", arg: 1, scope: !5853, file: !598, line: 1139, type: !2316)
!5858 = !DILocation(line: 0, scope: !5853)
!5859 = !DILocation(line: 1141, column: 20, scope: !5853)
!5860 = !DILocation(line: 1141, column: 3, scope: !5853)
!5861 = !DILocation(line: 0, scope: !2477)
!5862 = !DILocation(line: 696, column: 19, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 696, column: 3)
!5864 = !DILocation(line: 696, column: 8, scope: !5863)
!5865 = !DILocation(line: 0, scope: !5863)
!5866 = !DILocation(line: 696, column: 3, scope: !5863)
!5867 = !DILocation(line: 697, column: 12, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 697, column: 9)
!5869 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 696, column: 3)
!5870 = !DILocation(line: 697, column: 19, scope: !5868)
!5871 = !DILocation(line: 697, column: 9, scope: !5869)
!5872 = !DILocation(line: 703, column: 5, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 698, column: 7)
!5874 = !DILocation(line: 703, column: 4, scope: !5873)
!5875 = !DILocation(line: 703, column: 25, scope: !5873)
!5876 = !DILocation(line: 703, column: 17, scope: !5873)
!5877 = !DILocation(line: 704, column: 18, scope: !5873)
!5878 = !DILocation(line: 704, column: 48, scope: !5873)
!5879 = !DILocation(line: 704, column: 53, scope: !5873)
!5880 = !DILocation(line: 704, column: 24, scope: !5873)
!5881 = !DILocation(line: 704, column: 13, scope: !5873)
!5882 = !DILocation(line: 705, column: 11, scope: !5873)
!5883 = !DILocation(line: 702, column: 9, scope: !5873)
!5884 = !DILocation(line: 706, column: 7, scope: !5873)
!5885 = !DILocation(line: 696, column: 38, scope: !5869)
!5886 = !DILocation(line: 696, column: 3, scope: !5869)
!5887 = distinct !{!5887, !5866, !5888}
!5888 = !DILocation(line: 706, column: 7, scope: !5863)
!5889 = !DILocation(line: 707, column: 8, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 707, column: 3)
!5891 = !DILocation(line: 0, scope: !5890)
!5892 = !DILocation(line: 707, column: 3, scope: !5890)
!5893 = !DILocation(line: 708, column: 13, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 708, column: 9)
!5895 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 707, column: 3)
!5896 = !DILocation(line: 708, column: 10, scope: !5894)
!5897 = !DILocation(line: 708, column: 9, scope: !5895)
!5898 = !DILocation(line: 709, column: 40, scope: !5894)
!5899 = !DILocation(line: 709, column: 7, scope: !5894)
!5900 = !DILocation(line: 707, column: 38, scope: !5895)
!5901 = !DILocation(line: 707, column: 3, scope: !5895)
!5902 = distinct !{!5902, !5892, !5903}
!5903 = !DILocation(line: 709, column: 52, scope: !5890)
!5904 = !DILocation(line: 710, column: 1, scope: !2477)
!5905 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_base_length", scope: !568, file: !568, line: 352, type: !5906, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5910)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!7, !5908}
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5909, size: 64)
!5909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2323)
!5910 = !{!5911}
!5911 = !DILocalVariable(name: "vec_", arg: 1, scope: !5905, file: !568, line: 352, type: !5908)
!5912 = !DILocation(line: 0, scope: !5905)
!5913 = !DILocation(line: 352, column: 1, scope: !5905)
!5914 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_base_pop", scope: !568, file: !568, line: 352, type: !5915, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5918)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!2330, !5917}
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!5918 = !{!5919, !5920}
!5919 = !DILocalVariable(name: "vec_", arg: 1, scope: !5914, file: !568, line: 352, type: !5917)
!5920 = !DILocalVariable(name: "obj_", scope: !5914, file: !568, line: 352, type: !2330)
!5921 = !DILocation(line: 0, scope: !5914)
!5922 = !DILocation(line: 352, column: 1, scope: !5914)
!5923 = distinct !DISubprogram(name: "add_new_function", scope: !3, file: !3, line: 1960, type: !5924, scopeLine: 1961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5926)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{null, !2087, !688}
!5926 = !{!5927, !5928}
!5927 = !DILocalVariable(name: "node", arg: 1, scope: !5923, file: !3, line: 1960, type: !2087)
!5928 = !DILocalVariable(name: "data", arg: 2, scope: !5923, file: !3, line: 1960, type: !688)
!5929 = !DILocation(line: 0, scope: !5923)
!5930 = !DILocation(line: 1962, column: 3, scope: !5923)
!5931 = !DILocation(line: 1963, column: 1, scope: !5923)
!5932 = distinct !DISubprogram(name: "ipa_check_create_node_params", scope: !669, file: !669, line: 349, type: !2172, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!5933 = !DILocation(line: 351, column: 8, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5932, file: !669, line: 351, column: 7)
!5935 = !DILocation(line: 351, column: 7, scope: !5932)
!5936 = !DILocation(line: 352, column: 30, scope: !5934)
!5937 = !DILocation(line: 352, column: 28, scope: !5934)
!5938 = !DILocation(line: 352, column: 5, scope: !5934)
!5939 = !DILocation(line: 355, column: 7, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5932, file: !669, line: 355, column: 7)
!5941 = !DILocation(line: 356, column: 21, scope: !5940)
!5942 = !DILocation(line: 356, column: 7, scope: !5940)
!5943 = !DILocation(line: 355, column: 7, scope: !5932)
!5944 = !DILocation(line: 357, column: 5, scope: !5940)
!5945 = !DILocation(line: 359, column: 1, scope: !5932)
!5946 = distinct !DISubprogram(name: "ipa_check_create_edge_args", scope: !669, file: !669, line: 365, type: !2172, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!5947 = !DILocation(line: 367, column: 8, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5946, file: !669, line: 367, column: 7)
!5949 = !DILocation(line: 367, column: 7, scope: !5946)
!5950 = !DILocation(line: 368, column: 28, scope: !5948)
!5951 = !DILocation(line: 368, column: 26, scope: !5948)
!5952 = !DILocation(line: 368, column: 5, scope: !5948)
!5953 = !DILocation(line: 371, column: 7, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5946, file: !669, line: 371, column: 7)
!5955 = !DILocation(line: 372, column: 22, scope: !5954)
!5956 = !DILocation(line: 372, column: 7, scope: !5954)
!5957 = !DILocation(line: 371, column: 7, scope: !5946)
!5958 = !DILocation(line: 373, column: 5, scope: !5954)
!5959 = !DILocation(line: 375, column: 1, scope: !5946)
!5960 = distinct !DISubprogram(name: "analyze_function", scope: !3, file: !3, line: 1945, type: !2200, scopeLine: 1946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5961)
!5961 = !{!5962}
!5962 = !DILocalVariable(name: "node", arg: 1, scope: !5960, file: !3, line: 1945, type: !2087)
!5963 = !DILocation(line: 0, scope: !5960)
!5964 = !DILocation(line: 1947, column: 14, scope: !5960)
!5965 = !DILocation(line: 1947, column: 3, scope: !5960)
!5966 = !DILocation(line: 1948, column: 33, scope: !5960)
!5967 = !DILocation(line: 1948, column: 25, scope: !5960)
!5968 = !DILocation(line: 1950, column: 3, scope: !5960)
!5969 = !DILocation(line: 1951, column: 7, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 1951, column: 7)
!5971 = !DILocation(line: 1951, column: 7, scope: !5960)
!5972 = !DILocation(line: 1952, column: 5, scope: !5970)
!5973 = !DILocation(line: 1954, column: 25, scope: !5960)
!5974 = !DILocation(line: 1955, column: 3, scope: !5960)
!5975 = !DILocation(line: 1956, column: 1, scope: !5960)
!5976 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_alloc", scope: !669, file: !669, line: 315, type: !5977, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5979)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{!2345, !684}
!5979 = !{!5980}
!5980 = !DILocalVariable(name: "alloc_", arg: 1, scope: !5976, file: !669, line: 315, type: !684)
!5981 = !DILocation(line: 0, scope: !5976)
!5982 = !DILocation(line: 315, column: 1, scope: !5976)
!5983 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_base_length", scope: !669, file: !669, line: 314, type: !5984, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5988)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{!7, !5986}
!5986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5987, size: 64)
!5987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!5988 = !{!5989}
!5989 = !DILocalVariable(name: "vec_", arg: 1, scope: !5983, file: !669, line: 314, type: !5986)
!5990 = !DILocation(line: 0, scope: !5983)
!5991 = !DILocation(line: 314, column: 1, scope: !5983)
!5992 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_safe_grow_cleared", scope: !669, file: !669, line: 315, type: !5993, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5996)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{null, !5995, !684}
!5995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!5996 = !{!5997, !5998, !5999}
!5997 = !DILocalVariable(name: "vec_", arg: 1, scope: !5992, file: !669, line: 315, type: !5995)
!5998 = !DILocalVariable(name: "size_", arg: 2, scope: !5992, file: !669, line: 315, type: !684)
!5999 = !DILocalVariable(name: "oldsize", scope: !5992, file: !669, line: 315, type: !684)
!6000 = !DILocation(line: 0, scope: !5992)
!6001 = !DILocation(line: 315, column: 1, scope: !5992)
!6002 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_safe_grow", scope: !669, file: !669, line: 315, type: !5993, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6003)
!6003 = !{!6004, !6005}
!6004 = !DILocalVariable(name: "vec_", arg: 1, scope: !6002, file: !669, line: 315, type: !5995)
!6005 = !DILocalVariable(name: "size_", arg: 2, scope: !6002, file: !669, line: 315, type: !684)
!6006 = !DILocation(line: 0, scope: !6002)
!6007 = !DILocation(line: 315, column: 1, scope: !6002)
!6008 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_base_address", scope: !669, file: !669, line: 314, type: !6009, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6013)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{!6011, !6012}
!6011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!6013 = !{!6014}
!6014 = !DILocalVariable(name: "vec_", arg: 1, scope: !6008, file: !669, line: 314, type: !6012)
!6015 = !DILocation(line: 0, scope: !6008)
!6016 = !DILocation(line: 314, column: 1, scope: !6008)
!6017 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_reserve_exact", scope: !669, file: !669, line: 315, type: !6018, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6020)
!6018 = !DISubroutineType(types: !6019)
!6019 = !{!684, !5995, !684}
!6020 = !{!6021, !6022, !6023}
!6021 = !DILocalVariable(name: "vec_", arg: 1, scope: !6017, file: !669, line: 315, type: !5995)
!6022 = !DILocalVariable(name: "alloc_", arg: 2, scope: !6017, file: !669, line: 315, type: !684)
!6023 = !DILocalVariable(name: "extend", scope: !6017, file: !669, line: 315, type: !684)
!6024 = !DILocation(line: 0, scope: !6017)
!6025 = !DILocation(line: 315, column: 1, scope: !6017)
!6026 = !DILocation(line: 315, column: 1, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6017, file: !669, line: 315, column: 1)
!6028 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_base_space", scope: !669, file: !669, line: 314, type: !6029, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6031)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{!684, !6012, !684}
!6031 = !{!6032, !6033}
!6032 = !DILocalVariable(name: "vec_", arg: 1, scope: !6028, file: !669, line: 314, type: !6012)
!6033 = !DILocalVariable(name: "alloc_", arg: 2, scope: !6028, file: !669, line: 314, type: !684)
!6034 = !DILocation(line: 0, scope: !6028)
!6035 = !DILocation(line: 314, column: 1, scope: !6028)
!6036 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_alloc", scope: !669, file: !669, line: 317, type: !6037, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6039)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!2390, !684}
!6039 = !{!6040}
!6040 = !DILocalVariable(name: "alloc_", arg: 1, scope: !6036, file: !669, line: 317, type: !684)
!6041 = !DILocation(line: 0, scope: !6036)
!6042 = !DILocation(line: 317, column: 1, scope: !6036)
!6043 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_base_length", scope: !669, file: !669, line: 316, type: !6044, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6048)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!7, !6046}
!6046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6047, size: 64)
!6047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!6048 = !{!6049}
!6049 = !DILocalVariable(name: "vec_", arg: 1, scope: !6043, file: !669, line: 316, type: !6046)
!6050 = !DILocation(line: 0, scope: !6043)
!6051 = !DILocation(line: 316, column: 1, scope: !6043)
!6052 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_safe_grow_cleared", scope: !669, file: !669, line: 317, type: !6053, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6056)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{null, !6055, !684}
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!6056 = !{!6057, !6058, !6059}
!6057 = !DILocalVariable(name: "vec_", arg: 1, scope: !6052, file: !669, line: 317, type: !6055)
!6058 = !DILocalVariable(name: "size_", arg: 2, scope: !6052, file: !669, line: 317, type: !684)
!6059 = !DILocalVariable(name: "oldsize", scope: !6052, file: !669, line: 317, type: !684)
!6060 = !DILocation(line: 0, scope: !6052)
!6061 = !DILocation(line: 317, column: 1, scope: !6052)
!6062 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_safe_grow", scope: !669, file: !669, line: 317, type: !6053, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6063 = !{!6064, !6065}
!6064 = !DILocalVariable(name: "vec_", arg: 1, scope: !6062, file: !669, line: 317, type: !6055)
!6065 = !DILocalVariable(name: "size_", arg: 2, scope: !6062, file: !669, line: 317, type: !684)
!6066 = !DILocation(line: 0, scope: !6062)
!6067 = !DILocation(line: 317, column: 1, scope: !6062)
!6068 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_base_address", scope: !669, file: !669, line: 316, type: !6069, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6073)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!6071, !6072}
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!6072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!6073 = !{!6074}
!6074 = !DILocalVariable(name: "vec_", arg: 1, scope: !6068, file: !669, line: 316, type: !6072)
!6075 = !DILocation(line: 0, scope: !6068)
!6076 = !DILocation(line: 316, column: 1, scope: !6068)
!6077 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_reserve_exact", scope: !669, file: !669, line: 317, type: !6078, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6080)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{!684, !6055, !684}
!6080 = !{!6081, !6082, !6083}
!6081 = !DILocalVariable(name: "vec_", arg: 1, scope: !6077, file: !669, line: 317, type: !6055)
!6082 = !DILocalVariable(name: "alloc_", arg: 2, scope: !6077, file: !669, line: 317, type: !684)
!6083 = !DILocalVariable(name: "extend", scope: !6077, file: !669, line: 317, type: !684)
!6084 = !DILocation(line: 0, scope: !6077)
!6085 = !DILocation(line: 317, column: 1, scope: !6077)
!6086 = !DILocation(line: 317, column: 1, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6077, file: !669, line: 317, column: 1)
!6088 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_base_space", scope: !669, file: !669, line: 316, type: !6089, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6091)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!684, !6072, !684}
!6091 = !{!6092, !6093}
!6092 = !DILocalVariable(name: "vec_", arg: 1, scope: !6088, file: !669, line: 316, type: !6072)
!6093 = !DILocalVariable(name: "alloc_", arg: 2, scope: !6088, file: !669, line: 316, type: !684)
!6094 = !DILocation(line: 0, scope: !6088)
!6095 = !DILocation(line: 316, column: 1, scope: !6088)
!6096 = distinct !DISubprogram(name: "inline_indirect_intraprocedural_analysis", scope: !3, file: !3, line: 1918, type: !2200, scopeLine: 1919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6097)
!6097 = !{!6098, !6099}
!6098 = !DILocalVariable(name: "node", arg: 1, scope: !6096, file: !3, line: 1918, type: !2087)
!6099 = !DILocalVariable(name: "cs", scope: !6096, file: !3, line: 1920, type: !2092)
!6100 = !DILocation(line: 0, scope: !6096)
!6101 = !DILocation(line: 1922, column: 8, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 1922, column: 7)
!6103 = !DILocation(line: 1922, column: 7, scope: !6096)
!6104 = !DILocation(line: 1924, column: 7, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 1923, column: 5)
!6106 = !DILocation(line: 1925, column: 7, scope: !6105)
!6107 = !DILocation(line: 1926, column: 5, scope: !6105)
!6108 = !DILocation(line: 1927, column: 3, scope: !6096)
!6109 = !DILocation(line: 1929, column: 8, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 1929, column: 7)
!6111 = !DILocation(line: 1929, column: 7, scope: !6096)
!6112 = !DILocation(line: 1930, column: 21, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 1930, column: 5)
!6114 = !DILocation(line: 1930, column: 10, scope: !6113)
!6115 = !DILocation(line: 0, scope: !6113)
!6116 = !DILocation(line: 1930, column: 5, scope: !6113)
!6117 = !DILocation(line: 1932, column: 2, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 1931, column: 7)
!6119 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 1930, column: 5)
!6120 = !DILocation(line: 1933, column: 2, scope: !6118)
!6121 = !DILocation(line: 1930, column: 43, scope: !6119)
!6122 = !DILocation(line: 1930, column: 5, scope: !6119)
!6123 = distinct !{!6123, !6116, !6124}
!6124 = !DILocation(line: 1934, column: 7, scope: !6113)
!6125 = !DILocation(line: 1936, column: 7, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 1936, column: 7)
!6127 = !DILocation(line: 1936, column: 7, scope: !6096)
!6128 = !DILocation(line: 1938, column: 7, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 1937, column: 5)
!6130 = !DILocation(line: 1939, column: 38, scope: !6129)
!6131 = !DILocation(line: 1939, column: 7, scope: !6129)
!6132 = !DILocation(line: 1940, column: 5, scope: !6129)
!6133 = !DILocation(line: 1941, column: 1, scope: !6096)
!6134 = distinct !DISubprogram(name: "gt_pch_pa_order", scope: !2449, file: !2449, line: 39, type: !6135, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6138)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{null, !688, !688, !6137, !688}
!6137 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !2453, line: 38, baseType: !1257)
!6138 = !{!6139, !6140, !6141, !6142, !6143}
!6139 = !DILocalVariable(name: "this_obj", arg: 1, scope: !6134, file: !2449, line: 39, type: !688)
!6140 = !DILocalVariable(name: "x_p", arg: 2, scope: !6134, file: !2449, line: 40, type: !688)
!6141 = !DILocalVariable(name: "op", arg: 3, scope: !6134, file: !2449, line: 41, type: !6137)
!6142 = !DILocalVariable(name: "cookie", arg: 4, scope: !6134, file: !2449, line: 42, type: !688)
!6143 = !DILocalVariable(name: "i0", scope: !6144, file: !2449, line: 45, type: !693)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !2449, line: 44, column: 22)
!6145 = distinct !DILexicalBlock(scope: !6134, file: !2449, line: 44, column: 7)
!6146 = !DILocation(line: 0, scope: !6134)
!6147 = !DILocation(line: 44, column: 7, scope: !6145)
!6148 = !DILocation(line: 44, column: 13, scope: !6145)
!6149 = !DILocation(line: 44, column: 7, scope: !6134)
!6150 = !DILocation(line: 0, scope: !6144)
!6151 = !DILocation(line: 50, column: 26, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6144, file: !2449, line: 50, column: 9)
!6153 = !DILocation(line: 50, column: 9, scope: !6144)
!6154 = !DILocation(line: 51, column: 7, scope: !6152)
!6155 = !DILocation(line: 53, column: 1, scope: !6134)
