; ModuleID = 'c-lang.bc'
source_filename = "c-lang.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
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
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
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
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.ggc_cache_tab = type { %struct.htab**, i64, i64, void (i8*)*, void (i8*)*, i32 (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@c_language = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"GNU C\00", align 1
@c_common_attribute_table = external dso_local constant [0 x %struct.attribute_spec], align 8
@c_common_format_attribute_table = external dso_local constant [0 x %struct.attribute_spec], align 8
@lang_hooks = dso_local local_unnamed_addr global %struct.lang_hooks { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 80, void (%union.tree_node*)* @lhd_do_nothing_t, i64 (i32)* @lhd_tree_size, i32 (i32, i8**)* @c_common_init_options, void (%struct.diagnostic_context*)* @c_initialize_diagnostics, i32 (i64, i8*, i32)* @c_common_handle_option, i8 (i8*, i64)* @c_common_missing_argument, i8 (i8**)* @c_common_post_options, i8 ()* @c_objc_common_init, void ()* @c_common_finish, void (i32)* @c_common_parse_file, i8 (%union.tree_node*)* @c_missing_noreturn_ok_p, i32 (%union.tree_node*)* @c_common_get_alias_set, void (%union.tree_node*)* @c_finish_incomplete_decl, void (%union.tree_node*)* @lhd_do_nothing_t, void (%union.tree_node*)* @lhd_set_decl_assembler_name, void ()* @lhd_do_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @lhd_print_tree_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @lhd_print_tree_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @lhd_print_tree_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @c_print_identifier, i8* (%union.tree_node*, i32)* @lhd_decl_printable_name, i8* (%union.tree_node*, i32)* @lhd_dwarf_name, i32 (%union.tree_node*, %union.tree_node*)* @c_types_compatible_p, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)* @lhd_print_error_function, i64 (i64)* @c_common_to_target_charset, %struct.attribute_spec* null, %struct.attribute_spec* getelementptr inbounds ([0 x %struct.attribute_spec], [0 x %struct.attribute_spec]* @c_common_attribute_table, i32 0, i32 0), %struct.attribute_spec* getelementptr inbounds ([0 x %struct.attribute_spec], [0 x %struct.attribute_spec]* @c_common_format_attribute_table, i32 0, i32 0), %struct.lang_hooks_for_tree_inlining { i8 (%union.tree_node*, %union.tree_node*)* @c_vla_unspec_p }, %struct.lang_hooks_for_callgraph { %union.tree_node* (%union.tree_node**, i32*)* @lhd_callgraph_analyze_expr }, %struct.lang_hooks_for_tree_dump { i8 (i8*, %union.tree_node*)* @c_dump_tree, i32 (%union.tree_node*)* @lhd_tree_dump_type_quals }, %struct.lang_hooks_for_decls { i32 ()* @global_bindings_p, %union.tree_node* (%union.tree_node*)* @pushdecl, %union.tree_node* ()* @lhd_return_null_tree_v, i8 (%union.tree_node*)* @hook_bool_tree_false, i8 (%union.tree_node*)* @hook_bool_const_tree_false, i8 (%union.tree_node*, %union.tree_node*)* @hook_bool_tree_tree_false, %union.tree_node* (%union.tree_node*)* @hook_tree_const_tree_null, i8 (%union.tree_node*)* @c_warn_unused_global_decl, void ()* @c_write_global_declarations, i8 (%union.tree_node*)* @lhd_decl_ok_for_sibcall, i8 (%union.tree_node*)* @hook_bool_const_tree_false, i32 (%union.tree_node*)* @c_omp_predetermined_sharing, i8 (%union.tree_node*, i8)* @hook_bool_tree_bool_false, i8 (%union.tree_node*, i8)* @hook_bool_tree_bool_false, i8 (%union.tree_node*)* @hook_bool_tree_false, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* @hook_tree_tree_tree_tree_null, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* @lhd_omp_assignment, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* @lhd_omp_assignment, %union.tree_node* (%union.tree_node*, %union.tree_node*)* @hook_tree_tree_tree_null, void (%union.tree_node*)* @hook_void_tree }, %struct.lang_hooks_for_types { %union.tree_node* (i32)* @lhd_make_node, i32 (%union.tree_node*)* null, %union.tree_node* (i32, i32)* @c_common_type_for_mode, %union.tree_node* (i32, i32)* @c_common_type_for_size, i8 (%union.tree_node*)* @hook_bool_const_tree_false, %union.tree_node* (%union.tree_node*)* @hook_tree_const_tree_null, %union.tree_node* (%union.tree_node*)* @c_type_promotes_to, void (%union.tree_node*, i8*)* @c_register_builtin_type, void (%union.tree_node*, %union.tree_node*)* @c_incomplete_type_error, %union.tree_node* (%union.tree_node*)* @lhd_return_null_const_tree, void (%struct.gimplify_omp_ctx*, %union.tree_node*)* @lhd_omp_firstprivatize_type_sizes, i8 (%union.tree_node*, %union.tree_node*)* null, i8 (%union.tree_node*, %struct.array_descr_info*)* null, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)* null, %union.tree_node* (%union.tree_node*, %union.tree_node*)* @reconstruct_complex_type, i8 1 }, %struct.lang_hooks_for_lto { void (i8*)* @lhd_begin_section, void (i8*, i64, i8*)* @lhd_append_data, void ()* @lhd_end_section }, %union.tree_node* (%union.tree_node*)* @hook_tree_const_tree_null, %union.tree_node* (%union.tree_node*)* @hook_tree_const_tree_null, i8 (%union.tree_node*)* @hook_bool_const_tree_false, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)* @c_gimplify_expr, %union.tree_node* (%union.tree_node*, %union.tree_node*)* null, %union.tree_node* (%union.tree_node*)* @c_builtin_function, %union.tree_node* (%union.tree_node*)* @c_builtin_function_ext_scope, void ()* @lhd_do_nothing, %union.tree_node* (%union.tree_node*, i8*, i8*)* @c_expr_to_decl, %union.tree_node* ()* @lhd_gcc_personality, %union.tree_node* (%union.tree_node*)* @lhd_pass_through_t, i8 0 }, align 8, !dbg !428
@gt_ggc_r_gt_coverage_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_caller_save_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_alias_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cselib_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cgraph_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_ipa_inline_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dbxout_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dwarf2out_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dwarf2asm_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_vect_generic_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dojump_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_emit_rtl_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_explow_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_expr_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_function_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_except_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_gcse_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_optabs_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_reginfo_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cfglayout_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_sdbout_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_stor_layout_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_stringpool_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_varasm_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_mudflap_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_ssa_address_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_gimplify_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_scalar_evolution_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_profile_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_nested_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_varpool_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_parloops_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_omp_low_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_targhooks_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_i386_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_passes_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cgraphunit_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_ssa_propagate_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_ipa_reference_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gtype_desc_c = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_common_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_pragma_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_parser_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_decl_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rtab = dso_local local_unnamed_addr constant [46 x %struct.ggc_root_tab*] [%struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_coverage_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_caller_save_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_alias_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_cselib_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_cgraph_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_ipa_inline_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_dbxout_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_dwarf2out_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_dwarf2asm_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_vect_generic_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_dojump_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_emit_rtl_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_explow_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_expr_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_function_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_except_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_gcse_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_optabs_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_reginfo_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_cfglayout_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_sdbout_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_stor_layout_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_stringpool_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_varasm_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_mudflap_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_ssa_address_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_gimplify_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_scalar_evolution_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_profile_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_nested_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_varpool_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_parloops_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_omp_low_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_targhooks_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_i386_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_passes_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_cgraphunit_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_tree_ssa_propagate_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_ipa_reference_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gtype_desc_c, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_c_common_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_c_pragma_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_c_parser_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_r_gt_c_decl_h, i32 0, i32 0), %struct.ggc_root_tab* null], align 16, !dbg !1960
@gt_ggc_rd_gt_alias_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_bitmap_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_emit_rtl_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_lists_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_gimple_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_tree_iterator_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_tree_phinodes_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_c_common_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_c_decl_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_deletable_rtab = dso_local local_unnamed_addr constant [10 x %struct.ggc_root_tab*] [%struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_alias_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_bitmap_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_emit_rtl_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_lists_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_gimple_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_tree_iterator_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_tree_phinodes_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_c_common_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_ggc_rd_gt_c_decl_h, i32 0, i32 0), %struct.ggc_root_tab* null], align 16, !dbg !1978
@gt_ggc_rc_gt_emit_rtl_h = external dso_local constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_function_h = external dso_local constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_tree_h = external dso_local constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_varasm_h = external dso_local constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_i386_h = external dso_local constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_tree_ssa_structalias_h = external dso_local constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_lto_symtab_h = external dso_local constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_cache_rtab = dso_local local_unnamed_addr constant [8 x %struct.ggc_cache_tab*] [%struct.ggc_cache_tab* getelementptr inbounds ([0 x %struct.ggc_cache_tab], [0 x %struct.ggc_cache_tab]* @gt_ggc_rc_gt_emit_rtl_h, i32 0, i32 0), %struct.ggc_cache_tab* getelementptr inbounds ([0 x %struct.ggc_cache_tab], [0 x %struct.ggc_cache_tab]* @gt_ggc_rc_gt_function_h, i32 0, i32 0), %struct.ggc_cache_tab* getelementptr inbounds ([0 x %struct.ggc_cache_tab], [0 x %struct.ggc_cache_tab]* @gt_ggc_rc_gt_tree_h, i32 0, i32 0), %struct.ggc_cache_tab* getelementptr inbounds ([0 x %struct.ggc_cache_tab], [0 x %struct.ggc_cache_tab]* @gt_ggc_rc_gt_varasm_h, i32 0, i32 0), %struct.ggc_cache_tab* getelementptr inbounds ([0 x %struct.ggc_cache_tab], [0 x %struct.ggc_cache_tab]* @gt_ggc_rc_gt_i386_h, i32 0, i32 0), %struct.ggc_cache_tab* getelementptr inbounds ([0 x %struct.ggc_cache_tab], [0 x %struct.ggc_cache_tab]* @gt_ggc_rc_gt_tree_ssa_structalias_h, i32 0, i32 0), %struct.ggc_cache_tab* getelementptr inbounds ([0 x %struct.ggc_cache_tab], [0 x %struct.ggc_cache_tab]* @gt_ggc_rc_gt_lto_symtab_h, i32 0, i32 0), %struct.ggc_cache_tab* null], align 16, !dbg !1983
@gt_pch_rc_gt_emit_rtl_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_function_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_tree_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_varasm_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_i386_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_tree_ssa_structalias_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_lto_symtab_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_cache_rtab = dso_local local_unnamed_addr constant [8 x %struct.ggc_root_tab*] [%struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rc_gt_emit_rtl_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rc_gt_function_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rc_gt_tree_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rc_gt_varasm_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rc_gt_i386_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rc_gt_tree_ssa_structalias_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rc_gt_lto_symtab_h, i32 0, i32 0), %struct.ggc_root_tab* null], align 16, !dbg !2003
@gt_pch_rs_gt_alias_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_cgraph_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_dbxout_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_dwarf2out_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_dwarf2asm_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_tree_vect_generic_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_emit_rtl_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_function_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_except_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_sdbout_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_tree_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_varasm_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_gimplify_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_omp_low_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gtype_desc_c = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_c_common_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_c_decl_h = external dso_local constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_scalar_rtab = dso_local local_unnamed_addr constant [18 x %struct.ggc_root_tab*] [%struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_alias_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_cgraph_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_dbxout_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_dwarf2out_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_dwarf2asm_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_tree_vect_generic_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_emit_rtl_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_function_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_except_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_sdbout_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_tree_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_varasm_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_gimplify_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_omp_low_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gtype_desc_c, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_c_common_h, i32 0, i32 0), %struct.ggc_root_tab* getelementptr inbounds ([0 x %struct.ggc_root_tab], [0 x %struct.ggc_root_tab]* @gt_pch_rs_gt_c_decl_h, i32 0, i32 0), %struct.ggc_root_tab* null], align 16, !dbg !2006

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2015 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2022, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2023, metadata !DIExpression()), !dbg !2024
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2025
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !2026
  ret i32 %call, !dbg !2027
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2028 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2030
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !2031
  ret i32 %call, !dbg !2032
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2033 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2037, metadata !DIExpression()), !dbg !2038
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2039
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2039
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2039
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2039
  %cmp = icmp uge i8* %0, %1, !dbg !2039
  %conv1 = zext i1 %cmp to i64, !dbg !2039
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2039
  %tobool = icmp eq i64 %expval, 0, !dbg !2039
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2039

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !2039
  br label %cond.end, !dbg !2039

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2039
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2039
  %2 = load i8, i8* %0, align 1, !dbg !2039
  %conv3 = zext i8 %2 to i32, !dbg !2039
  br label %cond.end, !dbg !2039

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2039
  ret i32 %cond, !dbg !2040
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2043, metadata !DIExpression()), !dbg !2044
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2045
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2045
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2045
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2045
  %cmp = icmp uge i8* %0, %1, !dbg !2045
  %conv1 = zext i1 %cmp to i64, !dbg !2045
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2045
  %tobool = icmp eq i64 %expval, 0, !dbg !2045
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2045

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !2045
  br label %cond.end, !dbg !2045

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2045
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2045
  %2 = load i8, i8* %0, align 1, !dbg !2045
  %conv3 = zext i8 %2 to i32, !dbg !2045
  br label %cond.end, !dbg !2045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2045
  ret i32 %cond, !dbg !2046
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2047 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2048
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2048
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2048
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2048
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2048
  %cmp = icmp uge i8* %1, %2, !dbg !2048
  %conv1 = zext i1 %cmp to i64, !dbg !2048
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2048
  %tobool = icmp eq i64 %expval, 0, !dbg !2048
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2048

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !2048
  br label %cond.end, !dbg !2048

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2048
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2048
  %3 = load i8, i8* %1, align 1, !dbg !2048
  %conv3 = zext i8 %3 to i32, !dbg !2048
  br label %cond.end, !dbg !2048

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2048
  ret i32 %cond, !dbg !2049
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2054, metadata !DIExpression()), !dbg !2055
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2056
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !2057
  ret i32 %call, !dbg !2058
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2064, metadata !DIExpression()), !dbg !2065
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2066
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2066
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2066
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2066
  %cmp = icmp uge i8* %0, %1, !dbg !2066
  %conv1 = zext i1 %cmp to i64, !dbg !2066
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2066
  %tobool = icmp eq i64 %expval, 0, !dbg !2066
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2066

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2066
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !2066
  br label %cond.end, !dbg !2066

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2066
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2066
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2066
  store i8 %conv2, i8* %0, align 1, !dbg !2066
  %conv6 = and i32 %__c, 255, !dbg !2066
  br label %cond.end, !dbg !2066

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2066
  ret i32 %cond, !dbg !2067
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2071, metadata !DIExpression()), !dbg !2072
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2073
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2073
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2073
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2073
  %cmp = icmp uge i8* %0, %1, !dbg !2073
  %conv1 = zext i1 %cmp to i64, !dbg !2073
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2073
  %tobool = icmp eq i64 %expval, 0, !dbg !2073
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2073

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2073
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !2073
  br label %cond.end, !dbg !2073

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2073
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2073
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2073
  store i8 %conv2, i8* %0, align 1, !dbg !2073
  %conv6 = and i32 %__c, 255, !dbg !2073
  br label %cond.end, !dbg !2073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2073
  ret i32 %cond, !dbg !2074
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2077, metadata !DIExpression()), !dbg !2078
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2079
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2079
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2079
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2079
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2079
  %cmp = icmp uge i8* %1, %2, !dbg !2079
  %conv1 = zext i1 %cmp to i64, !dbg !2079
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2079
  %tobool = icmp eq i64 %expval, 0, !dbg !2079
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2079

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2079
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !2079
  br label %cond.end, !dbg !2079

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2079
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2079
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2079
  store i8 %conv4, i8* %1, align 1, !dbg !2079
  %conv6 = and i32 %__c, 255, !dbg !2079
  br label %cond.end, !dbg !2079

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2079
  ret i32 %cond, !dbg !2080
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2081 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2087, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2089, metadata !DIExpression()), !dbg !2090
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !2091
  ret i64 %call, !dbg !2092
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2095, metadata !DIExpression()), !dbg !2096
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2097
  %0 = load i32, i32* %_flags, align 8, !dbg !2097
  %and = lshr i32 %0, 4, !dbg !2097
  %and.lobit = and i32 %and, 1, !dbg !2097
  ret i32 %and.lobit, !dbg !2098
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2101, metadata !DIExpression()), !dbg !2102
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2103
  %0 = load i32, i32* %_flags, align 8, !dbg !2103
  %and = lshr i32 %0, 5, !dbg !2103
  %and.lobit = and i32 %and, 1, !dbg !2103
  ret i32 %and.lobit, !dbg !2104
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2108, metadata !DIExpression()), !dbg !2109
  %__c.off = add i32 %__c, 128, !dbg !2110
  %0 = icmp ult i32 %__c.off, 384, !dbg !2110
  br i1 %0, label %cond.true, label %cond.end, !dbg !2110

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !2111
  %1 = load i32*, i32** %call, align 8, !dbg !2112
  %idxprom = sext i32 %__c to i64, !dbg !2113
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2113
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2113
  br label %cond.end, !dbg !2114

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2114
  ret i32 %cond, !dbg !2115
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2116 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2118, metadata !DIExpression()), !dbg !2119
  %__c.off = add i32 %__c, 128, !dbg !2120
  %0 = icmp ult i32 %__c.off, 384, !dbg !2120
  br i1 %0, label %cond.true, label %cond.end, !dbg !2120

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !2121
  %1 = load i32*, i32** %call, align 8, !dbg !2122
  %idxprom = sext i32 %__c to i64, !dbg !2123
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2123
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2123
  br label %cond.end, !dbg !2124

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2124
  ret i32 %cond, !dbg !2125
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2126 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2131, metadata !DIExpression()), !dbg !2132
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !2133
  %conv = trunc i64 %call to i32, !dbg !2134
  ret i32 %conv, !dbg !2135
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2136 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2140, metadata !DIExpression()), !dbg !2141
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !2142
  ret i64 %call, !dbg !2143
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2149, metadata !DIExpression()), !dbg !2150
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !2151
  ret i64 %call, !dbg !2152
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2159, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2160, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2161, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2162, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2163, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 0, metadata !2164, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2165, metadata !DIExpression()), !dbg !2169
  br label %while.cond, !dbg !2170

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2171
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2169
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2165, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2164, metadata !DIExpression()), !dbg !2169
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2172
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2170

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2173
  %div = lshr i64 %add, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %div, metadata !2166, metadata !DIExpression()), !dbg !2169
  %mul = mul i64 %div, %__size, !dbg !2176
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2177
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2167, metadata !DIExpression()), !dbg !2169
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %call, metadata !2168, metadata !DIExpression()), !dbg !2169
  %cmp1 = icmp slt i32 %call, 0, !dbg !2179
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2181

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2182
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2184

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2164, metadata !DIExpression()), !dbg !2169
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2169
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2169
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2165, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2164, metadata !DIExpression()), !dbg !2169
  br label %while.cond, !dbg !2170, !llvm.loop !2186

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2169
  ret i8* %retval.0, !dbg !2188
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2195, metadata !DIExpression()), !dbg !2196
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !2197
  ret double %call, !dbg !2198
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2199 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2208, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2209, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 %base, metadata !2210, metadata !DIExpression()), !dbg !2211
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !2212
  ret i64 %call, !dbg !2213
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2214 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2220, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i32 %base, metadata !2222, metadata !DIExpression()), !dbg !2223
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !2224
  ret i64 %call, !dbg !2225
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2226 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2238, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %base, metadata !2239, metadata !DIExpression()), !dbg !2240
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !2241
  ret i64 %call, !dbg !2242
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2243 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %base, metadata !2249, metadata !DIExpression()), !dbg !2250
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !2251
  ret i64 %call, !dbg !2252
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2295, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2296, metadata !DIExpression()), !dbg !2297
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !2298
  ret i32 %call, !dbg !2299
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2300 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2302, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2303, metadata !DIExpression()), !dbg !2304
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !2305
  ret i32 %call, !dbg !2306
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2307 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2311, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2312, metadata !DIExpression()), !dbg !2313
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !2314
  ret i32 %call, !dbg !2315
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2316 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2320, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2323, metadata !DIExpression()), !dbg !2324
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !2325
  ret i32 %call, !dbg !2326
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2327 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2331, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2333, metadata !DIExpression()), !dbg !2334
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2333, metadata !DIExpression(DW_OP_deref)), !dbg !2334
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !2335
  ret i32 %call, !dbg !2336
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2337 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2344, metadata !DIExpression()), !dbg !2345
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2344, metadata !DIExpression(DW_OP_deref)), !dbg !2345
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !2346
  ret i32 %call, !dbg !2347
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2348 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2373, metadata !DIExpression()), !dbg !2374
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !2375
  ret i32 %call, !dbg !2376
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2377 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2380, metadata !DIExpression()), !dbg !2381
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !2382
  ret i32 %call, !dbg !2383
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2384 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2389, metadata !DIExpression()), !dbg !2390
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !2391
  ret i32 %call, !dbg !2392
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2393 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2397, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2398, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2400, metadata !DIExpression()), !dbg !2401
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !2402
  ret i32 %call, !dbg !2403
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

declare dso_local void @lhd_do_nothing_t(%union.tree_node*) #1

declare dso_local i64 @lhd_tree_size(i32) #1

declare dso_local i32 @c_common_init_options(i32, i8**) #1

declare dso_local void @c_initialize_diagnostics(%struct.diagnostic_context*) #1

declare dso_local i32 @c_common_handle_option(i64, i8*, i32) #1

declare dso_local zeroext i8 @c_common_missing_argument(i8*, i64) #1

declare dso_local zeroext i8 @c_common_post_options(i8**) #1

declare dso_local zeroext i8 @c_objc_common_init() #1

declare dso_local void @c_common_finish() #1

declare dso_local void @c_common_parse_file(i32) #1

declare dso_local zeroext i8 @c_missing_noreturn_ok_p(%union.tree_node*) #1

declare dso_local i32 @c_common_get_alias_set(%union.tree_node*) #1

declare dso_local void @c_finish_incomplete_decl(%union.tree_node*) #1

declare dso_local void @lhd_set_decl_assembler_name(%union.tree_node*) #1

declare dso_local void @lhd_do_nothing() #1

declare dso_local void @lhd_print_tree_nothing(%struct._IO_FILE*, %union.tree_node*, i32) #1

declare dso_local void @c_print_identifier(%struct._IO_FILE*, %union.tree_node*, i32) #1

declare dso_local i8* @lhd_decl_printable_name(%union.tree_node*, i32) #1

declare dso_local i8* @lhd_dwarf_name(%union.tree_node*, i32) #1

declare dso_local i32 @c_types_compatible_p(%union.tree_node*, %union.tree_node*) #1

declare dso_local void @lhd_print_error_function(%struct.diagnostic_context*, i8*, %struct.diagnostic_info*) #1

declare dso_local i64 @c_common_to_target_charset(i64) #1

declare dso_local zeroext i8 @c_vla_unspec_p(%union.tree_node*, %union.tree_node*) #1

declare dso_local %union.tree_node* @lhd_callgraph_analyze_expr(%union.tree_node**, i32*) #1

declare dso_local zeroext i8 @c_dump_tree(i8*, %union.tree_node*) #1

declare dso_local i32 @lhd_tree_dump_type_quals(%union.tree_node*) #1

declare dso_local i32 @global_bindings_p() #1

declare dso_local %union.tree_node* @pushdecl(%union.tree_node*) #1

declare dso_local %union.tree_node* @lhd_return_null_tree_v() #1

declare dso_local zeroext i8 @hook_bool_tree_false(%union.tree_node*) #1

declare dso_local zeroext i8 @hook_bool_const_tree_false(%union.tree_node*) #1

declare dso_local zeroext i8 @hook_bool_tree_tree_false(%union.tree_node*, %union.tree_node*) #1

declare dso_local %union.tree_node* @hook_tree_const_tree_null(%union.tree_node*) #1

declare dso_local zeroext i8 @c_warn_unused_global_decl(%union.tree_node*) #1

declare dso_local void @c_write_global_declarations() #1

declare dso_local zeroext i8 @lhd_decl_ok_for_sibcall(%union.tree_node*) #1

declare dso_local i32 @c_omp_predetermined_sharing(%union.tree_node*) #1

declare dso_local zeroext i8 @hook_bool_tree_bool_false(%union.tree_node*, i8 zeroext) #1

declare dso_local %union.tree_node* @hook_tree_tree_tree_tree_null(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare dso_local %union.tree_node* @lhd_omp_assignment(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare dso_local %union.tree_node* @hook_tree_tree_tree_null(%union.tree_node*, %union.tree_node*) #1

declare dso_local void @hook_void_tree(%union.tree_node*) #1

declare dso_local %union.tree_node* @lhd_make_node(i32) #1

declare dso_local %union.tree_node* @c_common_type_for_mode(i32, i32) #1

declare dso_local %union.tree_node* @c_common_type_for_size(i32, i32) #1

declare dso_local %union.tree_node* @c_type_promotes_to(%union.tree_node*) #1

declare dso_local void @c_register_builtin_type(%union.tree_node*, i8*) #1

declare dso_local void @c_incomplete_type_error(%union.tree_node*, %union.tree_node*) #1

declare dso_local %union.tree_node* @lhd_return_null_const_tree(%union.tree_node*) #1

declare dso_local void @lhd_omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx*, %union.tree_node*) #1

declare dso_local %union.tree_node* @reconstruct_complex_type(%union.tree_node*, %union.tree_node*) #1

declare dso_local void @lhd_begin_section(i8*) #1

declare dso_local void @lhd_append_data(i8*, i64, i8*) #1

declare dso_local void @lhd_end_section() #1

declare dso_local i32 @c_gimplify_expr(%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**) #1

declare dso_local %union.tree_node* @c_builtin_function(%union.tree_node*) #1

declare dso_local %union.tree_node* @c_builtin_function_ext_scope(%union.tree_node*) #1

declare dso_local %union.tree_node* @c_expr_to_decl(%union.tree_node*, i8*, i8*) #1

declare dso_local %union.tree_node* @lhd_gcc_personality() #1

declare dso_local %union.tree_node* @lhd_pass_through_t(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define dso_local void @finish_file() local_unnamed_addr #3 !dbg !2404 {
entry:
  ret void, !dbg !2405
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2011, !2012, !2013}
!llvm.ident = !{!2014}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c_language", scope: !2, file: !3, line: 38, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !417, globals: !427, nameTableKind: None)
!3 = !DIFile(filename: "c-lang.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !208, !214, !219, !224, !242, !249, !256, !262, !267, !283, !289}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_language_kind", file: !6, line: 378, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./c-common.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "clk_c", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "clk_objc", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "clk_cxx", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "clk_objcxx", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !14, line: 39, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!16 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!34 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!35 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!36 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!37 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!38 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!39 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!40 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!41 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!42 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!43 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!44 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!45 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!46 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!47 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!48 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!50 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!51 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!52 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!53 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!54 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!55 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!56 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!57 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!58 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!59 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!60 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!61 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!62 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!63 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!64 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!65 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!66 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!67 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!68 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!69 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!70 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!71 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!72 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!73 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!74 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!75 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!76 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!77 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!78 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!79 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!80 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!81 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!82 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!83 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!84 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!85 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!86 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!87 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!88 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!89 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!90 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!91 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!92 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!93 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!94 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!95 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!96 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!97 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!98 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!99 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!100 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!101 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!102 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!103 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!104 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!105 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!106 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!107 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!108 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!109 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!110 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!111 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!112 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!113 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!114 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!115 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!116 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!117 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!118 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!119 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!120 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!121 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!122 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!123 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!124 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!125 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!126 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!127 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!128 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!129 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!130 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!131 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!132 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!133 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!134 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!135 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!136 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!137 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!138 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!139 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!140 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!141 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!142 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!143 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!144 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!145 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!146 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!147 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!148 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!149 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!150 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!151 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!152 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!153 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!154 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!155 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!156 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!157 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!158 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!159 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!160 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!161 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!162 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!163 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!164 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!165 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!166 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!167 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!168 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!180 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!181 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!182 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!183 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!184 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!185 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!193 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!194 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!195 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!196 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!197 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!198 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!199 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!200 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!201 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!202 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!203 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!204 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!205 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!206 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!207 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !209, line: 363, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!210 = !{!211, !212, !213}
!211 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!212 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!213 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !209, line: 355, baseType: !7, size: 32, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !220, line: 474, baseType: !7, size: 32, elements: !221)
!220 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!221 = !{!222, !223}
!222 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!223 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !14, line: 280, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!226 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!235 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !14, line: 1817, baseType: !7, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !14, line: 1805, baseType: !7, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!252 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!253 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!254 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!255 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 104, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!258 = !{!259, !260, !261}
!259 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!260 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!261 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 46, baseType: !7, size: 32, elements: !263)
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!265 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!266 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 29, baseType: !7, size: 32, elements: !269)
!268 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!270 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!271 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!272 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!273 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!274 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!275 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!276 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!277 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!278 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!279 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!280 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!281 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!282 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "classify_record", file: !284, line: 36, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./langhooks.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!285 = !{!286, !287, !288}
!286 = !DIEnumerator(name: "RECORD_IS_STRUCT", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "RECORD_IS_CLASS", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "RECORD_IS_INTERFACE", value: 2, isUnsigned: true)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !290, line: 7, baseType: !7, size: 32, elements: !291)
!290 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!292 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!293 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!294 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!295 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!296 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!297 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!298 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!299 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!300 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!301 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!302 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!303 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!304 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!305 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!306 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!307 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!308 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!309 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!310 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!311 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!312 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!313 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!314 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!315 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!316 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!317 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!318 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!319 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!320 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!321 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!322 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!323 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!324 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!325 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!326 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!327 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!328 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!329 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!330 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!331 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!332 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!333 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!334 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!335 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!336 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!337 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!338 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!339 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!340 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!341 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!342 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!343 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!344 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!345 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!346 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!347 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!348 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!349 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!350 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!351 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!352 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!353 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!354 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!355 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!356 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!357 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!358 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!359 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!360 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!361 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!362 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!363 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!364 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!365 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!366 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!367 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!368 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!369 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!370 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!371 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!372 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!373 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!374 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!375 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!376 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!377 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!378 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!379 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!380 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!384 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!385 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!386 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!387 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!389 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!390 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!391 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!392 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!393 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!394 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!395 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!396 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!397 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!398 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!399 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!400 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!401 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!402 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!403 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!404 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!405 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!406 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!407 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!408 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!409 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!410 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!411 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!412 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!413 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!414 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!415 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!416 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!417 = !{!418, !419, !420, !421, !424, !425}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!420 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!427 = !{!0, !428, !1960, !1978, !1983, !2003, !2006}
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "lang_hooks", scope: !2, file: !3, line: 49, type: !430, isLocal: false, isDefinition: true)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_hooks", file: !284, line: 250, size: 5440, elements: !431)
!431 = !{!432, !433, !437, !1495, !1499, !1504, !1715, !1719, !1723, !1727, !1731, !1735, !1739, !1743, !1747, !1748, !1749, !1750, !1751, !1756, !1757, !1758, !1759, !1763, !1764, !1768, !1773, !1777, !1795, !1796, !1797, !1804, !1812, !1826, !1876, !1929, !1941, !1942, !1943, !1944, !1949, !1950, !1951, !1952, !1953, !1957, !1958, !1959}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !284, line: 253, baseType: !425, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_size", scope: !430, file: !284, line: 257, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !435, line: 46, baseType: !436)
!435 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!436 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "free_lang_data", scope: !430, file: !284, line: 260, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !442, line: 56, baseType: !443)
!442 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !14, line: 3371, size: 1792, elements: !445)
!445 = !{!446, !479, !485, !497, !504, !511, !516, !525, !531, !544, !556, !594, !602, !630, !638, !639, !644, !653, !659, !664, !668, !672, !1135, !1184, !1190, !1196, !1203, !1214, !1239, !1256, !1268, !1290, !1305, !1477}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !444, file: !14, line: 3372, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !14, line: 360, size: 64, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !447, file: !14, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !447, file: !14, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !447, file: !14, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !447, file: !14, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !447, file: !14, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !447, file: !14, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !447, file: !14, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !447, file: !14, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !447, file: !14, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !447, file: !14, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !447, file: !14, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !447, file: !14, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !447, file: !14, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !447, file: !14, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !447, file: !14, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !447, file: !14, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !447, file: !14, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !447, file: !14, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !447, file: !14, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !447, file: !14, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !447, file: !14, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !447, file: !14, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !447, file: !14, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !447, file: !14, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !447, file: !14, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !447, file: !14, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !447, file: !14, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !447, file: !14, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !447, file: !14, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !447, file: !14, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !444, file: !14, line: 3373, baseType: !480, size: 192)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !14, line: 402, size: 192, elements: !481)
!481 = !{!482, !483, !484}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !480, file: !14, line: 403, baseType: !447, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !480, file: !14, line: 404, baseType: !441, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !14, line: 405, baseType: !441, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !444, file: !14, line: 3374, baseType: !486, size: 320)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !14, line: 1384, size: 320, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !486, file: !14, line: 1385, baseType: !480, size: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !486, file: !14, line: 1386, baseType: !490, size: 128, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !491, line: 58, baseType: !492)
!491 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 54, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !492, file: !491, line: 56, baseType: !436, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !492, file: !491, line: 57, baseType: !496, size: 64, offset: 64)
!496 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !444, file: !14, line: 3375, baseType: !498, size: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !14, line: 1397, size: 256, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !498, file: !14, line: 1398, baseType: !480, size: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !498, file: !14, line: 1399, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !14, line: 1392, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !444, file: !14, line: 3376, baseType: !505, size: 256)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !14, line: 1408, size: 256, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !505, file: !14, line: 1409, baseType: !480, size: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !505, file: !14, line: 1410, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !14, line: 1403, flags: DIFlagFwdDecl)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !444, file: !14, line: 3377, baseType: !512, size: 256)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !14, line: 1437, size: 256, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !512, file: !14, line: 1438, baseType: !480, size: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !512, file: !14, line: 1439, baseType: !441, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !444, file: !14, line: 3378, baseType: !517, size: 256)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !14, line: 1418, size: 256, elements: !518)
!518 = !{!519, !520, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !517, file: !14, line: 1419, baseType: !480, size: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !517, file: !14, line: 1420, baseType: !420, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !517, file: !14, line: 1421, baseType: !522, size: 8, offset: 224)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 8, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 1)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !444, file: !14, line: 3379, baseType: !526, size: 320)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !14, line: 1428, size: 320, elements: !527)
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !526, file: !14, line: 1429, baseType: !480, size: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !526, file: !14, line: 1430, baseType: !441, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !526, file: !14, line: 1431, baseType: !441, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !444, file: !14, line: 3380, baseType: !532, size: 320)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !14, line: 1460, size: 320, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !532, file: !14, line: 1461, baseType: !480, size: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !532, file: !14, line: 1462, baseType: !536, size: 128, offset: 192)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !537, line: 31, size: 128, elements: !538)
!537 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!538 = !{!539, !542, !543}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !536, file: !537, line: 32, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !536, file: !537, line: 33, baseType: !7, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !536, file: !537, line: 34, baseType: !7, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !444, file: !14, line: 3381, baseType: !545, size: 384)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !14, line: 2507, size: 384, elements: !546)
!546 = !{!547, !548, !553, !554, !555}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !545, file: !14, line: 2508, baseType: !480, size: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !545, file: !14, line: 2509, baseType: !549, size: 32, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !550, line: 58, baseType: !551)
!550 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !552, line: 44, baseType: !7)
!552 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !545, file: !14, line: 2510, baseType: !7, size: 32, offset: 224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !14, line: 2511, baseType: !441, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !545, file: !14, line: 2512, baseType: !441, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !444, file: !14, line: 3382, baseType: !557, size: 896)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !14, line: 2652, size: 896, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !557, file: !14, line: 2653, baseType: !545, size: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !557, file: !14, line: 2654, baseType: !441, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !557, file: !14, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !557, file: !14, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !557, file: !14, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !557, file: !14, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !557, file: !14, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !557, file: !14, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !557, file: !14, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !557, file: !14, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !557, file: !14, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !557, file: !14, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !557, file: !14, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !557, file: !14, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !557, file: !14, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !557, file: !14, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !557, file: !14, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !557, file: !14, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !557, file: !14, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !557, file: !14, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !557, file: !14, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !557, file: !14, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !557, file: !14, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !557, file: !14, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !557, file: !14, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !557, file: !14, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !557, file: !14, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !557, file: !14, line: 2703, baseType: !7, size: 32, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !557, file: !14, line: 2705, baseType: !441, size: 64, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !557, file: !14, line: 2706, baseType: !441, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !557, file: !14, line: 2707, baseType: !441, size: 64, offset: 704)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !557, file: !14, line: 2708, baseType: !441, size: 64, offset: 768)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !557, file: !14, line: 2711, baseType: !592, size: 64, offset: 832)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !14, line: 2711, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !444, file: !14, line: 3383, baseType: !595, size: 960)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !14, line: 2756, size: 960, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !595, file: !14, line: 2757, baseType: !557, size: 896)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !595, file: !14, line: 2758, baseType: !599, size: 64, offset: 896)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !442, line: 50, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !442, line: 49, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !444, file: !14, line: 3384, baseType: !603, size: 1472)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !14, line: 3114, size: 1472, elements: !604)
!604 = !{!605, !626, !627, !628, !629}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !603, file: !14, line: 3115, baseType: !606, size: 1216)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !14, line: 2984, size: 1216, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !606, file: !14, line: 2985, baseType: !595, size: 960)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !606, file: !14, line: 2986, baseType: !441, size: 64, offset: 960)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !606, file: !14, line: 2987, baseType: !441, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !606, file: !14, line: 2988, baseType: !441, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !606, file: !14, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !606, file: !14, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !606, file: !14, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !606, file: !14, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !606, file: !14, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !606, file: !14, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !606, file: !14, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !606, file: !14, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !606, file: !14, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !606, file: !14, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !606, file: !14, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !606, file: !14, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !606, file: !14, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !606, file: !14, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !603, file: !14, line: 3117, baseType: !441, size: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !603, file: !14, line: 3119, baseType: !441, size: 64, offset: 1280)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !603, file: !14, line: 3121, baseType: !441, size: 64, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !603, file: !14, line: 3123, baseType: !441, size: 64, offset: 1408)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !444, file: !14, line: 3385, baseType: !631, size: 1088)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !14, line: 2874, size: 1088, elements: !632)
!632 = !{!633, !634, !635}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !631, file: !14, line: 2875, baseType: !595, size: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !631, file: !14, line: 2876, baseType: !599, size: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !631, file: !14, line: 2877, baseType: !636, size: 64, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !14, line: 2856, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !444, file: !14, line: 3386, baseType: !606, size: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !444, file: !14, line: 3387, baseType: !640, size: 1280)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !14, line: 3093, size: 1280, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !640, file: !14, line: 3094, baseType: !606, size: 1216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !640, file: !14, line: 3095, baseType: !636, size: 64, offset: 1216)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !444, file: !14, line: 3388, baseType: !645, size: 1216)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !14, line: 2824, size: 1216, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !645, file: !14, line: 2825, baseType: !557, size: 896)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !645, file: !14, line: 2827, baseType: !441, size: 64, offset: 896)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !645, file: !14, line: 2828, baseType: !441, size: 64, offset: 960)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !645, file: !14, line: 2829, baseType: !441, size: 64, offset: 1024)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !645, file: !14, line: 2830, baseType: !441, size: 64, offset: 1088)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !645, file: !14, line: 2831, baseType: !441, size: 64, offset: 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !444, file: !14, line: 3389, baseType: !654, size: 1024)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !14, line: 2850, size: 1024, elements: !655)
!655 = !{!656, !657, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !654, file: !14, line: 2851, baseType: !595, size: 960)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !654, file: !14, line: 2852, baseType: !420, size: 32, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !654, file: !14, line: 2853, baseType: !420, size: 32, offset: 992)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !444, file: !14, line: 3390, baseType: !660, size: 1024)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !14, line: 2857, size: 1024, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !660, file: !14, line: 2858, baseType: !595, size: 960)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !660, file: !14, line: 2859, baseType: !636, size: 64, offset: 960)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !444, file: !14, line: 3391, baseType: !665, size: 960)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !14, line: 2862, size: 960, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !665, file: !14, line: 2863, baseType: !595, size: 960)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !444, file: !14, line: 3392, baseType: !669, size: 1472)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !14, line: 3304, size: 1472, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !669, file: !14, line: 3305, baseType: !603, size: 1472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !444, file: !14, line: 3393, baseType: !673, size: 1792)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !14, line: 3248, size: 1792, elements: !674)
!674 = !{!675, !676, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !673, file: !14, line: 3249, baseType: !603, size: 1472)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !673, file: !14, line: 3251, baseType: !677, size: 64, offset: 1472)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !679, line: 463, size: 1152, elements: !680)
!679 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!680 = !{!681, !684, !1000, !1001, !1004, !1007, !1057, !1058, !1059, !1060, !1061, !1087, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !678, file: !679, line: 464, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !679, line: 464, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !678, file: !679, line: 467, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !209, line: 374, size: 640, elements: !687)
!687 = !{!688, !975, !976, !989, !990, !991, !992, !993, !994, !996, !998, !999}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !686, file: !209, line: 377, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !442, line: 111, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !209, line: 217, size: 832, elements: !692)
!692 = !{!693, !938, !939, !940, !943, !949, !950, !951, !969, !970, !971, !972, !973, !974}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !691, file: !209, line: 219, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !209, line: 151, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !209, line: 151, size: 128, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !696, file: !209, line: 151, baseType: !699, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !209, line: 150, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !209, line: 150, size: 128, elements: !701)
!701 = !{!702, !703, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !700, file: !209, line: 150, baseType: !7, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !700, file: !209, line: 150, baseType: !7, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !700, file: !209, line: 150, baseType: !705, size: 64, offset: 64)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 64, elements: !523)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !442, line: 108, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !209, line: 122, size: 512, elements: !709)
!709 = !{!710, !711, !712, !930, !931, !932, !933, !934, !935, !936}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !708, file: !209, line: 124, baseType: !690, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !708, file: !209, line: 125, baseType: !690, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !708, file: !209, line: 131, baseType: !713, size: 64, offset: 128)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !209, line: 128, size: 64, elements: !714)
!714 = !{!715, !929}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !713, file: !209, line: 129, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !442, line: 66, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !719, line: 143, size: 192, elements: !720)
!719 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!720 = !{!721, !927, !928}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !718, file: !719, line: 145, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !442, line: 69, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !719, line: 136, size: 192, elements: !725)
!725 = !{!726, !925, !926}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !724, file: !719, line: 137, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !442, line: 58, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !719, line: 737, size: 768, elements: !730)
!730 = !{!731, !748, !782, !788, !793, !798, !805, !811, !817, !822, !836, !841, !847, !852, !862, !867, !883, !890, !897, !903, !908, !914, !920}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !729, file: !719, line: 738, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !719, line: 271, size: 256, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !732, file: !719, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !732, file: !719, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !732, file: !719, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !732, file: !719, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !732, file: !719, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !732, file: !719, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !732, file: !719, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !732, file: !719, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !732, file: !719, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !732, file: !719, line: 312, baseType: !7, size: 32, offset: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !732, file: !719, line: 316, baseType: !549, size: 32, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !732, file: !719, line: 319, baseType: !7, size: 32, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !732, file: !719, line: 323, baseType: !690, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !732, file: !719, line: 327, baseType: !441, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !729, file: !719, line: 739, baseType: !749, size: 448)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !719, line: 350, size: 448, elements: !750)
!750 = !{!751, !780}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !749, file: !719, line: 353, baseType: !752, size: 384)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !719, line: 333, size: 384, elements: !753)
!753 = !{!754, !755, !763}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !752, file: !719, line: 336, baseType: !732, size: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !752, file: !719, line: 343, baseType: !756, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !758, line: 37, size: 128, elements: !759)
!758 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !757, file: !758, line: 39, baseType: !756, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !757, file: !758, line: 40, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !752, file: !719, line: 344, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !758, line: 45, size: 320, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !765, file: !758, line: 47, baseType: !764, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !765, file: !758, line: 48, baseType: !769, size: 256, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !14, line: 1883, size: 256, elements: !770)
!770 = !{!771, !773, !774, !779}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !769, file: !14, line: 1884, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !769, file: !14, line: 1885, baseType: !772, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !769, file: !14, line: 1891, baseType: !775, size: 64, offset: 128)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !14, line: 1891, size: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !775, file: !14, line: 1891, baseType: !727, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !775, file: !14, line: 1891, baseType: !441, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !769, file: !14, line: 1892, baseType: !762, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !749, file: !719, line: 359, baseType: !781, size: 64, offset: 384)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !523)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !729, file: !719, line: 740, baseType: !783, size: 512)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !719, line: 365, size: 512, elements: !784)
!784 = !{!785, !786, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !783, file: !719, line: 368, baseType: !752, size: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !783, file: !719, line: 373, baseType: !441, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !783, file: !719, line: 374, baseType: !441, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !729, file: !719, line: 741, baseType: !789, size: 576)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !719, line: 380, size: 576, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !789, file: !719, line: 383, baseType: !783, size: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !789, file: !719, line: 389, baseType: !781, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !729, file: !719, line: 742, baseType: !794, size: 320)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !719, line: 395, size: 320, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !794, file: !719, line: 397, baseType: !732, size: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !794, file: !719, line: 400, baseType: !716, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !729, file: !719, line: 743, baseType: !799, size: 448)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !719, line: 406, size: 448, elements: !800)
!800 = !{!801, !802, !803, !804}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !799, file: !719, line: 408, baseType: !732, size: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !799, file: !719, line: 412, baseType: !441, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !799, file: !719, line: 420, baseType: !441, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !799, file: !719, line: 423, baseType: !716, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !729, file: !719, line: 744, baseType: !806, size: 384)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !719, line: 429, size: 384, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !806, file: !719, line: 431, baseType: !732, size: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !806, file: !719, line: 434, baseType: !441, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !806, file: !719, line: 437, baseType: !716, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !729, file: !719, line: 745, baseType: !812, size: 384)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !719, line: 443, size: 384, elements: !813)
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !812, file: !719, line: 445, baseType: !732, size: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !812, file: !719, line: 449, baseType: !441, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !812, file: !719, line: 453, baseType: !716, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !729, file: !719, line: 746, baseType: !818, size: 320)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !719, line: 459, size: 320, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !818, file: !719, line: 461, baseType: !732, size: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !818, file: !719, line: 464, baseType: !441, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !729, file: !719, line: 747, baseType: !823, size: 768)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !719, line: 469, size: 768, elements: !824)
!824 = !{!825, !826, !827, !828, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !823, file: !719, line: 471, baseType: !732, size: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !823, file: !719, line: 474, baseType: !7, size: 32, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !823, file: !719, line: 475, baseType: !7, size: 32, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !823, file: !719, line: 478, baseType: !441, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !823, file: !719, line: 481, baseType: !830, size: 384, offset: 384)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 384, elements: !523)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !14, line: 1917, size: 384, elements: !832)
!832 = !{!833, !834, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !831, file: !14, line: 1920, baseType: !769, size: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !831, file: !14, line: 1921, baseType: !441, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !831, file: !14, line: 1922, baseType: !549, size: 32, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !729, file: !719, line: 748, baseType: !837, size: 320)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !719, line: 487, size: 320, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !837, file: !719, line: 490, baseType: !732, size: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !837, file: !719, line: 494, baseType: !420, size: 32, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !729, file: !719, line: 749, baseType: !842, size: 384)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !719, line: 500, size: 384, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !842, file: !719, line: 502, baseType: !732, size: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !842, file: !719, line: 506, baseType: !716, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !842, file: !719, line: 510, baseType: !716, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !729, file: !719, line: 750, baseType: !848, size: 320)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !719, line: 529, size: 320, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !848, file: !719, line: 531, baseType: !732, size: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !848, file: !719, line: 540, baseType: !716, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !729, file: !719, line: 751, baseType: !853, size: 704)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !719, line: 546, size: 704, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !853, file: !719, line: 549, baseType: !783, size: 512)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !853, file: !719, line: 553, baseType: !425, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !853, file: !719, line: 557, baseType: !419, size: 8, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !853, file: !719, line: 558, baseType: !419, size: 8, offset: 584)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !853, file: !719, line: 559, baseType: !419, size: 8, offset: 592)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !853, file: !719, line: 560, baseType: !419, size: 8, offset: 600)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !853, file: !719, line: 566, baseType: !781, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !729, file: !719, line: 752, baseType: !863, size: 384)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !719, line: 571, size: 384, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !863, file: !719, line: 573, baseType: !794, size: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !863, file: !719, line: 577, baseType: !441, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !729, file: !719, line: 753, baseType: !868, size: 576)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !719, line: 600, size: 576, elements: !869)
!869 = !{!870, !871, !872, !873, !882}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !868, file: !719, line: 602, baseType: !794, size: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !868, file: !719, line: 605, baseType: !441, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !868, file: !719, line: 609, baseType: !434, size: 64, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !868, file: !719, line: 612, baseType: !874, size: 64, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !719, line: 581, size: 320, elements: !876)
!876 = !{!877, !878, !879, !880, !881}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !875, file: !719, line: 583, baseType: !13, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !875, file: !719, line: 586, baseType: !441, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !875, file: !719, line: 589, baseType: !441, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !875, file: !719, line: 592, baseType: !441, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !875, file: !719, line: 595, baseType: !441, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !868, file: !719, line: 616, baseType: !716, size: 64, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !729, file: !719, line: 754, baseType: !884, size: 512)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !719, line: 622, size: 512, elements: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !884, file: !719, line: 624, baseType: !794, size: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !884, file: !719, line: 628, baseType: !441, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !884, file: !719, line: 632, baseType: !441, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !884, file: !719, line: 636, baseType: !441, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !729, file: !719, line: 755, baseType: !891, size: 704)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !719, line: 642, size: 704, elements: !892)
!892 = !{!893, !894, !895, !896}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !891, file: !719, line: 644, baseType: !884, size: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !891, file: !719, line: 648, baseType: !441, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !891, file: !719, line: 652, baseType: !441, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !891, file: !719, line: 653, baseType: !441, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !729, file: !719, line: 756, baseType: !898, size: 448)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !719, line: 663, size: 448, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !898, file: !719, line: 665, baseType: !794, size: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !898, file: !719, line: 668, baseType: !441, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !898, file: !719, line: 673, baseType: !441, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !729, file: !719, line: 757, baseType: !904, size: 384)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !719, line: 694, size: 384, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !904, file: !719, line: 696, baseType: !794, size: 320)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !904, file: !719, line: 699, baseType: !441, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !729, file: !719, line: 758, baseType: !909, size: 384)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !719, line: 681, size: 384, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !909, file: !719, line: 683, baseType: !732, size: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !909, file: !719, line: 686, baseType: !441, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !909, file: !719, line: 689, baseType: !441, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !729, file: !719, line: 759, baseType: !915, size: 384)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !719, line: 707, size: 384, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !915, file: !719, line: 709, baseType: !732, size: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !915, file: !719, line: 712, baseType: !441, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !915, file: !719, line: 712, baseType: !441, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !729, file: !719, line: 760, baseType: !921, size: 320)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !719, line: 718, size: 320, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !921, file: !719, line: 720, baseType: !732, size: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !921, file: !719, line: 723, baseType: !441, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !724, file: !719, line: 138, baseType: !723, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !719, line: 139, baseType: !723, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !718, file: !719, line: 146, baseType: !722, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !718, file: !719, line: 152, baseType: !716, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !713, file: !209, line: 130, baseType: !599, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !708, file: !209, line: 134, baseType: !424, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !708, file: !209, line: 137, baseType: !441, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !708, file: !209, line: 138, baseType: !549, size: 32, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !708, file: !209, line: 142, baseType: !7, size: 32, offset: 352)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !209, line: 144, baseType: !420, size: 32, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !708, file: !209, line: 145, baseType: !420, size: 32, offset: 416)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !708, file: !209, line: 146, baseType: !937, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !209, line: 119, baseType: !496)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !691, file: !209, line: 220, baseType: !694, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !691, file: !209, line: 223, baseType: !424, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !691, file: !209, line: 226, baseType: !941, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !209, line: 185, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !691, file: !209, line: 229, baseType: !944, size: 128, offset: 256)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 128, elements: !947)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !209, line: 229, flags: DIFlagFwdDecl)
!947 = !{!948}
!948 = !DISubrange(count: 2)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !691, file: !209, line: 232, baseType: !690, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !691, file: !209, line: 233, baseType: !690, size: 64, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !691, file: !209, line: 238, baseType: !952, size: 64, offset: 512)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !209, line: 235, size: 64, elements: !953)
!953 = !{!954, !960}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !952, file: !209, line: 236, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !209, line: 273, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !956, file: !209, line: 275, baseType: !716, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !956, file: !209, line: 278, baseType: !716, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !952, file: !209, line: 237, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !209, line: 259, size: 320, elements: !963)
!963 = !{!964, !965, !966, !967, !968}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !962, file: !209, line: 261, baseType: !599, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !962, file: !209, line: 262, baseType: !599, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !962, file: !209, line: 266, baseType: !599, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !962, file: !209, line: 267, baseType: !599, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !962, file: !209, line: 270, baseType: !420, size: 32, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !691, file: !209, line: 241, baseType: !937, size: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !691, file: !209, line: 244, baseType: !420, size: 32, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !691, file: !209, line: 247, baseType: !420, size: 32, offset: 672)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !691, file: !209, line: 250, baseType: !420, size: 32, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !691, file: !209, line: 253, baseType: !420, size: 32, offset: 736)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !209, line: 256, baseType: !420, size: 32, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !686, file: !209, line: 378, baseType: !689, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !686, file: !209, line: 381, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !209, line: 282, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !209, line: 282, size: 128, elements: !980)
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !979, file: !209, line: 282, baseType: !982, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !209, line: 281, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !209, line: 281, size: 128, elements: !984)
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !983, file: !209, line: 281, baseType: !7, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !983, file: !209, line: 281, baseType: !7, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !983, file: !209, line: 281, baseType: !988, size: 64, offset: 64)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 64, elements: !523)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !686, file: !209, line: 384, baseType: !420, size: 32, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !686, file: !209, line: 387, baseType: !420, size: 32, offset: 224)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !686, file: !209, line: 390, baseType: !420, size: 32, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !686, file: !209, line: 394, baseType: !977, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !686, file: !209, line: 396, baseType: !208, size: 32, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !686, file: !209, line: 399, baseType: !995, size: 64, offset: 416)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 64, elements: !947)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !686, file: !209, line: 402, baseType: !997, size: 64, offset: 480)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !947)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !686, file: !209, line: 406, baseType: !420, size: 32, offset: 544)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !686, file: !209, line: 409, baseType: !420, size: 32, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !678, file: !679, line: 470, baseType: !717, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !678, file: !679, line: 473, baseType: !1002, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !679, line: 166, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !678, file: !679, line: 476, baseType: !1005, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !679, line: 476, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !678, file: !679, line: 479, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1009, line: 144, baseType: !1010)
!1009 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1009, line: 100, size: 896, elements: !1012)
!1012 = !{!1013, !1021, !1026, !1031, !1033, !1034, !1035, !1036, !1037, !1038, !1043, !1045, !1046, !1051, !1056}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1011, file: !1009, line: 102, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1009, line: 52, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1009, line: 47, baseType: !7)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1011, file: !1009, line: 105, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1009, line: 59, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!420, !1019, !1019}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1011, file: !1009, line: 108, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1009, line: 63, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !424}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1011, file: !1009, line: 111, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1011, file: !1009, line: 114, baseType: !434, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1011, file: !1009, line: 117, baseType: !434, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1011, file: !1009, line: 120, baseType: !434, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1011, file: !1009, line: 124, baseType: !7, size: 32, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1011, file: !1009, line: 128, baseType: !7, size: 32, offset: 480)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1011, file: !1009, line: 131, baseType: !1039, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1009, line: 75, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!424, !434, !434}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1011, file: !1009, line: 132, baseType: !1044, size: 64, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1009, line: 78, baseType: !1028)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1011, file: !1009, line: 135, baseType: !424, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1011, file: !1009, line: 136, baseType: !1047, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1009, line: 82, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!424, !424, !434, !434}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1011, file: !1009, line: 137, baseType: !1052, size: 64, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1009, line: 83, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !424, !424}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1011, file: !1009, line: 141, baseType: !7, size: 32, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !678, file: !679, line: 484, baseType: !441, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !678, file: !679, line: 488, baseType: !441, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !678, file: !679, line: 493, baseType: !441, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !678, file: !679, line: 496, baseType: !441, size: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !678, file: !679, line: 501, baseType: !1062, size: 64, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !220, line: 2355, size: 576, elements: !1064)
!1064 = !{!1065, !1068, !1069, !1070, !1071, !1075, !1076, !1081, !1082, !1083, !1084, !1085, !1086}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1063, file: !220, line: 2356, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !220, line: 2356, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1063, file: !220, line: 2357, baseType: !425, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1063, file: !220, line: 2358, baseType: !420, size: 32, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1063, file: !220, line: 2359, baseType: !420, size: 32, offset: 160)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1063, file: !220, line: 2360, baseType: !1072, size: 128, offset: 192)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 128, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 4)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1063, file: !220, line: 2364, baseType: !420, size: 32, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1063, file: !220, line: 2367, baseType: !1077, size: 128, offset: 384)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !220, line: 2349, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1077, file: !220, line: 2351, baseType: !599, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1077, file: !220, line: 2352, baseType: !496, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1063, file: !220, line: 2371, baseType: !219, size: 32, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1063, file: !220, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1063, file: !220, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1063, file: !220, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1063, file: !220, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1063, file: !220, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !678, file: !679, line: 504, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !679, line: 504, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !678, file: !679, line: 507, baseType: !1008, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !678, file: !679, line: 510, baseType: !420, size: 32, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !678, file: !679, line: 513, baseType: !420, size: 32, offset: 864)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !678, file: !679, line: 516, baseType: !549, size: 32, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !678, file: !679, line: 519, baseType: !549, size: 32, offset: 928)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !678, file: !679, line: 522, baseType: !7, size: 32, offset: 960)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !678, file: !679, line: 523, baseType: !7, size: 32, offset: 992)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !678, file: !679, line: 528, baseType: !425, size: 64, offset: 1024)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !678, file: !679, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !678, file: !679, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !678, file: !679, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !678, file: !679, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !678, file: !679, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !678, file: !679, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !678, file: !679, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !678, file: !679, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !678, file: !679, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !678, file: !679, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !678, file: !679, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !678, file: !679, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !678, file: !679, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !678, file: !679, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !678, file: !679, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !678, file: !679, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !673, file: !14, line: 3254, baseType: !441, size: 64, offset: 1536)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !673, file: !14, line: 3257, baseType: !441, size: 64, offset: 1600)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !673, file: !14, line: 3258, baseType: !441, size: 64, offset: 1664)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !673, file: !14, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !673, file: !14, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !673, file: !14, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !673, file: !14, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !673, file: !14, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !673, file: !14, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !673, file: !14, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !673, file: !14, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !673, file: !14, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !673, file: !14, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !673, file: !14, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !673, file: !14, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !673, file: !14, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !673, file: !14, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !673, file: !14, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !673, file: !14, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !673, file: !14, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !673, file: !14, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !14, line: 3394, baseType: !1136, size: 1344)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !14, line: 2279, size: 1344, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1164, !1165, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1136, file: !14, line: 2280, baseType: !480, size: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1136, file: !14, line: 2281, baseType: !441, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1136, file: !14, line: 2282, baseType: !441, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1136, file: !14, line: 2283, baseType: !441, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1136, file: !14, line: 2284, baseType: !441, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1136, file: !14, line: 2285, baseType: !7, size: 32, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1136, file: !14, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1136, file: !14, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1136, file: !14, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1136, file: !14, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1136, file: !14, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1136, file: !14, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1136, file: !14, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1136, file: !14, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1136, file: !14, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1136, file: !14, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1136, file: !14, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1136, file: !14, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1136, file: !14, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1136, file: !14, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1136, file: !14, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1136, file: !14, line: 2305, baseType: !7, size: 32, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1136, file: !14, line: 2306, baseType: !1161, size: 32, offset: 544)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1162, line: 31, baseType: !420)
!1162 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1136, file: !14, line: 2307, baseType: !441, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1136, file: !14, line: 2308, baseType: !441, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1136, file: !14, line: 2314, baseType: !1166, size: 64, offset: 704)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !14, line: 2309, size: 64, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1166, file: !14, line: 2310, baseType: !420, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1166, file: !14, line: 2311, baseType: !425, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1166, file: !14, line: 2312, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !14, line: 2277, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1136, file: !14, line: 2315, baseType: !441, size: 64, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1136, file: !14, line: 2316, baseType: !441, size: 64, offset: 832)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1136, file: !14, line: 2317, baseType: !441, size: 64, offset: 896)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1136, file: !14, line: 2318, baseType: !441, size: 64, offset: 960)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1136, file: !14, line: 2319, baseType: !441, size: 64, offset: 1024)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1136, file: !14, line: 2320, baseType: !441, size: 64, offset: 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1136, file: !14, line: 2321, baseType: !441, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1136, file: !14, line: 2322, baseType: !441, size: 64, offset: 1216)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1136, file: !14, line: 2324, baseType: !1182, size: 64, offset: 1280)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !14, line: 2324, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !444, file: !14, line: 3395, baseType: !1185, size: 320)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !14, line: 1469, size: 320, elements: !1186)
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1185, file: !14, line: 1470, baseType: !480, size: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1185, file: !14, line: 1471, baseType: !441, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1185, file: !14, line: 1472, baseType: !441, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !444, file: !14, line: 3396, baseType: !1191, size: 320)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !14, line: 1482, size: 320, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1191, file: !14, line: 1483, baseType: !480, size: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1191, file: !14, line: 1484, baseType: !420, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1191, file: !14, line: 1485, baseType: !781, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !444, file: !14, line: 3397, baseType: !1197, size: 384)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !14, line: 1829, size: 384, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1197, file: !14, line: 1830, baseType: !480, size: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1197, file: !14, line: 1831, baseType: !549, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1197, file: !14, line: 1832, baseType: !441, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1197, file: !14, line: 1835, baseType: !781, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !444, file: !14, line: 3398, baseType: !1204, size: 704)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !14, line: 1898, size: 704, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1213}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1204, file: !14, line: 1899, baseType: !480, size: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1204, file: !14, line: 1902, baseType: !441, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1204, file: !14, line: 1905, baseType: !727, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1204, file: !14, line: 1908, baseType: !7, size: 32, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1204, file: !14, line: 1911, baseType: !1211, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !14, line: 1876, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1204, file: !14, line: 1914, baseType: !769, size: 256, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !444, file: !14, line: 3399, baseType: !1215, size: 704)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !14, line: 2008, size: 704, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1234, !1235, !1236, !1237, !1238}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1215, file: !14, line: 2009, baseType: !480, size: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1215, file: !14, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1215, file: !14, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1215, file: !14, line: 2014, baseType: !549, size: 32, offset: 224)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1215, file: !14, line: 2016, baseType: !441, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1215, file: !14, line: 2017, baseType: !1223, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !14, line: 183, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !14, line: 183, size: 128, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1225, file: !14, line: 183, baseType: !1228, size: 128)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !14, line: 182, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !14, line: 182, size: 128, elements: !1230)
!1230 = !{!1231, !1232, !1233}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1229, file: !14, line: 182, baseType: !7, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1229, file: !14, line: 182, baseType: !7, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1229, file: !14, line: 182, baseType: !781, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1215, file: !14, line: 2019, baseType: !441, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1215, file: !14, line: 2020, baseType: !441, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1215, file: !14, line: 2021, baseType: !441, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1215, file: !14, line: 2022, baseType: !441, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1215, file: !14, line: 2023, baseType: !441, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !444, file: !14, line: 3400, baseType: !1240, size: 832)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !14, line: 2430, size: 832, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1240, file: !14, line: 2431, baseType: !480, size: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1240, file: !14, line: 2433, baseType: !441, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1240, file: !14, line: 2434, baseType: !441, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1240, file: !14, line: 2435, baseType: !441, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1240, file: !14, line: 2436, baseType: !441, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1240, file: !14, line: 2437, baseType: !1223, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1240, file: !14, line: 2438, baseType: !441, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1240, file: !14, line: 2440, baseType: !441, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1240, file: !14, line: 2441, baseType: !441, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1240, file: !14, line: 2443, baseType: !1252, size: 128, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !14, line: 182, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !14, line: 182, size: 128, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1253, file: !14, line: 182, baseType: !1228, size: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !444, file: !14, line: 3401, baseType: !1257, size: 320)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !14, line: 3327, size: 320, elements: !1258)
!1258 = !{!1259, !1260, !1267}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1257, file: !14, line: 3329, baseType: !480, size: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1257, file: !14, line: 3330, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !14, line: 3320, size: 192, elements: !1263)
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1262, file: !14, line: 3322, baseType: !1261, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1262, file: !14, line: 3323, baseType: !1261, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1262, file: !14, line: 3324, baseType: !441, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1257, file: !14, line: 3331, baseType: !1261, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !444, file: !14, line: 3402, baseType: !1269, size: 256)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !14, line: 1540, size: 256, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1269, file: !14, line: 1541, baseType: !480, size: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1269, file: !14, line: 1542, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !14, line: 1538, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !14, line: 1538, size: 192, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1275, file: !14, line: 1538, baseType: !1278, size: 192)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !14, line: 1537, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !14, line: 1537, size: 192, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1279, file: !14, line: 1537, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1279, file: !14, line: 1537, baseType: !7, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1279, file: !14, line: 1537, baseType: !1284, size: 128, offset: 64)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1285, size: 128, elements: !523)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !14, line: 1535, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !14, line: 1532, size: 128, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1286, file: !14, line: 1533, baseType: !441, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1286, file: !14, line: 1534, baseType: !441, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !444, file: !14, line: 3403, baseType: !1291, size: 512)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !14, line: 1938, size: 512, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1302, !1303, !1304}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1291, file: !14, line: 1939, baseType: !480, size: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1291, file: !14, line: 1940, baseType: !549, size: 32, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1291, file: !14, line: 1941, baseType: !224, size: 32, offset: 224)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1291, file: !14, line: 1946, baseType: !1297, size: 32, offset: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !14, line: 1942, size: 32, elements: !1298)
!1298 = !{!1299, !1300, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1297, file: !14, line: 1943, baseType: !242, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1297, file: !14, line: 1944, baseType: !249, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1297, file: !14, line: 1945, baseType: !13, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1291, file: !14, line: 1950, baseType: !716, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1291, file: !14, line: 1951, baseType: !716, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1291, file: !14, line: 1953, baseType: !781, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !444, file: !14, line: 3404, baseType: !1306, size: 1664)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !14, line: 3337, size: 1664, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1306, file: !14, line: 3338, baseType: !480, size: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1306, file: !14, line: 3341, baseType: !1310, size: 1472, offset: 192)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1311, line: 410, size: 1472, elements: !1312)
!1311 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1310, file: !1311, line: 412, baseType: !420, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1310, file: !1311, line: 413, baseType: !420, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1310, file: !1311, line: 414, baseType: !420, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1310, file: !1311, line: 415, baseType: !420, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1310, file: !1311, line: 416, baseType: !420, size: 32, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1310, file: !1311, line: 417, baseType: !420, size: 32, offset: 160)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1310, file: !1311, line: 418, baseType: !419, size: 8, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1310, file: !1311, line: 419, baseType: !419, size: 8, offset: 200)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1310, file: !1311, line: 420, baseType: !1322, size: 8, offset: 208)
!1322 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1310, file: !1311, line: 421, baseType: !1322, size: 8, offset: 216)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1310, file: !1311, line: 422, baseType: !1322, size: 8, offset: 224)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1310, file: !1311, line: 423, baseType: !1322, size: 8, offset: 232)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1310, file: !1311, line: 424, baseType: !1322, size: 8, offset: 240)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1310, file: !1311, line: 425, baseType: !1322, size: 8, offset: 248)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1310, file: !1311, line: 426, baseType: !1322, size: 8, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1310, file: !1311, line: 427, baseType: !1322, size: 8, offset: 264)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1310, file: !1311, line: 428, baseType: !1322, size: 8, offset: 272)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1310, file: !1311, line: 429, baseType: !1322, size: 8, offset: 280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1310, file: !1311, line: 430, baseType: !1322, size: 8, offset: 288)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1310, file: !1311, line: 431, baseType: !1322, size: 8, offset: 296)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1310, file: !1311, line: 432, baseType: !1322, size: 8, offset: 304)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1310, file: !1311, line: 433, baseType: !1322, size: 8, offset: 312)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1310, file: !1311, line: 434, baseType: !1322, size: 8, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1310, file: !1311, line: 435, baseType: !1322, size: 8, offset: 328)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1310, file: !1311, line: 436, baseType: !1322, size: 8, offset: 336)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1310, file: !1311, line: 437, baseType: !1322, size: 8, offset: 344)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1310, file: !1311, line: 438, baseType: !1322, size: 8, offset: 352)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1310, file: !1311, line: 439, baseType: !1322, size: 8, offset: 360)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1310, file: !1311, line: 440, baseType: !1322, size: 8, offset: 368)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1310, file: !1311, line: 441, baseType: !1322, size: 8, offset: 376)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1310, file: !1311, line: 442, baseType: !1322, size: 8, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1310, file: !1311, line: 443, baseType: !1322, size: 8, offset: 392)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1310, file: !1311, line: 444, baseType: !1322, size: 8, offset: 400)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1310, file: !1311, line: 445, baseType: !1322, size: 8, offset: 408)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1310, file: !1311, line: 446, baseType: !1322, size: 8, offset: 416)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1310, file: !1311, line: 447, baseType: !1322, size: 8, offset: 424)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1310, file: !1311, line: 448, baseType: !1322, size: 8, offset: 432)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1310, file: !1311, line: 449, baseType: !1322, size: 8, offset: 440)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1310, file: !1311, line: 450, baseType: !1322, size: 8, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1310, file: !1311, line: 451, baseType: !1322, size: 8, offset: 456)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1310, file: !1311, line: 452, baseType: !1322, size: 8, offset: 464)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1310, file: !1311, line: 453, baseType: !1322, size: 8, offset: 472)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1310, file: !1311, line: 454, baseType: !1322, size: 8, offset: 480)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1310, file: !1311, line: 455, baseType: !1322, size: 8, offset: 488)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1310, file: !1311, line: 456, baseType: !1322, size: 8, offset: 496)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1310, file: !1311, line: 457, baseType: !1322, size: 8, offset: 504)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1310, file: !1311, line: 458, baseType: !1322, size: 8, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1310, file: !1311, line: 459, baseType: !1322, size: 8, offset: 520)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1310, file: !1311, line: 460, baseType: !1322, size: 8, offset: 528)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1310, file: !1311, line: 461, baseType: !1322, size: 8, offset: 536)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1310, file: !1311, line: 462, baseType: !1322, size: 8, offset: 544)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1310, file: !1311, line: 463, baseType: !1322, size: 8, offset: 552)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1310, file: !1311, line: 464, baseType: !1322, size: 8, offset: 560)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1310, file: !1311, line: 465, baseType: !1322, size: 8, offset: 568)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1310, file: !1311, line: 466, baseType: !1322, size: 8, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1310, file: !1311, line: 467, baseType: !1322, size: 8, offset: 584)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1310, file: !1311, line: 468, baseType: !1322, size: 8, offset: 592)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1310, file: !1311, line: 469, baseType: !1322, size: 8, offset: 600)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1310, file: !1311, line: 470, baseType: !1322, size: 8, offset: 608)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1310, file: !1311, line: 471, baseType: !1322, size: 8, offset: 616)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1310, file: !1311, line: 472, baseType: !1322, size: 8, offset: 624)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1310, file: !1311, line: 473, baseType: !1322, size: 8, offset: 632)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1310, file: !1311, line: 474, baseType: !1322, size: 8, offset: 640)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1310, file: !1311, line: 475, baseType: !1322, size: 8, offset: 648)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1310, file: !1311, line: 476, baseType: !1322, size: 8, offset: 656)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1310, file: !1311, line: 477, baseType: !1322, size: 8, offset: 664)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1310, file: !1311, line: 478, baseType: !1322, size: 8, offset: 672)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1310, file: !1311, line: 479, baseType: !1322, size: 8, offset: 680)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1310, file: !1311, line: 480, baseType: !1322, size: 8, offset: 688)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1310, file: !1311, line: 481, baseType: !1322, size: 8, offset: 696)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1310, file: !1311, line: 482, baseType: !1322, size: 8, offset: 704)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1310, file: !1311, line: 483, baseType: !1322, size: 8, offset: 712)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1310, file: !1311, line: 484, baseType: !1322, size: 8, offset: 720)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1310, file: !1311, line: 485, baseType: !1322, size: 8, offset: 728)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1310, file: !1311, line: 486, baseType: !1322, size: 8, offset: 736)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1310, file: !1311, line: 487, baseType: !1322, size: 8, offset: 744)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1310, file: !1311, line: 488, baseType: !1322, size: 8, offset: 752)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1310, file: !1311, line: 489, baseType: !1322, size: 8, offset: 760)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1310, file: !1311, line: 490, baseType: !1322, size: 8, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1310, file: !1311, line: 491, baseType: !1322, size: 8, offset: 776)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1310, file: !1311, line: 492, baseType: !1322, size: 8, offset: 784)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1310, file: !1311, line: 493, baseType: !1322, size: 8, offset: 792)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1310, file: !1311, line: 494, baseType: !1322, size: 8, offset: 800)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1310, file: !1311, line: 495, baseType: !1322, size: 8, offset: 808)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1310, file: !1311, line: 496, baseType: !1322, size: 8, offset: 816)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1310, file: !1311, line: 497, baseType: !1322, size: 8, offset: 824)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1310, file: !1311, line: 498, baseType: !1322, size: 8, offset: 832)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1310, file: !1311, line: 499, baseType: !1322, size: 8, offset: 840)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1310, file: !1311, line: 500, baseType: !1322, size: 8, offset: 848)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1310, file: !1311, line: 501, baseType: !1322, size: 8, offset: 856)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1310, file: !1311, line: 502, baseType: !1322, size: 8, offset: 864)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1310, file: !1311, line: 503, baseType: !1322, size: 8, offset: 872)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1310, file: !1311, line: 504, baseType: !1322, size: 8, offset: 880)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1310, file: !1311, line: 505, baseType: !1322, size: 8, offset: 888)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1310, file: !1311, line: 506, baseType: !1322, size: 8, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1310, file: !1311, line: 507, baseType: !1322, size: 8, offset: 904)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1310, file: !1311, line: 508, baseType: !1322, size: 8, offset: 912)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1310, file: !1311, line: 509, baseType: !1322, size: 8, offset: 920)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1310, file: !1311, line: 510, baseType: !1322, size: 8, offset: 928)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1310, file: !1311, line: 511, baseType: !1322, size: 8, offset: 936)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1310, file: !1311, line: 512, baseType: !1322, size: 8, offset: 944)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1310, file: !1311, line: 513, baseType: !1322, size: 8, offset: 952)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1310, file: !1311, line: 514, baseType: !1322, size: 8, offset: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1310, file: !1311, line: 515, baseType: !1322, size: 8, offset: 968)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1310, file: !1311, line: 516, baseType: !1322, size: 8, offset: 976)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1310, file: !1311, line: 517, baseType: !1322, size: 8, offset: 984)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1310, file: !1311, line: 518, baseType: !1322, size: 8, offset: 992)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1310, file: !1311, line: 519, baseType: !1322, size: 8, offset: 1000)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1310, file: !1311, line: 520, baseType: !1322, size: 8, offset: 1008)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1310, file: !1311, line: 521, baseType: !1322, size: 8, offset: 1016)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1310, file: !1311, line: 522, baseType: !1322, size: 8, offset: 1024)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1310, file: !1311, line: 523, baseType: !1322, size: 8, offset: 1032)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1310, file: !1311, line: 524, baseType: !1322, size: 8, offset: 1040)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1310, file: !1311, line: 525, baseType: !1322, size: 8, offset: 1048)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1310, file: !1311, line: 526, baseType: !1322, size: 8, offset: 1056)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1310, file: !1311, line: 527, baseType: !1322, size: 8, offset: 1064)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1310, file: !1311, line: 528, baseType: !1322, size: 8, offset: 1072)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1310, file: !1311, line: 529, baseType: !1322, size: 8, offset: 1080)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1310, file: !1311, line: 530, baseType: !1322, size: 8, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1310, file: !1311, line: 531, baseType: !1322, size: 8, offset: 1096)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1310, file: !1311, line: 532, baseType: !1322, size: 8, offset: 1104)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1310, file: !1311, line: 533, baseType: !1322, size: 8, offset: 1112)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1310, file: !1311, line: 534, baseType: !1322, size: 8, offset: 1120)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1310, file: !1311, line: 535, baseType: !1322, size: 8, offset: 1128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1310, file: !1311, line: 536, baseType: !1322, size: 8, offset: 1136)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1310, file: !1311, line: 537, baseType: !1322, size: 8, offset: 1144)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1310, file: !1311, line: 538, baseType: !1322, size: 8, offset: 1152)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1310, file: !1311, line: 539, baseType: !1322, size: 8, offset: 1160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1310, file: !1311, line: 540, baseType: !1322, size: 8, offset: 1168)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1310, file: !1311, line: 541, baseType: !1322, size: 8, offset: 1176)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1310, file: !1311, line: 542, baseType: !1322, size: 8, offset: 1184)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1310, file: !1311, line: 543, baseType: !1322, size: 8, offset: 1192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1310, file: !1311, line: 544, baseType: !1322, size: 8, offset: 1200)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1310, file: !1311, line: 545, baseType: !1322, size: 8, offset: 1208)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1310, file: !1311, line: 546, baseType: !1322, size: 8, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1310, file: !1311, line: 547, baseType: !1322, size: 8, offset: 1224)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1310, file: !1311, line: 548, baseType: !1322, size: 8, offset: 1232)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1310, file: !1311, line: 549, baseType: !1322, size: 8, offset: 1240)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1310, file: !1311, line: 550, baseType: !1322, size: 8, offset: 1248)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1310, file: !1311, line: 551, baseType: !1322, size: 8, offset: 1256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1310, file: !1311, line: 552, baseType: !1322, size: 8, offset: 1264)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1310, file: !1311, line: 553, baseType: !1322, size: 8, offset: 1272)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1310, file: !1311, line: 554, baseType: !1322, size: 8, offset: 1280)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1310, file: !1311, line: 555, baseType: !1322, size: 8, offset: 1288)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1310, file: !1311, line: 556, baseType: !1322, size: 8, offset: 1296)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1310, file: !1311, line: 557, baseType: !1322, size: 8, offset: 1304)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1310, file: !1311, line: 558, baseType: !1322, size: 8, offset: 1312)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1310, file: !1311, line: 559, baseType: !1322, size: 8, offset: 1320)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1310, file: !1311, line: 560, baseType: !1322, size: 8, offset: 1328)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1310, file: !1311, line: 561, baseType: !1322, size: 8, offset: 1336)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1310, file: !1311, line: 562, baseType: !1322, size: 8, offset: 1344)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1310, file: !1311, line: 563, baseType: !1322, size: 8, offset: 1352)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1310, file: !1311, line: 564, baseType: !1322, size: 8, offset: 1360)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1310, file: !1311, line: 565, baseType: !1322, size: 8, offset: 1368)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1310, file: !1311, line: 566, baseType: !1322, size: 8, offset: 1376)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1310, file: !1311, line: 567, baseType: !1322, size: 8, offset: 1384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1310, file: !1311, line: 568, baseType: !1322, size: 8, offset: 1392)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1310, file: !1311, line: 569, baseType: !1322, size: 8, offset: 1400)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1310, file: !1311, line: 570, baseType: !1322, size: 8, offset: 1408)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1310, file: !1311, line: 571, baseType: !1322, size: 8, offset: 1416)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1310, file: !1311, line: 572, baseType: !1322, size: 8, offset: 1424)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1310, file: !1311, line: 573, baseType: !1322, size: 8, offset: 1432)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1310, file: !1311, line: 574, baseType: !1322, size: 8, offset: 1440)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !444, file: !14, line: 3405, baseType: !1478, size: 384)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !14, line: 3352, size: 384, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1478, file: !14, line: 3353, baseType: !480, size: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1478, file: !14, line: 3356, baseType: !1482, size: 192, offset: 192)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1311, line: 578, size: 192, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1482, file: !1311, line: 580, baseType: !420, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1482, file: !1311, line: 581, baseType: !420, size: 32, offset: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1482, file: !1311, line: 582, baseType: !420, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1482, file: !1311, line: 583, baseType: !420, size: 32, offset: 96)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1482, file: !1311, line: 584, baseType: !419, size: 8, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1482, file: !1311, line: 585, baseType: !419, size: 8, offset: 136)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1482, file: !1311, line: 586, baseType: !419, size: 8, offset: 144)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1482, file: !1311, line: 587, baseType: !419, size: 8, offset: 152)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1482, file: !1311, line: 588, baseType: !419, size: 8, offset: 160)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1482, file: !1311, line: 589, baseType: !419, size: 8, offset: 168)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1482, file: !1311, line: 590, baseType: !419, size: 8, offset: 176)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tree_size", scope: !430, file: !284, line: 266, baseType: !1496, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!434, !13}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "init_options", scope: !430, file: !284, line: 271, baseType: !1500, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!7, !7, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_diagnostics", scope: !430, file: !284, line: 275, baseType: !1505, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_context", file: !268, line: 62, size: 28736, elements: !1510)
!1510 = !{!1511, !1663, !1667, !1668, !1669, !1674, !1675, !1676, !1693, !1695, !1699, !1700, !1713, !1714}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !1509, file: !268, line: 65, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !257, line: 134, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !257, line: 158, size: 448, elements: !1515)
!1515 = !{!1516, !1620, !1621, !1623, !1624, !1625, !1632, !1660, !1661, !1662}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1514, file: !257, line: 161, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !257, line: 99, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 74, size: 2688, elements: !1520)
!1520 = !{!1521, !1551, !1552, !1554, !1563, !1615, !1616}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !1519, file: !257, line: 77, baseType: !1522, size: 704)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1523, line: 164, size: 704, elements: !1524)
!1523 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1524 = !{!1525, !1526, !1534, !1535, !1536, !1537, !1538, !1539, !1543, !1547, !1548, !1549, !1550}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1522, file: !1523, line: 166, baseType: !496, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1522, file: !1523, line: 167, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1523, line: 157, size: 192, elements: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1528, file: !1523, line: 159, baseType: !422, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1528, file: !1523, line: 160, baseType: !1527, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1528, file: !1523, line: 161, baseType: !1533, size: 32, offset: 128)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 32, elements: !1073)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1522, file: !1523, line: 168, baseType: !422, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1522, file: !1523, line: 169, baseType: !422, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1522, file: !1523, line: 170, baseType: !422, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1522, file: !1523, line: 171, baseType: !496, size: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1522, file: !1523, line: 172, baseType: !420, size: 32, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1522, file: !1523, line: 176, baseType: !1540, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!1527, !424, !496}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1522, file: !1523, line: 177, baseType: !1544, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !424, !1527}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1522, file: !1523, line: 178, baseType: !424, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1522, file: !1523, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1522, file: !1523, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1522, file: !1523, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !1519, file: !257, line: 81, baseType: !1522, size: 704, offset: 704)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1519, file: !257, line: 85, baseType: !1553, size: 64, offset: 1408)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !1519, file: !257, line: 88, baseType: !1555, size: 64, offset: 1472)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !257, line: 58, size: 3904, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1556, file: !257, line: 61, baseType: !1555, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1556, file: !257, line: 69, baseType: !1560, size: 3840, offset: 64)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 3840, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: 60)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1519, file: !257, line: 91, baseType: !1564, size: 64, offset: 1536)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1566, line: 7, baseType: !1567)
!1566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1568, line: 49, size: 1728, elements: !1569)
!1568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1585, !1587, !1588, !1589, !1592, !1594, !1595, !1596, !1599, !1601, !1604, !1607, !1608, !1609, !1610, !1611}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1567, file: !1568, line: 51, baseType: !420, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1567, file: !1568, line: 54, baseType: !422, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1567, file: !1568, line: 55, baseType: !422, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1567, file: !1568, line: 56, baseType: !422, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1567, file: !1568, line: 57, baseType: !422, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1567, file: !1568, line: 58, baseType: !422, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1567, file: !1568, line: 59, baseType: !422, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1567, file: !1568, line: 60, baseType: !422, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1567, file: !1568, line: 61, baseType: !422, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1567, file: !1568, line: 64, baseType: !422, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1567, file: !1568, line: 65, baseType: !422, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1567, file: !1568, line: 66, baseType: !422, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1567, file: !1568, line: 68, baseType: !1583, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1568, line: 36, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1567, file: !1568, line: 70, baseType: !1586, size: 64, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1567, file: !1568, line: 72, baseType: !420, size: 32, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1567, file: !1568, line: 73, baseType: !420, size: 32, offset: 928)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1567, file: !1568, line: 74, baseType: !1590, size: 64, offset: 960)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1591, line: 152, baseType: !496)
!1591 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1567, file: !1568, line: 77, baseType: !1593, size: 16, offset: 1024)
!1593 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1567, file: !1568, line: 78, baseType: !1322, size: 8, offset: 1040)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1567, file: !1568, line: 79, baseType: !522, size: 8, offset: 1048)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1567, file: !1568, line: 81, baseType: !1597, size: 64, offset: 1088)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1568, line: 43, baseType: null)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1567, file: !1568, line: 89, baseType: !1600, size: 64, offset: 1152)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1591, line: 153, baseType: !496)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1567, file: !1568, line: 91, baseType: !1602, size: 64, offset: 1216)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1568, line: 37, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1567, file: !1568, line: 92, baseType: !1605, size: 64, offset: 1280)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1568, line: 38, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1567, file: !1568, line: 93, baseType: !1586, size: 64, offset: 1344)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1567, file: !1568, line: 94, baseType: !424, size: 64, offset: 1408)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1567, file: !1568, line: 95, baseType: !434, size: 64, offset: 1472)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1567, file: !1568, line: 96, baseType: !420, size: 32, offset: 1536)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1567, file: !1568, line: 98, baseType: !1612, size: 160, offset: 1568)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 160, elements: !1613)
!1613 = !{!1614}
!1614 = !DISubrange(count: 20)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !1519, file: !257, line: 94, baseType: !420, size: 32, offset: 1600)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !1519, file: !257, line: 98, baseType: !1617, size: 1024, offset: 1632)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 1024, elements: !1618)
!1618 = !{!1619}
!1619 = !DISubrange(count: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1514, file: !257, line: 164, baseType: !425, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1514, file: !257, line: 167, baseType: !1622, size: 32, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !257, line: 107, baseType: !256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !1514, file: !257, line: 171, baseType: !420, size: 32, offset: 160)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !1514, file: !257, line: 174, baseType: !420, size: 32, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !1514, file: !257, line: 177, baseType: !1626, size: 64, offset: 224)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !257, line: 119, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 111, size: 64, elements: !1628)
!1628 = !{!1629, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !1627, file: !257, line: 114, baseType: !1630, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !257, line: 51, baseType: !262)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !1627, file: !257, line: 118, baseType: !420, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !1514, file: !257, line: 187, baseType: !1633, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !257, line: 135, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!419, !1512, !1637, !425, !420, !419, !419, !419}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !257, line: 39, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 32, size: 320, elements: !1640)
!1640 = !{!1641, !1642, !1656, !1657, !1659}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !1639, file: !257, line: 34, baseType: !425, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !1639, file: !257, line: 35, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1645, line: 52, baseType: !1646)
!1645 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1647, line: 32, baseType: !1648)
!1647 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 49, baseType: !1649)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1650, size: 192, elements: !523)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1655}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1650, file: !3, baseType: !7, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1650, file: !3, baseType: !7, size: 32, offset: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1650, file: !3, baseType: !424, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1650, file: !3, baseType: !424, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !1639, file: !257, line: 36, baseType: !420, size: 32, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1639, file: !257, line: 37, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1639, file: !257, line: 38, baseType: !762, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !1514, file: !257, line: 190, baseType: !419, size: 8, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !1514, file: !257, line: 193, baseType: !419, size: 8, offset: 392)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !1514, file: !257, line: 197, baseType: !419, size: 8, offset: 400)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "diagnostic_count", scope: !1509, file: !268, line: 68, baseType: !1664, size: 384, offset: 64)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 384, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 12)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "issue_warnings_are_errors_message", scope: !1509, file: !268, line: 72, baseType: !419, size: 8, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "warning_as_error_requested", scope: !1509, file: !268, line: 75, baseType: !419, size: 8, offset: 456)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "classify_diagnostic", scope: !1509, file: !268, line: 82, baseType: !1670, size: 27840, offset: 480)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1671, size: 27840, elements: !1672)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !268, line: 35, baseType: !267)
!1672 = !{!1673}
!1673 = !DISubrange(count: 870)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "show_option_requested", scope: !1509, file: !268, line: 86, baseType: !419, size: 8, offset: 28320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "abort_on_error", scope: !1509, file: !268, line: 89, baseType: !419, size: 8, offset: 28328)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "begin_diagnostic", scope: !1509, file: !268, line: 98, baseType: !1677, size: 64, offset: 28352)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_starter_fn", file: !268, line: 56, baseType: !1678)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1681, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_context", file: !268, line: 55, baseType: !1509)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_info", file: !268, line: 52, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_info", file: !268, line: 40, size: 512, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1685, file: !268, line: 42, baseType: !1638, size: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1685, file: !268, line: 43, baseType: !549, size: 32, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "override_column", scope: !1685, file: !268, line: 44, baseType: !7, size: 32, offset: 352)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1685, file: !268, line: 47, baseType: !441, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !1685, file: !268, line: 49, baseType: !1671, size: 32, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "option_index", scope: !1685, file: !268, line: 51, baseType: !420, size: 32, offset: 480)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "end_diagnostic", scope: !1509, file: !268, line: 101, baseType: !1694, size: 64, offset: 28416)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_finalizer_fn", file: !268, line: 58, baseType: !1677)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "internal_error", scope: !1509, file: !268, line: 104, baseType: !1696, size: 64, offset: 28480)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !425, !1643}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "last_function", scope: !1509, file: !268, line: 109, baseType: !441, size: 64, offset: 28544)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "last_module", scope: !1509, file: !268, line: 113, baseType: !1701, size: 64, offset: 28608)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !552, line: 61, size: 192, elements: !1704)
!1704 = !{!1705, !1706, !1708, !1709, !1710, !1711, !1712}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !1703, file: !552, line: 62, baseType: !425, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !1703, file: !552, line: 63, baseType: !1707, size: 32, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !552, line: 39, baseType: !7)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !1703, file: !552, line: 64, baseType: !551, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !1703, file: !552, line: 65, baseType: !420, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1703, file: !552, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !1703, file: !552, line: 68, baseType: !419, size: 8, offset: 168)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !1703, file: !552, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !268, line: 115, baseType: !420, size: 32, offset: 28672)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit_notes_p", scope: !1509, file: !268, line: 117, baseType: !419, size: 8, offset: 28704)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "handle_option", scope: !430, file: !284, line: 286, baseType: !1716, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!420, !434, !425, !420}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "missing_argument", scope: !430, file: !284, line: 290, baseType: !1720, size: 64, offset: 448)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!419, !425, !434}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "post_options", scope: !430, file: !284, line: 300, baseType: !1724, size: 64, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!419, !1503}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !430, file: !284, line: 305, baseType: !1728, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!419}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !430, file: !284, line: 308, baseType: !1732, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "parse_file", scope: !430, file: !284, line: 312, baseType: !1736, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !420}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "missing_noreturn_ok_p", scope: !430, file: !284, line: 315, baseType: !1740, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!419, !441}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "get_alias_set", scope: !430, file: !284, line: 319, baseType: !1744, size: 64, offset: 832)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1161, !441}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "finish_incomplete_decl", scope: !430, file: !284, line: 323, baseType: !438, size: 64, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "dup_lang_specific_decl", scope: !430, file: !284, line: 327, baseType: !438, size: 64, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "set_decl_assembler_name", scope: !430, file: !284, line: 334, baseType: !438, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "print_statistics", scope: !430, file: !284, line: 338, baseType: !1732, size: 64, offset: 1088)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "print_xnode", scope: !430, file: !284, line: 342, baseType: !1752, size: 64, offset: 1152)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "lang_print_tree_hook", file: !284, line: 34, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1564, !441, !420}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "print_decl", scope: !430, file: !284, line: 346, baseType: !1752, size: 64, offset: 1216)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "print_type", scope: !430, file: !284, line: 347, baseType: !1752, size: 64, offset: 1280)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "print_identifier", scope: !430, file: !284, line: 348, baseType: !1752, size: 64, offset: 1344)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "decl_printable_name", scope: !430, file: !284, line: 359, baseType: !1760, size: 64, offset: 1408)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!425, !441, !420}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dwarf_name", scope: !430, file: !284, line: 364, baseType: !1760, size: 64, offset: 1472)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "types_compatible_p", scope: !430, file: !284, line: 369, baseType: !1765, size: 64, offset: 1536)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!420, !441, !441}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "print_error_function", scope: !430, file: !284, line: 372, baseType: !1769, size: 64, offset: 1600)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1508, !425, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "to_target_charset", scope: !430, file: !284, line: 382, baseType: !1774, size: 64, offset: 1664)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!496, !496}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_table", scope: !430, file: !284, line: 389, baseType: !1778, size: 64, offset: 1728)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_spec", file: !14, line: 4046, size: 256, elements: !1781)
!1781 = !{!1782, !1784, !1786, !1787, !1788, !1789, !1790}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !14, line: 4050, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !1780, file: !14, line: 4052, baseType: !1785, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !1780, file: !14, line: 4055, baseType: !1785, size: 32, offset: 96)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "decl_required", scope: !1780, file: !14, line: 4063, baseType: !541, size: 8, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "type_required", scope: !1780, file: !14, line: 4066, baseType: !541, size: 8, offset: 136)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "function_type_required", scope: !1780, file: !14, line: 4071, baseType: !541, size: 8, offset: 144)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1780, file: !14, line: 4086, baseType: !1791, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!441, !762, !441, !441, !420, !418}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "common_attribute_table", scope: !430, file: !284, line: 390, baseType: !1778, size: 64, offset: 1792)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "format_attribute_table", scope: !430, file: !284, line: 391, baseType: !1778, size: 64, offset: 1856)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tree_inlining", scope: !430, file: !284, line: 393, baseType: !1798, size: 64, offset: 1920)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_hooks_for_tree_inlining", file: !284, line: 42, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "var_mod_type_p", scope: !1798, file: !284, line: 44, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!419, !441, !441}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "callgraph", scope: !430, file: !284, line: 395, baseType: !1805, size: 64, offset: 1984)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_hooks_for_callgraph", file: !284, line: 47, size: 64, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "analyze_expr", scope: !1805, file: !284, line: 51, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!441, !762, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tree_dump", scope: !430, file: !284, line: 397, baseType: !1813, size: 128, offset: 2048)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_hooks_for_tree_dump", file: !284, line: 56, size: 128, elements: !1814)
!1814 = !{!1815, !1819}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dump_tree", scope: !1813, file: !284, line: 60, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!419, !424, !441}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "type_quals", scope: !1813, file: !284, line: 63, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!420, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !442, line: 59, baseType: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "decls", scope: !430, file: !284, line: 399, baseType: !1827, size: 1280, offset: 2176)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_hooks_for_decls", file: !284, line: 150, size: 1280, elements: !1828)
!1828 = !{!1829, !1833, !1837, !1841, !1842, !1846, !1847, !1851, !1852, !1853, !1854, !1855, !1859, !1863, !1864, !1865, !1869, !1870, !1871, !1875}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "global_bindings_p", scope: !1827, file: !284, line: 154, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!420}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pushdecl", scope: !1827, file: !284, line: 160, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!441, !441}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "getdecls", scope: !1827, file: !284, line: 163, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!441}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_explicit_p", scope: !1827, file: !284, line: 166, baseType: !1740, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "generic_generic_parameter_decl_p", scope: !1827, file: !284, line: 170, baseType: !1843, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!419, !1823}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "function_parm_expanded_from_pack_p", scope: !1827, file: !284, line: 174, baseType: !1801, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "get_generic_function_decl", scope: !1827, file: !284, line: 177, baseType: !1848, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!441, !1823}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_global", scope: !1827, file: !284, line: 181, baseType: !1843, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "final_write_globals", scope: !1827, file: !284, line: 185, baseType: !1732, size: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ok_for_sibcall", scope: !1827, file: !284, line: 188, baseType: !1843, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "omp_privatize_by_reference", scope: !1827, file: !284, line: 192, baseType: !1843, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "omp_predetermined_sharing", scope: !1827, file: !284, line: 196, baseType: !1856, size: 64, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!242, !441}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "omp_disregard_value_expr", scope: !1827, file: !284, line: 202, baseType: !1860, size: 64, offset: 768)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!419, !441, !419}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "omp_private_debug_clause", scope: !1827, file: !284, line: 206, baseType: !1860, size: 64, offset: 832)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "omp_private_outer_ref", scope: !1827, file: !284, line: 210, baseType: !1740, size: 64, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause_default_ctor", scope: !1827, file: !284, line: 215, baseType: !1866, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!441, !441, !441, !441}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause_copy_ctor", scope: !1827, file: !284, line: 218, baseType: !1866, size: 64, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause_assign_op", scope: !1827, file: !284, line: 221, baseType: !1866, size: 64, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause_dtor", scope: !1827, file: !284, line: 225, baseType: !1872, size: 64, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!441, !441, !441}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "omp_finish_clause", scope: !1827, file: !284, line: 228, baseType: !438, size: 64, offset: 1216)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !430, file: !284, line: 401, baseType: !1877, size: 1024, offset: 3456)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_hooks_for_types", file: !284, line: 68, size: 1024, elements: !1878)
!1878 = !{!1879, !1883, !1887, !1891, !1895, !1896, !1897, !1898, !1902, !1906, !1907, !1913, !1917, !1923, !1927, !1928}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "make_type", scope: !1877, file: !284, line: 72, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!441, !13}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "classify_record", scope: !1877, file: !284, line: 77, baseType: !1884, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!283, !441}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type_for_mode", scope: !1877, file: !284, line: 81, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!441, !289, !420}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "type_for_size", scope: !1877, file: !284, line: 85, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!441, !7, !420}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "generic_p", scope: !1877, file: !284, line: 89, baseType: !1843, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "get_argument_pack_elems", scope: !1877, file: !284, line: 92, baseType: !1848, size: 64, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "type_promotes_to", scope: !1877, file: !284, line: 98, baseType: !1834, size: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "register_builtin_type", scope: !1877, file: !284, line: 107, baseType: !1899, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !441, !425}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "incomplete_type_error", scope: !1877, file: !284, line: 113, baseType: !1903, size: 64, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !1823, !1823}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !1877, file: !284, line: 117, baseType: !1848, size: 64, offset: 576)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "omp_firstprivatize_type_sizes", scope: !1877, file: !284, line: 121, baseType: !1908, size: 64, offset: 640)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1911, !441}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimplify_omp_ctx", file: !284, line: 29, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "type_hash_eq", scope: !1877, file: !284, line: 127, baseType: !1914, size: 64, offset: 704)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!419, !1823, !1823}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "get_array_descr_info", scope: !1877, file: !284, line: 131, baseType: !1918, size: 64, offset: 768)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!419, !1823, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_descr_info", file: !284, line: 31, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "get_subrange_bounds", scope: !1877, file: !284, line: 134, baseType: !1924, size: 64, offset: 832)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !1823, !762, !762}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "reconstruct_complex_type", scope: !1877, file: !284, line: 140, baseType: !1872, size: 64, offset: 896)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "hash_types", scope: !1877, file: !284, line: 145, baseType: !419, size: 8, offset: 960)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lto", scope: !430, file: !284, line: 403, baseType: !1930, size: 192, offset: 4480)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_hooks_for_lto", file: !284, line: 233, size: 192, elements: !1931)
!1931 = !{!1932, !1936, !1940}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "begin_section", scope: !1930, file: !284, line: 236, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !425}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "append_data", scope: !1930, file: !284, line: 242, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1019, !434, !424}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "end_section", scope: !1930, file: !284, line: 245, baseType: !1732, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_innermost_generic_parms", scope: !430, file: !284, line: 407, baseType: !1848, size: 64, offset: 4672)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_innermost_generic_args", scope: !430, file: !284, line: 411, baseType: !1848, size: 64, offset: 4736)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "function_parameter_pack_p", scope: !430, file: !284, line: 414, baseType: !1843, size: 64, offset: 4800)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "gimplify_expr", scope: !430, file: !284, line: 418, baseType: !1945, size: 64, offset: 4864)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!420, !762, !1948, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fold_obj_type_ref", scope: !430, file: !284, line: 422, baseType: !1872, size: 64, offset: 4928)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "builtin_function", scope: !430, file: !284, line: 425, baseType: !1834, size: 64, offset: 4992)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "builtin_function_ext_scope", scope: !430, file: !284, line: 433, baseType: !1834, size: 64, offset: 5056)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "init_ts", scope: !430, file: !284, line: 436, baseType: !1732, size: 64, offset: 5120)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "expr_to_decl", scope: !430, file: !284, line: 441, baseType: !1954, size: 64, offset: 5184)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!441, !441, !418, !418}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "eh_personality", scope: !430, file: !284, line: 444, baseType: !1838, size: 64, offset: 5248)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "eh_runtime_type", scope: !430, file: !284, line: 447, baseType: !1834, size: 64, offset: 5312)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "eh_use_cxa_end_cleanup", scope: !430, file: !284, line: 451, baseType: !419, size: 8, offset: 5376)
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(name: "gt_ggc_rtab", scope: !2, file: !1962, line: 66, type: !1963, isLocal: false, isDefinition: true)
!1962 = !DIFile(filename: "./gtype-c.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1964, size: 2944, elements: !1976)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1968, line: 69, size: 320, elements: !1969)
!1968 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1969 = !{!1970, !1971, !1972, !1973, !1975}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1967, file: !1968, line: 70, baseType: !424, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1967, file: !1968, line: 71, baseType: !434, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1967, file: !1968, line: 72, baseType: !434, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1967, file: !1968, line: 73, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1968, line: 65, baseType: !1028)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1967, file: !1968, line: 74, baseType: !1974, size: 64, offset: 256)
!1976 = !{!1977}
!1977 = !DISubrange(count: 46)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(name: "gt_ggc_deletable_rtab", scope: !2, file: !1962, line: 123, type: !1980, isLocal: false, isDefinition: true)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1964, size: 640, elements: !1981)
!1981 = !{!1982}
!1982 = !DISubrange(count: 10)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(name: "gt_ggc_cache_rtab", scope: !2, file: !1962, line: 142, type: !1985, isLocal: false, isDefinition: true)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1986, size: 512, elements: !2001)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_cache_tab", file: !1968, line: 85, size: 384, elements: !1990)
!1990 = !{!1991, !1993, !1994, !1995, !1996, !1997}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1989, file: !1968, line: 86, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1989, file: !1968, line: 87, baseType: !434, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1989, file: !1968, line: 88, baseType: !434, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1989, file: !1968, line: 89, baseType: !1974, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1989, file: !1968, line: 90, baseType: !1974, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "marked_p", scope: !1989, file: !1968, line: 91, baseType: !1998, size: 64, offset: 320)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!420, !1019}
!2001 = !{!2002}
!2002 = !DISubrange(count: 8)
!2003 = !DIGlobalVariableExpression(var: !2004, expr: !DIExpression())
!2004 = distinct !DIGlobalVariable(name: "gt_pch_cache_rtab", scope: !2, file: !1962, line: 159, type: !2005, isLocal: false, isDefinition: true)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1964, size: 512, elements: !2001)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(name: "gt_pch_scalar_rtab", scope: !2, file: !1962, line: 186, type: !2008, isLocal: false, isDefinition: true)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1964, size: 1152, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 18)
!2011 = !{i32 2, !"Dwarf Version", i32 4}
!2012 = !{i32 2, !"Debug Info Version", i32 3}
!2013 = !{i32 1, !"wchar_size", i32 4}
!2014 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2015 = distinct !DISubprogram(name: "vprintf", scope: !2016, file: !2016, line: 39, type: !2017, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2021)
!2016 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!420, !2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !425)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!2021 = !{!2022, !2023}
!2022 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2015, file: !2016, line: 39, type: !2019)
!2023 = !DILocalVariable(name: "__arg", arg: 2, scope: !2015, file: !2016, line: 39, type: !2020)
!2024 = !DILocation(line: 0, scope: !2015)
!2025 = !DILocation(line: 41, column: 20, scope: !2015)
!2026 = !DILocation(line: 41, column: 10, scope: !2015)
!2027 = !DILocation(line: 41, column: 3, scope: !2015)
!2028 = distinct !DISubprogram(name: "getchar", scope: !2016, file: !2016, line: 47, type: !1831, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2029)
!2029 = !{}
!2030 = !DILocation(line: 49, column: 16, scope: !2028)
!2031 = !DILocation(line: 49, column: 10, scope: !2028)
!2032 = !DILocation(line: 49, column: 3, scope: !2028)
!2033 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2016, file: !2016, line: 56, type: !2034, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!420, !1564}
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "__fp", arg: 1, scope: !2033, file: !2016, line: 56, type: !1564)
!2038 = !DILocation(line: 0, scope: !2033)
!2039 = !DILocation(line: 58, column: 10, scope: !2033)
!2040 = !DILocation(line: 58, column: 3, scope: !2033)
!2041 = distinct !DISubprogram(name: "getc_unlocked", scope: !2016, file: !2016, line: 66, type: !2034, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "__fp", arg: 1, scope: !2041, file: !2016, line: 66, type: !1564)
!2044 = !DILocation(line: 0, scope: !2041)
!2045 = !DILocation(line: 68, column: 10, scope: !2041)
!2046 = !DILocation(line: 68, column: 3, scope: !2041)
!2047 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2016, file: !2016, line: 73, type: !1831, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2029)
!2048 = !DILocation(line: 75, column: 10, scope: !2047)
!2049 = !DILocation(line: 75, column: 3, scope: !2047)
!2050 = distinct !DISubprogram(name: "putchar", scope: !2016, file: !2016, line: 82, type: !2051, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!420, !420}
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "__c", arg: 1, scope: !2050, file: !2016, line: 82, type: !420)
!2055 = !DILocation(line: 0, scope: !2050)
!2056 = !DILocation(line: 84, column: 21, scope: !2050)
!2057 = !DILocation(line: 84, column: 10, scope: !2050)
!2058 = !DILocation(line: 84, column: 3, scope: !2050)
!2059 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2016, file: !2016, line: 91, type: !2060, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!420, !420, !1564}
!2062 = !{!2063, !2064}
!2063 = !DILocalVariable(name: "__c", arg: 1, scope: !2059, file: !2016, line: 91, type: !420)
!2064 = !DILocalVariable(name: "__stream", arg: 2, scope: !2059, file: !2016, line: 91, type: !1564)
!2065 = !DILocation(line: 0, scope: !2059)
!2066 = !DILocation(line: 93, column: 10, scope: !2059)
!2067 = !DILocation(line: 93, column: 3, scope: !2059)
!2068 = distinct !DISubprogram(name: "putc_unlocked", scope: !2016, file: !2016, line: 101, type: !2060, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2069 = !{!2070, !2071}
!2070 = !DILocalVariable(name: "__c", arg: 1, scope: !2068, file: !2016, line: 101, type: !420)
!2071 = !DILocalVariable(name: "__stream", arg: 2, scope: !2068, file: !2016, line: 101, type: !1564)
!2072 = !DILocation(line: 0, scope: !2068)
!2073 = !DILocation(line: 103, column: 10, scope: !2068)
!2074 = !DILocation(line: 103, column: 3, scope: !2068)
!2075 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2016, file: !2016, line: 108, type: !2051, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2076 = !{!2077}
!2077 = !DILocalVariable(name: "__c", arg: 1, scope: !2075, file: !2016, line: 108, type: !420)
!2078 = !DILocation(line: 0, scope: !2075)
!2079 = !DILocation(line: 110, column: 10, scope: !2075)
!2080 = !DILocation(line: 110, column: 3, scope: !2075)
!2081 = distinct !DISubprogram(name: "getline", scope: !2016, file: !2016, line: 118, type: !2082, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2086)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!2084, !421, !2085, !1564}
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1591, line: 193, baseType: !496)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!2086 = !{!2087, !2088, !2089}
!2087 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2081, file: !2016, line: 118, type: !421)
!2088 = !DILocalVariable(name: "__n", arg: 2, scope: !2081, file: !2016, line: 118, type: !2085)
!2089 = !DILocalVariable(name: "__stream", arg: 3, scope: !2081, file: !2016, line: 118, type: !1564)
!2090 = !DILocation(line: 0, scope: !2081)
!2091 = !DILocation(line: 120, column: 10, scope: !2081)
!2092 = !DILocation(line: 120, column: 3, scope: !2081)
!2093 = distinct !DISubprogram(name: "feof_unlocked", scope: !2016, file: !2016, line: 128, type: !2034, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2094 = !{!2095}
!2095 = !DILocalVariable(name: "__stream", arg: 1, scope: !2093, file: !2016, line: 128, type: !1564)
!2096 = !DILocation(line: 0, scope: !2093)
!2097 = !DILocation(line: 130, column: 10, scope: !2093)
!2098 = !DILocation(line: 130, column: 3, scope: !2093)
!2099 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2016, file: !2016, line: 135, type: !2034, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2100 = !{!2101}
!2101 = !DILocalVariable(name: "__stream", arg: 1, scope: !2099, file: !2016, line: 135, type: !1564)
!2102 = !DILocation(line: 0, scope: !2099)
!2103 = !DILocation(line: 137, column: 10, scope: !2099)
!2104 = !DILocation(line: 137, column: 3, scope: !2099)
!2105 = distinct !DISubprogram(name: "tolower", scope: !2106, file: !2106, line: 207, type: !2051, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2106 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "__c", arg: 1, scope: !2105, file: !2106, line: 207, type: !420)
!2109 = !DILocation(line: 0, scope: !2105)
!2110 = !DILocation(line: 209, column: 22, scope: !2105)
!2111 = !DILocation(line: 209, column: 39, scope: !2105)
!2112 = !DILocation(line: 209, column: 38, scope: !2105)
!2113 = !DILocation(line: 209, column: 37, scope: !2105)
!2114 = !DILocation(line: 209, column: 10, scope: !2105)
!2115 = !DILocation(line: 209, column: 3, scope: !2105)
!2116 = distinct !DISubprogram(name: "toupper", scope: !2106, file: !2106, line: 213, type: !2051, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2117 = !{!2118}
!2118 = !DILocalVariable(name: "__c", arg: 1, scope: !2116, file: !2106, line: 213, type: !420)
!2119 = !DILocation(line: 0, scope: !2116)
!2120 = !DILocation(line: 215, column: 22, scope: !2116)
!2121 = !DILocation(line: 215, column: 39, scope: !2116)
!2122 = !DILocation(line: 215, column: 38, scope: !2116)
!2123 = !DILocation(line: 215, column: 37, scope: !2116)
!2124 = !DILocation(line: 215, column: 10, scope: !2116)
!2125 = !DILocation(line: 215, column: 3, scope: !2116)
!2126 = distinct !DISubprogram(name: "atoi", scope: !2127, file: !2127, line: 361, type: !2128, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2127 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!420, !425}
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2126, file: !2127, line: 361, type: !425)
!2132 = !DILocation(line: 0, scope: !2126)
!2133 = !DILocation(line: 363, column: 16, scope: !2126)
!2134 = !DILocation(line: 363, column: 10, scope: !2126)
!2135 = !DILocation(line: 363, column: 3, scope: !2126)
!2136 = distinct !DISubprogram(name: "atol", scope: !2127, file: !2127, line: 366, type: !2137, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!496, !425}
!2139 = !{!2140}
!2140 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2136, file: !2127, line: 366, type: !425)
!2141 = !DILocation(line: 0, scope: !2136)
!2142 = !DILocation(line: 368, column: 10, scope: !2136)
!2143 = !DILocation(line: 368, column: 3, scope: !2136)
!2144 = distinct !DISubprogram(name: "atoll", scope: !2127, file: !2127, line: 373, type: !2145, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!2147, !425}
!2147 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2144, file: !2127, line: 373, type: !425)
!2150 = !DILocation(line: 0, scope: !2144)
!2151 = !DILocation(line: 375, column: 10, scope: !2144)
!2152 = !DILocation(line: 375, column: 3, scope: !2144)
!2153 = distinct !DISubprogram(name: "bsearch", scope: !2154, file: !2154, line: 20, type: !2155, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!424, !1019, !1019, !434, !434, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2127, line: 808, baseType: !1023)
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2159 = !DILocalVariable(name: "__key", arg: 1, scope: !2153, file: !2154, line: 20, type: !1019)
!2160 = !DILocalVariable(name: "__base", arg: 2, scope: !2153, file: !2154, line: 20, type: !1019)
!2161 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2153, file: !2154, line: 20, type: !434)
!2162 = !DILocalVariable(name: "__size", arg: 4, scope: !2153, file: !2154, line: 20, type: !434)
!2163 = !DILocalVariable(name: "__compar", arg: 5, scope: !2153, file: !2154, line: 21, type: !2157)
!2164 = !DILocalVariable(name: "__l", scope: !2153, file: !2154, line: 23, type: !434)
!2165 = !DILocalVariable(name: "__u", scope: !2153, file: !2154, line: 23, type: !434)
!2166 = !DILocalVariable(name: "__idx", scope: !2153, file: !2154, line: 23, type: !434)
!2167 = !DILocalVariable(name: "__p", scope: !2153, file: !2154, line: 24, type: !1019)
!2168 = !DILocalVariable(name: "__comparison", scope: !2153, file: !2154, line: 25, type: !420)
!2169 = !DILocation(line: 0, scope: !2153)
!2170 = !DILocation(line: 29, column: 3, scope: !2153)
!2171 = !DILocation(line: 27, column: 7, scope: !2153)
!2172 = !DILocation(line: 29, column: 14, scope: !2153)
!2173 = !DILocation(line: 31, column: 20, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2153, file: !2154, line: 30, column: 5)
!2175 = !DILocation(line: 31, column: 27, scope: !2174)
!2176 = !DILocation(line: 32, column: 56, scope: !2174)
!2177 = !DILocation(line: 32, column: 47, scope: !2174)
!2178 = !DILocation(line: 33, column: 22, scope: !2174)
!2179 = !DILocation(line: 34, column: 24, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !2154, line: 34, column: 11)
!2181 = !DILocation(line: 34, column: 11, scope: !2174)
!2182 = !DILocation(line: 36, column: 29, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !2154, line: 36, column: 16)
!2184 = !DILocation(line: 36, column: 16, scope: !2180)
!2185 = !DILocation(line: 37, column: 14, scope: !2183)
!2186 = distinct !{!2186, !2170, !2187}
!2187 = !DILocation(line: 40, column: 5, scope: !2153)
!2188 = !DILocation(line: 43, column: 1, scope: !2153)
!2189 = distinct !DISubprogram(name: "atof", scope: !2190, file: !2190, line: 25, type: !2191, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2193, !425}
!2193 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2194 = !{!2195}
!2195 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2189, file: !2190, line: 25, type: !425)
!2196 = !DILocation(line: 0, scope: !2189)
!2197 = !DILocation(line: 27, column: 10, scope: !2189)
!2198 = !DILocation(line: 27, column: 3, scope: !2189)
!2199 = distinct !DISubprogram(name: "strtoimax", scope: !2200, file: !2200, line: 324, type: !2201, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2200 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2203, !2019, !2206, !420}
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2204, line: 101, baseType: !2205)
!2204 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1591, line: 72, baseType: !496)
!2206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !421)
!2207 = !{!2208, !2209, !2210}
!2208 = !DILocalVariable(name: "nptr", arg: 1, scope: !2199, file: !2200, line: 324, type: !2019)
!2209 = !DILocalVariable(name: "endptr", arg: 2, scope: !2199, file: !2200, line: 324, type: !2206)
!2210 = !DILocalVariable(name: "base", arg: 3, scope: !2199, file: !2200, line: 324, type: !420)
!2211 = !DILocation(line: 0, scope: !2199)
!2212 = !DILocation(line: 327, column: 10, scope: !2199)
!2213 = !DILocation(line: 327, column: 3, scope: !2199)
!2214 = distinct !DISubprogram(name: "strtoumax", scope: !2200, file: !2200, line: 336, type: !2215, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2217, !2019, !2206, !420}
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2204, line: 102, baseType: !2218)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1591, line: 73, baseType: !436)
!2219 = !{!2220, !2221, !2222}
!2220 = !DILocalVariable(name: "nptr", arg: 1, scope: !2214, file: !2200, line: 336, type: !2019)
!2221 = !DILocalVariable(name: "endptr", arg: 2, scope: !2214, file: !2200, line: 336, type: !2206)
!2222 = !DILocalVariable(name: "base", arg: 3, scope: !2214, file: !2200, line: 336, type: !420)
!2223 = !DILocation(line: 0, scope: !2214)
!2224 = !DILocation(line: 339, column: 10, scope: !2214)
!2225 = !DILocation(line: 339, column: 3, scope: !2214)
!2226 = distinct !DISubprogram(name: "wcstoimax", scope: !2200, file: !2200, line: 348, type: !2227, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2203, !2229, !2233, !420}
!2229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2232)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2200, line: 34, baseType: !420)
!2233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2234)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "nptr", arg: 1, scope: !2226, file: !2200, line: 348, type: !2229)
!2238 = !DILocalVariable(name: "endptr", arg: 2, scope: !2226, file: !2200, line: 348, type: !2233)
!2239 = !DILocalVariable(name: "base", arg: 3, scope: !2226, file: !2200, line: 348, type: !420)
!2240 = !DILocation(line: 0, scope: !2226)
!2241 = !DILocation(line: 351, column: 10, scope: !2226)
!2242 = !DILocation(line: 351, column: 3, scope: !2226)
!2243 = distinct !DISubprogram(name: "wcstoumax", scope: !2200, file: !2200, line: 362, type: !2244, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!2217, !2229, !2233, !420}
!2246 = !{!2247, !2248, !2249}
!2247 = !DILocalVariable(name: "nptr", arg: 1, scope: !2243, file: !2200, line: 362, type: !2229)
!2248 = !DILocalVariable(name: "endptr", arg: 2, scope: !2243, file: !2200, line: 362, type: !2233)
!2249 = !DILocalVariable(name: "base", arg: 3, scope: !2243, file: !2200, line: 362, type: !420)
!2250 = !DILocation(line: 0, scope: !2243)
!2251 = !DILocation(line: 365, column: 10, scope: !2243)
!2252 = !DILocation(line: 365, column: 3, scope: !2243)
!2253 = distinct !DISubprogram(name: "stat", scope: !2254, file: !2254, line: 453, type: !2255, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!420, !425, !2257}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2259, line: 46, size: 1152, elements: !2260)
!2259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2260 = !{!2261, !2263, !2265, !2267, !2269, !2271, !2273, !2274, !2275, !2276, !2278, !2280, !2288, !2289, !2290}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2258, file: !2259, line: 48, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1591, line: 145, baseType: !436)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2258, file: !2259, line: 53, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1591, line: 148, baseType: !436)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2258, file: !2259, line: 61, baseType: !2266, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1591, line: 151, baseType: !436)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2258, file: !2259, line: 62, baseType: !2268, size: 32, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1591, line: 150, baseType: !7)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2258, file: !2259, line: 64, baseType: !2270, size: 32, offset: 224)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1591, line: 146, baseType: !7)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2258, file: !2259, line: 65, baseType: !2272, size: 32, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1591, line: 147, baseType: !7)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2258, file: !2259, line: 67, baseType: !420, size: 32, offset: 288)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2258, file: !2259, line: 69, baseType: !2262, size: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2258, file: !2259, line: 74, baseType: !1590, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2258, file: !2259, line: 78, baseType: !2277, size: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1591, line: 174, baseType: !496)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2258, file: !2259, line: 80, baseType: !2279, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1591, line: 179, baseType: !496)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2258, file: !2259, line: 91, baseType: !2281, size: 128, offset: 576)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2282, line: 10, size: 128, elements: !2283)
!2282 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2283 = !{!2284, !2286}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2281, file: !2282, line: 12, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1591, line: 160, baseType: !496)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2281, file: !2282, line: 16, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1591, line: 196, baseType: !496)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2258, file: !2259, line: 92, baseType: !2281, size: 128, offset: 704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2258, file: !2259, line: 93, baseType: !2281, size: 128, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2258, file: !2259, line: 106, baseType: !2291, size: 192, offset: 960)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2287, size: 192, elements: !2292)
!2292 = !{!2293}
!2293 = !DISubrange(count: 3)
!2294 = !{!2295, !2296}
!2295 = !DILocalVariable(name: "__path", arg: 1, scope: !2253, file: !2254, line: 453, type: !425)
!2296 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2253, file: !2254, line: 453, type: !2257)
!2297 = !DILocation(line: 0, scope: !2253)
!2298 = !DILocation(line: 455, column: 10, scope: !2253)
!2299 = !DILocation(line: 455, column: 3, scope: !2253)
!2300 = distinct !DISubprogram(name: "lstat", scope: !2254, file: !2254, line: 460, type: !2255, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2301)
!2301 = !{!2302, !2303}
!2302 = !DILocalVariable(name: "__path", arg: 1, scope: !2300, file: !2254, line: 460, type: !425)
!2303 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2300, file: !2254, line: 460, type: !2257)
!2304 = !DILocation(line: 0, scope: !2300)
!2305 = !DILocation(line: 462, column: 10, scope: !2300)
!2306 = !DILocation(line: 462, column: 3, scope: !2300)
!2307 = distinct !DISubprogram(name: "fstat", scope: !2254, file: !2254, line: 467, type: !2308, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!420, !420, !2257}
!2310 = !{!2311, !2312}
!2311 = !DILocalVariable(name: "__fd", arg: 1, scope: !2307, file: !2254, line: 467, type: !420)
!2312 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2307, file: !2254, line: 467, type: !2257)
!2313 = !DILocation(line: 0, scope: !2307)
!2314 = !DILocation(line: 469, column: 10, scope: !2307)
!2315 = !DILocation(line: 469, column: 3, scope: !2307)
!2316 = distinct !DISubprogram(name: "fstatat", scope: !2254, file: !2254, line: 474, type: !2317, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!420, !420, !425, !2257, !420}
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DILocalVariable(name: "__fd", arg: 1, scope: !2316, file: !2254, line: 474, type: !420)
!2321 = !DILocalVariable(name: "__filename", arg: 2, scope: !2316, file: !2254, line: 474, type: !425)
!2322 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2316, file: !2254, line: 474, type: !2257)
!2323 = !DILocalVariable(name: "__flag", arg: 4, scope: !2316, file: !2254, line: 474, type: !420)
!2324 = !DILocation(line: 0, scope: !2316)
!2325 = !DILocation(line: 477, column: 10, scope: !2316)
!2326 = !DILocation(line: 477, column: 3, scope: !2316)
!2327 = distinct !DISubprogram(name: "mknod", scope: !2254, file: !2254, line: 483, type: !2328, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!420, !425, !2268, !2262}
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "__path", arg: 1, scope: !2327, file: !2254, line: 483, type: !425)
!2332 = !DILocalVariable(name: "__mode", arg: 2, scope: !2327, file: !2254, line: 483, type: !2268)
!2333 = !DILocalVariable(name: "__dev", arg: 3, scope: !2327, file: !2254, line: 483, type: !2262)
!2334 = !DILocation(line: 0, scope: !2327)
!2335 = !DILocation(line: 485, column: 10, scope: !2327)
!2336 = !DILocation(line: 485, column: 3, scope: !2327)
!2337 = distinct !DISubprogram(name: "mknodat", scope: !2254, file: !2254, line: 491, type: !2338, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!420, !420, !425, !2268, !2262}
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "__fd", arg: 1, scope: !2337, file: !2254, line: 491, type: !420)
!2342 = !DILocalVariable(name: "__path", arg: 2, scope: !2337, file: !2254, line: 491, type: !425)
!2343 = !DILocalVariable(name: "__mode", arg: 3, scope: !2337, file: !2254, line: 491, type: !2268)
!2344 = !DILocalVariable(name: "__dev", arg: 4, scope: !2337, file: !2254, line: 491, type: !2262)
!2345 = !DILocation(line: 0, scope: !2337)
!2346 = !DILocation(line: 494, column: 10, scope: !2337)
!2347 = !DILocation(line: 494, column: 3, scope: !2337)
!2348 = distinct !DISubprogram(name: "stat64", scope: !2254, file: !2254, line: 502, type: !2349, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!420, !425, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2259, line: 119, size: 1152, elements: !2353)
!2353 = !{!2354, !2355, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2367, !2368, !2369, !2370}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2352, file: !2259, line: 121, baseType: !2262, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2352, file: !2259, line: 123, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1591, line: 149, baseType: !436)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2352, file: !2259, line: 124, baseType: !2266, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2352, file: !2259, line: 125, baseType: !2268, size: 32, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2352, file: !2259, line: 132, baseType: !2270, size: 32, offset: 224)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2352, file: !2259, line: 133, baseType: !2272, size: 32, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2352, file: !2259, line: 135, baseType: !420, size: 32, offset: 288)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2352, file: !2259, line: 136, baseType: !2262, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2352, file: !2259, line: 137, baseType: !1590, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2352, file: !2259, line: 143, baseType: !2277, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2352, file: !2259, line: 144, baseType: !2366, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1591, line: 180, baseType: !496)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2352, file: !2259, line: 152, baseType: !2281, size: 128, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2352, file: !2259, line: 153, baseType: !2281, size: 128, offset: 704)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2352, file: !2259, line: 154, baseType: !2281, size: 128, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2352, file: !2259, line: 164, baseType: !2291, size: 192, offset: 960)
!2371 = !{!2372, !2373}
!2372 = !DILocalVariable(name: "__path", arg: 1, scope: !2348, file: !2254, line: 502, type: !425)
!2373 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2348, file: !2254, line: 502, type: !2351)
!2374 = !DILocation(line: 0, scope: !2348)
!2375 = !DILocation(line: 504, column: 10, scope: !2348)
!2376 = !DILocation(line: 504, column: 3, scope: !2348)
!2377 = distinct !DISubprogram(name: "lstat64", scope: !2254, file: !2254, line: 509, type: !2349, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2378 = !{!2379, !2380}
!2379 = !DILocalVariable(name: "__path", arg: 1, scope: !2377, file: !2254, line: 509, type: !425)
!2380 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2377, file: !2254, line: 509, type: !2351)
!2381 = !DILocation(line: 0, scope: !2377)
!2382 = !DILocation(line: 511, column: 10, scope: !2377)
!2383 = !DILocation(line: 511, column: 3, scope: !2377)
!2384 = distinct !DISubprogram(name: "fstat64", scope: !2254, file: !2254, line: 516, type: !2385, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!420, !420, !2351}
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "__fd", arg: 1, scope: !2384, file: !2254, line: 516, type: !420)
!2389 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2384, file: !2254, line: 516, type: !2351)
!2390 = !DILocation(line: 0, scope: !2384)
!2391 = !DILocation(line: 518, column: 10, scope: !2384)
!2392 = !DILocation(line: 518, column: 3, scope: !2384)
!2393 = distinct !DISubprogram(name: "fstatat64", scope: !2254, file: !2254, line: 523, type: !2394, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!420, !420, !425, !2351, !420}
!2396 = !{!2397, !2398, !2399, !2400}
!2397 = !DILocalVariable(name: "__fd", arg: 1, scope: !2393, file: !2254, line: 523, type: !420)
!2398 = !DILocalVariable(name: "__filename", arg: 2, scope: !2393, file: !2254, line: 523, type: !425)
!2399 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2393, file: !2254, line: 523, type: !2351)
!2400 = !DILocalVariable(name: "__flag", arg: 4, scope: !2393, file: !2254, line: 523, type: !420)
!2401 = !DILocation(line: 0, scope: !2393)
!2402 = !DILocation(line: 526, column: 10, scope: !2393)
!2403 = !DILocation(line: 526, column: 3, scope: !2393)
!2404 = distinct !DISubprogram(name: "finish_file", scope: !3, file: !3, line: 54, type: !1733, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2029)
!2405 = !DILocation(line: 56, column: 1, scope: !2404)
