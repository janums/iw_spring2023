; ModuleID = 'tree-mudflap.bc'
source_filename = "tree-mudflap.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.gimplify_ctx = type { %struct.gimplify_ctx*, %struct.VEC_gimple_heap*, %union.tree_node*, %struct.gimple_seq_d*, %union.tree_node*, %union.tree_node*, %struct.VEC_tree_heap*, %struct.htab*, i32, i8, i8, i8 }
%struct.VEC_gimple_heap = type { %struct.VEC_gimple_base }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.mf_xform_decls_data = type { %union.tree_node* }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, i8*, %struct.pointer_set_t*, i8, i8, i8, i8, %union.tree_node* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.pointer_set_t = type opaque
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.tree_field_decl = type { %struct.tree_decl_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_exp = type { %struct.tree_common, i32, %union.tree_node*, [1 x %union.tree_node*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@mudflap_init.done = internal unnamed_addr global i1 false, align 1, !dbg !0
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@ptr_mode = external dso_local local_unnamed_addr global i32, align 4
@mf_uintptr_type = internal global %union.tree_node* null, align 8, !dbg !2004
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@mf_cache_struct_type = internal global %union.tree_node* null, align 8, !dbg !2006
@mf_cache_structptr_type = internal global %union.tree_node* null, align 8, !dbg !2008
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str = private unnamed_addr constant [18 x i8] c"__mf_lookup_cache\00", align 1
@mf_cache_array_decl = internal global %union.tree_node* null, align 8, !dbg !2010
@.str.1 = private unnamed_addr constant [14 x i8] c"__mf_lc_shift\00", align 1
@mf_cache_shift_decl = internal global %union.tree_node* null, align 8, !dbg !2012
@.str.2 = private unnamed_addr constant [13 x i8] c"__mf_lc_mask\00", align 1
@mf_cache_mask_decl = internal global %union.tree_node* null, align 8, !dbg !2014
@.str.3 = private unnamed_addr constant [11 x i8] c"__mf_check\00", align 1
@mf_check_fndecl = internal global %union.tree_node* null, align 8, !dbg !2020
@.str.4 = private unnamed_addr constant [14 x i8] c"__mf_register\00", align 1
@mf_register_fndecl = internal global %union.tree_node* null, align 8, !dbg !2022
@.str.5 = private unnamed_addr constant [16 x i8] c"__mf_unregister\00", align 1
@mf_unregister_fndecl = internal global %union.tree_node* null, align 8, !dbg !2024
@.str.6 = private unnamed_addr constant [10 x i8] c"__mf_init\00", align 1
@mf_init_fndecl = internal global %union.tree_node* null, align 8, !dbg !2026
@.str.7 = private unnamed_addr constant [17 x i8] c"__mf_set_options\00", align 1
@mf_set_options_fndecl = internal global %union.tree_node* null, align 8, !dbg !2028
@marked_trees = internal global %struct.htab* null, align 8, !dbg !2034
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8
@htab_eq_pointer = external dso_local local_unnamed_addr global i32 (i8*, i8*)*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@deferred_static_decls = internal global %struct.VEC_tree_gc* null, align 8, !dbg !2030
@.str.8 = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@flag_mudflap_ignore_reads = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"-ignore-reads\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"tree-mudflap.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"mudflap cannot track unknown size extern %qE\00", align 1
@enqueued_call_stmt_chain = internal global %union.tree_node* null, align 8, !dbg !2032
@.str.14 = private unnamed_addr constant [9 x i8] c"mudflap1\00", align 1
@pass_mudflap_1 = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8 ()* @gate_mudflap, i32 ()* @execute_mudflap_function_decls, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1 } }, align 8, !dbg !1958
@.str.15 = private unnamed_addr constant [9 x i8] c"mudflap2\00", align 1
@pass_mudflap_2 = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8 ()* @gate_mudflap, i32 ()* @execute_mudflap_function_ops, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 44, i32 0, i32 0, i32 0, i32 2073 } }, align 8, !dbg !1986
@mf_cache_mask_decl_l = internal global %union.tree_node* null, align 8, !dbg !2018
@mf_cache_shift_decl_l = internal global %union.tree_node* null, align 8, !dbg !2016
@gt_ggc_r_gt_tree_mudflap_h = dso_local local_unnamed_addr constant [17 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%union.tree_node** @enqueued_call_stmt_chain to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%struct.VEC_tree_gc** @deferred_static_decls to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_tree_gc, void (i8*)* @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { i8* bitcast (%struct.htab** @marked_trees to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_m_P9tree_node4htab, void (i8*)* @gt_pch_n_P9tree_node4htab }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_set_options_fndecl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_init_fndecl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_unregister_fndecl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_register_fndecl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_check_fndecl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_cache_mask_decl_l to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_cache_shift_decl_l to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_cache_mask_decl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_cache_shift_decl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_cache_array_decl to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_cache_structptr_type to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_cache_struct_type to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @mf_uintptr_type to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1988
@.str.16 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"__mf_cache\00", align 1
@mf_varname_tree.buf_rec = internal global %struct.pretty_print_info zeroinitializer, align 8, !dbg !2036
@mf_varname_tree.initialized = internal unnamed_addr global i1 false, align 4, !dbg !2195
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"<unknown file>\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"anonymous fn\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"<unnamed variable>\00", align 1
@flag_mudflap = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [42 x i8] c"mudflap cannot track %qE in stub function\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"__mf_lookup_shift_l\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"__mf_lookup_mask_l\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.31 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@.str.32 = private unnamed_addr constant [57 x i8] c"mudflap checking not yet implemented for ARRAY_RANGE_REF\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"__mf_elem\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"__mf_base\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"__mf_limit\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"__mf_unlikely_cond\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [2 x i8] c")\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.40 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2208, metadata !DIExpression()), !dbg !2209
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2210
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2211
  ret i32 %call, !dbg !2212
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2213 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2217
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2218
  ret i32 %call, !dbg !2219
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2220 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2224, metadata !DIExpression()), !dbg !2225
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2226
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2226
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2226
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2226
  %cmp = icmp uge i8* %0, %1, !dbg !2226
  %conv1 = zext i1 %cmp to i64, !dbg !2226
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2226
  %tobool = icmp eq i64 %expval, 0, !dbg !2226
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2226

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2226
  br label %cond.end, !dbg !2226

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2226
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2226
  %2 = load i8, i8* %0, align 1, !dbg !2226
  %conv3 = zext i8 %2 to i32, !dbg !2226
  br label %cond.end, !dbg !2226

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2226
  ret i32 %cond, !dbg !2227
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2228 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2230, metadata !DIExpression()), !dbg !2231
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2232
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2232
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2232
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2232
  %cmp = icmp uge i8* %0, %1, !dbg !2232
  %conv1 = zext i1 %cmp to i64, !dbg !2232
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2232
  %tobool = icmp eq i64 %expval, 0, !dbg !2232
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2232

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2232
  br label %cond.end, !dbg !2232

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2232
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2232
  %2 = load i8, i8* %0, align 1, !dbg !2232
  %conv3 = zext i8 %2 to i32, !dbg !2232
  br label %cond.end, !dbg !2232

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2232
  ret i32 %cond, !dbg !2233
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2234 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2235
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2235
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2235
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2235
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2235
  %cmp = icmp uge i8* %1, %2, !dbg !2235
  %conv1 = zext i1 %cmp to i64, !dbg !2235
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2235
  %tobool = icmp eq i64 %expval, 0, !dbg !2235
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2235

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2235
  br label %cond.end, !dbg !2235

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2235
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2235
  %3 = load i8, i8* %1, align 1, !dbg !2235
  %conv3 = zext i8 %3 to i32, !dbg !2235
  br label %cond.end, !dbg !2235

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2235
  ret i32 %cond, !dbg !2236
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2241, metadata !DIExpression()), !dbg !2242
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2243
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2244
  ret i32 %call, !dbg !2245
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2246 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2250, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2251, metadata !DIExpression()), !dbg !2252
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2253
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2253
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2253
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2253
  %cmp = icmp uge i8* %0, %1, !dbg !2253
  %conv1 = zext i1 %cmp to i64, !dbg !2253
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2253
  %tobool = icmp eq i64 %expval, 0, !dbg !2253
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2253

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2253
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2253
  br label %cond.end, !dbg !2253

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2253
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2253
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2253
  store i8 %conv2, i8* %0, align 1, !dbg !2253
  %conv6 = and i32 %__c, 255, !dbg !2253
  br label %cond.end, !dbg !2253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2253
  ret i32 %cond, !dbg !2254
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2255 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2257, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2258, metadata !DIExpression()), !dbg !2259
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2260
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2260
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2260
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2260
  %cmp = icmp uge i8* %0, %1, !dbg !2260
  %conv1 = zext i1 %cmp to i64, !dbg !2260
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2260
  %tobool = icmp eq i64 %expval, 0, !dbg !2260
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2260

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2260
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2260
  br label %cond.end, !dbg !2260

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2260
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2260
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2260
  store i8 %conv2, i8* %0, align 1, !dbg !2260
  %conv6 = and i32 %__c, 255, !dbg !2260
  br label %cond.end, !dbg !2260

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2260
  ret i32 %cond, !dbg !2261
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2262 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2264, metadata !DIExpression()), !dbg !2265
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2266
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2266
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2266
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2266
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2266
  %cmp = icmp uge i8* %1, %2, !dbg !2266
  %conv1 = zext i1 %cmp to i64, !dbg !2266
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2266
  %tobool = icmp eq i64 %expval, 0, !dbg !2266
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2266

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2266
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2266
  br label %cond.end, !dbg !2266

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2266
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2266
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2266
  store i8 %conv4, i8* %1, align 1, !dbg !2266
  %conv6 = and i32 %__c, 255, !dbg !2266
  br label %cond.end, !dbg !2266

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2266
  ret i32 %cond, !dbg !2267
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2278
  ret i64 %call, !dbg !2279
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2282, metadata !DIExpression()), !dbg !2283
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2284
  %0 = load i32, i32* %_flags, align 8, !dbg !2284
  %and = lshr i32 %0, 4, !dbg !2284
  %and.lobit = and i32 %and, 1, !dbg !2284
  ret i32 %and.lobit, !dbg !2285
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2286 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2288, metadata !DIExpression()), !dbg !2289
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2290
  %0 = load i32, i32* %_flags, align 8, !dbg !2290
  %and = lshr i32 %0, 5, !dbg !2290
  %and.lobit = and i32 %and, 1, !dbg !2290
  ret i32 %and.lobit, !dbg !2291
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2292 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2295, metadata !DIExpression()), !dbg !2296
  %__c.off = add i32 %__c, 128, !dbg !2297
  %0 = icmp ult i32 %__c.off, 384, !dbg !2297
  br i1 %0, label %cond.true, label %cond.end, !dbg !2297

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2298
  %1 = load i32*, i32** %call, align 8, !dbg !2299
  %idxprom = sext i32 %__c to i64, !dbg !2300
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2300
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2300
  br label %cond.end, !dbg !2301

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2301
  ret i32 %cond, !dbg !2302
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2303 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2305, metadata !DIExpression()), !dbg !2306
  %__c.off = add i32 %__c, 128, !dbg !2307
  %0 = icmp ult i32 %__c.off, 384, !dbg !2307
  br i1 %0, label %cond.true, label %cond.end, !dbg !2307

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2308
  %1 = load i32*, i32** %call, align 8, !dbg !2309
  %idxprom = sext i32 %__c to i64, !dbg !2310
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2310
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2310
  br label %cond.end, !dbg !2311

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2311
  ret i32 %cond, !dbg !2312
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2318, metadata !DIExpression()), !dbg !2319
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2320
  %conv = trunc i64 %call to i32, !dbg !2321
  ret i32 %conv, !dbg !2322
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2327, metadata !DIExpression()), !dbg !2328
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2329
  ret i64 %call, !dbg !2330
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2331 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2336, metadata !DIExpression()), !dbg !2337
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2338
  ret i64 %call, !dbg !2339
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2340 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2346, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2347, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2348, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2349, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2350, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 0, metadata !2351, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2352, metadata !DIExpression()), !dbg !2356
  br label %while.cond, !dbg !2357

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2358
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2356
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2352, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2351, metadata !DIExpression()), !dbg !2356
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2359
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2357

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2360
  %div = lshr i64 %add, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %div, metadata !2353, metadata !DIExpression()), !dbg !2356
  %mul = mul i64 %div, %__size, !dbg !2363
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2354, metadata !DIExpression()), !dbg !2356
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %call, metadata !2355, metadata !DIExpression()), !dbg !2356
  %cmp1 = icmp slt i32 %call, 0, !dbg !2366
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2368

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2369
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2371

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2351, metadata !DIExpression()), !dbg !2356
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2356
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2356
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2352, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2351, metadata !DIExpression()), !dbg !2356
  br label %while.cond, !dbg !2357, !llvm.loop !2373

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2356
  ret i8* %retval.0, !dbg !2375
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2376 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2382, metadata !DIExpression()), !dbg !2383
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2384
  ret double %call, !dbg !2385
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2386 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 %base, metadata !2397, metadata !DIExpression()), !dbg !2398
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2399
  ret i64 %call, !dbg !2400
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2401 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %base, metadata !2409, metadata !DIExpression()), !dbg !2410
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2411
  ret i64 %call, !dbg !2412
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2413 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 %base, metadata !2426, metadata !DIExpression()), !dbg !2427
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2428
  ret i64 %call, !dbg !2429
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2430 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %base, metadata !2436, metadata !DIExpression()), !dbg !2437
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2438
  ret i64 %call, !dbg !2439
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2481, metadata !DIExpression()), !dbg !2482
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2483
  ret i32 %call, !dbg !2484
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2485 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2488, metadata !DIExpression()), !dbg !2489
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2490
  ret i32 %call, !dbg !2491
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2492 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2497, metadata !DIExpression()), !dbg !2498
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2499
  ret i32 %call, !dbg !2500
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2501 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2505, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2508, metadata !DIExpression()), !dbg !2509
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2510
  ret i32 %call, !dbg !2511
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2512 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2518, metadata !DIExpression(DW_OP_deref)), !dbg !2519
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2520
  ret i32 %call, !dbg !2521
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2522 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2526, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2527, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2529, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2531
  ret i32 %call, !dbg !2532
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2533 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2557, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2558, metadata !DIExpression()), !dbg !2559
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2560
  ret i32 %call, !dbg !2561
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2562 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2565, metadata !DIExpression()), !dbg !2566
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2567
  ret i32 %call, !dbg !2568
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2569 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2574, metadata !DIExpression()), !dbg !2575
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2576
  ret i32 %call, !dbg !2577
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2578 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2582, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2584, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2585, metadata !DIExpression()), !dbg !2586
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2587
  ret i32 %call, !dbg !2588
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mudflap_init() local_unnamed_addr #5 !dbg !2 {
entry:
  %.b = load i1, i1* @mudflap_init.done, align 1, !dbg !2589
  br i1 %.b, label %cleanup.cont, label %if.end, !dbg !2591

if.end:                                           ; preds = %entry
  store i1 true, i1* @mudflap_init.done, align 1, !dbg !2592
  %0 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 2), align 8, !dbg !2593
  %1 = load i32, i32* @ptr_mode, align 4, !dbg !2594
  %call = tail call %union.tree_node* %0(i32 %1, i32 1) #6, !dbg !2595
  store %union.tree_node* %call, %union.tree_node** @mf_uintptr_type, align 8, !dbg !2596
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2597
  %call1 = tail call %union.tree_node* @build_qualified_type(%union.tree_node* %2, i32 1) #6, !dbg !2598
  %call2 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call1) #6, !dbg !2599
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2189, metadata !DIExpression()), !dbg !2600
  %3 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !2601
  %call3 = tail call fastcc %union.tree_node* @mf_make_mf_cache_struct_type(%union.tree_node* %3) #7, !dbg !2602
  store %union.tree_node* %call3, %union.tree_node** @mf_cache_struct_type, align 8, !dbg !2603
  %call4 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call3) #6, !dbg !2604
  store %union.tree_node* %call4, %union.tree_node** @mf_cache_structptr_type, align 8, !dbg !2605
  %4 = load %union.tree_node*, %union.tree_node** @mf_cache_struct_type, align 8, !dbg !2606
  %call5 = tail call %union.tree_node* @build_array_type(%union.tree_node* %4, %union.tree_node* null) #6, !dbg !2607
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2190, metadata !DIExpression()), !dbg !2600
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2608
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !2608
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !2608
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2608
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !2608
  %call6 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %call2, %union.tree_node* %9) #6, !dbg !2608
  %call7 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %8, %union.tree_node* %call6) #6, !dbg !2608
  %call8 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %7, %union.tree_node* %call7) #6, !dbg !2608
  %call9 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %6, %union.tree_node* %call8) #6, !dbg !2608
  %call10 = tail call %union.tree_node* @build_function_type(%union.tree_node* %5, %union.tree_node* %call9) #6, !dbg !2608
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !2191, metadata !DIExpression()), !dbg !2600
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2609
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !2609
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !2609
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2609
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !2609
  %call11 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %13, %union.tree_node* %14) #6, !dbg !2609
  %call12 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %12, %union.tree_node* %call11) #6, !dbg !2609
  %call13 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %11, %union.tree_node* %call12) #6, !dbg !2609
  %call14 = tail call %union.tree_node* @build_function_type(%union.tree_node* %10, %union.tree_node* %call13) #6, !dbg !2609
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !2192, metadata !DIExpression()), !dbg !2600
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2610
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !2610
  %call15 = tail call %union.tree_node* @build_function_type(%union.tree_node* %15, %union.tree_node* %16) #6, !dbg !2610
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2193, metadata !DIExpression()), !dbg !2600
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2611
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !2611
  %call16 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %call2, %union.tree_node* %18) #6, !dbg !2611
  %call17 = tail call %union.tree_node* @build_function_type(%union.tree_node* %17, %union.tree_node* %call16) #6, !dbg !2611
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !2194, metadata !DIExpression()), !dbg !2600
  %call18 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %union.tree_node* %call5) #7, !dbg !2612
  store %union.tree_node* %call18, %union.tree_node** @mf_cache_array_decl, align 8, !dbg !2613
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 2), align 16, !dbg !2614
  %call19 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %union.tree_node* %19) #7, !dbg !2615
  store %union.tree_node* %call19, %union.tree_node** @mf_cache_shift_decl, align 8, !dbg !2616
  %20 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !2617
  %call20 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %union.tree_node* %20) #7, !dbg !2618
  store %union.tree_node* %call20, %union.tree_node** @mf_cache_mask_decl, align 8, !dbg !2619
  %21 = load %union.tree_node*, %union.tree_node** @mf_cache_array_decl, align 8, !dbg !2620
  %call21 = tail call %union.tree_node* @mf_mark(%union.tree_node* %21) #7, !dbg !2621
  %22 = load %union.tree_node*, %union.tree_node** @mf_cache_shift_decl, align 8, !dbg !2622
  %call22 = tail call %union.tree_node* @mf_mark(%union.tree_node* %22) #7, !dbg !2623
  %23 = load %union.tree_node*, %union.tree_node** @mf_cache_mask_decl, align 8, !dbg !2624
  %call23 = tail call %union.tree_node* @mf_mark(%union.tree_node* %23) #7, !dbg !2625
  %call24 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %union.tree_node* %call10) #7, !dbg !2626
  store %union.tree_node* %call24, %union.tree_node** @mf_check_fndecl, align 8, !dbg !2627
  %call25 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %union.tree_node* %call10) #7, !dbg !2628
  store %union.tree_node* %call25, %union.tree_node** @mf_register_fndecl, align 8, !dbg !2629
  %call26 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %union.tree_node* %call14) #7, !dbg !2630
  store %union.tree_node* %call26, %union.tree_node** @mf_unregister_fndecl, align 8, !dbg !2631
  %call27 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %union.tree_node* %call15) #7, !dbg !2632
  store %union.tree_node* %call27, %union.tree_node** @mf_init_fndecl, align 8, !dbg !2633
  %call28 = tail call fastcc %union.tree_node* @mf_make_builtin(i32 29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %call17) #7, !dbg !2634
  store %union.tree_node* %call28, %union.tree_node** @mf_set_options_fndecl, align 8, !dbg !2635
  br label %cleanup.cont, !dbg !2636

cleanup.cont:                                     ; preds = %entry, %if.end
  ret void, !dbg !2636
}

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_qualified_type(%union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @mf_make_mf_cache_struct_type(%union.tree_node* %field_type) unnamed_addr #0 !dbg !2637 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %field_type, metadata !2639, metadata !DIExpression()), !dbg !2643
  %call = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2644
  %call1 = tail call %union.tree_node* @build_decl_stat(i32 0, i32 31, %union.tree_node* %call, %union.tree_node* %field_type) #6, !dbg !2644
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2640, metadata !DIExpression()), !dbg !2643
  %call2 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2645
  %call3 = tail call %union.tree_node* @build_decl_stat(i32 0, i32 31, %union.tree_node* %call2, %union.tree_node* %field_type) #6, !dbg !2645
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2641, metadata !DIExpression()), !dbg !2643
  %call4 = tail call %union.tree_node* @make_node_stat(i32 16) #6, !dbg !2646
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2642, metadata !DIExpression()), !dbg !2643
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2647
  store %union.tree_node* %call4, %union.tree_node** %context, align 8, !dbg !2648
  %context6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2649
  store %union.tree_node* %call4, %union.tree_node** %context6, align 8, !dbg !2650
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2651
  store %union.tree_node* %call3, %union.tree_node** %chain, align 8, !dbg !2652
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2653
  %0 = bitcast i32* %values to %union.tree_node**, !dbg !2653
  store %union.tree_node* %call1, %union.tree_node** %0, align 8, !dbg !2654
  %call7 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2655
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !2656
  store %union.tree_node* %call7, %union.tree_node** %1, align 8, !dbg !2657
  tail call void @layout_type(%union.tree_node* %call4) #6, !dbg !2658
  ret %union.tree_node* %call4, !dbg !2659
}

declare dso_local %union.tree_node* @build_array_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @tree_cons_stat(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @mf_make_builtin(i32 %category, i8* %name, %union.tree_node* %type) unnamed_addr #0 !dbg !2660 {
entry:
  call void @llvm.dbg.value(metadata i32 %category, metadata !2664, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8* %name, metadata !2665, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2666, metadata !DIExpression()), !dbg !2668
  %call = tail call %union.tree_node* @get_identifier(i8* %name) #6, !dbg !2669
  %call1 = tail call %union.tree_node* @build_decl_stat(i32 0, i32 %category, %union.tree_node* %call, %union.tree_node* %type) #6, !dbg !2669
  %call2 = tail call %union.tree_node* @mf_mark(%union.tree_node* %call1) #7, !dbg !2670
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2667, metadata !DIExpression()), !dbg !2668
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2671
  %bf.load = load i64, i64* %0, align 8, !dbg !2672
  %bf.set = or i64 %bf.load, 134217728, !dbg !2672
  store i64 %bf.set, i64* %0, align 8, !dbg !2672
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2673
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2673
  %bf.load3 = load i64, i64* %1, align 8, !dbg !2674
  %bf.set5 = or i64 %bf.load3, 33554432, !dbg !2674
  store i64 %bf.set5, i64* %1, align 8, !dbg !2674
  %2 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 33, i32 1), align 8, !dbg !2675
  %call6 = tail call %union.tree_node* %2(%union.tree_node* %call2) #6, !dbg !2676
  %bf.load8 = load i64, i64* %1, align 8, !dbg !2677
  %bf.set14 = or i64 %bf.load8, 5120, !dbg !2678
  store i64 %bf.set14, i64* %1, align 8, !dbg !2678
  ret %union.tree_node* %call2, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @mf_mark(%union.tree_node* %t) local_unnamed_addr #5 !dbg !2680 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2682, metadata !DIExpression()), !dbg !2684
  %0 = load %struct.htab*, %struct.htab** @marked_trees, align 8, !dbg !2685
  %cmp = icmp eq %struct.htab* %0, null, !dbg !2687
  br i1 %cmp, label %if.then, label %if.end, !dbg !2688

if.then:                                          ; preds = %entry
  %1 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !2689
  %2 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** @htab_eq_pointer, align 8, !dbg !2689
  %call = tail call %struct.htab* @htab_create_alloc(i64 31, i32 (i8*)* %1, i32 (i8*, i8*)* %2, void (i8*)* null, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !2689
  store %struct.htab* %call, %struct.htab** @marked_trees, align 8, !dbg !2690
  br label %if.end, !dbg !2691

if.end:                                           ; preds = %if.then, %entry
  %3 = phi %struct.htab* [ %call, %if.then ], [ %0, %entry ], !dbg !2692
  %4 = bitcast %union.tree_node* %t to i8*, !dbg !2693
  %call1 = tail call i8** @htab_find_slot(%struct.htab* %3, i8* %4, i32 1) #6, !dbg !2694
  call void @llvm.dbg.value(metadata i8** %call1, metadata !2683, metadata !DIExpression()), !dbg !2684
  %5 = bitcast i8** %call1 to %union.tree_node**, !dbg !2695
  store %union.tree_node* %t, %union.tree_node** %5, align 8, !dbg !2695
  ret %union.tree_node* %t, !dbg !2696
}

declare dso_local %struct.htab* @htab_create_alloc(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8* (i64, i64)*, void (i8*)*) local_unnamed_addr #2

declare dso_local i8* @ggc_calloc(i64, i64) #2

declare dso_local void @ggc_free(i8*) #2

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mf_marked_p(%union.tree_node* %t) local_unnamed_addr #5 !dbg !2697 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2701, metadata !DIExpression()), !dbg !2703
  %0 = load %struct.htab*, %struct.htab** @marked_trees, align 8, !dbg !2704
  %cmp = icmp eq %struct.htab* %0, null, !dbg !2706
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2707

if.end:                                           ; preds = %entry
  %1 = bitcast %union.tree_node* %t to i8*, !dbg !2708
  %call = tail call i8* @htab_find(%struct.htab* nonnull %0, i8* %1) #6, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %call, metadata !2702, metadata !DIExpression()), !dbg !2703
  %cmp2 = icmp ne i8* %call, null, !dbg !2710
  %conv = zext i1 %cmp2 to i32, !dbg !2710
  br label %cleanup, !dbg !2711

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ], !dbg !2703
  ret i32 %retval.0, !dbg !2712
}

declare dso_local i8* @htab_find(%struct.htab*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mudflap_enqueue_decl(%union.tree_node* %obj) local_unnamed_addr #5 !dbg !2713 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %obj, metadata !2717, metadata !DIExpression()), !dbg !2718
  %call = tail call i32 @mf_marked_p(%union.tree_node* %obj) #7, !dbg !2719
  %tobool = icmp eq i32 %call, 0, !dbg !2719
  br i1 %tobool, label %if.end, label %return, !dbg !2721

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2722
  %bf.load = load i64, i64* %0, align 8, !dbg !2722
  %bf.cast = and i64 %bf.load, 65535, !dbg !2722
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2722
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2722
  %cmp = icmp eq i32 %1, 3, !dbg !2722
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !2724

land.lhs.true:                                    ; preds = %if.end
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2725
  %2 = bitcast i40* %decl_flag_1 to i64*, !dbg !2725
  %bf.load1 = load i64, i64* %2, align 8, !dbg !2725
  %bf.cast31 = and i64 %bf.load1, 33554432, !dbg !2725
  %tobool4 = icmp eq i64 %bf.cast31, 0, !dbg !2725
  br i1 %tobool4, label %if.end13, label %land.lhs.true5, !dbg !2726

land.lhs.true5:                                   ; preds = %land.lhs.true
  %bf.cast102 = and i64 %bf.load1, 4096, !dbg !2727
  %tobool11 = icmp eq i64 %bf.cast102, 0, !dbg !2727
  br i1 %tobool11, label %if.end13, label %return, !dbg !2728

if.end13:                                         ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %call14 = tail call fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** nonnull @deferred_static_decls, %union.tree_node* %obj) #7, !dbg !2729
  br label %return, !dbg !2730

return:                                           ; preds = %land.lhs.true5, %entry, %if.end13
  ret void, !dbg !2730
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2731 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @deferred_static_decls, metadata !2736, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2737, metadata !DIExpression()), !dbg !2738
  %call = tail call fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** nonnull @deferred_static_decls, i32 1) #7, !dbg !2739
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @deferred_static_decls, align 8, !dbg !2739
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2739
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2739

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2739
  br label %cond.end, !dbg !2739

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2739
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !2739
  ret %union.tree_node** %call1, !dbg !2739
}

; Function Attrs: nounwind uwtable
define dso_local void @mudflap_enqueue_constant(%union.tree_node* %obj) local_unnamed_addr #5 !dbg !2740 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %obj, metadata !2742, metadata !DIExpression()), !dbg !2745
  %call = tail call i32 @mf_marked_p(%union.tree_node* %obj) #7, !dbg !2746
  %tobool = icmp eq i32 %call, 0, !dbg !2746
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !2748

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2749
  %bf.load = load i64, i64* %0, align 8, !dbg !2749
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2751
  %cmp = icmp eq i64 %bf.cast1, 28, !dbg !2751
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2752

if.then1:                                         ; preds = %if.end
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2753
  %2 = load i32, i32* %1, align 8, !dbg !2753
  %conv = sext i32 %2 to i64, !dbg !2753
  %call2 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv) #6, !dbg !2754
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2743, metadata !DIExpression()), !dbg !2745
  br label %if.end4, !dbg !2755

if.else:                                          ; preds = %if.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2756
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2756
  %call3 = tail call %union.tree_node* @size_in_bytes(%union.tree_node* %3) #6, !dbg !2757
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2743, metadata !DIExpression()), !dbg !2745
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %object_size.0 = phi %union.tree_node* [ %call2, %if.then1 ], [ %call3, %if.else ], !dbg !2758
  call void @llvm.dbg.value(metadata %union.tree_node* %object_size.0, metadata !2743, metadata !DIExpression()), !dbg !2745
  %bf.load6 = load i64, i64* %0, align 8, !dbg !2759
  %bf.cast82 = and i64 %bf.load6, 65535, !dbg !2761
  %cmp9 = icmp eq i64 %bf.cast82, 28, !dbg !2761
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !2762

if.then11:                                        ; preds = %if.end4
  %call12 = tail call fastcc %union.tree_node* @mf_build_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !2763
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !2744, metadata !DIExpression()), !dbg !2745
  br label %if.end15, !dbg !2764

if.else13:                                        ; preds = %if.end4
  %call14 = tail call fastcc %union.tree_node* @mf_build_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2765
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !2744, metadata !DIExpression()), !dbg !2745
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  %varname.0 = phi %union.tree_node* [ %call12, %if.then11 ], [ %call14, %if.else13 ], !dbg !2766
  call void @llvm.dbg.value(metadata %union.tree_node* %varname.0, metadata !2744, metadata !DIExpression()), !dbg !2745
  tail call fastcc void @mudflap_register_call(%union.tree_node* %obj, %union.tree_node* %object_size.0, %union.tree_node* %varname.0) #7, !dbg !2767
  br label %cleanup.cont, !dbg !2768

cleanup.cont:                                     ; preds = %entry, %if.end15
  ret void, !dbg !2768
}

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @size_in_bytes(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @mf_build_string(i8* %string) unnamed_addr #5 !dbg !2769 {
entry:
  call void @llvm.dbg.value(metadata i8* %string, metadata !2773, metadata !DIExpression()), !dbg !2776
  %call = tail call i64 @strlen(i8* %string) #6, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %call, metadata !2774, metadata !DIExpression()), !dbg !2776
  %0 = trunc i64 %call to i32, !dbg !2778
  %conv = add i32 %0, 1, !dbg !2778
  %call1 = tail call %union.tree_node* @build_string(i32 %conv, i8* %string) #6, !dbg !2779
  %call2 = tail call %union.tree_node* @mf_mark(%union.tree_node* %call1) #7, !dbg !2780
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2775, metadata !DIExpression()), !dbg !2776
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2781
  %call3 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %call) #6, !dbg !2782
  %call4 = tail call %union.tree_node* @build_index_type(%union.tree_node* %call3) #6, !dbg !2783
  %call5 = tail call %union.tree_node* @build_array_type(%union.tree_node* %1, %union.tree_node* %call4) #6, !dbg !2784
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2785
  store %union.tree_node* %call5, %union.tree_node** %type, align 8, !dbg !2786
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2787
  %bf.load = load i64, i64* %2, align 8, !dbg !2788
  %bf.set13 = or i64 %bf.load, 68288512, !dbg !2789
  store i64 %bf.set13, i64* %2, align 8, !dbg !2789
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2790
  %call14 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %3) #6, !dbg !2790
  %call15 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call14, %union.tree_node* %call2) #6, !dbg !2790
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2775, metadata !DIExpression()), !dbg !2776
  %call16 = tail call %union.tree_node* @mf_mark(%union.tree_node* %call15) #7, !dbg !2791
  ret %union.tree_node* %call16, !dbg !2792
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mudflap_register_call(%union.tree_node* %obj, %union.tree_node* %object_size, %union.tree_node* %varname) unnamed_addr #5 !dbg !2793 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %obj, metadata !2797, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata %union.tree_node* %object_size, metadata !2798, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata %union.tree_node* %varname, metadata !2799, metadata !DIExpression()), !dbg !2802
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2803
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2803
  %call = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %0) #6, !dbg !2803
  %call1 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call, %union.tree_node* %obj) #6, !dbg !2803
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2800, metadata !DIExpression()), !dbg !2802
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !2804
  %call2 = tail call %union.tree_node* @convert(%union.tree_node* %1, %union.tree_node* %call1) #6, !dbg !2805
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2800, metadata !DIExpression()), !dbg !2802
  %2 = load %union.tree_node*, %union.tree_node** @mf_register_fndecl, align 8, !dbg !2806
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !2806
  %call3 = tail call %union.tree_node* @convert(%union.tree_node* %3, %union.tree_node* %object_size) #6, !dbg !2806
  %call4 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 4) #6, !dbg !2806
  %call5 = tail call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* %2, i32 4, %union.tree_node* %call2, %union.tree_node* %call3, %union.tree_node* %call4, %union.tree_node* %varname) #6, !dbg !2806
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2801, metadata !DIExpression()), !dbg !2802
  tail call void @append_to_statement_list(%union.tree_node* %call5, %union.tree_node** nonnull @enqueued_call_stmt_chain) #6, !dbg !2807
  ret void, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local void @mudflap_finish_file() local_unnamed_addr #5 !dbg !2809 {
entry:
  %ctor_statements = alloca %union.tree_node*, align 8
  %obj = alloca %union.tree_node*, align 8
  %0 = bitcast %union.tree_node** %ctor_statements to i8*, !dbg !2822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2822
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2811, metadata !DIExpression()), !dbg !2823
  store %union.tree_node* null, %union.tree_node** %ctor_statements, align 8, !dbg !2824
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2825
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !2825
  %2 = load i32, i32* %arrayidx, align 8, !dbg !2825
  %cmp = icmp eq i32 %2, 0, !dbg !2827
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !2828

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !2829
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !2829
  %cmp3 = icmp eq i32 %3, 0, !dbg !2830
  br i1 %cmp3, label %if.end, label %cleanup, !dbg !2831

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %union.tree_node*, %union.tree_node** @mf_init_fndecl, align 8, !dbg !2832
  %call = tail call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* %4, i32 0) #6, !dbg !2832
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2812, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata %union.tree_node** %ctor_statements, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2823
  call void @append_to_statement_list(%union.tree_node* %call, %union.tree_node** nonnull %ctor_statements) #6, !dbg !2834
  %5 = load i32, i32* @flag_mudflap_ignore_reads, align 4, !dbg !2835
  %tobool = icmp eq i32 %5, 0, !dbg !2835
  br i1 %tobool, label %if.end7, label %if.then4, !dbg !2836

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc %union.tree_node* @mf_build_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2837
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2814, metadata !DIExpression()), !dbg !2838
  %6 = load %union.tree_node*, %union.tree_node** @mf_set_options_fndecl, align 8, !dbg !2839
  %call6 = call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* %6, i32 1, %union.tree_node* %call5) #6, !dbg !2839
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2817, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata %union.tree_node** %ctor_statements, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2823
  call void @append_to_statement_list(%union.tree_node* %call6, %union.tree_node** nonnull %ctor_statements) #6, !dbg !2840
  br label %if.end7, !dbg !2841

if.end7:                                          ; preds = %if.end, %if.then4
  %7 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @deferred_static_decls, align 8, !dbg !2842
  %tobool8 = icmp eq %struct.VEC_tree_gc* %7, null, !dbg !2842
  br i1 %tobool8, label %if.end54, label %if.then9, !dbg !2843

if.then9:                                         ; preds = %if.end7
  %8 = bitcast %union.tree_node** %obj to i8*, !dbg !2844
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2844
  call void @llvm.dbg.value(metadata i64 0, metadata !2818, metadata !DIExpression()), !dbg !2845
  %9 = bitcast %union.tree_node** %obj to i64**, !dbg !2846
  br label %for.cond, !dbg !2850

for.cond:                                         ; preds = %for.inc, %if.then9
  %10 = phi %struct.VEC_tree_gc* [ %7, %if.then9 ], [ %.pre, %for.inc ], !dbg !2851
  %i.0 = phi i64 [ 0, %if.then9 ], [ %inc, %for.inc ], !dbg !2852
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2818, metadata !DIExpression()), !dbg !2845
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %10, i64 0, i32 0, !dbg !2851
  %conv = trunc i64 %i.0 to i32, !dbg !2851
  call void @llvm.dbg.value(metadata %union.tree_node** %obj, metadata !2821, metadata !DIExpression(DW_OP_deref)), !dbg !2845
  %call11 = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %base, i32 %conv, %union.tree_node** nonnull %obj) #7, !dbg !2851
  %tobool12 = icmp eq i32 %call11, 0, !dbg !2853
  br i1 %tobool12, label %for.end, label %for.body, !dbg !2853

for.body:                                         ; preds = %for.cond
  %11 = load i64*, i64** %9, align 8, !dbg !2854
  %bf.load = load i64, i64* %11, align 8, !dbg !2854
  %bf.cast = and i64 %bf.load, 65535, !dbg !2854
  %arrayidx14 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2854
  %12 = load i32, i32* %arrayidx14, align 4, !dbg !2854
  %cmp15 = icmp eq i32 %12, 3, !dbg !2854
  %13 = bitcast i64* %11 to %union.tree_node*, !dbg !2854
  br i1 %cmp15, label %cond.end19, label %cond.true17, !dbg !2854

cond.true17:                                      ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 1343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2854
  %.pre3 = load %union.tree_node*, %union.tree_node** %obj, align 8, !dbg !2855
  br label %cond.end19, !dbg !2854

cond.end19:                                       ; preds = %for.body, %cond.true17
  %14 = phi %union.tree_node* [ %13, %for.body ], [ %.pre3, %cond.true17 ], !dbg !2855
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !2821, metadata !DIExpression()), !dbg !2845
  %call21 = call i32 @mf_marked_p(%union.tree_node* %14) #7, !dbg !2857
  %tobool22 = icmp eq i32 %call21, 0, !dbg !2857
  br i1 %tobool22, label %if.end24, label %for.inc, !dbg !2858

if.end24:                                         ; preds = %cond.end19
  %15 = load i64*, i64** %9, align 8, !dbg !2859
  %bf.load26 = load i64, i64* %15, align 8, !dbg !2859
  %bf.cast281 = and i64 %bf.load26, 134217728, !dbg !2859
  %tobool29 = icmp eq i64 %bf.cast281, 0, !dbg !2859
  %16 = bitcast i64* %15 to %union.tree_node*, !dbg !2861
  br i1 %tobool29, label %land.lhs.true, label %if.end37, !dbg !2861

land.lhs.true:                                    ; preds = %if.end24
  %bf.cast342 = and i64 %bf.load26, 262144, !dbg !2862
  %tobool35 = icmp eq i64 %bf.cast342, 0, !dbg !2862
  br i1 %tobool35, label %for.inc, label %if.end37, !dbg !2863

if.end37:                                         ; preds = %land.lhs.true, %if.end24
  %type = getelementptr inbounds i64, i64* %15, i64 2, !dbg !2864
  %17 = bitcast i64* %type to %struct.tree_type**, !dbg !2864
  %18 = load %struct.tree_type*, %struct.tree_type** %17, align 8, !dbg !2864
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %18, i64 0, i32 2, !dbg !2864
  %19 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2864
  %cmp39 = icmp eq %union.tree_node* %19, null, !dbg !2864
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !2821, metadata !DIExpression()), !dbg !2845
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !2866

if.then41:                                        ; preds = %if.end37
  %name = getelementptr inbounds i64, i64* %15, i64 4, !dbg !2867
  %20 = bitcast i64* %name to %union.tree_node**, !dbg !2867
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8, !dbg !2867
  %call42 = call zeroext i8 (i32, i8*, ...) @warning(i32 136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), %union.tree_node* %21) #6, !dbg !2869
  br label %for.inc, !dbg !2870

if.end43:                                         ; preds = %if.end37
  %22 = bitcast %struct.tree_type* %18 to %union.tree_node*, !dbg !2866
  %call46 = call %union.tree_node* @size_in_bytes(%union.tree_node* %22) #6, !dbg !2871
  %23 = load %union.tree_node*, %union.tree_node** %obj, align 8, !dbg !2872
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !2821, metadata !DIExpression()), !dbg !2845
  %call47 = call fastcc %union.tree_node* @mf_varname_tree(%union.tree_node* %23) #7, !dbg !2873
  call fastcc void @mudflap_register_call(%union.tree_node* %16, %union.tree_node* %call46, %union.tree_node* %call47) #7, !dbg !2874
  br label %for.inc, !dbg !2875

for.inc:                                          ; preds = %land.lhs.true, %cond.end19, %if.end43, %if.then41
  %inc = add i64 %i.0, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2818, metadata !DIExpression()), !dbg !2845
  %.pre = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @deferred_static_decls, align 8, !dbg !2851
  br label %for.cond, !dbg !2877, !llvm.loop !2878

for.end:                                          ; preds = %for.cond
  %24 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @deferred_static_decls, align 8, !dbg !2880
  %base50 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %24, i64 0, i32 0, !dbg !2880
  call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base50, i32 0) #7, !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2881
  br label %if.end54, !dbg !2882

if.end54:                                         ; preds = %if.end7, %for.end
  %25 = load %union.tree_node*, %union.tree_node** @enqueued_call_stmt_chain, align 8, !dbg !2883
  %tobool55 = icmp eq %union.tree_node* %25, null, !dbg !2883
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !2885

if.then56:                                        ; preds = %if.end54
  call void @llvm.dbg.value(metadata %union.tree_node** %ctor_statements, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2823
  call void @append_to_statement_list(%union.tree_node* nonnull %25, %union.tree_node** nonnull %ctor_statements) #6, !dbg !2886
  store %union.tree_node* null, %union.tree_node** @enqueued_call_stmt_chain, align 8, !dbg !2888
  br label %if.end57, !dbg !2889

if.end57:                                         ; preds = %if.end54, %if.then56
  %26 = load %union.tree_node*, %union.tree_node** %ctor_statements, align 8, !dbg !2890
  call void @llvm.dbg.value(metadata %union.tree_node* %26, metadata !2811, metadata !DIExpression()), !dbg !2823
  call void @cgraph_build_static_cdtor(i8 signext 73, %union.tree_node* %26, i32 99) #6, !dbg !2891
  br label %cleanup, !dbg !2892

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2892
  ret void, !dbg !2892
}

declare dso_local %union.tree_node* @build_call_expr_loc(i32, %union.tree_node*, i32, ...) local_unnamed_addr #2

declare dso_local void @append_to_statement_list(%union.tree_node*, %union.tree_node**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node** %ptr) unnamed_addr #0 !dbg !2893 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata %union.tree_node** %ptr, metadata !2901, metadata !DIExpression()), !dbg !2902
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2903
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2903

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2903
  %0 = load i32, i32* %num, align 8, !dbg !2903
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2903
  br i1 %cmp, label %if.then, label %if.else, !dbg !2905

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2906
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2906
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2906
  br label %return, !dbg !2906

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2908

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.tree_node* [ null, %if.else ], [ %1, %if.then ], !dbg !2910
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2910
  store %union.tree_node* %storemerge, %union.tree_node** %ptr, align 8, !dbg !2910
  ret i32 %retval.0, !dbg !2905
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @mf_varname_tree(%union.tree_node* %decl) unnamed_addr #5 !dbg !2038 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2042, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* @mf_varname_tree.buf_rec, metadata !2043, metadata !DIExpression()), !dbg !2911
  %tobool = icmp eq %union.tree_node* %decl, null, !dbg !2912
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2912

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2912
  br label %cond.end, !dbg !2912

cond.end:                                         ; preds = %entry, %cond.true
  %.b = load i1, i1* @mf_varname_tree.initialized, align 4, !dbg !2913
  br i1 %.b, label %if.end, label %if.then, !dbg !2915

if.then:                                          ; preds = %cond.end
  tail call void @pp_construct(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* null, i32 0) #6, !dbg !2916
  store i1 true, i1* @mf_varname_tree.initialized, align 4, !dbg !2918
  br label %if.end, !dbg !2919

if.end:                                           ; preds = %cond.end, %if.then
  tail call void @pp_base_clear_output_area(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec) #6, !dbg !2920
  %0 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2921
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2922
  %1 = load i32, i32* %locus, align 8, !dbg !2922
  call void @llvm.dbg.value(metadata %struct.expanded_location* %xloc, metadata !2168, metadata !DIExpression(DW_OP_deref)), !dbg !2923
  call void @expand_location(%struct.expanded_location* nonnull sret %xloc, i32 %1) #6, !dbg !2924
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 1, !dbg !2925
  %2 = load i32, i32* %line, align 8, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %2, metadata !2178, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i32 0, metadata !2179, metadata !DIExpression()), !dbg !2923
  %column = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 2, !dbg !2926
  %3 = load i32, i32* %column, align 4, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %3, metadata !2179, metadata !DIExpression()), !dbg !2923
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 0, !dbg !2927
  %4 = load i8*, i8** %file, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %4, metadata !2177, metadata !DIExpression()), !dbg !2923
  %cmp = icmp eq i8* %4, null, !dbg !2928
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2930
  %cmp2 = icmp ne %union.tree_node* %5, null, !dbg !2931
  %or.cond = and i1 %cmp, %cmp2, !dbg !2932
  br i1 %or.cond, label %if.then3, label %if.end7, !dbg !2932

if.then3:                                         ; preds = %if.end
  %locus5 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2933
  %6 = load i32, i32* %locus5, align 8, !dbg !2933
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %6) #6, !dbg !2933
  %file6 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 0, !dbg !2933
  %7 = load i8*, i8** %file6, align 8, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %7, metadata !2177, metadata !DIExpression()), !dbg !2923
  br label %if.end7, !dbg !2934

if.end7:                                          ; preds = %if.then3, %if.end
  %sourcefile.0 = phi i8* [ %7, %if.then3 ], [ %4, %if.end ], !dbg !2923
  call void @llvm.dbg.value(metadata i8* %sourcefile.0, metadata !2177, metadata !DIExpression()), !dbg !2923
  %cmp8 = icmp eq i8* %sourcefile.0, null, !dbg !2935
  %spec.select = select i1 %cmp8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %sourcefile.0, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !2177, metadata !DIExpression()), !dbg !2923
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* %spec.select) #6, !dbg !2938
  %cmp11 = icmp eq i32 %2, 0, !dbg !2939
  br i1 %cmp11, label %if.end29, label %if.then12, !dbg !2941

if.then12:                                        ; preds = %if.end7
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !2942
  %8 = load %struct.output_buffer*, %struct.output_buffer** getelementptr inbounds (%struct.pretty_print_info, %struct.pretty_print_info* @mf_varname_tree.buf_rec, i64 0, i32 0), align 8, !dbg !2944
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i64 0, i32 6, i64 0, !dbg !2944
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %2) #6, !dbg !2944
  %9 = load %struct.output_buffer*, %struct.output_buffer** getelementptr inbounds (%struct.pretty_print_info, %struct.pretty_print_info* @mf_varname_tree.buf_rec, i64 0, i32 0), align 8, !dbg !2944
  %arraydecay15 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %9, i64 0, i32 6, i64 0, !dbg !2944
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* nonnull %arraydecay15) #6, !dbg !2944
  %cmp16 = icmp eq i32 %3, 0, !dbg !2946
  br i1 %cmp16, label %if.end29, label %if.then17, !dbg !2948

if.then17:                                        ; preds = %if.then12
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !2949
  %10 = load %struct.output_buffer*, %struct.output_buffer** getelementptr inbounds (%struct.pretty_print_info, %struct.pretty_print_info* @mf_varname_tree.buf_rec, i64 0, i32 0), align 8, !dbg !2951
  %arraydecay21 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %10, i64 0, i32 6, i64 0, !dbg !2951
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %3) #6, !dbg !2951
  %11 = load %struct.output_buffer*, %struct.output_buffer** getelementptr inbounds (%struct.pretty_print_info, %struct.pretty_print_info* @mf_varname_tree.buf_rec, i64 0, i32 0), align 8, !dbg !2951
  %arraydecay25 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %11, i64 0, i32 6, i64 0, !dbg !2951
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* nonnull %arraydecay25) #6, !dbg !2951
  br label %if.end29, !dbg !2953

if.end29:                                         ; preds = %if.then12, %if.end7, %if.then17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2954
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2955
  %cmp30 = icmp eq %union.tree_node* %12, null, !dbg !2956
  br i1 %cmp30, label %if.else, label %if.then31, !dbg !2957

if.then31:                                        ; preds = %if.end29
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2958
  call void @llvm.dbg.value(metadata i8* null, metadata !2180, metadata !DIExpression()), !dbg !2959
  %13 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_minimal**), align 8, !dbg !2960
  %name = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %13, i64 0, i32 3, !dbg !2960
  %14 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !2960
  %tobool33 = icmp eq %union.tree_node* %14, null, !dbg !2960
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !2962

if.then34:                                        ; preds = %if.then31
  %15 = bitcast %struct.tree_decl_minimal* %13 to %union.tree_node*, !dbg !2962
  %16 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2963
  %call35 = call i8* %16(%union.tree_node* %15, i32 1) #6, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %call35, metadata !2180, metadata !DIExpression()), !dbg !2959
  br label %if.end36, !dbg !2965

if.end36:                                         ; preds = %if.then31, %if.then34
  %funcname.0 = phi i8* [ %call35, %if.then34 ], [ null, %if.then31 ], !dbg !2959
  call void @llvm.dbg.value(metadata i8* %funcname.0, metadata !2180, metadata !DIExpression()), !dbg !2959
  %cmp37 = icmp eq i8* %funcname.0, null, !dbg !2966
  %spec.select1 = select i1 %cmp37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* %funcname.0, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %spec.select1, metadata !2180, metadata !DIExpression()), !dbg !2959
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* %spec.select1) #6, !dbg !2969
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !2970
  br label %if.end40, !dbg !2971

if.else:                                          ; preds = %if.end29
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !2972
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end36
  call void @llvm.dbg.value(metadata i8* null, metadata !2184, metadata !DIExpression()), !dbg !2973
  %name42 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2974
  %17 = load %union.tree_node*, %union.tree_node** %name42, align 8, !dbg !2974
  %cmp43 = icmp eq %union.tree_node* %17, null, !dbg !2976
  br i1 %cmp43, label %if.end56, label %if.then44, !dbg !2977

if.then44:                                        ; preds = %if.end40
  %18 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 0), align 8, !dbg !2978
  %call45 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* %18) #6, !dbg !2981
  %cmp46 = icmp eq i32 %call45, 0, !dbg !2982
  br i1 %cmp46, label %if.then47, label %if.end51, !dbg !2983

if.then47:                                        ; preds = %if.then44
  %19 = bitcast %union.tree_node** %name42 to %struct.tree_identifier**, !dbg !2984
  %20 = load %struct.tree_identifier*, %struct.tree_identifier** %19, align 8, !dbg !2984
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %20, i64 0, i32 1, i32 0, !dbg !2984
  %21 = load i8*, i8** %str, align 8, !dbg !2984
  %call50 = call i8* @cplus_demangle(i8* %21, i32 264) #6, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %call50, metadata !2184, metadata !DIExpression()), !dbg !2973
  br label %if.end51, !dbg !2987

if.end51:                                         ; preds = %if.then47, %if.then44
  %declname.0 = phi i8* [ %call50, %if.then47 ], [ null, %if.then44 ], !dbg !2973
  call void @llvm.dbg.value(metadata i8* %declname.0, metadata !2184, metadata !DIExpression()), !dbg !2973
  %cmp52 = icmp eq i8* %declname.0, null, !dbg !2988
  br i1 %cmp52, label %if.then53, label %if.end56, !dbg !2990

if.then53:                                        ; preds = %if.end51
  %22 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2991
  %call54 = call i8* %22(%union.tree_node* %decl, i32 3) #6, !dbg !2992
  call void @llvm.dbg.value(metadata i8* %call54, metadata !2184, metadata !DIExpression()), !dbg !2973
  br label %if.end56, !dbg !2993

if.end56:                                         ; preds = %if.end40, %if.end51, %if.then53
  %declname.2 = phi i8* [ null, %if.end40 ], [ %call54, %if.then53 ], [ %declname.0, %if.end51 ], !dbg !2973
  call void @llvm.dbg.value(metadata i8* %declname.2, metadata !2184, metadata !DIExpression()), !dbg !2973
  %cmp57 = icmp eq i8* %declname.2, null, !dbg !2994
  %spec.select2 = select i1 %cmp57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8* %declname.2, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %spec.select2, metadata !2184, metadata !DIExpression()), !dbg !2973
  call void @pp_base_string(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec, i8* %spec.select2) #6, !dbg !2997
  %call60 = call i8* @pp_base_formatted_text(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec) #6, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %call60, metadata !2166, metadata !DIExpression()), !dbg !2911
  %call61 = call fastcc %union.tree_node* @mf_build_string(i8* %call60) #7, !dbg !2999
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !2167, metadata !DIExpression()), !dbg !2911
  call void @pp_base_clear_output_area(%struct.pretty_print_info* nonnull @mf_varname_tree.buf_rec) #6, !dbg !3000
  ret %union.tree_node* %call61, !dbg !3001
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !3002 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()), !dbg !3009
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3010
  br label %cond.true, !dbg !3010

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3010

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !3010

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !3010

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3011
  store i32 0, i32* %num3, align 8, !dbg !3011
  br label %if.end, !dbg !3011

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !3010
}

declare dso_local void @cgraph_build_static_cdtor(i8 signext, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_mudflap() #5 !dbg !3013 {
entry:
  %0 = load i32, i32* @flag_mudflap, align 4, !dbg !3014
  %cmp = icmp ne i32 %0, 0, !dbg !3015
  %conv1 = zext i1 %cmp to i8, !dbg !3014
  ret i8 %conv1, !dbg !3016
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_mudflap_function_decls() #5 !dbg !3017 {
entry:
  %gctx = alloca %struct.gimplify_ctx, align 8
  %0 = bitcast %struct.gimplify_ctx* %gctx to i8*, !dbg !3045
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #8, !dbg !3045
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3046
  %call = tail call i32 @mf_marked_p(%union.tree_node* %1) #7, !dbg !3048
  %tobool = icmp eq i32 %call, 0, !dbg !3048
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !3049

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !3050
  %artificial_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 0, i32 2, !dbg !3050
  %3 = bitcast i40* %artificial_flag to i64*, !dbg !3050
  %bf.load = load i64, i64* %3, align 8, !dbg !3050
  %bf.cast1 = and i64 %bf.load, 4096, !dbg !3050
  %tobool1 = icmp eq i64 %bf.cast1, 0, !dbg !3050
  br i1 %tobool1, label %if.end, label %cleanup, !dbg !3051

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.gimplify_ctx* %gctx, metadata !3019, metadata !DIExpression(DW_OP_deref)), !dbg !3052
  call void @push_gimplify_context(%struct.gimplify_ctx* nonnull %gctx) #6, !dbg !3053
  %4 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3054
  %call2 = call %struct.gimple_seq_d* @gimple_body(%union.tree_node* %4) #6, !dbg !3055
  %5 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !3056
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %5, i64 0, i32 2, !dbg !3056
  %6 = load %union.tree_node*, %union.tree_node** %arguments, align 8, !dbg !3056
  call fastcc void @mf_xform_decls(%struct.gimple_seq_d* %call2, %union.tree_node* %6) #7, !dbg !3057
  call void @pop_gimplify_context(%union.gimple_statement_d* null) #6, !dbg !3058
  br label %cleanup, !dbg !3059

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #8, !dbg !3060
  ret i32 0, !dbg !3060
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_mudflap_function_ops() #5 !dbg !3061 {
entry:
  %gctx = alloca %struct.gimplify_ctx, align 8
  %0 = bitcast %struct.gimplify_ctx* %gctx to i8*, !dbg !3064
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #8, !dbg !3064
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3065
  %call = tail call i32 @mf_marked_p(%union.tree_node* %1) #7, !dbg !3067
  %tobool = icmp eq i32 %call, 0, !dbg !3067
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !3068

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !3069
  %artificial_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 0, i32 2, !dbg !3069
  %3 = bitcast i40* %artificial_flag to i64*, !dbg !3069
  %bf.load = load i64, i64* %3, align 8, !dbg !3069
  %bf.cast1 = and i64 %bf.load, 4096, !dbg !3069
  %tobool1 = icmp eq i64 %bf.cast1, 0, !dbg !3069
  br i1 %tobool1, label %if.end, label %cleanup, !dbg !3070

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.gimplify_ctx* %gctx, metadata !3063, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  call void @push_gimplify_context(%struct.gimplify_ctx* nonnull %gctx) #6, !dbg !3072
  %4 = load i32, i32* @flag_mudflap, align 4, !dbg !3073
  %cmp = icmp eq i32 %4, 2, !dbg !3073
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !3075

if.then2:                                         ; preds = %if.end
  call fastcc void @mf_decl_cache_locals() #7, !dbg !3076
  br label %if.end3, !dbg !3076

if.end3:                                          ; preds = %if.then2, %if.end
  call fastcc void @mf_xform_statements() #7, !dbg !3077
  %5 = load i32, i32* @flag_mudflap, align 4, !dbg !3078
  %cmp4 = icmp eq i32 %5, 2, !dbg !3078
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !3080

if.then5:                                         ; preds = %if.end3
  call fastcc void @mf_decl_clear_locals() #7, !dbg !3081
  br label %if.end6, !dbg !3081

if.end6:                                          ; preds = %if.then5, %if.end3
  call void @pop_gimplify_context(%union.gimple_statement_d* null) #6, !dbg !3082
  br label %cleanup, !dbg !3083

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end6
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #8, !dbg !3084
  ret i32 0, !dbg !3084
}

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) #2

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) #2

declare dso_local void @gt_ggc_mx_VEC_tree_gc(i8*) #2

declare dso_local void @gt_pch_nx_VEC_tree_gc(i8*) #2

declare dso_local void @gt_ggc_m_P9tree_node4htab(i8*) #2

declare dso_local void @gt_pch_n_P9tree_node4htab(i8*) #2

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #2

declare dso_local void @layout_type(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3085 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @deferred_static_decls, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 1, metadata !3090, metadata !DIExpression()), !dbg !3092
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @deferred_static_decls, align 8, !dbg !3093
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !3093
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3093

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !3093
  br label %cond.end, !dbg !3093

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3093
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !3093
  %tobool1 = icmp eq i32 %call, 0, !dbg !3093
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3091, metadata !DIExpression()), !dbg !3092
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3093

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_tree_gc** @deferred_static_decls to i8**), align 8, !dbg !3094
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %1, i32 1) #6, !dbg !3094
  store i8* %call3, i8** bitcast (%struct.VEC_tree_gc** @deferred_static_decls to i8**), align 8, !dbg !3094
  br label %if.end, !dbg !3094

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3093
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3096 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3100, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3101, metadata !DIExpression()), !dbg !3103
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3104
  %0 = load i32, i32* %num1, align 8, !dbg !3104
  %inc = add i32 %0, 1, !dbg !3104
  store i32 %inc, i32* %num1, align 8, !dbg !3104
  %idxprom = zext i32 %0 to i64, !dbg !3104
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3104
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3102, metadata !DIExpression()), !dbg !3103
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3104
  ret %union.tree_node** %arrayidx, !dbg !3104
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3105 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 1, metadata !3110, metadata !DIExpression()), !dbg !3111
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3112
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3112

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3112
  %0 = load i32, i32* %alloc, align 4, !dbg !3112
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3112
  %1 = load i32, i32* %num, align 8, !dbg !3112
  %cmp1 = icmp ne i32 %0, %1, !dbg !3112
  %phitmp = zext i1 %cmp1 to i32, !dbg !3112
  br label %cond.end, !dbg !3112

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3112

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3112
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_string(i32, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_index_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @pp_construct(%struct.pretty_print_info*, i8*, i32) local_unnamed_addr #2

declare dso_local void @pp_base_clear_output_area(%struct.pretty_print_info*) local_unnamed_addr #2

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

declare dso_local void @pp_base_string(%struct.pretty_print_info*, i8*) local_unnamed_addr #2

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

declare dso_local i8* @cplus_demangle(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @pp_base_formatted_text(%struct.pretty_print_info*) local_unnamed_addr #2

declare dso_local void @push_gimplify_context(%struct.gimplify_ctx*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mf_xform_decls(%struct.gimple_seq_d* %fnbody, %union.tree_node* %fnparams) unnamed_addr #5 !dbg !3113 {
entry:
  %d = alloca %struct.mf_xform_decls_data, align 8
  %wi = alloca %struct.walk_stmt_info, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %fnbody, metadata !3117, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata %union.tree_node* %fnparams, metadata !3118, metadata !DIExpression()), !dbg !3140
  %0 = bitcast %struct.mf_xform_decls_data* %d to i8*, !dbg !3141
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3141
  %1 = bitcast %struct.walk_stmt_info* %wi to i8*, !dbg !3142
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #8, !dbg !3142
  %call = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call, metadata !3139, metadata !DIExpression()), !dbg !3140
  %param_decls = getelementptr inbounds %struct.mf_xform_decls_data, %struct.mf_xform_decls_data* %d, i64 0, i32 0, !dbg !3144
  store %union.tree_node* %fnparams, %union.tree_node** %param_decls, align 8, !dbg !3145
  %call1 = call i8* @memset(i8* nonnull %1, i32 0, i64 56) #6, !dbg !3146
  %info = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 1, !dbg !3147
  %2 = bitcast i8** %info to %struct.mf_xform_decls_data**, !dbg !3148
  store %struct.mf_xform_decls_data* %d, %struct.mf_xform_decls_data** %2, align 8, !dbg !3148
  %pset2 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 2, !dbg !3149
  store %struct.pointer_set_t* %call, %struct.pointer_set_t** %pset2, align 8, !dbg !3150
  call void @llvm.dbg.value(metadata %struct.walk_stmt_info* %wi, metadata !3120, metadata !DIExpression(DW_OP_deref)), !dbg !3140
  %call3 = call %union.gimple_statement_d* @walk_gimple_seq(%struct.gimple_seq_d* %fnbody, %union.tree_node* (%struct.gimple_stmt_iterator*, i8*, %struct.walk_stmt_info*)* nonnull @mx_xfn_xform_decls, %union.tree_node* (%union.tree_node**, i32*, i8*)* null, %struct.walk_stmt_info* nonnull %wi) #6, !dbg !3151
  call void @pointer_set_destroy(%struct.pointer_set_t* %call) #6, !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #8, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3153
  ret void, !dbg !3153
}

declare dso_local %struct.gimple_seq_d* @gimple_body(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @pop_gimplify_context(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @walk_gimple_seq(%struct.gimple_seq_d*, %union.tree_node* (%struct.gimple_stmt_iterator*, i8*, %struct.walk_stmt_info*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, %struct.walk_stmt_info*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @mx_xfn_xform_decls(%struct.gimple_stmt_iterator* %gsi, i8* %handled_operands_p, %struct.walk_stmt_info* %wi) #5 !dbg !3154 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %handled_operands_p, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.walk_stmt_info* %wi, metadata !3162, metadata !DIExpression()), !dbg !3165
  %info = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 1, !dbg !3166
  %0 = bitcast i8** %info to %struct.mf_xform_decls_data**, !dbg !3166
  %1 = load %struct.mf_xform_decls_data*, %struct.mf_xform_decls_data** %0, align 8, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.mf_xform_decls_data* %1, metadata !3163, metadata !DIExpression()), !dbg !3165
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3167
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3164, metadata !DIExpression()), !dbg !3165
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !3168
  %cond = icmp eq i32 %call1, 10, !dbg !3169
  br i1 %cond, label %sw.bb, label %sw.epilog, !dbg !3169

sw.bb:                                            ; preds = %entry
  %param_decls = getelementptr inbounds %struct.mf_xform_decls_data, %struct.mf_xform_decls_data* %1, i64 0, i32 0, !dbg !3170
  %2 = load %union.tree_node*, %union.tree_node** %param_decls, align 8, !dbg !3170
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !3174
  br i1 %tobool, label %if.end, label %if.then, !dbg !3175

if.then:                                          ; preds = %sw.bb
  %call3 = tail call fastcc %struct.gimple_seq_d* @gimple_bind_body(%union.gimple_statement_d* %call) #7, !dbg !3176
  %call4 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #7, !dbg !3178
  %call5 = tail call fastcc %struct.gimple_seq_d* @mx_register_decls(%union.tree_node* nonnull %2, %struct.gimple_seq_d* %call3, i32 %call4) #7, !dbg !3179
  tail call fastcc void @gimple_bind_set_body(%union.gimple_statement_d* %call, %struct.gimple_seq_d* %call5) #7, !dbg !3180
  store %union.tree_node* null, %union.tree_node** %param_decls, align 8, !dbg !3181
  br label %if.end, !dbg !3182

if.end:                                           ; preds = %sw.bb, %if.then
  %call7 = tail call fastcc %union.tree_node* @gimple_bind_vars(%union.gimple_statement_d* %call) #7, !dbg !3183
  %call8 = tail call fastcc %struct.gimple_seq_d* @gimple_bind_body(%union.gimple_statement_d* %call) #7, !dbg !3184
  %call9 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #7, !dbg !3185
  %call10 = tail call fastcc %struct.gimple_seq_d* @mx_register_decls(%union.tree_node* %call7, %struct.gimple_seq_d* %call8, i32 %call9) #7, !dbg !3186
  tail call fastcc void @gimple_bind_set_body(%union.gimple_statement_d* %call, %struct.gimple_seq_d* %call10) #7, !dbg !3187
  br label %sw.epilog, !dbg !3188

sw.epilog:                                        ; preds = %entry, %if.end
  ret %union.tree_node* null, !dbg !3189
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3190 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3194, metadata !DIExpression()), !dbg !3195
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3196
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3196
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3197
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3197
  ret %union.gimple_statement_d* %1, !dbg !3198
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3199 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3204, metadata !DIExpression()), !dbg !3205
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3206
  %bf.load = load i32, i32* %0, align 8, !dbg !3206
  %bf.clear = and i32 %bf.load, 255, !dbg !3206
  ret i32 %bf.clear, !dbg !3207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_bind_set_body(%union.gimple_statement_d* %gs, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3208 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3213, metadata !DIExpression()), !dbg !3214
  %body = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, !dbg !3215
  %0 = bitcast [1 x %struct.phi_arg_d]* %body to %struct.gimple_seq_d**, !dbg !3215
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %0, align 8, !dbg !3216
  ret void, !dbg !3217
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @mx_register_decls(%union.tree_node* %decl, %struct.gimple_seq_d* %seq, i32 %location) unnamed_addr #5 !dbg !3218 {
entry:
  %finally_stmts = alloca %struct.gimple_seq_d*, align 8
  %initially_stmts = alloca %struct.gimple_stmt_iterator, align 8
  %new_seq = alloca %struct.gimple_seq_d*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3222, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3223, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 %location, metadata !3224, metadata !DIExpression()), !dbg !3240
  %0 = bitcast %struct.gimple_seq_d** %finally_stmts to i8*, !dbg !3241
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !3225, metadata !DIExpression()), !dbg !3240
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %finally_stmts, align 8, !dbg !3242
  %1 = bitcast %struct.gimple_stmt_iterator* %initially_stmts to i8*, !dbg !3243
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3243
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %initially_stmts, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3240
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %initially_stmts, %struct.gimple_seq_d* %seq) #7, !dbg !3244
  br label %while.cond, !dbg !3245

while.cond:                                       ; preds = %if.end43, %entry
  %decl.addr.0 = phi %union.tree_node* [ %decl, %entry ], [ %13, %if.end43 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %decl.addr.0, metadata !3222, metadata !DIExpression()), !dbg !3240
  %cmp = icmp eq %union.tree_node* %decl.addr.0, null, !dbg !3246
  br i1 %cmp, label %while.end, label %while.body, !dbg !3245

while.body:                                       ; preds = %while.cond
  %call = call fastcc i32 @mf_decl_eligible_p(%union.tree_node* nonnull %decl.addr.0) #7, !dbg !3247
  %tobool = icmp eq i32 %call, 0, !dbg !3247
  br i1 %tobool, label %if.end43, label %land.lhs.true, !dbg !3248

land.lhs.true:                                    ; preds = %while.body
  %call1 = call i32 @mf_marked_p(%union.tree_node* nonnull %decl.addr.0) #7, !dbg !3249
  %tobool2 = icmp eq i32 %call1, 0, !dbg !3249
  br i1 %tobool2, label %land.lhs.true3, label %if.end43, !dbg !3250

land.lhs.true3:                                   ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3251
  %2 = bitcast i40* %decl_flag_1 to i64*, !dbg !3251
  %bf.load = load i64, i64* %2, align 8, !dbg !3251
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !3251
  %tobool4 = icmp eq i64 %bf.cast1, 0, !dbg !3251
  br i1 %tobool4, label %land.lhs.true5, label %if.end43, !dbg !3252

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3253
  %bf.load6 = load i64, i64* %3, align 8, !dbg !3253
  %bf.cast92 = and i64 %bf.load6, 67108864, !dbg !3253
  %tobool10 = icmp eq i64 %bf.cast92, 0, !dbg !3253
  br i1 %tobool10, label %if.then, label %if.end43, !dbg !3254

if.then:                                          ; preds = %land.lhs.true5
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3227, metadata !DIExpression()), !dbg !3255
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !3256
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %decl.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3257
  %5 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3257
  %6 = load %struct.tree_type*, %struct.tree_type** %5, align 8, !dbg !3257
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 3, !dbg !3257
  %7 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !3257
  %call12 = call %union.tree_node* @convert(%union.tree_node* %4, %union.tree_node* %7) #6, !dbg !3258
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !3227, metadata !DIExpression()), !dbg !3255
  %call13 = call zeroext i8 @is_gimple_val(%union.tree_node* %call12) #6, !dbg !3259
  %tobool14 = icmp eq i8 %call13, 0, !dbg !3259
  br i1 %tobool14, label %cond.true, label %cond.end, !dbg !3259

cond.true:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 1077, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3259
  br label %cond.end, !dbg !3259

cond.end:                                         ; preds = %if.then, %cond.true
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3260
  %call17 = call %union.tree_node* @build_pointer_type(%union.tree_node* %8) #6, !dbg !3260
  %call18 = call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call17, %union.tree_node* nonnull %decl.addr.0) #6, !dbg !3260
  %call19 = call %union.tree_node* @mf_mark(%union.tree_node* %call18) #7, !dbg !3261
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !3234, metadata !DIExpression()), !dbg !3255
  %9 = load %union.tree_node*, %union.tree_node** @mf_unregister_fndecl, align 8, !dbg !3262
  %call20 = call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 3) #6, !dbg !3263
  %call21 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %9, i32 3, %union.tree_node* %call19, %union.tree_node* %call12, %union.tree_node* %call20) #6, !dbg !3264
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call21, metadata !3232, metadata !DIExpression()), !dbg !3255
  %call22 = call fastcc %union.tree_node* @mf_varname_tree(%union.tree_node* nonnull %decl.addr.0) #7, !dbg !3265
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !3231, metadata !DIExpression()), !dbg !3255
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3266
  %call25 = call %union.tree_node* @build_pointer_type(%union.tree_node* %10) #6, !dbg !3266
  %call26 = call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call25, %union.tree_node* nonnull %decl.addr.0) #6, !dbg !3266
  %call27 = call %union.tree_node* @mf_mark(%union.tree_node* %call26) #7, !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !3235, metadata !DIExpression()), !dbg !3255
  %11 = load %union.tree_node*, %union.tree_node** @mf_register_fndecl, align 8, !dbg !3268
  %call28 = call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 3) #6, !dbg !3269
  %call29 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %11, i32 4, %union.tree_node* %call27, %union.tree_node* %call12, %union.tree_node* %call28, %union.tree_node* %call22) #6, !dbg !3270
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call29, metadata !3233, metadata !DIExpression()), !dbg !3255
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call29, i32 %location) #7, !dbg !3271
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call21, i32 %location) #7, !dbg !3272
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %initially_stmts, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3240
  %call30 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %initially_stmts) #7, !dbg !3273
  %tobool31 = icmp eq i8 %call30, 0, !dbg !3273
  br i1 %tobool31, label %if.else, label %if.then32, !dbg !3275

if.then32:                                        ; preds = %cond.end
  %bf.load34 = load i64, i64* %2, align 8, !dbg !3276
  %bf.cast373 = and i64 %bf.load34, 4096, !dbg !3276
  %tobool38 = icmp eq i64 %bf.cast373, 0, !dbg !3276
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !3279

if.then39:                                        ; preds = %if.then32
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3280
  %12 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3280
  %call40 = call zeroext i8 (i32, i8*, ...) @warning(i32 136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), %union.tree_node* %12) #6, !dbg !3281
  br label %if.end41, !dbg !3281

if.else:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %initially_stmts, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3240
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %initially_stmts, %union.gimple_statement_d* %call29, i32 1) #6, !dbg !3282
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %finally_stmts, metadata !3225, metadata !DIExpression(DW_OP_deref)), !dbg !3240
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %finally_stmts, %union.gimple_statement_d* %call21) #6, !dbg !3284
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.then39, %if.else
  %call42 = call %union.tree_node* @mf_mark(%union.tree_node* nonnull %decl.addr.0) #7, !dbg !3285
  br label %if.end43, !dbg !3286

if.end43:                                         ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %while.body, %if.end41
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %decl.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3287
  %13 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3287
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !3222, metadata !DIExpression()), !dbg !3240
  br label %while.cond, !dbg !3245, !llvm.loop !3288

while.end:                                        ; preds = %while.cond
  %14 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %finally_stmts, align 8, !dbg !3290
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %14, metadata !3225, metadata !DIExpression()), !dbg !3240
  %cmp45 = icmp eq %struct.gimple_seq_d* %14, null, !dbg !3291
  br i1 %cmp45, label %cleanup, label %if.then46, !dbg !3292

if.then46:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %14, metadata !3225, metadata !DIExpression()), !dbg !3240
  %call47 = call %union.gimple_statement_d* @gimple_build_try(%struct.gimple_seq_d* %seq, %struct.gimple_seq_d* nonnull %14, i32 2) #6, !dbg !3293
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call47, metadata !3236, metadata !DIExpression()), !dbg !3294
  %15 = bitcast %struct.gimple_seq_d** %new_seq to i8*, !dbg !3295
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8, !dbg !3295
  %call48 = call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !3296
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call48, metadata !3239, metadata !DIExpression()), !dbg !3294
  store %struct.gimple_seq_d* %call48, %struct.gimple_seq_d** %new_seq, align 8, !dbg !3297
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %new_seq, metadata !3239, metadata !DIExpression(DW_OP_deref)), !dbg !3294
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %new_seq, %union.gimple_statement_d* %call47) #6, !dbg !3298
  %16 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %new_seq, align 8, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %16, metadata !3239, metadata !DIExpression()), !dbg !3294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !3300
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then46
  %retval.0 = phi %struct.gimple_seq_d* [ %16, %if.then46 ], [ %seq, %while.end ], !dbg !3301
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3302
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3302
  ret %struct.gimple_seq_d* %retval.0, !dbg !3302
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @gimple_bind_body(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3303 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3307, metadata !DIExpression()), !dbg !3308
  %body = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, !dbg !3309
  %0 = bitcast [1 x %struct.phi_arg_d]* %body to %struct.gimple_seq_d**, !dbg !3309
  %1 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %0, align 8, !dbg !3309
  ret %struct.gimple_seq_d* %1, !dbg !3310
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3311 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3315, metadata !DIExpression()), !dbg !3316
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3317
  %0 = load i32, i32* %location, align 8, !dbg !3317
  ret i32 %0, !dbg !3318
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_bind_vars(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3319 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3323, metadata !DIExpression()), !dbg !3324
  %vars = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3325
  %0 = bitcast i32* %vars to %union.tree_node**, !dbg !3325
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3325
  ret %union.tree_node* %1, !dbg !3326
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3327 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3332, metadata !DIExpression()), !dbg !3334
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #7, !dbg !3335
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3336
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3337
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3338
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !3339
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3340
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !3341

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3342
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3342
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !3343
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3344

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #7, !dbg !3345
  br label %cond.end, !dbg !3344

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3344
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3346
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !3347
  ret void, !dbg !3348
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mf_decl_eligible_p(%union.tree_node* %decl) unnamed_addr #5 !dbg !3349 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3351, metadata !DIExpression()), !dbg !3352
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3353
  %bf.load = load i64, i64* %0, align 8, !dbg !3353
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3354
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3354
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3355

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !3356
  br i1 %cmp5, label %land.lhs.true, label %land.end, !dbg !3357

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %bf.cast93 = and i64 %bf.load, 262144, !dbg !3358
  %tobool = icmp eq i64 %bf.cast93, 0, !dbg !3358
  br i1 %tobool, label %land.end, label %land.lhs.true10, !dbg !3359

land.lhs.true10:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3360
  %1 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3360
  %2 = load %struct.tree_type*, %struct.tree_type** %1, align 8, !dbg !3360
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %2, i64 0, i32 2, !dbg !3360
  %3 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !3360
  %cmp12 = icmp eq %union.tree_node* %3, null, !dbg !3360
  br i1 %cmp12, label %lor.lhs.false13, label %land.rhs, !dbg !3360

lor.lhs.false13:                                  ; preds = %land.lhs.true10
  %4 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %2, i64 0, i32 0, i32 0, i32 0, !dbg !3360
  %bf.load17 = load i64, i64* %4, align 8, !dbg !3360
  %bf.cast194 = and i64 %bf.load17, 65535, !dbg !3360
  %cmp20 = icmp eq i64 %bf.cast194, 19, !dbg !3360
  br i1 %cmp20, label %land.rhs, label %land.end, !dbg !3361

land.rhs:                                         ; preds = %land.lhs.true10, %lor.lhs.false13
  %decl_flag_2 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3362
  %5 = bitcast i40* %decl_flag_2 to i64*, !dbg !3362
  %bf.load21 = load i64, i64* %5, align 8, !dbg !3362
  %bf.cast245 = lshr i64 %bf.load21, 26
  %6 = trunc i64 %bf.cast245 to i32
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.lhs.false13, %lor.lhs.false
  %9 = phi i32 [ 0, %lor.lhs.false13 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ %8, %land.rhs ]
  ret i32 %9, !dbg !3363
}

declare dso_local zeroext i8 @is_gimple_val(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_call(%union.tree_node*, i32, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_location(%union.gimple_statement_d* %g, i32 %location) unnamed_addr #0 !dbg !3364 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3368, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 %location, metadata !3369, metadata !DIExpression()), !dbg !3370
  %location1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3371
  store i32 %location, i32* %location1, align 8, !dbg !3372
  ret void, !dbg !3373
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3374 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3378, metadata !DIExpression()), !dbg !3379
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3380
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3380
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3381
  %conv1 = zext i1 %cmp to i8, !dbg !3382
  ret i8 %conv1, !dbg !3383
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @gimple_seq_add_stmt(%struct.gimple_seq_d**, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_try(%struct.gimple_seq_d*, %struct.gimple_seq_d*, i32) local_unnamed_addr #2

declare dso_local %struct.gimple_seq_d* @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3384 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3391, metadata !DIExpression()), !dbg !3392
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3393
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3393

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3394
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3394
  br label %cond.end, !dbg !3393

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3393
  ret %struct.gimple_seq_node_d* %cond, !dbg !3395
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3396 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3400, metadata !DIExpression()), !dbg !3401
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3402
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3402
  ret %struct.basic_block_def* %0, !dbg !3403
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mf_decl_cache_locals() unnamed_addr #5 !dbg !3404 {
entry:
  %seq = alloca %struct.gimple_seq_d*, align 8
  %0 = bitcast %struct.gimple_seq_d** %seq to i8*, !dbg !3408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3408
  %call = tail call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3407, metadata !DIExpression()), !dbg !3410
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq, align 8, !dbg !3411
  %1 = load %struct.tree_common*, %struct.tree_common** bitcast (%union.tree_node** @mf_cache_shift_decl to %struct.tree_common**), align 8, !dbg !3412
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !3412
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3412
  %call1 = tail call %union.tree_node* @make_rename_temp(%union.tree_node* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !3413
  %call2 = tail call %union.tree_node* @mf_mark(%union.tree_node* %call1) #7, !dbg !3414
  store %union.tree_node* %call2, %union.tree_node** @mf_cache_shift_decl_l, align 8, !dbg !3415
  %3 = load %struct.tree_common*, %struct.tree_common** bitcast (%union.tree_node** @mf_cache_mask_decl to %struct.tree_common**), align 8, !dbg !3416
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %3, i64 0, i32 2, !dbg !3416
  %4 = load %union.tree_node*, %union.tree_node** %type4, align 8, !dbg !3416
  %call5 = tail call %union.tree_node* @make_rename_temp(%union.tree_node* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !3417
  %call6 = tail call %union.tree_node* @mf_mark(%union.tree_node* %call5) #7, !dbg !3418
  store %union.tree_node* %call6, %union.tree_node** @mf_cache_mask_decl_l, align 8, !dbg !3419
  %5 = load %union.tree_node*, %union.tree_node** @mf_cache_shift_decl_l, align 8, !dbg !3420
  %6 = load %union.tree_node*, %union.tree_node** @mf_cache_shift_decl, align 8, !dbg !3420
  %call7 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %5, %union.tree_node* %6) #6, !dbg !3420
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !3406, metadata !DIExpression()), !dbg !3410
  %7 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_minimal**), align 8, !dbg !3421
  %locus = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %7, i64 0, i32 1, !dbg !3421
  %8 = load i32, i32* %locus, align 8, !dbg !3421
  tail call fastcc void @gimple_set_location(%union.gimple_statement_d* %call7, i32 %8) #7, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3407, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call7) #6, !dbg !3423
  %9 = load %union.tree_node*, %union.tree_node** @mf_cache_mask_decl_l, align 8, !dbg !3424
  %10 = load %union.tree_node*, %union.tree_node** @mf_cache_mask_decl, align 8, !dbg !3424
  %call8 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %9, %union.tree_node* %10) #6, !dbg !3424
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !3406, metadata !DIExpression()), !dbg !3410
  %11 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_minimal**), align 8, !dbg !3425
  %locus10 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %11, i64 0, i32 1, !dbg !3425
  %12 = load i32, i32* %locus10, align 8, !dbg !3425
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call8, i32 %12) #7, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3407, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call8) #6, !dbg !3427
  %13 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %13, metadata !3407, metadata !DIExpression()), !dbg !3410
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3429
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3429
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3429
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !3429
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3429
  call fastcc void @insert_edge_copies_seq(%struct.gimple_seq_d* %13, %struct.basic_block_def* %16) #7, !dbg !3430
  call void @gsi_commit_edge_inserts() #6, !dbg !3431
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3432
  ret void, !dbg !3432
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mf_xform_statements() unnamed_addr #5 !dbg !3433 {
entry:
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !3448
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3448
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3449
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3449
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3449
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !3449
  %3 = load i32, i32* %x_last_basic_block, align 8, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %3, metadata !3438, metadata !DIExpression()), !dbg !3450
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3451
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3451
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 6, !dbg !3452
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !3452
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !3435, metadata !DIExpression()), !dbg !3450
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3453
  br label %do.body, !dbg !3454

do.body:                                          ; preds = %land.rhs, %entry
  %bb.0 = phi %struct.basic_block_def* [ %5, %entry ], [ %7, %land.rhs ], !dbg !3450
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3435, metadata !DIExpression()), !dbg !3450
  %next_bb3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3455
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb3, align 8, !dbg !3455
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !3436, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !3456
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !3456
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !3456
  br label %for.cond, !dbg !3457

for.cond:                                         ; preds = %for.inc, %do.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3458
  %tobool = icmp eq i8 %call, 0, !dbg !3459
  br i1 %tobool, label %for.body, label %do.cond, !dbg !3460

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  %call4 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3461
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !3440, metadata !DIExpression()), !dbg !3462
  %call5 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call4) #7, !dbg !3463
  switch i32 %call5, label %for.inc [
    i32 6, label %sw.bb
    i32 9, label %sw.bb14
    i32 8, label %sw.bb21
  ], !dbg !3464

sw.bb:                                            ; preds = %for.body
  %call6 = call fastcc %union.tree_node** @gimple_assign_lhs_ptr(%union.gimple_statement_d* %call4) #7, !dbg !3465
  %call7 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call4) #7, !dbg !3466
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 14), align 16, !dbg !3467
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  call fastcc void @mf_xform_derefs_1(%struct.gimple_stmt_iterator* nonnull %i, %union.tree_node** %call6, i32 %call7, %union.tree_node* %8) #7, !dbg !3468
  %call8 = call fastcc %union.tree_node** @gimple_assign_rhs1_ptr(%union.gimple_statement_d* %call4) #7, !dbg !3469
  %call9 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call4) #7, !dbg !3470
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3471
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  call fastcc void @mf_xform_derefs_1(%struct.gimple_stmt_iterator* nonnull %i, %union.tree_node** %call8, i32 %call9, %union.tree_node* %9) #7, !dbg !3472
  %call10 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call4) #7, !dbg !3473
  %call11 = call fastcc i32 @get_gimple_rhs_class(i32 %call10) #7, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %call11, metadata !3439, metadata !DIExpression()), !dbg !3450
  %cmp = icmp eq i32 %call11, 1, !dbg !3475
  br i1 %cmp, label %if.then, label %for.inc, !dbg !3477

if.then:                                          ; preds = %sw.bb
  %call12 = call fastcc %union.tree_node** @gimple_assign_rhs2_ptr(%union.gimple_statement_d* %call4) #7, !dbg !3478
  %call13 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call4) #7, !dbg !3479
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  call fastcc void @mf_xform_derefs_1(%struct.gimple_stmt_iterator* nonnull %i, %union.tree_node** %call12, i32 %call13, %union.tree_node* %10) #7, !dbg !3481
  br label %for.inc, !dbg !3481

sw.bb14:                                          ; preds = %for.body
  %call15 = call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %call4) #7, !dbg !3482
  %cmp16 = icmp eq %union.tree_node* %call15, null, !dbg !3484
  br i1 %cmp16, label %for.inc, label %if.then17, !dbg !3485

if.then17:                                        ; preds = %sw.bb14
  %call18 = call fastcc %union.tree_node** @gimple_return_retval_ptr(%union.gimple_statement_d* %call4) #7, !dbg !3486
  %call19 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call4) #7, !dbg !3488
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3489
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  call fastcc void @mf_xform_derefs_1(%struct.gimple_stmt_iterator* nonnull %i, %union.tree_node** %call18, i32 %call19, %union.tree_node* %11) #7, !dbg !3490
  br label %for.inc, !dbg !3491

sw.bb21:                                          ; preds = %for.body
  %call22 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call4) #7, !dbg !3492
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !3445, metadata !DIExpression()), !dbg !3493
  %tobool23 = icmp eq %union.tree_node* %call22, null, !dbg !3494
  br i1 %tobool23, label %for.inc, label %land.lhs.true, !dbg !3496

land.lhs.true:                                    ; preds = %sw.bb21
  %function_code = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 5, !dbg !3497
  %bf.load = load i32, i32* %function_code, align 8, !dbg !3497
  %bf.clear = and i32 %bf.load, 2047, !dbg !3497
  %cmp24 = icmp eq i32 %bf.clear, 415, !dbg !3498
  br i1 %cmp24, label %if.then25, label %for.inc, !dbg !3499

if.then25:                                        ; preds = %land.lhs.true
  call fastcc void @gimple_call_set_cannot_inline(%union.gimple_statement_d* %call4, i8 zeroext 1) #7, !dbg !3500
  br label %for.inc, !dbg !3500

for.inc:                                          ; preds = %sw.bb14, %sw.bb21, %if.then, %sw.bb, %if.then17, %if.then25, %land.lhs.true, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #7, !dbg !3501
  br label %for.cond, !dbg !3502, !llvm.loop !3503

do.cond:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !3435, metadata !DIExpression()), !dbg !3450
  %tobool27 = icmp eq %struct.basic_block_def* %7, null, !dbg !3505
  br i1 %tobool27, label %do.end, label %land.rhs, !dbg !3506

land.rhs:                                         ; preds = %do.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 9, !dbg !3507
  %12 = load i32, i32* %index, align 8, !dbg !3507
  %cmp28 = icmp sgt i32 %12, %3, !dbg !3508
  br i1 %cmp28, label %do.end, label %do.body, !dbg !3509, !llvm.loop !3510

do.end:                                           ; preds = %land.rhs, %do.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3512
  ret void, !dbg !3512
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mf_decl_clear_locals() unnamed_addr #5 !dbg !3513 {
entry:
  store %union.tree_node* null, %union.tree_node** @mf_cache_shift_decl_l, align 8, !dbg !3514
  store %union.tree_node* null, %union.tree_node** @mf_cache_mask_decl_l, align 8, !dbg !3515
  ret void, !dbg !3516
}

declare dso_local %union.tree_node* @make_rename_temp(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_edge_copies_seq(%struct.gimple_seq_d* %seq, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3517 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp3 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3521, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3522, metadata !DIExpression()), !dbg !3532
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3533
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3533
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3534
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3534
  call void @llvm.dbg.value(metadata i32 -1, metadata !3531, metadata !DIExpression()), !dbg !3532
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3535
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3535
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3535
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3535
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3535
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3535
  store i32 %4, i32* %3, align 8, !dbg !3535
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3535
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3535
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3535
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3535
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3537
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3537
  br label %for.cond, !dbg !3535

for.cond:                                         ; preds = %for.body, %entry
  %n_copies.0 = phi i32 [ -1, %entry ], [ %spec.select, %for.body ], !dbg !3539
  call void @llvm.dbg.value(metadata i32 %n_copies.0, metadata !3531, metadata !DIExpression()), !dbg !3532
  %9 = load i32, i32* %7, align 8, !dbg !3540
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3540
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3523, metadata !DIExpression(DW_OP_deref)), !dbg !3532
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !3540
  %tobool = icmp eq i8 %call1, 0, !dbg !3535
  br i1 %tobool, label %for.end, label %for.body, !dbg !3535

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3523, metadata !DIExpression()), !dbg !3532
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !3543
  %12 = load i32, i32* %flags, align 8, !dbg !3543
  %and = lshr i32 %12, 1, !dbg !3544
  %and.lobit = and i32 %and, 1, !dbg !3544
  %13 = xor i32 %and.lobit, 1, !dbg !3544
  %spec.select = add i32 %n_copies.0, %13, !dbg !3544
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3524, metadata !DIExpression(DW_OP_deref)), !dbg !3532
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3540
  br label %for.cond, !dbg !3540, !llvm.loop !3545

for.end:                                          ; preds = %for.cond
  %n_copies.0.lcssa = phi i32 [ %n_copies.0, %for.cond ], !dbg !3539
  call void @llvm.dbg.value(metadata i32 %n_copies.0.lcssa, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 %n_copies.0.lcssa, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 %n_copies.0.lcssa, metadata !3531, metadata !DIExpression()), !dbg !3532
  %14 = bitcast %struct.edge_iterator* %tmp3 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3547
  %call5 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3547
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp3, i64 0, i32 0, !dbg !3547
  %16 = extractvalue { i32, %struct.VEC_edge_gc** } %call5, 0, !dbg !3547
  store i32 %16, i32* %15, align 8, !dbg !3547
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp3, i64 0, i32 1, !dbg !3547
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call5, 1, !dbg !3547
  store %struct.VEC_edge_gc** %18, %struct.VEC_edge_gc*** %17, align 8, !dbg !3547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !3547
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3547
  br label %for.cond6, !dbg !3547

for.cond6:                                        ; preds = %for.inc16, %for.end
  %n_copies.2 = phi i32 [ %n_copies.0.lcssa, %for.end ], [ %n_copies.3, %for.inc16 ], !dbg !3539
  call void @llvm.dbg.value(metadata i32 %n_copies.2, metadata !3531, metadata !DIExpression()), !dbg !3532
  %19 = load i32, i32* %7, align 8, !dbg !3549
  %20 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3549
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3523, metadata !DIExpression(DW_OP_deref)), !dbg !3532
  %call7 = call fastcc zeroext i8 @ei_cond(i32 %19, %struct.VEC_edge_gc** %20, %struct.edge_def** nonnull %e) #7, !dbg !3549
  %tobool8 = icmp eq i8 %call7, 0, !dbg !3547
  br i1 %tobool8, label %for.end17, label %for.body9, !dbg !3547

for.body9:                                        ; preds = %for.cond6
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !3523, metadata !DIExpression()), !dbg !3532
  %flags10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 7, !dbg !3553
  %22 = load i32, i32* %flags10, align 8, !dbg !3553
  %and11 = and i32 %22, 2, !dbg !3554
  %tobool12 = icmp eq i32 %and11, 0, !dbg !3554
  br i1 %tobool12, label %if.then13, label %for.inc16, !dbg !3555

if.then13:                                        ; preds = %for.body9
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !3523, metadata !DIExpression()), !dbg !3532
  %dec = add i32 %n_copies.2, -1, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3531, metadata !DIExpression()), !dbg !3532
  %cmp = icmp eq i32 %n_copies.2, 0, !dbg !3557
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3558

cond.true:                                        ; preds = %if.then13
  %call14 = call %struct.gimple_seq_d* @gimple_seq_copy(%struct.gimple_seq_d* %seq) #6, !dbg !3559
  br label %cond.end, !dbg !3558

cond.end:                                         ; preds = %if.then13, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %call14, %cond.true ], [ %seq, %if.then13 ], !dbg !3558
  call void @gsi_insert_seq_on_edge(%struct.edge_def* %21, %struct.gimple_seq_d* %cond) #6, !dbg !3560
  br label %for.inc16, !dbg !3560

for.inc16:                                        ; preds = %for.body9, %cond.end
  %n_copies.3 = phi i32 [ %n_copies.2, %for.body9 ], [ %dec, %cond.end ], !dbg !3532
  call void @llvm.dbg.value(metadata i32 %n_copies.3, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3524, metadata !DIExpression(DW_OP_deref)), !dbg !3532
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3549
  br label %for.cond6, !dbg !3549, !llvm.loop !3561

for.end17:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3563
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3563
  ret void, !dbg !3563
}

declare dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3564 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3568, metadata !DIExpression()), !dbg !3570
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3571
  store i32 0, i32* %index, align 8, !dbg !3572
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3573
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3574
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3575
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3575
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3575
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3576 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3582, metadata !DIExpression()), !dbg !3583
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3584
  %tobool = icmp eq i8 %call, 0, !dbg !3584
  br i1 %tobool, label %if.then, label %if.else, !dbg !3586

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3587
  br label %return, !dbg !3589

if.else:                                          ; preds = %entry
  br label %return, !dbg !3590

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3592
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3592
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3592
  ret i8 %retval.0, !dbg !3593
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3594 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3599, metadata !DIExpression()), !dbg !3600
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3601
  %0 = load i32, i32* %index, align 8, !dbg !3601
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3601
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3601
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3601
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3601
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3601

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3601
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3601
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3601
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3601
  br label %cond.end, !dbg !3601

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3601
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3601
  %cmp = icmp ult i32 %0, %call2, !dbg !3601
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3601

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3601
  br label %cond.end5, !dbg !3601

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3602
  %inc = add i32 %5, 1, !dbg !3602
  store i32 %inc, i32* %index, align 8, !dbg !3602
  ret void, !dbg !3603
}

declare dso_local void @gsi_insert_seq_on_edge(%struct.edge_def*, %struct.gimple_seq_d*) local_unnamed_addr #2

declare dso_local %struct.gimple_seq_d* @gimple_seq_copy(%struct.gimple_seq_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3604 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3609
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3609
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3609

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3609
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3609
  br label %cond.end, !dbg !3609

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3609
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3609
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3610
  %conv3 = zext i1 %cmp to i8, !dbg !3611
  ret i8 %conv3, !dbg !3612
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3613 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3618
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3618
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3618

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3618
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3618
  br label %cond.end, !dbg !3618

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3618
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3618
  ret %struct.edge_def* %call2, !dbg !3619
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3620 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3626, metadata !DIExpression()), !dbg !3627
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3628
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3628

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3628
  %0 = load i32, i32* %num, align 8, !dbg !3628
  br label %cond.end, !dbg !3628

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3628
  ret i32 %cond, !dbg !3628
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3629 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3634
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3634

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3634
  br label %cond.end, !dbg !3634

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3635
  ret %struct.VEC_edge_gc* %0, !dbg !3636
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3637 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3641, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3642, metadata !DIExpression()), !dbg !3643
  br label %land.end, !dbg !3644

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3644
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3644
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3644
  ret %struct.edge_def* %0, !dbg !3644
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3645 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3649, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3650, metadata !DIExpression()), !dbg !3653
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3654
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3651, metadata !DIExpression()), !dbg !3652
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3655
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3656
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3657
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3658
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3659
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3660
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3661
  ret void, !dbg !3662
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mf_xform_derefs_1(%struct.gimple_stmt_iterator* %iter, %union.tree_node** %tp, i32 %location, %union.tree_node* %dirflag) unnamed_addr #5 !dbg !3663 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %iter, metadata !3667, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !3668, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i32 %location, metadata !3669, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %dirflag, metadata !3670, metadata !DIExpression()), !dbg !3690
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3691
  %cmp = icmp eq %union.tree_node* %0, %dirflag, !dbg !3693
  %1 = load i32, i32* @flag_mudflap_ignore_reads, align 4, !dbg !3694
  %tobool = icmp ne i32 %1, 0, !dbg !3694
  %or.cond = and i1 %cmp, %tobool, !dbg !3695
  br i1 %or.cond, label %cleanup.cont264, label %if.end, !dbg !3695

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %tp, align 8, !dbg !3696
  %call = tail call i32 @mf_marked_p(%union.tree_node* %2) #7, !dbg !3698
  %tobool1 = icmp eq i32 %call, 0, !dbg !3698
  br i1 %tobool1, label %if.end3, label %cleanup.cont264, !dbg !3699

if.end3:                                          ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %tp, align 8, !dbg !3700
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3676, metadata !DIExpression()), !dbg !3690
  %type4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3701
  %4 = load %union.tree_node*, %union.tree_node** %type4, align 8, !dbg !3701
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3671, metadata !DIExpression()), !dbg !3690
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3702
  %cmp5 = icmp eq %union.tree_node* %4, %5, !dbg !3704
  br i1 %cmp5, label %cleanup.cont264, label %if.end7, !dbg !3705

if.end7:                                          ; preds = %if.end3
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3706
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !3706
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !3675, metadata !DIExpression()), !dbg !3690
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3707
  %bf.load = load i64, i64* %8, align 8, !dbg !3707
  %9 = trunc i64 %bf.load to i16, !dbg !3707
  switch i16 %9, label %cleanup.cont264 [
    i16 45, label %sw.bb
    i16 41, label %sw.bb
    i16 47, label %sw.bb200
    i16 152, label %sw.bb207
    i16 46, label %sw.bb212
    i16 42, label %sw.bb214
  ], !dbg !3708

sw.bb:                                            ; preds = %if.end7, %if.end7
  %bf.cast136 = and i64 %bf.load, 65535, !dbg !3709
  %cmp14 = icmp eq i64 %bf.cast136, 41, !dbg !3709
  %conv = zext i1 %cmp14 to i32, !dbg !3709
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3680, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3681, metadata !DIExpression()), !dbg !3710
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !3711

land.rhs:                                         ; preds = %sw.bb
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3712
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3712
  %10 = bitcast %union.tree_node** %arrayidx to %struct.tree_field_decl**, !dbg !3712
  %11 = load %struct.tree_field_decl*, %struct.tree_field_decl** %10, align 8, !dbg !3712
  %bit_field_type = getelementptr inbounds %struct.tree_field_decl, %struct.tree_field_decl* %11, i64 0, i32 2, !dbg !3712
  %12 = load %union.tree_node*, %union.tree_node** %bit_field_type, align 8, !dbg !3712
  %tobool21 = icmp eq %union.tree_node* %12, null, !dbg !3711
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %13 = phi i1 [ true, %sw.bb ], [ %tobool21, %land.rhs ]
  %operands23 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3713
  %14 = load %union.tree_node*, %union.tree_node** %operands23, align 8, !dbg !3713
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !3677, metadata !DIExpression()), !dbg !3710
  br i1 %13, label %land.end.land.end.split_crit_edge, label %land.end.split.us, !dbg !3714

land.end.land.end.split_crit_edge:                ; preds = %land.end
  br label %while.cond, !dbg !3714

land.end.split.us:                                ; preds = %land.end
  br label %while.cond.us, !dbg !3714

while.cond.us:                                    ; preds = %if.end157.us, %land.end.split.us
  %var.0.us = phi %union.tree_node* [ %14, %land.end.split.us ], [ %var.2.us, %if.end157.us ], !dbg !3710
  %component_ref_only.0.us = phi i32 [ %conv, %land.end.split.us ], [ %component_ref_only.1.us, %if.end157.us ], !dbg !3710
  %elt.0.us = phi %union.tree_node* [ null, %land.end.split.us ], [ %elt.1.us, %if.end157.us ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.0.us, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.0.us, metadata !3680, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us, metadata !3677, metadata !DIExpression()), !dbg !3710
  %cmp27.us = icmp eq %union.tree_node* %elt.0.us, null, !dbg !3715
  br i1 %cmp27.us, label %land.lhs.true29.us, label %while.cond.us.if.end43.us_crit_edge, !dbg !3718

while.cond.us.if.end43.us_crit_edge:              ; preds = %while.cond.us
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3719
  %bf.load45.us.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3721
  br label %if.end43.us, !dbg !3718

land.lhs.true29.us:                               ; preds = %while.cond.us
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3722
  %bf.load31.us = load i64, i64* %15, align 8, !dbg !3722
  %bf.cast3320.us = and i64 %bf.load31.us, 65535, !dbg !3723
  %cmp34.us = icmp eq i64 %bf.cast3320.us, 45, !dbg !3723
  br i1 %cmp34.us, label %if.then42.us, label %lor.lhs.false.us, !dbg !3724

lor.lhs.false.us:                                 ; preds = %land.lhs.true29.us
  %cmp40.us = icmp eq i64 %bf.cast3320.us, 41, !dbg !3725
  br i1 %cmp40.us, label %if.then42.us, label %if.end43.us, !dbg !3726

if.then42.us:                                     ; preds = %lor.lhs.false.us, %land.lhs.true29.us
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us, metadata !3681, metadata !DIExpression()), !dbg !3710
  br label %if.end43.us, !dbg !3727

if.end43.us:                                      ; preds = %while.cond.us.if.end43.us_crit_edge, %if.then42.us, %lor.lhs.false.us
  %bf.load91.us = phi i64 [ %bf.load31.us, %if.then42.us ], [ %bf.load31.us, %lor.lhs.false.us ], [ %bf.load45.us.pre, %while.cond.us.if.end43.us_crit_edge ], !dbg !3721
  %elt.1.us = phi %union.tree_node* [ %var.0.us, %if.then42.us ], [ null, %lor.lhs.false.us ], [ %elt.0.us, %while.cond.us.if.end43.us_crit_edge ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us, metadata !3681, metadata !DIExpression()), !dbg !3710
  %bf.cast478.us = and i64 %bf.load91.us, 65535, !dbg !3728
  %cmp48.us = icmp eq i64 %bf.cast478.us, 45, !dbg !3728
  br i1 %cmp48.us, label %if.then50.us, label %if.else.us, !dbg !3729

if.else.us:                                       ; preds = %if.end43.us
  %cmp58.us = icmp eq i64 %bf.cast478.us, 41, !dbg !3730
  br i1 %cmp58.us, label %if.then60.us, label %if.else64.us, !dbg !3732

if.else64.us:                                     ; preds = %if.else.us
  %cmp69.us = icmp eq i64 %bf.cast478.us, 47, !dbg !3733
  br i1 %cmp69.us, label %if.then85.us-lcssa.us, label %lor.lhs.false71.us, !dbg !3733

lor.lhs.false71.us:                               ; preds = %if.else64.us
  %cmp76.us = icmp eq i64 %bf.cast478.us, 48, !dbg !3733
  br i1 %cmp76.us, label %if.then85.us-lcssa.us, label %lor.lhs.false78.us, !dbg !3733

lor.lhs.false78.us:                               ; preds = %lor.lhs.false71.us
  %cmp83.us = icmp eq i64 %bf.cast478.us, 49, !dbg !3733
  br i1 %cmp83.us, label %if.then85.us-lcssa.us, label %if.else89.us, !dbg !3735

if.else89.us:                                     ; preds = %lor.lhs.false78.us
  %cmp94.us = icmp eq i64 %bf.cast478.us, 118, !dbg !3736
  br i1 %cmp94.us, label %if.then96.us, label %if.else116.us-lcssa.us, !dbg !3738

if.then96.us:                                     ; preds = %if.else89.us
  %operands98.us = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3739
  %16 = load %union.tree_node*, %union.tree_node** %operands98.us, align 8, !dbg !3739
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !3677, metadata !DIExpression()), !dbg !3710
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3741
  %bf.load101.us = load i64, i64* %17, align 8, !dbg !3741
  %bf.cast103.us = and i64 %bf.load101.us, 65535, !dbg !3741
  %arrayidx104.us = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast103.us, !dbg !3741
  %18 = load i32, i32* %arrayidx104.us, align 4, !dbg !3741
  %cmp105.us = icmp eq i32 %18, 1, !dbg !3741
  br i1 %cmp105.us, label %land.lhs.true107.us, label %if.end157.us, !dbg !3743

land.lhs.true107.us:                              ; preds = %if.then96.us
  %cmp112.us = icmp eq i64 %bf.cast103.us, 28, !dbg !3744
  br i1 %cmp112.us, label %if.end157.us, label %cleanup.loopexit.us-lcssa.us, !dbg !3745

if.then60.us:                                     ; preds = %if.else.us
  %operands62.us = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3746
  %19 = load %union.tree_node*, %union.tree_node** %operands62.us, align 8, !dbg !3746
  call void @llvm.dbg.value(metadata %union.tree_node* %19, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %if.end157.us, !dbg !3747

if.then50.us:                                     ; preds = %if.end43.us
  call void @llvm.dbg.value(metadata i32 0, metadata !3680, metadata !DIExpression()), !dbg !3710
  %operands52.us = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3748
  %20 = load %union.tree_node*, %union.tree_node** %operands52.us, align 8, !dbg !3748
  call void @llvm.dbg.value(metadata %union.tree_node* %20, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %if.end157.us, !dbg !3750

if.end157.us:                                     ; preds = %if.then50.us, %if.then60.us, %land.lhs.true107.us, %if.then96.us
  %var.2.us = phi %union.tree_node* [ %20, %if.then50.us ], [ %19, %if.then60.us ], [ %16, %land.lhs.true107.us ], [ %16, %if.then96.us ], !dbg !3719
  %component_ref_only.1.us = phi i32 [ 0, %if.then50.us ], [ %component_ref_only.0.us, %if.then60.us ], [ %component_ref_only.0.us, %land.lhs.true107.us ], [ %component_ref_only.0.us, %if.then96.us ], !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.1.us, metadata !3680, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.2.us, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %while.cond.us, !dbg !3714, !llvm.loop !3751

if.then85.us-lcssa.us:                            ; preds = %lor.lhs.false78.us, %lor.lhs.false71.us, %if.else64.us
  %elt.1.us.lcssa = phi %union.tree_node* [ %elt.1.us, %lor.lhs.false78.us ], [ %elt.1.us, %lor.lhs.false71.us ], [ %elt.1.us, %if.else64.us ], !dbg !3710
  %var.0.us.lcssa = phi %union.tree_node* [ %var.0.us, %lor.lhs.false78.us ], [ %var.0.us, %lor.lhs.false71.us ], [ %var.0.us, %if.else64.us ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %if.then85, !dbg !3753

if.else116.us-lcssa.us:                           ; preds = %if.else89.us
  %elt.1.us.lcssa60 = phi %union.tree_node* [ %elt.1.us, %if.else89.us ], !dbg !3710
  %bf.cast478.us.lcssa58 = phi i64 [ %bf.cast478.us, %if.else89.us ], !dbg !3728
  %var.0.us.lcssa56 = phi %union.tree_node* [ %var.0.us, %if.else89.us ], !dbg !3710
  %component_ref_only.0.us.lcssa54 = phi i32 [ %component_ref_only.0.us, %if.else89.us ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa60, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa56, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.0.us.lcssa54, metadata !3680, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.us.lcssa60, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.us.lcssa56, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.0.us.lcssa54, metadata !3680, metadata !DIExpression()), !dbg !3710
  br label %if.else116, !dbg !3755

cleanup.loopexit.us-lcssa.us:                     ; preds = %land.lhs.true107.us
  br label %cleanup.loopexit

while.cond:                                       ; preds = %if.end157, %land.end.land.end.split_crit_edge
  %var.0 = phi %union.tree_node* [ %14, %land.end.land.end.split_crit_edge ], [ %var.2, %if.end157 ], !dbg !3710
  %component_ref_only.0 = phi i32 [ %conv, %land.end.land.end.split_crit_edge ], [ %component_ref_only.1, %if.end157 ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.0, metadata !3680, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3681, metadata !DIExpression()), !dbg !3710
  %21 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3721
  %bf.load45 = load i64, i64* %21, align 8, !dbg !3721
  %bf.cast478 = and i64 %bf.load45, 65535, !dbg !3728
  %cmp48 = icmp eq i64 %bf.cast478, 45, !dbg !3728
  br i1 %cmp48, label %if.then50, label %if.else, !dbg !3729

if.then50:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !3680, metadata !DIExpression()), !dbg !3710
  %operands52 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3748
  %22 = load %union.tree_node*, %union.tree_node** %operands52, align 8, !dbg !3748
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %if.end157, !dbg !3750

if.else:                                          ; preds = %while.cond
  %cmp58 = icmp eq i64 %bf.cast478, 41, !dbg !3730
  br i1 %cmp58, label %if.then60, label %if.else64, !dbg !3732

if.then60:                                        ; preds = %if.else
  %operands62 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3746
  %23 = load %union.tree_node*, %union.tree_node** %operands62, align 8, !dbg !3746
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %if.end157, !dbg !3747

if.else64:                                        ; preds = %if.else
  %cmp69 = icmp eq i64 %bf.cast478, 47, !dbg !3733
  br i1 %cmp69, label %if.then85.us-lcssa, label %lor.lhs.false71, !dbg !3733

lor.lhs.false71:                                  ; preds = %if.else64
  %cmp76 = icmp eq i64 %bf.cast478, 48, !dbg !3733
  br i1 %cmp76, label %if.then85.us-lcssa, label %lor.lhs.false78, !dbg !3733

lor.lhs.false78:                                  ; preds = %lor.lhs.false71
  %cmp83 = icmp eq i64 %bf.cast478, 49, !dbg !3733
  br i1 %cmp83, label %if.then85.us-lcssa, label %if.else89, !dbg !3735

if.then85.us-lcssa:                               ; preds = %if.else64, %lor.lhs.false71, %lor.lhs.false78
  %var.0.lcssa51 = phi %union.tree_node* [ %var.0, %if.else64 ], [ %var.0, %lor.lhs.false71 ], [ %var.0, %lor.lhs.false78 ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa51, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa51, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa51, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa51, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa51, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa51, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %if.then85, !dbg !3753

if.then85:                                        ; preds = %if.then85.us-lcssa.us, %if.then85.us-lcssa
  %elt.1.lcssa = phi %union.tree_node* [ null, %if.then85.us-lcssa ], [ %elt.1.us.lcssa, %if.then85.us-lcssa.us ], !dbg !3710
  %var.0.lcssa = phi %union.tree_node* [ %var.0.lcssa51, %if.then85.us-lcssa ], [ %var.0.us.lcssa, %if.then85.us-lcssa.us ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.lcssa, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3710
  %operands87 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3753
  %24 = load %union.tree_node*, %union.tree_node** %operands87, align 8, !dbg !3753
  call void @llvm.dbg.value(metadata %union.tree_node* %24, metadata !3672, metadata !DIExpression()), !dbg !3690
  br label %while.end, !dbg !3757

if.else89:                                        ; preds = %lor.lhs.false78
  %cmp94 = icmp eq i64 %bf.cast478, 118, !dbg !3736
  br i1 %cmp94, label %if.then96, label %if.else116.us-lcssa, !dbg !3738

if.then96:                                        ; preds = %if.else89
  %operands98 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3739
  %25 = load %union.tree_node*, %union.tree_node** %operands98, align 8, !dbg !3739
  call void @llvm.dbg.value(metadata %union.tree_node* %25, metadata !3677, metadata !DIExpression()), !dbg !3710
  %26 = getelementptr inbounds %union.tree_node, %union.tree_node* %25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3741
  %bf.load101 = load i64, i64* %26, align 8, !dbg !3741
  %bf.cast103 = and i64 %bf.load101, 65535, !dbg !3741
  %arrayidx104 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast103, !dbg !3741
  %27 = load i32, i32* %arrayidx104, align 4, !dbg !3741
  %cmp105 = icmp eq i32 %27, 1, !dbg !3741
  br i1 %cmp105, label %land.lhs.true107, label %if.end157, !dbg !3743

land.lhs.true107:                                 ; preds = %if.then96
  %cmp112 = icmp eq i64 %bf.cast103, 28, !dbg !3744
  br i1 %cmp112, label %if.end157, label %cleanup.loopexit.us-lcssa, !dbg !3745

if.else116.us-lcssa:                              ; preds = %if.else89
  %var.0.lcssa52 = phi %union.tree_node* [ %var.0, %if.else89 ], !dbg !3710
  %component_ref_only.0.lcssa49 = phi i32 [ %component_ref_only.0, %if.else89 ], !dbg !3710
  %bf.cast478.lcssa47 = phi i64 [ %bf.cast478, %if.else89 ], !dbg !3728
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa52, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.0.lcssa49, metadata !3680, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa52, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.0.lcssa49, metadata !3680, metadata !DIExpression()), !dbg !3710
  br label %if.else116, !dbg !3755

if.else116:                                       ; preds = %if.else116.us-lcssa.us, %if.else116.us-lcssa
  %bf.cast12014.pre-phi = phi i64 [ %bf.cast478.us.lcssa58, %if.else116.us-lcssa.us ], [ %bf.cast478.lcssa47, %if.else116.us-lcssa ], !dbg !3755
  %elt.1.lcssa26 = phi %union.tree_node* [ %elt.1.us.lcssa60, %if.else116.us-lcssa.us ], [ null, %if.else116.us-lcssa ], !dbg !3710
  %var.0.lcssa24 = phi %union.tree_node* [ %var.0.us.lcssa56, %if.else116.us-lcssa.us ], [ %var.0.lcssa52, %if.else116.us-lcssa ], !dbg !3710
  %component_ref_only.0.lcssa22 = phi i32 [ %component_ref_only.0.us.lcssa54, %if.else116.us-lcssa.us ], [ %component_ref_only.0.lcssa49, %if.else116.us-lcssa ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.1.lcssa26, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0.lcssa24, metadata !3677, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.0.lcssa22, metadata !3680, metadata !DIExpression()), !dbg !3710
  %cmp121 = icmp eq i64 %bf.cast12014.pre-phi, 32, !dbg !3755
  br i1 %cmp121, label %cond.end, label %lor.lhs.false123, !dbg !3755

lor.lhs.false123:                                 ; preds = %if.else116
  %cmp128 = icmp eq i64 %bf.cast12014.pre-phi, 34, !dbg !3755
  br i1 %cmp128, label %cond.end, label %lor.lhs.false130, !dbg !3755

lor.lhs.false130:                                 ; preds = %lor.lhs.false123
  %cmp135 = icmp eq i64 %bf.cast12014.pre-phi, 36, !dbg !3755
  br i1 %cmp135, label %cond.end, label %lor.lhs.false137, !dbg !3755

lor.lhs.false137:                                 ; preds = %lor.lhs.false130
  %cmp142 = icmp eq i64 %bf.cast12014.pre-phi, 28, !dbg !3755
  br i1 %cmp142, label %cond.end, label %cond.true, !dbg !3755

cond.true:                                        ; preds = %lor.lhs.false137
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 834, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3755
  br label %cond.end, !dbg !3755

cond.end:                                         ; preds = %if.else116, %lor.lhs.false123, %lor.lhs.false130, %lor.lhs.false137, %cond.true
  %call144 = tail call fastcc i32 @mf_decl_eligible_p(%union.tree_node* %var.0.lcssa24) #7, !dbg !3758
  %tobool145 = icmp eq i32 %call144, 0, !dbg !3758
  %tobool147 = icmp ne i32 %component_ref_only.0.lcssa22, 0, !dbg !3760
  %or.cond4 = or i1 %tobool145, %tobool147, !dbg !3761
  br i1 %or.cond4, label %cleanup, label %if.else149, !dbg !3761

if.else149:                                       ; preds = %cond.end
  %type151 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0.lcssa24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3762
  %28 = load %union.tree_node*, %union.tree_node** %type151, align 8, !dbg !3762
  %call152 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %28) #6, !dbg !3762
  %call153 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call152, %union.tree_node* %var.0.lcssa24) #6, !dbg !3762
  call void @llvm.dbg.value(metadata %union.tree_node* %call153, metadata !3672, metadata !DIExpression()), !dbg !3690
  br label %while.end, !dbg !3764

if.end157:                                        ; preds = %land.lhs.true107, %if.then60, %if.then96, %if.then50
  %var.2 = phi %union.tree_node* [ %22, %if.then50 ], [ %23, %if.then60 ], [ %25, %land.lhs.true107 ], [ %25, %if.then96 ], !dbg !3719
  %component_ref_only.1 = phi i32 [ 0, %if.then50 ], [ %component_ref_only.0, %if.then60 ], [ %component_ref_only.0, %land.lhs.true107 ], [ %component_ref_only.0, %if.then96 ], !dbg !3710
  call void @llvm.dbg.value(metadata i32 %component_ref_only.1, metadata !3680, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %var.2, metadata !3677, metadata !DIExpression()), !dbg !3710
  br label %while.cond, !dbg !3714, !llvm.loop !3751

while.end:                                        ; preds = %if.else149, %if.then85
  %elt.128 = phi %union.tree_node* [ %elt.1.lcssa, %if.then85 ], [ %elt.1.lcssa26, %if.else149 ]
  %base.0 = phi %union.tree_node* [ %24, %if.then85 ], [ %call153, %if.else149 ], !dbg !3765
  call void @llvm.dbg.value(metadata %union.tree_node* %base.0, metadata !3672, metadata !DIExpression()), !dbg !3690
  br i1 %13, label %if.else190, label %if.then159, !dbg !3766

if.then159:                                       ; preds = %while.end
  %arrayidx162 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands23, i64 1, !dbg !3767
  %29 = load %union.tree_node*, %union.tree_node** %arrayidx162, align 8, !dbg !3767
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !3683, metadata !DIExpression()), !dbg !3768
  %size_unit163 = getelementptr inbounds %union.tree_node, %union.tree_node* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3769
  %30 = bitcast %union.tree_node** %size_unit163 to i64**, !dbg !3769
  %31 = load i64*, i64** %30, align 8, !dbg !3769
  %bf.load165 = load i64, i64* %31, align 8, !dbg !3769
  %bf.cast16718 = and i64 %bf.load165, 65535, !dbg !3771
  %cmp168 = icmp eq i64 %bf.cast16718, 23, !dbg !3771
  br i1 %cmp168, label %if.then170, label %if.end173, !dbg !3772

if.then170:                                       ; preds = %if.then159
  %32 = bitcast i64* %31 to %union.tree_node*, !dbg !3772
  call void @llvm.dbg.value(metadata %union.tree_node* %32, metadata !3675, metadata !DIExpression()), !dbg !3690
  br label %if.end173, !dbg !3773

if.end173:                                        ; preds = %if.then170, %if.then159
  %size.0 = phi %union.tree_node* [ %32, %if.then170 ], [ %7, %if.then159 ], !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %size.0, metadata !3675, metadata !DIExpression()), !dbg !3690
  %tobool174 = icmp eq %union.tree_node* %elt.128, null, !dbg !3774
  br i1 %tobool174, label %if.end180, label %if.then175, !dbg !3776

if.then175:                                       ; preds = %if.end173
  %type177 = getelementptr inbounds %union.tree_node, %union.tree_node* %elt.128, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3777
  %33 = load %union.tree_node*, %union.tree_node** %type177, align 8, !dbg !3777
  %call178 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %33) #6, !dbg !3777
  %call179 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call178, %union.tree_node* nonnull %elt.128) #6, !dbg !3777
  call void @llvm.dbg.value(metadata %union.tree_node* %call179, metadata !3681, metadata !DIExpression()), !dbg !3710
  br label %if.end180, !dbg !3778

if.end180:                                        ; preds = %if.end173, %if.then175
  %elt.2 = phi %union.tree_node* [ %call179, %if.then175 ], [ null, %if.end173 ], !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.2, metadata !3681, metadata !DIExpression()), !dbg !3710
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3779
  %tobool181 = icmp eq %union.tree_node* %elt.2, null, !dbg !3780
  %elt.2.base.0 = select i1 %tobool181, %union.tree_node* %base.0, %union.tree_node* %elt.2, !dbg !3780
  %call186 = tail call %union.tree_node* @fold_convert_loc(i32 %location, %union.tree_node* %34, %union.tree_node* %elt.2.base.0) #6, !dbg !3781
  call void @llvm.dbg.value(metadata %union.tree_node* %call186, metadata !3674, metadata !DIExpression()), !dbg !3690
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3782
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3782
  %call187 = tail call %union.tree_node* @byte_position(%union.tree_node* %29) #6, !dbg !3782
  %call188 = tail call %union.tree_node* @fold_convert_loc(i32 %location, %union.tree_node* %36, %union.tree_node* %call187) #6, !dbg !3782
  %call189 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %35, %union.tree_node* %call186, %union.tree_node* %call188) #6, !dbg !3782
  call void @llvm.dbg.value(metadata %union.tree_node* %call189, metadata !3674, metadata !DIExpression()), !dbg !3690
  br label %if.end193, !dbg !3783

if.else190:                                       ; preds = %while.end
  %call191 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %4) #6, !dbg !3784
  %call192 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call191, %union.tree_node* %3) #6, !dbg !3784
  call void @llvm.dbg.value(metadata %union.tree_node* %call192, metadata !3674, metadata !DIExpression()), !dbg !3690
  br label %if.end193

if.end193:                                        ; preds = %if.else190, %if.end180
  %addr.0 = phi %union.tree_node* [ %call189, %if.end180 ], [ %call192, %if.else190 ], !dbg !3785
  %size.1 = phi %union.tree_node* [ %size.0, %if.end180 ], [ %7, %if.else190 ], !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %size.1, metadata !3675, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %addr.0, metadata !3674, metadata !DIExpression()), !dbg !3690
  %37 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !3786
  %call194 = tail call %union.tree_node* @convert(%union.tree_node* %37, %union.tree_node* %addr.0) #6, !dbg !3786
  %call195 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 63, %union.tree_node* %37, %union.tree_node* %call194, %union.tree_node* %size.1) #6, !dbg !3786
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 14), align 16, !dbg !3786
  %call196 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 64, %union.tree_node* %37, %union.tree_node* %call195, %union.tree_node* %38) #6, !dbg !3786
  call void @llvm.dbg.value(metadata %union.tree_node* %call196, metadata !3673, metadata !DIExpression()), !dbg !3690
  br label %cleanup, !dbg !3787

cleanup.loopexit.us-lcssa:                        ; preds = %land.lhs.true107
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %cleanup.loopexit.us-lcssa.us, %cleanup.loopexit.us-lcssa
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end, %if.end193
  %limit.0 = phi %union.tree_node* [ %call196, %if.end193 ], [ undef, %cond.end ], [ undef, %cleanup.loopexit ]
  %base.1 = phi %union.tree_node* [ %base.0, %if.end193 ], [ undef, %cond.end ], [ undef, %cleanup.loopexit ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end193 ], [ false, %cond.end ], [ false, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata %union.tree_node* %base.1, metadata !3672, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %limit.0, metadata !3673, metadata !DIExpression()), !dbg !3690
  br i1 %cleanup.dest.slot.0, label %sw.epilog, label %cleanup.cont264

sw.bb200:                                         ; preds = %if.end7
  %operands202 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3788
  %39 = load %union.tree_node*, %union.tree_node** %operands202, align 8, !dbg !3788
  call void @llvm.dbg.value(metadata %union.tree_node* %39, metadata !3674, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %39, metadata !3672, metadata !DIExpression()), !dbg !3690
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3789
  %call204 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %40, %union.tree_node* %39, %union.tree_node* %7) #6, !dbg !3789
  %call205 = tail call %union.tree_node* @size_int_kind(i64 -1, i32 0) #6, !dbg !3789
  %call206 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %40, %union.tree_node* %call204, %union.tree_node* %call205) #6, !dbg !3789
  call void @llvm.dbg.value(metadata %union.tree_node* %call206, metadata !3673, metadata !DIExpression()), !dbg !3690
  br label %sw.epilog, !dbg !3790

sw.bb207:                                         ; preds = %if.end7
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3791
  %call208 = tail call %union.tree_node* @tree_mem_ref_addr(%union.tree_node* %41, %union.tree_node* %3) #6, !dbg !3792
  call void @llvm.dbg.value(metadata %union.tree_node* %call208, metadata !3674, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %call208, metadata !3672, metadata !DIExpression()), !dbg !3690
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3793
  %call209 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %42, %union.tree_node* %call208, %union.tree_node* %7) #6, !dbg !3793
  %call210 = tail call %union.tree_node* @size_int_kind(i64 -1, i32 0) #6, !dbg !3793
  %call211 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %42, %union.tree_node* %call209, %union.tree_node* %call210) #6, !dbg !3793
  call void @llvm.dbg.value(metadata %union.tree_node* %call211, metadata !3673, metadata !DIExpression()), !dbg !3690
  br label %sw.epilog, !dbg !3794

sw.bb212:                                         ; preds = %if.end7
  %call213 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 136, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3795
  br label %cleanup.cont264, !dbg !3796

sw.bb214:                                         ; preds = %if.end7
  %operands216 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3797
  %43 = bitcast %union.tree_node** %operands216 to i64**, !dbg !3797
  %44 = load i64*, i64** %43, align 8, !dbg !3797
  %bf.load219 = load i64, i64* %44, align 8, !dbg !3797
  %bf.cast2215 = and i64 %bf.load219, 65535, !dbg !3799
  %cmp222 = icmp eq i64 %bf.cast2215, 47, !dbg !3799
  br i1 %cmp222, label %if.end225, label %cleanup252, !dbg !3800

if.end225:                                        ; preds = %sw.bb214
  %call226 = tail call %union.tree_node* @size_int_kind(i64 8, i32 2) #6, !dbg !3801
  call void @llvm.dbg.value(metadata %union.tree_node* %call226, metadata !3689, metadata !DIExpression()), !dbg !3802
  %45 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2), align 16, !dbg !3803
  %arrayidx229 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands216, i64 2, !dbg !3804
  %46 = load %union.tree_node*, %union.tree_node** %arrayidx229, align 8, !dbg !3804
  %call230 = tail call %union.tree_node* @convert(%union.tree_node* %45, %union.tree_node* %46) #6, !dbg !3805
  call void @llvm.dbg.value(metadata %union.tree_node* %call230, metadata !3686, metadata !DIExpression()), !dbg !3802
  %call231 = tail call %union.tree_node* @size_binop_loc(i32 %location, i32 71, %union.tree_node* %call230, %union.tree_node* %call226) #6, !dbg !3806
  call void @llvm.dbg.value(metadata %union.tree_node* %call231, metadata !3688, metadata !DIExpression()), !dbg !3802
  %47 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3807
  %call232 = tail call %union.tree_node* @size_binop_loc(i32 %location, i32 67, %union.tree_node* %call230, %union.tree_node* %call226) #6, !dbg !3808
  %call233 = tail call %union.tree_node* @fold_convert_loc(i32 %location, %union.tree_node* %47, %union.tree_node* %call232) #6, !dbg !3809
  call void @llvm.dbg.value(metadata %union.tree_node* %call233, metadata !3686, metadata !DIExpression()), !dbg !3802
  %48 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2), align 16, !dbg !3810
  %arrayidx236 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands216, i64 1, !dbg !3811
  %49 = load %union.tree_node*, %union.tree_node** %arrayidx236, align 8, !dbg !3811
  %call237 = tail call %union.tree_node* @convert(%union.tree_node* %48, %union.tree_node* %49) #6, !dbg !3812
  call void @llvm.dbg.value(metadata %union.tree_node* %call237, metadata !3675, metadata !DIExpression()), !dbg !3690
  %call238 = tail call %union.tree_node* @size_binop_loc(i32 %location, i32 63, %union.tree_node* %call237, %union.tree_node* %call231) #6, !dbg !3813
  call void @llvm.dbg.value(metadata %union.tree_node* %call238, metadata !3675, metadata !DIExpression()), !dbg !3690
  %call239 = tail call %union.tree_node* @size_binop_loc(i32 %location, i32 68, %union.tree_node* %call238, %union.tree_node* %call226) #6, !dbg !3814
  call void @llvm.dbg.value(metadata %union.tree_node* %call239, metadata !3675, metadata !DIExpression()), !dbg !3690
  %50 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3815
  %call240 = tail call %union.tree_node* @convert(%union.tree_node* %50, %union.tree_node* %call239) #6, !dbg !3816
  call void @llvm.dbg.value(metadata %union.tree_node* %call240, metadata !3675, metadata !DIExpression()), !dbg !3690
  %51 = bitcast %union.tree_node** %operands216 to %struct.tree_exp**, !dbg !3817
  %52 = load %struct.tree_exp*, %struct.tree_exp** %51, align 8, !dbg !3817
  %arrayidx246 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %52, i64 0, i32 3, i64 0, !dbg !3817
  %53 = load %union.tree_node*, %union.tree_node** %arrayidx246, align 8, !dbg !3817
  call void @llvm.dbg.value(metadata %union.tree_node* %53, metadata !3674, metadata !DIExpression()), !dbg !3690
  %54 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3818
  %call247 = tail call %union.tree_node* @convert(%union.tree_node* %54, %union.tree_node* %53) #6, !dbg !3819
  call void @llvm.dbg.value(metadata %union.tree_node* %call247, metadata !3674, metadata !DIExpression()), !dbg !3690
  %55 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3820
  %call248 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %55, %union.tree_node* %call247, %union.tree_node* %call233) #6, !dbg !3820
  call void @llvm.dbg.value(metadata %union.tree_node* %call248, metadata !3674, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %call248, metadata !3672, metadata !DIExpression()), !dbg !3690
  %56 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !3821
  %call249 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %56, %union.tree_node* %call248, %union.tree_node* %call240) #6, !dbg !3821
  %call250 = tail call %union.tree_node* @size_int_kind(i64 -1, i32 0) #6, !dbg !3821
  %call251 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 66, %union.tree_node* %56, %union.tree_node* %call249, %union.tree_node* %call250) #6, !dbg !3821
  call void @llvm.dbg.value(metadata %union.tree_node* %call251, metadata !3673, metadata !DIExpression()), !dbg !3690
  br label %cleanup252, !dbg !3822

cleanup252:                                       ; preds = %sw.bb214, %if.end225
  %limit.1 = phi %union.tree_node* [ %call251, %if.end225 ], [ undef, %sw.bb214 ]
  %base.2 = phi %union.tree_node* [ %call248, %if.end225 ], [ undef, %sw.bb214 ]
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end225 ], [ false, %sw.bb214 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %base.2, metadata !3672, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %limit.1, metadata !3673, metadata !DIExpression()), !dbg !3690
  br i1 %cleanup.dest.slot.1, label %sw.epilog, label %cleanup.cont264

sw.epilog:                                        ; preds = %cleanup252, %cleanup, %sw.bb207, %sw.bb200
  %limit.2 = phi %union.tree_node* [ %call211, %sw.bb207 ], [ %call206, %sw.bb200 ], [ %limit.0, %cleanup ], [ %limit.1, %cleanup252 ]
  %base.3 = phi %union.tree_node* [ %call208, %sw.bb207 ], [ %39, %sw.bb200 ], [ %base.1, %cleanup ], [ %base.2, %cleanup252 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %base.3, metadata !3672, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %union.tree_node* %limit.2, metadata !3673, metadata !DIExpression()), !dbg !3690
  tail call fastcc void @mf_build_check_statement_for(%union.tree_node* %base.3, %union.tree_node* %limit.2, %struct.gimple_stmt_iterator* %iter, i32 %location, %union.tree_node* %dirflag) #7, !dbg !3823
  br label %cleanup.cont264, !dbg !3824

cleanup.cont264:                                  ; preds = %if.end, %sw.bb212, %sw.epilog, %cleanup252, %cleanup, %entry, %if.end3, %if.end7
  ret void, !dbg !3824
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_assign_lhs_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3825 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3829, metadata !DIExpression()), !dbg !3830
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3831
  ret %union.tree_node** %call, !dbg !3832
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_assign_rhs1_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3833 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3835, metadata !DIExpression()), !dbg !3836
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3837
  ret %union.tree_node** %call, !dbg !3838
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3839 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3843, metadata !DIExpression()), !dbg !3844
  %idxprom = sext i32 %code to i64, !dbg !3845
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3845
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3845
  %conv = zext i8 %0 to i32, !dbg !3846
  ret i32 %conv, !dbg !3847
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3848 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3852, metadata !DIExpression()), !dbg !3854
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %call, metadata !3853, metadata !DIExpression()), !dbg !3854
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3856
  %cmp = icmp eq i32 %call1, 3, !dbg !3858
  br i1 %cmp, label %if.then, label %if.end, !dbg !3859

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3860
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3860
  %bf.load = load i64, i64* %0, align 8, !dbg !3860
  %1 = trunc i64 %bf.load to i32, !dbg !3860
  %bf.cast = and i32 %1, 65535, !dbg !3860
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3853, metadata !DIExpression()), !dbg !3854
  br label %if.end, !dbg !3861

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3854
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3853, metadata !DIExpression()), !dbg !3854
  ret i32 %code.0, !dbg !3862
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_assign_rhs2_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3863 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3865, metadata !DIExpression()), !dbg !3866
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !3867
  ret %union.tree_node** %call, !dbg !3868
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3869 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3871, metadata !DIExpression()), !dbg !3872
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3873
  ret %union.tree_node* %call, !dbg !3874
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_return_retval_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3875 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3877, metadata !DIExpression()), !dbg !3878
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3879
  ret %union.tree_node** %call, !dbg !3880
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3881 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3883, metadata !DIExpression()), !dbg !3885
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !3886
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3884, metadata !DIExpression()), !dbg !3885
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3887
  %bf.load = load i64, i64* %0, align 8, !dbg !3887
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3889
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3889
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3890

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3891
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3891
  br label %cleanup, !dbg !3892

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3885
  ret %union.tree_node* %retval.0, !dbg !3893
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_cannot_inline(%union.gimple_statement_d* %s, i8 zeroext %inlinable_p) unnamed_addr #0 !dbg !3894 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8 1, metadata !3899, metadata !DIExpression()), !dbg !3900
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !3901
  %bf.load = load i32, i32* %0, align 8, !dbg !3901
  %bf.lshr = and i32 %bf.load, -131072, !dbg !3903
  %or = or i32 %bf.lshr, 65536, !dbg !3903
  %bf.clear = and i32 %bf.load, 65535, !dbg !3903
  %bf.set = or i32 %bf.clear, %or, !dbg !3903
  store i32 %bf.set, i32* %0, align 8, !dbg !3901
  ret void, !dbg !3904
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3905 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3909, metadata !DIExpression()), !dbg !3910
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3911
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3911
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3912
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3912
  %2 = load i64, i64* %1, align 8, !dbg !3912
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3913
  store i64 %2, i64* %3, align 8, !dbg !3913
  ret void, !dbg !3914
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3915 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3922, metadata !DIExpression()), !dbg !3923
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3924
  %0 = load i32, i32* %flags, align 8, !dbg !3924
  %and = and i32 %0, 512, !dbg !3925
  %tobool = icmp eq i32 %and, 0, !dbg !3925
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3926

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3927
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3927
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3928
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3929

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3930
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3930
  br label %cond.end, !dbg !3929

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3929
  ret %struct.gimple_seq_d* %cond, !dbg !3931
}

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @byte_position(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @size_int_kind(i64, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @tree_mem_ref_addr(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @size_binop_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mf_build_check_statement_for(%union.tree_node* %base, %union.tree_node* %limit, %struct.gimple_stmt_iterator* %instr_gsi, i32 %location, %union.tree_node* %dirflag) unnamed_addr #5 !dbg !3932 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %seq = alloca %struct.gimple_seq_d*, align 8
  %stmts = alloca %struct.gimple_seq_d*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp68 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp76 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp77 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %base, metadata !3936, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %union.tree_node* %limit, metadata !3937, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %instr_gsi, metadata !3938, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %location, metadata !3939, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %union.tree_node* %dirflag, metadata !3940, metadata !DIExpression()), !dbg !3956
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3957
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3957
  %1 = bitcast %struct.gimple_seq_d** %seq to i8*, !dbg !3958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3958
  %2 = bitcast %struct.gimple_seq_d** %stmts to i8*, !dbg !3958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3958
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %instr_gsi) #7, !dbg !3959
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !3960
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !3942, metadata !DIExpression()), !dbg !3956
  %3 = bitcast %struct.gimple_stmt_iterator* %instr_gsi to i8*, !dbg !3961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %3, i64 24, i1 false), !dbg !3961
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3941, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3962
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3941, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call2 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3963
  %tobool = icmp eq i8 %call2, 0, !dbg !3963
  br i1 %tobool, label %if.then, label %if.else, !dbg !3965

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3941, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3966
  %4 = bitcast %union.gimple_statement_d* %call3 to i8*, !dbg !3966
  %call4 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call1, i8* %4) #6, !dbg !3967
  call void @llvm.dbg.value(metadata %struct.edge_def* %call4, metadata !3945, metadata !DIExpression()), !dbg !3956
  br label %if.end, !dbg !3968

if.else:                                          ; preds = %entry
  %call5 = call %struct.edge_def* @split_block_after_labels(%struct.basic_block_def* %call1) #6, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.edge_def* %call5, metadata !3945, metadata !DIExpression()), !dbg !3956
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %e.0 = phi %struct.edge_def* [ %call5, %if.else ], [ %call4, %if.then ], !dbg !3970
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !3945, metadata !DIExpression()), !dbg !3956
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.0, i64 0, i32 0, !dbg !3971
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3971
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !3942, metadata !DIExpression()), !dbg !3956
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.0, i64 0, i32 1, !dbg !3972
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !3944, metadata !DIExpression()), !dbg !3956
  %call6 = call %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def* %5) #6, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call6, metadata !3943, metadata !DIExpression()), !dbg !3956
  %call7 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %5, %struct.basic_block_def* %call6, i32 1024) #6, !dbg !3974
  %call8 = call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %call6, %struct.basic_block_def* %6, i32 1) #6, !dbg !3975
  %call9 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %5, %struct.basic_block_def* %6) #6, !dbg !3976
  call void @llvm.dbg.value(metadata %struct.edge_def* %call9, metadata !3945, metadata !DIExpression()), !dbg !3956
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call9, i64 0, i32 7, !dbg !3977
  store i32 2048, i32* %flags, align 8, !dbg !3978
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 8, !dbg !3979
  %7 = load i64, i64* %count, align 8, !dbg !3979
  %count10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call9, i64 0, i32 9, !dbg !3980
  store i64 %7, i64* %count10, align 8, !dbg !3981
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call9, i64 0, i32 8, !dbg !3982
  store i32 10000, i32* %probability, align 4, !dbg !3983
  %call11 = call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3984
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3984
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3986

if.then13:                                        ; preds = %if.end
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call6, %struct.basic_block_def* %5) #6, !dbg !3987
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %6, %struct.basic_block_def* %5) #6, !dbg !3989
  br label %if.end14, !dbg !3990

if.end14:                                         ; preds = %if.end, %if.then13
  %8 = load %union.tree_node*, %union.tree_node** @mf_cache_structptr_type, align 8, !dbg !3991
  %call15 = call %union.tree_node* @make_rename_temp(%union.tree_node* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !3992
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3951, metadata !DIExpression()), !dbg !3956
  %9 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !3993
  %call16 = call %union.tree_node* @make_rename_temp(%union.tree_node* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !3994
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !3950, metadata !DIExpression()), !dbg !3956
  %10 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !3995
  %call17 = call %union.tree_node* @make_rename_temp(%union.tree_node* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !3996
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !3952, metadata !DIExpression()), !dbg !3956
  %call18 = call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !3997
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call18, metadata !3954, metadata !DIExpression()), !dbg !3956
  store %struct.gimple_seq_d* %call18, %struct.gimple_seq_d** %seq, align 8, !dbg !3998
  %11 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !3999
  %call19 = call %union.tree_node* @unshare_expr(%union.tree_node* %base) #6, !dbg !4000
  %call20 = call %union.tree_node* @fold_convert_loc(i32 %location, %union.tree_node* %11, %union.tree_node* %call19) #6, !dbg !4001
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !3947, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call21 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call20, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 0, %union.tree_node* null) #6, !dbg !4002
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3947, metadata !DIExpression()), !dbg !3956
  %12 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !4003
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %12, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_seq(%struct.gimple_seq_d** nonnull %seq, %struct.gimple_seq_d* %12) #6, !dbg !4004
  %call22 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call16, %union.tree_node* %call21) #6, !dbg !4005
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call22, metadata !3953, metadata !DIExpression()), !dbg !3956
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call22, i32 %location) #7, !dbg !4006
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call22) #6, !dbg !4007
  %13 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !4008
  %call23 = call %union.tree_node* @unshare_expr(%union.tree_node* %limit) #6, !dbg !4009
  %call24 = call %union.tree_node* @fold_convert_loc(i32 %location, %union.tree_node* %13, %union.tree_node* %call23) #6, !dbg !4010
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !3947, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call25 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call24, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 0, %union.tree_node* null) #6, !dbg !4011
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !3947, metadata !DIExpression()), !dbg !3956
  %14 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !4012
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %14, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_seq(%struct.gimple_seq_d** nonnull %seq, %struct.gimple_seq_d* %14) #6, !dbg !4013
  %call26 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call17, %union.tree_node* %call25) #6, !dbg !4014
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call26, metadata !3953, metadata !DIExpression()), !dbg !3956
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call26, i32 %location) #7, !dbg !4015
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call26) #6, !dbg !4016
  %15 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !4017
  %16 = load i32, i32* @flag_mudflap, align 4, !dbg !4017
  %cmp = icmp eq i32 %16, 2, !dbg !4017
  %17 = load %union.tree_node*, %union.tree_node** @mf_cache_shift_decl, align 8, !dbg !4017
  %18 = load %union.tree_node*, %union.tree_node** @mf_cache_shift_decl_l, align 8, !dbg !4017
  %cond27 = select i1 %cmp, %union.tree_node* %17, %union.tree_node* %18, !dbg !4017
  %call28 = call %union.tree_node* @build2_stat(i32 84, %union.tree_node* %15, %union.tree_node* %call16, %union.tree_node* %cond27) #6, !dbg !4017
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !3947, metadata !DIExpression()), !dbg !3956
  %19 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !4018
  %20 = load i32, i32* @flag_mudflap, align 4, !dbg !4018
  %cmp29 = icmp eq i32 %20, 2, !dbg !4018
  %21 = load %union.tree_node*, %union.tree_node** @mf_cache_mask_decl, align 8, !dbg !4018
  %22 = load %union.tree_node*, %union.tree_node** @mf_cache_mask_decl_l, align 8, !dbg !4018
  %cond33 = select i1 %cmp29, %union.tree_node* %21, %union.tree_node* %22, !dbg !4018
  %call34 = call %union.tree_node* @build2_stat(i32 89, %union.tree_node* %19, %union.tree_node* %call28, %union.tree_node* %cond33) #6, !dbg !4018
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !3947, metadata !DIExpression()), !dbg !3956
  %23 = load %struct.tree_common*, %struct.tree_common** bitcast (%union.tree_node** @mf_cache_array_decl to %struct.tree_common**), align 8, !dbg !4019
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %23, i64 0, i32 2, !dbg !4019
  %24 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !4019
  %25 = load %struct.tree_common*, %struct.tree_common** %24, align 8, !dbg !4019
  %type36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %25, i64 0, i32 2, !dbg !4019
  %26 = load %union.tree_node*, %union.tree_node** %type36, align 8, !dbg !4019
  %.cast = bitcast %struct.tree_common* %23 to %union.tree_node*, !dbg !4019
  %call37 = call %union.tree_node* @build4_stat(i32 45, %union.tree_node* %26, %union.tree_node* %.cast, %union.tree_node* %call34, %union.tree_node* null, %union.tree_node* null) #6, !dbg !4019
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !3947, metadata !DIExpression()), !dbg !3956
  %27 = load %union.tree_node*, %union.tree_node** @mf_cache_structptr_type, align 8, !dbg !4020
  %call38 = call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %27, %union.tree_node* %call37) #6, !dbg !4020
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3947, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call39 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call38, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 0, %union.tree_node* null) #6, !dbg !4021
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !3947, metadata !DIExpression()), !dbg !3956
  %28 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !4022
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %28, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_seq(%struct.gimple_seq_d** nonnull %seq, %struct.gimple_seq_d* %28) #6, !dbg !4023
  %call40 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call15, %union.tree_node* %call39) #6, !dbg !4024
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call40, metadata !3953, metadata !DIExpression()), !dbg !3956
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call40, i32 %location) #7, !dbg !4025
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call40) #6, !dbg !4026
  %29 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !4027
  %30 = load %union.tree_node*, %union.tree_node** @mf_cache_struct_type, align 8, !dbg !4027
  %call41 = call %union.tree_node* @build1_stat(i32 47, %union.tree_node* %30, %union.tree_node* %call15) #6, !dbg !4027
  %31 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** @mf_cache_struct_type to %struct.tree_type**), align 8, !dbg !4027
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %31, i64 0, i32 1, !dbg !4027
  %32 = load %union.tree_node*, %union.tree_node** %values, align 8, !dbg !4027
  %call43 = call %union.tree_node* @build3_stat(i32 41, %union.tree_node* %29, %union.tree_node* %call41, %union.tree_node* %32, %union.tree_node* null) #6, !dbg !4027
  call void @llvm.dbg.value(metadata %union.tree_node* %call43, metadata !3947, metadata !DIExpression()), !dbg !3956
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4028
  %call44 = call %union.tree_node* @build2_stat(i32 99, %union.tree_node* %33, %union.tree_node* %call43, %union.tree_node* %call16) #6, !dbg !4028
  call void @llvm.dbg.value(metadata %union.tree_node* %call44, metadata !3947, metadata !DIExpression()), !dbg !3956
  %34 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !4029
  %35 = load %union.tree_node*, %union.tree_node** @mf_cache_struct_type, align 8, !dbg !4029
  %call45 = call %union.tree_node* @build1_stat(i32 47, %union.tree_node* %35, %union.tree_node* %call15) #6, !dbg !4029
  %36 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** @mf_cache_struct_type to %struct.tree_type**), align 8, !dbg !4029
  %values47 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %36, i64 0, i32 1, !dbg !4029
  %37 = bitcast %union.tree_node** %values47 to %struct.tree_common**, !dbg !4029
  %38 = load %struct.tree_common*, %struct.tree_common** %37, align 8, !dbg !4029
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %38, i64 0, i32 1, !dbg !4029
  %39 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !4029
  %call49 = call %union.tree_node* @build3_stat(i32 41, %union.tree_node* %34, %union.tree_node* %call45, %union.tree_node* %39, %union.tree_node* null) #6, !dbg !4029
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !3948, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !3949, metadata !DIExpression()), !dbg !3956
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4030
  %call50 = call %union.tree_node* @build2_stat(i32 97, %union.tree_node* %40, %union.tree_node* %call49, %union.tree_node* %call17) #6, !dbg !4030
  call void @llvm.dbg.value(metadata %union.tree_node* %call50, metadata !3948, metadata !DIExpression()), !dbg !3956
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4031
  %call51 = call %union.tree_node* @build2_stat(i32 94, %union.tree_node* %41, %union.tree_node* %call44, %union.tree_node* %call50) #6, !dbg !4031
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !3947, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call52 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call51, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 0, %union.tree_node* null) #6, !dbg !4032
  call void @llvm.dbg.value(metadata %union.tree_node* %call52, metadata !3947, metadata !DIExpression()), !dbg !3956
  %42 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !4033
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %42, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_seq(%struct.gimple_seq_d** nonnull %seq, %struct.gimple_seq_d* %42) #6, !dbg !4034
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4035
  %call53 = call %union.tree_node* @make_rename_temp(%union.tree_node* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !4036
  call void @llvm.dbg.value(metadata %union.tree_node* %call53, metadata !3946, metadata !DIExpression()), !dbg !3956
  %call54 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call53, %union.tree_node* %call52) #6, !dbg !4037
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call54, metadata !3953, metadata !DIExpression()), !dbg !3956
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call54, i32 %location) #7, !dbg !4038
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call54) #6, !dbg !4039
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !4040
  %call55 = call %union.gimple_statement_d* @gimple_build_cond(i32 102, %union.tree_node* %call53, %union.tree_node* %44, %union.tree_node* null, %union.tree_node* null) #6, !dbg !4041
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call55, metadata !3953, metadata !DIExpression()), !dbg !3956
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call55, i32 %location) #7, !dbg !4042
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call55) #6, !dbg !4043
  %45 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4044
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %45) #8, !dbg !4044
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %5) #7, !dbg !4044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %45, i64 24, i1 false), !dbg !4044
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %45) #8, !dbg !4044
  %46 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4045
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %46, metadata !3954, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3941, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_seq_d* %46, i32 2) #6, !dbg !4046
  %call56 = call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !4047
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call56, metadata !3954, metadata !DIExpression()), !dbg !3956
  store %struct.gimple_seq_d* %call56, %struct.gimple_seq_d** %seq, align 8, !dbg !4048
  %call57 = call fastcc %union.tree_node* @mf_file_function_line_tree(i32 %location) #7, !dbg !4049
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !3948, metadata !DIExpression()), !dbg !3956
  %47 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !4050
  %call58 = call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 64, %union.tree_node* %47, %union.tree_node* %call17, %union.tree_node* %call16) #6, !dbg !4050
  %48 = load %union.tree_node*, %union.tree_node** @mf_uintptr_type, align 8, !dbg !4050
  %call59 = call %union.tree_node* @build_int_cst(%union.tree_node* %48, i64 1) #6, !dbg !4050
  %call60 = call %union.tree_node* @fold_build2_stat_loc(i32 %location, i32 63, %union.tree_node* %47, %union.tree_node* %call58, %union.tree_node* %call59) #6, !dbg !4050
  call void @llvm.dbg.value(metadata %union.tree_node* %call60, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call61 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call60, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !4051
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !3949, metadata !DIExpression()), !dbg !3956
  %49 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !4052
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %49, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_seq(%struct.gimple_seq_d** nonnull %seq, %struct.gimple_seq_d* %49) #6, !dbg !4053
  %50 = load %union.tree_node*, %union.tree_node** @mf_check_fndecl, align 8, !dbg !4054
  %call62 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %50, i32 4, %union.tree_node* %call16, %union.tree_node* %call61, %union.tree_node* %dirflag, %union.tree_node* %call57) #6, !dbg !4055
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call62, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call62) #6, !dbg !4056
  %51 = load i32, i32* @flag_mudflap, align 4, !dbg !4057
  %cmp63 = icmp eq i32 %51, 2, !dbg !4057
  br i1 %cmp63, label %if.end75, label %if.then64, !dbg !4059

if.then64:                                        ; preds = %if.end14
  %call65 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %call62) #6, !dbg !4060
  %tobool66 = icmp eq i8 %call65, 0, !dbg !4060
  br i1 %tobool66, label %if.end72, label %if.then67, !dbg !4063

if.then67:                                        ; preds = %if.then64
  %52 = bitcast %struct.gimple_stmt_iterator* %tmp68 to i8*, !dbg !4064
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %52) #8, !dbg !4064
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp68, %struct.basic_block_def* %call6) #7, !dbg !4064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %52, i64 24, i1 false), !dbg !4064
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %52) #8, !dbg !4064
  %53 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4066
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %53, metadata !3954, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3941, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_seq_d* %53, i32 2) #6, !dbg !4067
  %54 = bitcast %union.gimple_statement_d* %call62 to i8*, !dbg !4068
  %call69 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call6, i8* %54) #6, !dbg !4069
  call void @llvm.dbg.value(metadata %struct.edge_def* %call69, metadata !3945, metadata !DIExpression()), !dbg !3956
  %dest70 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call69, i64 0, i32 1, !dbg !4070
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %dest70, align 8, !dbg !4070
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %55, metadata !3943, metadata !DIExpression()), !dbg !3956
  %call71 = call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !4071
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call71, metadata !3954, metadata !DIExpression()), !dbg !3956
  store %struct.gimple_seq_d* %call71, %struct.gimple_seq_d** %seq, align 8, !dbg !4072
  br label %if.end72, !dbg !4073

if.end72:                                         ; preds = %if.then64, %if.then67
  %then_bb.0 = phi %struct.basic_block_def* [ %55, %if.then67 ], [ %call6, %if.then64 ], !dbg !3956
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %then_bb.0, metadata !3943, metadata !DIExpression()), !dbg !3956
  %56 = load %union.tree_node*, %union.tree_node** @mf_cache_shift_decl_l, align 8, !dbg !4074
  %57 = load %union.tree_node*, %union.tree_node** @mf_cache_shift_decl, align 8, !dbg !4074
  %call73 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %56, %union.tree_node* %57) #6, !dbg !4074
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call73, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call73) #6, !dbg !4075
  %58 = load %union.tree_node*, %union.tree_node** @mf_cache_mask_decl_l, align 8, !dbg !4076
  %59 = load %union.tree_node*, %union.tree_node** @mf_cache_mask_decl, align 8, !dbg !4076
  %call74 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %58, %union.tree_node* %59) #6, !dbg !4076
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call74, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %seq, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %seq, %union.gimple_statement_d* %call74) #6, !dbg !4077
  br label %if.end75, !dbg !4078

if.end75:                                         ; preds = %if.end72, %if.end14
  %then_bb.1 = phi %struct.basic_block_def* [ %call6, %if.end14 ], [ %then_bb.0, %if.end72 ], !dbg !3956
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %then_bb.1, metadata !3943, metadata !DIExpression()), !dbg !3956
  %60 = bitcast %struct.gimple_stmt_iterator* %tmp76 to i8*, !dbg !4079
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %60) #8, !dbg !4079
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp76, %struct.basic_block_def* %then_bb.1) #7, !dbg !4079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %60, i64 24, i1 false), !dbg !4079
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %60) #8, !dbg !4079
  %61 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4080
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %61, metadata !3954, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3941, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_seq_d* %61, i32 2) #6, !dbg !4081
  %62 = bitcast %struct.gimple_stmt_iterator* %tmp77 to i8*, !dbg !4082
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %62) #8, !dbg !4082
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp77, %struct.basic_block_def* %6) #7, !dbg !4082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* nonnull align 8 %62, i64 24, i1 false), !dbg !4082
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %62) #8, !dbg !4082
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4083
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4083
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4083
  ret void, !dbg !4083
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4084 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4086, metadata !DIExpression()), !dbg !4087
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4088
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4088
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !4089
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !4089
  %2 = load i64, i64* %1, align 8, !dbg !4089
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4090
  store i64 %2, i64* %3, align 8, !dbg !4090
  ret void, !dbg !4091
}

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @split_block_after_labels(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @dom_info_available_p(i32) local_unnamed_addr #2

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand(%union.tree_node*, %struct.gimple_seq_d**, i8 zeroext, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gimple_seq_add_seq(%struct.gimple_seq_d**, %struct.gimple_seq_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build4_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build3_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4092 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4094, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4095, metadata !DIExpression()), !dbg !4098
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4099
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4096, metadata !DIExpression()), !dbg !4097
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !4100
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4101
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4102
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4103
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4104
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4105
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4106
  ret void, !dbg !4107
}

declare dso_local void @gsi_insert_seq_after(%struct.gimple_stmt_iterator*, %struct.gimple_seq_d*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @mf_file_function_line_tree(i32 %location) unnamed_addr #5 !dbg !4108 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  %linecolbuf = alloca [30 x i8], align 16
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata i32 %location, metadata !4112, metadata !DIExpression()), !dbg !4126
  %0 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !4127
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4127
  call void @llvm.dbg.value(metadata %struct.expanded_location* %xloc, metadata !4113, metadata !DIExpression(DW_OP_deref)), !dbg !4126
  call void @expand_location(%struct.expanded_location* nonnull sret %xloc, i32 %location) #6, !dbg !4128
  call void @llvm.dbg.value(metadata i8* null, metadata !4114, metadata !DIExpression()), !dbg !4126
  %1 = getelementptr inbounds [30 x i8], [30 x i8]* %linecolbuf, i64 0, i64 0, !dbg !4129
  call void @llvm.lifetime.start.p0i8(i64 30, i8* nonnull %1) #8, !dbg !4129
  call void @llvm.dbg.declare(metadata [30 x i8]* %linecolbuf, metadata !4120, metadata !DIExpression()), !dbg !4130
  %file1 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 0, !dbg !4131
  %2 = load i8*, i8** %file1, align 8, !dbg !4131
  call void @llvm.dbg.value(metadata i8* %2, metadata !4114, metadata !DIExpression()), !dbg !4126
  %cmp = icmp eq i8* %2, null, !dbg !4132
  %3 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4134
  %cmp2 = icmp ne %union.tree_node* %3, null, !dbg !4135
  %or.cond = and i1 %cmp, %cmp2, !dbg !4136
  br i1 %or.cond, label %if.then, label %if.end, !dbg !4136

if.then:                                          ; preds = %entry
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4137
  %4 = load i32, i32* %locus, align 8, !dbg !4137
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %4) #6, !dbg !4137
  %file3 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 0, !dbg !4137
  %5 = load i8*, i8** %file3, align 8, !dbg !4137
  call void @llvm.dbg.value(metadata i8* %5, metadata !4114, metadata !DIExpression()), !dbg !4126
  br label %if.end, !dbg !4138

if.end:                                           ; preds = %if.then, %entry
  %file.0 = phi i8* [ %5, %if.then ], [ %2, %entry ], !dbg !4126
  call void @llvm.dbg.value(metadata i8* %file.0, metadata !4114, metadata !DIExpression()), !dbg !4126
  %cmp4 = icmp eq i8* %file.0, null, !dbg !4139
  %spec.select = select i1 %cmp4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %file.0, !dbg !4141
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !4114, metadata !DIExpression()), !dbg !4126
  %line7 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 1, !dbg !4142
  %6 = load i32, i32* %line7, align 8, !dbg !4142
  %cmp8 = icmp sgt i32 %6, 0, !dbg !4144
  br i1 %cmp8, label %if.then9, label %if.end20, !dbg !4145

if.then9:                                         ; preds = %if.end
  %column = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 2, !dbg !4146
  %7 = load i32, i32* %column, align 4, !dbg !4146
  %cmp10 = icmp sgt i32 %7, 0, !dbg !4149
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !4150

if.then11:                                        ; preds = %if.then9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i32 %6, i32 %7) #6, !dbg !4151
  br label %if.end17, !dbg !4151

if.else:                                          ; preds = %if.then9
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %6) #6, !dbg !4152
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !4115, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8* %1, metadata !4116, metadata !DIExpression()), !dbg !4126
  br label %if.end20, !dbg !4153

if.end20:                                         ; preds = %if.end, %if.end17
  %line.0 = phi i8* [ %1, %if.end17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0), %if.end ], !dbg !4154
  %colon.0 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %if.end17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0), %if.end ], !dbg !4154
  call void @llvm.dbg.value(metadata i8* %colon.0, metadata !4115, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8* %line.0, metadata !4116, metadata !DIExpression()), !dbg !4126
  %8 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !4155
  %9 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4156
  %call21 = call i8* %8(%union.tree_node* %9, i32 1) #6, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %call21, metadata !4118, metadata !DIExpression()), !dbg !4126
  %tobool = icmp ne i8* %call21, null, !dbg !4158
  %call21. = select i1 %tobool, i8* %call21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0)
  %. = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0)
  %.1 = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0)
  call void @llvm.dbg.value(metadata i8* %.1, metadata !4119, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8* %., metadata !4117, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8* %call21., metadata !4118, metadata !DIExpression()), !dbg !4126
  %call25 = call i8* (i8*, ...) @concat(i8* %spec.select, i8* %colon.0, i8* %line.0, i8* %., i8* %call21., i8* %.1, i8* null) #6, !dbg !4160
  call void @llvm.dbg.value(metadata i8* %call25, metadata !4124, metadata !DIExpression()), !dbg !4126
  %call26 = call fastcc %union.tree_node* @mf_build_string(i8* %call25) #7, !dbg !4161
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !4125, metadata !DIExpression()), !dbg !4126
  call void @free(i8* %call25) #6, !dbg !4162
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %1) #8, !dbg !4163
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4163
  ret %union.tree_node* %call26, !dbg !4164
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4165 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4167, metadata !DIExpression()), !dbg !4168
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4169
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4169

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !4170
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !4170
  br label %cond.end, !dbg !4169

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4169
  ret %struct.gimple_seq_node_d* %cond, !dbg !4171
}

declare dso_local i8* @concat(i8*, ...) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4172 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4176, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 %i, metadata !4177, metadata !DIExpression()), !dbg !4178
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4179
  %tobool = icmp eq i8 %call, 0, !dbg !4179
  br i1 %tobool, label %return, label %if.then, !dbg !4181

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4182
  %idx.ext = zext i32 %i to i64, !dbg !4184
  %add.ptr = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idx.ext, !dbg !4184
  br label %return, !dbg !4185

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node** [ %add.ptr, %if.then ], [ null, %entry ], !dbg !4186
  ret %union.tree_node** %retval.0, !dbg !4187
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4188 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4192, metadata !DIExpression()), !dbg !4193
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4194
  %cmp = icmp eq i32 %call, 0, !dbg !4195
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4196

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4197
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4198
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4199
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4200 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4204, metadata !DIExpression()), !dbg !4206
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4207
  %idxprom = zext i32 %call to i64, !dbg !4208
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4208
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %0, metadata !4205, metadata !DIExpression()), !dbg !4206
  %cmp = icmp eq i64 %0, 0, !dbg !4209
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4209

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4209
  br label %cond.end, !dbg !4209

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4210
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4211
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4212
  ret %union.tree_node** %2, !dbg !4213
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4214 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4218, metadata !DIExpression()), !dbg !4219
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4220
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4221
  ret i32 %call1, !dbg !4222
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4223 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4227, metadata !DIExpression()), !dbg !4228
  %idxprom = zext i32 %code to i64, !dbg !4229
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4229
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4229
  ret i32 %0, !dbg !4230
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4231 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4233, metadata !DIExpression()), !dbg !4235
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4236
  call void @llvm.dbg.value(metadata i32 %call, metadata !4234, metadata !DIExpression()), !dbg !4235
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4237

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4239
  %bf.load = load i32, i32* %0, align 8, !dbg !4239
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4239
  br label %cleanup, !dbg !4240

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4241
  br label %cleanup, !dbg !4243

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !4235
  ret i32 %retval.0, !dbg !4244
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4245 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4247, metadata !DIExpression()), !dbg !4248
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4249
  ret %union.tree_node* %call, !dbg !4250
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4251 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4255, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %i, metadata !4256, metadata !DIExpression()), !dbg !4257
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4258
  %tobool = icmp eq i8 %call, 0, !dbg !4258
  br i1 %tobool, label %return, label %if.then, !dbg !4260

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4261
  %idxprom = zext i32 %i to i64, !dbg !4261
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4261
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4261
  br label %return, !dbg !4263

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4264
  ret %union.tree_node* %retval.0, !dbg !4265
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4266 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4268, metadata !DIExpression()), !dbg !4269
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4270
  ret %union.tree_node* %call, !dbg !4271
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

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!2196, !2197, !2198}
!llvm.ident = !{!2199}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "done", scope: !2, file: !3, line: 358, type: !647, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "mudflap_init", scope: !3, file: !3, line: 356, type: !4, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2188)
!3 = !DIFile(filename: "tree-mudflap.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !645, globals: !1956, nameTableKind: None)
!7 = !{!8, !137, !332, !338, !343, !348, !366, !373, !380, !387, !563, !569, !574, !613, !619}
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !9, line: 7, baseType: !10, size: 32, elements: !11)
!9 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!12 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!15 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!16 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!17 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!18 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!19 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!20 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!21 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!22 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!23 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!24 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!25 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!26 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!27 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!28 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!29 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!30 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!31 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!32 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!33 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!34 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!35 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!36 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!37 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!38 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!39 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!40 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!41 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!42 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!43 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!44 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!45 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!46 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!47 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!48 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!49 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!50 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!51 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!52 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!53 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!54 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!55 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!56 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!57 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!58 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!59 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!60 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!61 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!62 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!63 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!64 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!65 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!66 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!67 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!68 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!69 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!70 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!71 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!72 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!73 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!74 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!75 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!76 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!77 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!78 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!79 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!80 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!81 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!82 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!83 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!84 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!85 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!86 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!87 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!88 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!89 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!90 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!91 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!92 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!93 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!94 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!95 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!96 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!97 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!98 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!99 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!100 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!104 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!105 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!106 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!109 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!110 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!111 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!112 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!113 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!114 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!115 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!116 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!117 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!118 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!119 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!120 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!121 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!122 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!123 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!124 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!125 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!126 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!135 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!136 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !138, line: 39, baseType: !10, size: 32, elements: !139)
!138 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!140 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!144 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!145 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!146 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!147 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!148 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!149 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!150 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!151 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!152 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!153 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!154 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!155 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!156 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!157 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!158 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!159 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!160 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!161 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!162 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!163 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!164 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!165 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!166 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!167 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!168 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!169 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!170 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!171 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!172 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!173 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!174 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!175 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!176 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!177 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!178 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!179 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!180 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!181 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!182 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!183 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!184 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!185 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!186 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!187 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!188 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!189 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!190 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!191 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!192 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!193 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!194 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!195 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!196 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!197 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!198 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!199 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!200 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!201 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!202 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!203 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!204 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!205 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!206 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!207 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!208 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!209 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!210 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!211 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!212 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!213 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!214 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!215 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!216 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!217 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!218 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!219 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!220 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!221 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!222 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!223 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!224 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!225 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!226 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!228 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!229 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!230 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!231 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!232 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!233 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!234 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!235 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!236 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!237 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!238 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!239 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!240 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!241 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!242 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!243 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!244 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!245 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!246 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!247 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!248 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!249 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!250 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!251 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!252 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!253 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!254 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!255 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!256 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!257 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!258 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!259 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!260 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!261 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!262 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!263 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!264 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!265 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!266 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!267 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!268 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!269 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!270 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!271 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!272 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!273 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!274 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!275 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!276 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!277 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!278 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!279 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!280 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!281 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!282 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!283 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!284 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!285 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!286 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!287 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!288 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!289 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!290 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!291 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!292 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!293 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!294 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!295 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!296 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!297 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!299 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!300 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!301 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!302 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!303 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!304 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!305 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!306 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!307 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!308 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!309 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!310 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!311 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!312 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!313 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!314 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!320 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!321 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!322 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!323 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!324 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!325 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!326 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!327 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!328 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!329 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!330 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!331 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !333, line: 363, baseType: !10, size: 32, elements: !334)
!333 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!334 = !{!335, !336, !337}
!335 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!336 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!337 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !333, line: 355, baseType: !10, size: 32, elements: !339)
!339 = !{!340, !341, !342}
!340 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!342 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !344, line: 474, baseType: !10, size: 32, elements: !345)
!344 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!345 = !{!346, !347}
!346 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!347 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !138, line: 280, baseType: !10, size: 32, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!350 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !138, line: 1817, baseType: !10, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !138, line: 1805, baseType: !10, size: 32, elements: !374)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!380 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !381, line: 104, baseType: !10, size: 32, elements: !382)
!381 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!382 = !{!383, !384, !385, !386}
!383 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!384 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!386 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!387 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !388, line: 74, baseType: !10, size: 32, elements: !389)
!388 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!390 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!562 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !564, line: 104, baseType: !10, size: 32, elements: !565)
!564 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!565 = !{!566, !567, !568}
!566 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!567 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!568 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !564, line: 46, baseType: !10, size: 32, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!572 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!573 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !575, line: 51, baseType: !10, size: 32, elements: !576)
!575 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!577 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!578 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!579 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!580 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!581 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!582 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!583 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!612 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!613 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !575, line: 80, baseType: !10, size: 32, elements: !614)
!614 = !{!615, !616, !617, !618}
!615 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !575, line: 727, baseType: !10, size: 32, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!621 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!644 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!645 = !{!646, !647, !648, !649, !652, !653, !137, !655, !782, !1474, !10, !1950, !980, !1954, !1014, !650, !613}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!648 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !656, line: 56, baseType: !657)
!656 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !138, line: 3371, size: 1792, elements: !659)
!659 = !{!660, !693, !699, !712, !731, !742, !747, !756, !762, !775, !787, !825, !1283, !1311, !1328, !1329, !1334, !1343, !1349, !1354, !1358, !1362, !1601, !1648, !1654, !1660, !1667, !1680, !1694, !1711, !1723, !1745, !1760, !1932}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !138, line: 3372, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !138, line: 360, size: 64, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !661, file: !138, line: 361, baseType: !10, size: 16, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !661, file: !138, line: 363, baseType: !10, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !661, file: !138, line: 364, baseType: !10, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !661, file: !138, line: 365, baseType: !10, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !661, file: !138, line: 366, baseType: !10, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !661, file: !138, line: 367, baseType: !10, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !661, file: !138, line: 368, baseType: !10, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !661, file: !138, line: 369, baseType: !10, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !661, file: !138, line: 370, baseType: !10, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !661, file: !138, line: 372, baseType: !10, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !661, file: !138, line: 373, baseType: !10, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !661, file: !138, line: 374, baseType: !10, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !661, file: !138, line: 375, baseType: !10, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !661, file: !138, line: 376, baseType: !10, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !661, file: !138, line: 377, baseType: !10, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !661, file: !138, line: 378, baseType: !10, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !661, file: !138, line: 379, baseType: !10, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !661, file: !138, line: 381, baseType: !10, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !661, file: !138, line: 382, baseType: !10, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !661, file: !138, line: 383, baseType: !10, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !661, file: !138, line: 384, baseType: !10, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !661, file: !138, line: 385, baseType: !10, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !661, file: !138, line: 386, baseType: !10, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !661, file: !138, line: 387, baseType: !10, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !661, file: !138, line: 388, baseType: !10, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !661, file: !138, line: 390, baseType: !10, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !661, file: !138, line: 391, baseType: !10, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !661, file: !138, line: 392, baseType: !10, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !661, file: !138, line: 394, baseType: !10, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !661, file: !138, line: 399, baseType: !10, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !658, file: !138, line: 3373, baseType: !694, size: 192)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !138, line: 402, size: 192, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !694, file: !138, line: 403, baseType: !661, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !694, file: !138, line: 404, baseType: !655, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !138, line: 405, baseType: !655, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !658, file: !138, line: 3374, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !138, line: 1384, size: 320, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !138, line: 1385, baseType: !694, size: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !700, file: !138, line: 1386, baseType: !704, size: 128, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !705, line: 58, baseType: !706)
!705 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 54, size: 128, elements: !707)
!707 = !{!708, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !706, file: !705, line: 56, baseType: !709, size: 64)
!709 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !706, file: !705, line: 57, baseType: !711, size: 64, offset: 64)
!711 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !658, file: !138, line: 3375, baseType: !713, size: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !138, line: 1397, size: 256, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !138, line: 1398, baseType: !694, size: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !713, file: !138, line: 1399, baseType: !717, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !719, line: 52, size: 256, elements: !720)
!719 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!720 = !{!721, !722, !723, !724, !725, !726, !727}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !718, file: !719, line: 56, baseType: !10, size: 2, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !718, file: !719, line: 57, baseType: !10, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !718, file: !719, line: 58, baseType: !10, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !718, file: !719, line: 59, baseType: !10, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !718, file: !719, line: 60, baseType: !10, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !718, file: !719, line: 61, baseType: !10, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !718, file: !719, line: 62, baseType: !728, size: 192, offset: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 192, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 3)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !658, file: !138, line: 3376, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !138, line: 1408, size: 256, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !732, file: !138, line: 1409, baseType: !694, size: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !732, file: !138, line: 1410, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !738, line: 27, size: 192, elements: !739)
!738 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !737, file: !738, line: 29, baseType: !704, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !737, file: !738, line: 30, baseType: !8, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !658, file: !138, line: 3377, baseType: !743, size: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !138, line: 1437, size: 256, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !743, file: !138, line: 1438, baseType: !694, size: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !743, file: !138, line: 1439, baseType: !655, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !658, file: !138, line: 3378, baseType: !748, size: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !138, line: 1418, size: 256, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !748, file: !138, line: 1419, baseType: !694, size: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !748, file: !138, line: 1420, baseType: !648, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !748, file: !138, line: 1421, baseType: !753, size: 8, offset: 224)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 8, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 1)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !658, file: !138, line: 3379, baseType: !757, size: 320)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !138, line: 1428, size: 320, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !757, file: !138, line: 1429, baseType: !694, size: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !757, file: !138, line: 1430, baseType: !655, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !757, file: !138, line: 1431, baseType: !655, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !658, file: !138, line: 3380, baseType: !763, size: 320)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !138, line: 1460, size: 320, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !138, line: 1461, baseType: !694, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !763, file: !138, line: 1462, baseType: !767, size: 128, offset: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !768, line: 31, size: 128, elements: !769)
!768 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!769 = !{!770, !773, !774}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !767, file: !768, line: 32, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !767, file: !768, line: 33, baseType: !10, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !767, file: !768, line: 34, baseType: !10, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !658, file: !138, line: 3381, baseType: !776, size: 384)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !138, line: 2507, size: 384, elements: !777)
!777 = !{!778, !779, !784, !785, !786}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !776, file: !138, line: 2508, baseType: !694, size: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !776, file: !138, line: 2509, baseType: !780, size: 32, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !781, line: 58, baseType: !782)
!781 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !783, line: 44, baseType: !10)
!783 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!784 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !138, line: 2510, baseType: !10, size: 32, offset: 224)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !776, file: !138, line: 2511, baseType: !655, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !776, file: !138, line: 2512, baseType: !655, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !658, file: !138, line: 3382, baseType: !788, size: 896)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !138, line: 2652, size: 896, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !788, file: !138, line: 2653, baseType: !776, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !788, file: !138, line: 2654, baseType: !655, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !788, file: !138, line: 2656, baseType: !10, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !788, file: !138, line: 2658, baseType: !10, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !788, file: !138, line: 2659, baseType: !10, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !788, file: !138, line: 2660, baseType: !10, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !788, file: !138, line: 2661, baseType: !10, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !788, file: !138, line: 2662, baseType: !10, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !788, file: !138, line: 2663, baseType: !10, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !788, file: !138, line: 2664, baseType: !10, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !788, file: !138, line: 2666, baseType: !10, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !788, file: !138, line: 2667, baseType: !10, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !788, file: !138, line: 2668, baseType: !10, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !788, file: !138, line: 2669, baseType: !10, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !788, file: !138, line: 2670, baseType: !10, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !788, file: !138, line: 2671, baseType: !10, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !788, file: !138, line: 2672, baseType: !10, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !788, file: !138, line: 2673, baseType: !10, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !788, file: !138, line: 2674, baseType: !10, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !788, file: !138, line: 2678, baseType: !10, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !788, file: !138, line: 2682, baseType: !10, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !788, file: !138, line: 2685, baseType: !10, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !788, file: !138, line: 2688, baseType: !10, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !788, file: !138, line: 2690, baseType: !10, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !788, file: !138, line: 2692, baseType: !10, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !788, file: !138, line: 2695, baseType: !10, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !788, file: !138, line: 2698, baseType: !10, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !788, file: !138, line: 2703, baseType: !10, size: 32, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !788, file: !138, line: 2705, baseType: !655, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !788, file: !138, line: 2706, baseType: !655, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !788, file: !138, line: 2707, baseType: !655, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !788, file: !138, line: 2708, baseType: !655, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !788, file: !138, line: 2711, baseType: !823, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !138, line: 2711, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !658, file: !138, line: 3383, baseType: !826, size: 960)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !138, line: 2756, size: 960, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !826, file: !138, line: 2757, baseType: !788, size: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !826, file: !138, line: 2758, baseType: !830, size: 64, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !656, line: 50, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !833, line: 240, size: 384, elements: !834)
!833 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !832, file: !833, line: 242, baseType: !10, size: 16, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !832, file: !833, line: 245, baseType: !10, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !832, file: !833, line: 252, baseType: !10, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !832, file: !833, line: 257, baseType: !10, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !832, file: !833, line: 265, baseType: !10, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !832, file: !833, line: 277, baseType: !10, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !832, file: !833, line: 291, baseType: !10, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !832, file: !833, line: 298, baseType: !10, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !832, file: !833, line: 305, baseType: !10, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !832, file: !833, line: 310, baseType: !10, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !832, file: !833, line: 321, baseType: !846, size: 320, offset: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !833, line: 315, size: 320, elements: !847)
!847 = !{!848, !1250, !1252, !1281, !1282}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !846, file: !833, line: 316, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 64, elements: !754)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !833, line: 183, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !833, line: 166, size: 64, elements: !852)
!852 = !{!853, !854, !855, !856, !857, !865, !866, !878, !881, !941, !942, !1227, !1240, !1247}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !851, file: !833, line: 168, baseType: !648, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !851, file: !833, line: 169, baseType: !10, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !851, file: !833, line: 170, baseType: !653, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !851, file: !833, line: 171, baseType: !830, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !851, file: !833, line: 172, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !656, line: 53, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !833, line: 359, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !860, file: !833, line: 360, baseType: !648, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !860, file: !833, line: 361, baseType: !864, size: 64, offset: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 64, elements: !754)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !851, file: !833, line: 173, baseType: !8, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !851, file: !833, line: 174, baseType: !867, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !833, line: 133, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 115, size: 32, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !868, file: !833, line: 118, baseType: !10, size: 8, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !868, file: !833, line: 120, baseType: !10, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !868, file: !833, line: 121, baseType: !10, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !868, file: !833, line: 123, baseType: !10, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !868, file: !833, line: 125, baseType: !10, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !868, file: !833, line: 127, baseType: !10, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !868, file: !833, line: 130, baseType: !10, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !868, file: !833, line: 132, baseType: !10, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !851, file: !833, line: 175, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !833, line: 175, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !851, file: !833, line: 176, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !884, line: 75, size: 256, elements: !885)
!884 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!885 = !{!886, !900, !901, !902}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !883, file: !884, line: 76, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !884, line: 68, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !884, line: 63, size: 320, elements: !890)
!890 = !{!891, !893, !894, !895}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !889, file: !884, line: 64, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !889, file: !884, line: 65, baseType: !892, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !889, file: !884, line: 66, baseType: !10, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !889, file: !884, line: 67, baseType: !896, size: 128, offset: 192)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 128, elements: !898)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !884, line: 29, baseType: !709)
!898 = !{!899}
!899 = !DISubrange(count: 2)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !883, file: !884, line: 77, baseType: !887, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !883, file: !884, line: 78, baseType: !10, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !883, file: !884, line: 79, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !884, line: 49, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !884, line: 45, size: 832, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !905, file: !884, line: 46, baseType: !892, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !905, file: !884, line: 47, baseType: !882, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !905, file: !884, line: 48, baseType: !910, size: 704, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !911, line: 164, size: 704, elements: !912)
!911 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!912 = !{!913, !914, !924, !925, !926, !927, !928, !929, !933, !937, !938, !939, !940}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !910, file: !911, line: 166, baseType: !711, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !910, file: !911, line: 167, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !911, line: 157, size: 192, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !916, file: !911, line: 159, baseType: !650, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !916, file: !911, line: 160, baseType: !915, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !916, file: !911, line: 161, baseType: !921, size: 32, offset: 128)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 32, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 4)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !910, file: !911, line: 168, baseType: !650, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !910, file: !911, line: 169, baseType: !650, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !910, file: !911, line: 170, baseType: !650, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !910, file: !911, line: 171, baseType: !711, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !910, file: !911, line: 172, baseType: !648, size: 32, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !910, file: !911, line: 176, baseType: !930, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!915, !652, !711}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !910, file: !911, line: 177, baseType: !934, size: 64, offset: 512)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !652, !915}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !910, file: !911, line: 178, baseType: !652, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !910, file: !911, line: 179, baseType: !10, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !910, file: !911, line: 180, baseType: !10, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !910, file: !911, line: 184, baseType: !10, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !851, file: !833, line: 177, baseType: !655, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !851, file: !833, line: 178, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !333, line: 217, size: 832, elements: !945)
!945 = !{!946, !1192, !1193, !1194, !1197, !1201, !1202, !1203, !1221, !1222, !1223, !1224, !1225, !1226}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !944, file: !333, line: 219, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !333, line: 151, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !333, line: 151, size: 128, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !949, file: !333, line: 151, baseType: !952, size: 128)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !333, line: 150, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !333, line: 150, size: 128, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !953, file: !333, line: 150, baseType: !10, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !953, file: !333, line: 150, baseType: !10, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !953, file: !333, line: 150, baseType: !958, size: 64, offset: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 64, elements: !754)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !656, line: 108, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !333, line: 122, size: 512, elements: !962)
!962 = !{!963, !964, !965, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !961, file: !333, line: 124, baseType: !943, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !961, file: !333, line: 125, baseType: !943, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !961, file: !333, line: 131, baseType: !966, size: 64, offset: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !333, line: 128, size: 64, elements: !967)
!967 = !{!968, !1183}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !966, file: !333, line: 129, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !656, line: 66, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !575, line: 143, size: 192, elements: !972)
!972 = !{!973, !1181, !1182}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !971, file: !575, line: 145, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !656, line: 69, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !575, line: 136, size: 192, elements: !977)
!977 = !{!978, !1179, !1180}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !976, file: !575, line: 137, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !656, line: 58, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !575, line: 737, size: 768, elements: !982)
!982 = !{!983, !1000, !1034, !1040, !1045, !1050, !1057, !1063, !1069, !1074, !1088, !1093, !1099, !1104, !1114, !1119, !1137, !1144, !1151, !1157, !1162, !1168, !1174}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !981, file: !575, line: 738, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !575, line: 271, size: 256, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !984, file: !575, line: 274, baseType: !10, size: 8, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !984, file: !575, line: 277, baseType: !10, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !984, file: !575, line: 281, baseType: !10, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !984, file: !575, line: 284, baseType: !10, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !984, file: !575, line: 291, baseType: !10, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !984, file: !575, line: 295, baseType: !10, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !984, file: !575, line: 298, baseType: !10, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !984, file: !575, line: 301, baseType: !10, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !984, file: !575, line: 307, baseType: !10, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !984, file: !575, line: 312, baseType: !10, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !984, file: !575, line: 316, baseType: !780, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !984, file: !575, line: 319, baseType: !10, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !984, file: !575, line: 323, baseType: !943, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !984, file: !575, line: 327, baseType: !655, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !981, file: !575, line: 739, baseType: !1001, size: 448)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !575, line: 350, size: 448, elements: !1002)
!1002 = !{!1003, !1032}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1001, file: !575, line: 353, baseType: !1004, size: 384)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !575, line: 333, size: 384, elements: !1005)
!1005 = !{!1006, !1007, !1015}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1004, file: !575, line: 336, baseType: !984, size: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1004, file: !575, line: 343, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1010, line: 37, size: 128, elements: !1011)
!1010 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !1010, line: 39, baseType: !1008, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1009, file: !1010, line: 40, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1004, file: !575, line: 344, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1010, line: 45, size: 320, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !1010, line: 47, baseType: !1016, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1017, file: !1010, line: 48, baseType: !1021, size: 256, offset: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !138, line: 1883, size: 256, elements: !1022)
!1022 = !{!1023, !1025, !1026, !1031}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1021, file: !138, line: 1884, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1021, file: !138, line: 1885, baseType: !1024, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1021, file: !138, line: 1891, baseType: !1027, size: 64, offset: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !138, line: 1891, size: 64, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1027, file: !138, line: 1891, baseType: !979, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1027, file: !138, line: 1891, baseType: !655, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1021, file: !138, line: 1892, baseType: !1014, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1001, file: !575, line: 359, baseType: !1033, size: 64, offset: 384)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 64, elements: !754)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !981, file: !575, line: 740, baseType: !1035, size: 512)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !575, line: 365, size: 512, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1035, file: !575, line: 368, baseType: !1004, size: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1035, file: !575, line: 373, baseType: !655, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1035, file: !575, line: 374, baseType: !655, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !981, file: !575, line: 741, baseType: !1041, size: 576)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !575, line: 380, size: 576, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1041, file: !575, line: 383, baseType: !1035, size: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1041, file: !575, line: 389, baseType: !1033, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !981, file: !575, line: 742, baseType: !1046, size: 320)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !575, line: 395, size: 320, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1046, file: !575, line: 397, baseType: !984, size: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1046, file: !575, line: 400, baseType: !969, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !981, file: !575, line: 743, baseType: !1051, size: 448)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !575, line: 406, size: 448, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1051, file: !575, line: 408, baseType: !984, size: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1051, file: !575, line: 412, baseType: !655, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1051, file: !575, line: 420, baseType: !655, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1051, file: !575, line: 423, baseType: !969, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !981, file: !575, line: 744, baseType: !1058, size: 384)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !575, line: 429, size: 384, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1058, file: !575, line: 431, baseType: !984, size: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1058, file: !575, line: 434, baseType: !655, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1058, file: !575, line: 437, baseType: !969, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !981, file: !575, line: 745, baseType: !1064, size: 384)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !575, line: 443, size: 384, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1064, file: !575, line: 445, baseType: !984, size: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1064, file: !575, line: 449, baseType: !655, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1064, file: !575, line: 453, baseType: !969, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !981, file: !575, line: 746, baseType: !1070, size: 320)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !575, line: 459, size: 320, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1070, file: !575, line: 461, baseType: !984, size: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1070, file: !575, line: 464, baseType: !655, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !981, file: !575, line: 747, baseType: !1075, size: 768)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !575, line: 469, size: 768, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1075, file: !575, line: 471, baseType: !984, size: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1075, file: !575, line: 474, baseType: !10, size: 32, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1075, file: !575, line: 475, baseType: !10, size: 32, offset: 288)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1075, file: !575, line: 478, baseType: !655, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1075, file: !575, line: 481, baseType: !1082, size: 384, offset: 384)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 384, elements: !754)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !138, line: 1917, size: 384, elements: !1084)
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1083, file: !138, line: 1920, baseType: !1021, size: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1083, file: !138, line: 1921, baseType: !655, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1083, file: !138, line: 1922, baseType: !780, size: 32, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !981, file: !575, line: 748, baseType: !1089, size: 320)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !575, line: 487, size: 320, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1089, file: !575, line: 490, baseType: !984, size: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1089, file: !575, line: 494, baseType: !648, size: 32, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !981, file: !575, line: 749, baseType: !1094, size: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !575, line: 500, size: 384, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1094, file: !575, line: 502, baseType: !984, size: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1094, file: !575, line: 506, baseType: !969, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1094, file: !575, line: 510, baseType: !969, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !981, file: !575, line: 750, baseType: !1100, size: 320)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !575, line: 529, size: 320, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1100, file: !575, line: 531, baseType: !984, size: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1100, file: !575, line: 540, baseType: !969, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !981, file: !575, line: 751, baseType: !1105, size: 704)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !575, line: 546, size: 704, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1105, file: !575, line: 549, baseType: !1035, size: 512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1105, file: !575, line: 553, baseType: !653, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1105, file: !575, line: 557, baseType: !647, size: 8, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1105, file: !575, line: 558, baseType: !647, size: 8, offset: 584)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1105, file: !575, line: 559, baseType: !647, size: 8, offset: 592)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1105, file: !575, line: 560, baseType: !647, size: 8, offset: 600)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1105, file: !575, line: 566, baseType: !1033, size: 64, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !981, file: !575, line: 752, baseType: !1115, size: 384)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !575, line: 571, size: 384, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1115, file: !575, line: 573, baseType: !1046, size: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1115, file: !575, line: 577, baseType: !655, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !981, file: !575, line: 753, baseType: !1120, size: 576)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !575, line: 600, size: 576, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1127, !1136}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1120, file: !575, line: 602, baseType: !1046, size: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1120, file: !575, line: 605, baseType: !655, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1120, file: !575, line: 609, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1126, line: 46, baseType: !709)
!1126 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1120, file: !575, line: 612, baseType: !1128, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !575, line: 581, size: 320, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1129, file: !575, line: 583, baseType: !137, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1129, file: !575, line: 586, baseType: !655, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1129, file: !575, line: 589, baseType: !655, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1129, file: !575, line: 592, baseType: !655, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1129, file: !575, line: 595, baseType: !655, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1120, file: !575, line: 616, baseType: !969, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !981, file: !575, line: 754, baseType: !1138, size: 512)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !575, line: 622, size: 512, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1138, file: !575, line: 624, baseType: !1046, size: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1138, file: !575, line: 628, baseType: !655, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1138, file: !575, line: 632, baseType: !655, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1138, file: !575, line: 636, baseType: !655, size: 64, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !981, file: !575, line: 755, baseType: !1145, size: 704)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !575, line: 642, size: 704, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1145, file: !575, line: 644, baseType: !1138, size: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1145, file: !575, line: 648, baseType: !655, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1145, file: !575, line: 652, baseType: !655, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1145, file: !575, line: 653, baseType: !655, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !981, file: !575, line: 756, baseType: !1152, size: 448)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !575, line: 663, size: 448, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1152, file: !575, line: 665, baseType: !1046, size: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1152, file: !575, line: 668, baseType: !655, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1152, file: !575, line: 673, baseType: !655, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !981, file: !575, line: 757, baseType: !1158, size: 384)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !575, line: 694, size: 384, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1158, file: !575, line: 696, baseType: !1046, size: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1158, file: !575, line: 699, baseType: !655, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !981, file: !575, line: 758, baseType: !1163, size: 384)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !575, line: 681, size: 384, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1163, file: !575, line: 683, baseType: !984, size: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1163, file: !575, line: 686, baseType: !655, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1163, file: !575, line: 689, baseType: !655, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !981, file: !575, line: 759, baseType: !1169, size: 384)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !575, line: 707, size: 384, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1169, file: !575, line: 709, baseType: !984, size: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1169, file: !575, line: 712, baseType: !655, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1169, file: !575, line: 712, baseType: !655, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !981, file: !575, line: 760, baseType: !1175, size: 320)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !575, line: 718, size: 320, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1175, file: !575, line: 720, baseType: !984, size: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1175, file: !575, line: 723, baseType: !655, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !976, file: !575, line: 138, baseType: !975, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !976, file: !575, line: 139, baseType: !975, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !971, file: !575, line: 146, baseType: !974, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !971, file: !575, line: 152, baseType: !969, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !966, file: !333, line: 130, baseType: !830, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !961, file: !333, line: 134, baseType: !652, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !961, file: !333, line: 137, baseType: !655, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !961, file: !333, line: 138, baseType: !780, size: 32, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !961, file: !333, line: 142, baseType: !10, size: 32, offset: 352)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !333, line: 144, baseType: !648, size: 32, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !961, file: !333, line: 145, baseType: !648, size: 32, offset: 416)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !961, file: !333, line: 146, baseType: !1191, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !333, line: 119, baseType: !711)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !944, file: !333, line: 220, baseType: !947, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !944, file: !333, line: 223, baseType: !652, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !944, file: !333, line: 226, baseType: !1195, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !333, line: 185, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !944, file: !333, line: 229, baseType: !1198, size: 128, offset: 256)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 128, elements: !898)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !333, line: 229, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !944, file: !333, line: 232, baseType: !943, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !944, file: !333, line: 233, baseType: !943, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !944, file: !333, line: 238, baseType: !1204, size: 64, offset: 512)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !333, line: 235, size: 64, elements: !1205)
!1205 = !{!1206, !1212}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1204, file: !333, line: 236, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !333, line: 273, size: 128, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1208, file: !333, line: 275, baseType: !969, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1208, file: !333, line: 278, baseType: !969, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1204, file: !333, line: 237, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !333, line: 259, size: 320, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1214, file: !333, line: 261, baseType: !830, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1214, file: !333, line: 262, baseType: !830, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1214, file: !333, line: 266, baseType: !830, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1214, file: !333, line: 267, baseType: !830, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1214, file: !333, line: 270, baseType: !648, size: 32, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !944, file: !333, line: 241, baseType: !1191, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !944, file: !333, line: 244, baseType: !648, size: 32, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !944, file: !333, line: 247, baseType: !648, size: 32, offset: 672)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !944, file: !333, line: 250, baseType: !648, size: 32, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !944, file: !333, line: 253, baseType: !648, size: 32, offset: 736)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !333, line: 256, baseType: !648, size: 32, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !851, file: !833, line: 179, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !833, line: 150, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !833, line: 142, size: 320, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1238, !1239}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1230, file: !833, line: 144, baseType: !655, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1230, file: !833, line: 145, baseType: !830, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1230, file: !833, line: 146, baseType: !830, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1230, file: !833, line: 147, baseType: !1236, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1237, line: 31, baseType: !648)
!1237 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1230, file: !833, line: 148, baseType: !10, size: 32, offset: 224)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1230, file: !833, line: 149, baseType: !647, size: 8, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !851, file: !833, line: 180, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !833, line: 162, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !833, line: 159, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1243, file: !833, line: 160, baseType: !655, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1243, file: !833, line: 161, baseType: !711, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !851, file: !833, line: 181, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !833, line: 181, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !846, file: !833, line: 317, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !754)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !846, file: !833, line: 318, baseType: !1253, size: 320)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !833, line: 188, size: 320, elements: !1254)
!1254 = !{!1255, !1257, !1280}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1253, file: !833, line: 190, baseType: !1256, size: 192)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 192, elements: !729)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1253, file: !833, line: 193, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !833, line: 206, size: 320, elements: !1260)
!1260 = !{!1261, !1265, !1266, !1267, !1279}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1259, file: !833, line: 208, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !656, line: 62, baseType: !1264)
!1264 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !656, line: 61, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1259, file: !833, line: 211, baseType: !10, size: 32, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1259, file: !833, line: 214, baseType: !711, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1259, file: !833, line: 224, baseType: !1268, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !833, line: 202, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !833, line: 202, size: 128, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1270, file: !833, line: 202, baseType: !1273, size: 128)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !833, line: 200, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !833, line: 200, size: 128, elements: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1274, file: !833, line: 200, baseType: !10, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1274, file: !833, line: 200, baseType: !10, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1274, file: !833, line: 200, baseType: !864, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1259, file: !833, line: 234, baseType: !1268, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1253, file: !833, line: 197, baseType: !711, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !846, file: !833, line: 319, baseType: !718, size: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !846, file: !833, line: 320, baseType: !737, size: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !658, file: !138, line: 3384, baseType: !1284, size: 1472)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !138, line: 3114, size: 1472, elements: !1285)
!1285 = !{!1286, !1307, !1308, !1309, !1310}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1284, file: !138, line: 3115, baseType: !1287, size: 1216)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !138, line: 2984, size: 1216, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1287, file: !138, line: 2985, baseType: !826, size: 960)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1287, file: !138, line: 2986, baseType: !655, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1287, file: !138, line: 2987, baseType: !655, size: 64, offset: 1024)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1287, file: !138, line: 2988, baseType: !655, size: 64, offset: 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1287, file: !138, line: 2991, baseType: !10, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1287, file: !138, line: 2992, baseType: !10, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1287, file: !138, line: 2993, baseType: !10, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1287, file: !138, line: 2994, baseType: !10, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1287, file: !138, line: 2995, baseType: !10, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1287, file: !138, line: 2996, baseType: !10, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1287, file: !138, line: 2998, baseType: !10, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1287, file: !138, line: 3000, baseType: !10, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1287, file: !138, line: 3002, baseType: !10, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1287, file: !138, line: 3003, baseType: !10, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1287, file: !138, line: 3004, baseType: !10, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1287, file: !138, line: 3005, baseType: !10, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1287, file: !138, line: 3007, baseType: !10, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1287, file: !138, line: 3010, baseType: !10, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1284, file: !138, line: 3117, baseType: !655, size: 64, offset: 1216)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1284, file: !138, line: 3119, baseType: !655, size: 64, offset: 1280)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1284, file: !138, line: 3121, baseType: !655, size: 64, offset: 1344)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1284, file: !138, line: 3123, baseType: !655, size: 64, offset: 1408)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !658, file: !138, line: 3385, baseType: !1312, size: 1088)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !138, line: 2874, size: 1088, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1312, file: !138, line: 2875, baseType: !826, size: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1312, file: !138, line: 2876, baseType: !830, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1312, file: !138, line: 2877, baseType: !1317, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1319, line: 172, size: 128, elements: !1320)
!1319 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1318, file: !1319, line: 174, baseType: !10, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1318, file: !1319, line: 178, baseType: !10, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1318, file: !1319, line: 183, baseType: !10, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1318, file: !1319, line: 187, baseType: !10, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1318, file: !1319, line: 192, baseType: !10, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1318, file: !1319, line: 195, baseType: !10, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1318, file: !1319, line: 199, baseType: !655, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !658, file: !138, line: 3386, baseType: !1287, size: 1216)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !658, file: !138, line: 3387, baseType: !1330, size: 1280)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !138, line: 3093, size: 1280, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1330, file: !138, line: 3094, baseType: !1287, size: 1216)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1330, file: !138, line: 3095, baseType: !1317, size: 64, offset: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !658, file: !138, line: 3388, baseType: !1335, size: 1216)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !138, line: 2824, size: 1216, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1335, file: !138, line: 2825, baseType: !788, size: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1335, file: !138, line: 2827, baseType: !655, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1335, file: !138, line: 2828, baseType: !655, size: 64, offset: 960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1335, file: !138, line: 2829, baseType: !655, size: 64, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1335, file: !138, line: 2830, baseType: !655, size: 64, offset: 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1335, file: !138, line: 2831, baseType: !655, size: 64, offset: 1152)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !658, file: !138, line: 3389, baseType: !1344, size: 1024)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !138, line: 2850, size: 1024, elements: !1345)
!1345 = !{!1346, !1347, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1344, file: !138, line: 2851, baseType: !826, size: 960)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1344, file: !138, line: 2852, baseType: !648, size: 32, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1344, file: !138, line: 2853, baseType: !648, size: 32, offset: 992)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !658, file: !138, line: 3390, baseType: !1350, size: 1024)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !138, line: 2857, size: 1024, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1350, file: !138, line: 2858, baseType: !826, size: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1350, file: !138, line: 2859, baseType: !1317, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !658, file: !138, line: 3391, baseType: !1355, size: 960)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !138, line: 2862, size: 960, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !138, line: 2863, baseType: !826, size: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !658, file: !138, line: 3392, baseType: !1359, size: 1472)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !138, line: 3304, size: 1472, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1359, file: !138, line: 3305, baseType: !1284, size: 1472)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !658, file: !138, line: 3393, baseType: !1363, size: 1792)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !138, line: 3248, size: 1792, elements: !1364)
!1364 = !{!1365, !1366, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1363, file: !138, line: 3249, baseType: !1284, size: 1472)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1363, file: !138, line: 3251, baseType: !1367, size: 64, offset: 1472)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1369, line: 463, size: 1152, elements: !1370)
!1369 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1370 = !{!1371, !1374, !1405, !1406, !1521, !1524, !1525, !1526, !1527, !1528, !1529, !1553, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1368, file: !1369, line: 464, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1369, line: 464, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1368, file: !1369, line: 467, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !333, line: 374, size: 640, elements: !1377)
!1377 = !{!1378, !1380, !1381, !1394, !1395, !1396, !1397, !1398, !1399, !1401, !1403, !1404}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1376, file: !333, line: 377, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !656, line: 111, baseType: !943)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1376, file: !333, line: 378, baseType: !1379, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1376, file: !333, line: 381, baseType: !1382, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !333, line: 282, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !333, line: 282, size: 128, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1384, file: !333, line: 282, baseType: !1387, size: 128)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !333, line: 281, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !333, line: 281, size: 128, elements: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1388, file: !333, line: 281, baseType: !10, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1388, file: !333, line: 281, baseType: !10, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1388, file: !333, line: 281, baseType: !1393, size: 64, offset: 64)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 64, elements: !754)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1376, file: !333, line: 384, baseType: !648, size: 32, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1376, file: !333, line: 387, baseType: !648, size: 32, offset: 224)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1376, file: !333, line: 390, baseType: !648, size: 32, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1376, file: !333, line: 394, baseType: !1382, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1376, file: !333, line: 396, baseType: !332, size: 32, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1376, file: !333, line: 399, baseType: !1400, size: 64, offset: 416)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 64, elements: !898)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1376, file: !333, line: 402, baseType: !1402, size: 64, offset: 480)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !898)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1376, file: !333, line: 406, baseType: !648, size: 32, offset: 544)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1376, file: !333, line: 409, baseType: !648, size: 32, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1368, file: !1369, line: 470, baseType: !970, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1368, file: !1369, line: 473, baseType: !1407, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1319, line: 39, size: 1152, elements: !1409)
!1409 = !{!1410, !1460, !1473, !1485, !1486, !1498, !1499, !1503, !1504, !1505, !1506, !1507}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1408, file: !1319, line: 41, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1412, line: 144, baseType: !1413)
!1412 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1412, line: 100, size: 896, elements: !1415)
!1415 = !{!1416, !1424, !1429, !1434, !1436, !1437, !1438, !1439, !1440, !1441, !1446, !1448, !1449, !1454, !1459}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1414, file: !1412, line: 102, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1412, line: 52, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1412, line: 47, baseType: !10)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1414, file: !1412, line: 105, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1412, line: 59, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!648, !1422, !1422}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1414, file: !1412, line: 108, baseType: !1430, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1412, line: 63, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !652}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1414, file: !1412, line: 111, baseType: !1435, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1414, file: !1412, line: 114, baseType: !1125, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1414, file: !1412, line: 117, baseType: !1125, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1414, file: !1412, line: 120, baseType: !1125, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1414, file: !1412, line: 124, baseType: !10, size: 32, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1414, file: !1412, line: 128, baseType: !10, size: 32, offset: 480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1414, file: !1412, line: 131, baseType: !1442, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1412, line: 75, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!652, !1125, !1125}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1414, file: !1412, line: 132, baseType: !1447, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1412, line: 78, baseType: !1431)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1414, file: !1412, line: 135, baseType: !652, size: 64, offset: 640)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1414, file: !1412, line: 136, baseType: !1450, size: 64, offset: 704)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1412, line: 82, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!652, !652, !1125, !1125}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1414, file: !1412, line: 137, baseType: !1455, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1412, line: 83, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !652, !652}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1414, file: !1412, line: 141, baseType: !10, size: 32, offset: 832)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1408, file: !1319, line: 48, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !575, line: 35, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !575, line: 35, size: 128, elements: !1464)
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1463, file: !575, line: 35, baseType: !1466, size: 128)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !575, line: 33, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !575, line: 33, size: 128, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1467, file: !575, line: 33, baseType: !10, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1467, file: !575, line: 33, baseType: !10, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1467, file: !575, line: 33, baseType: !1472, size: 64, offset: 64)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 64, elements: !754)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1408, file: !1319, line: 51, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !138, line: 183, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !138, line: 183, size: 128, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1476, file: !138, line: 183, baseType: !1479, size: 128)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !138, line: 182, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !138, line: 182, size: 128, elements: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1480, file: !138, line: 182, baseType: !10, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1480, file: !138, line: 182, baseType: !10, size: 32, offset: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1480, file: !138, line: 182, baseType: !1033, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1408, file: !1319, line: 54, baseType: !655, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1408, file: !1319, line: 57, baseType: !1487, size: 128, offset: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1488, line: 31, size: 128, elements: !1489)
!1488 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1487, file: !1488, line: 35, baseType: !10, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1487, file: !1488, line: 39, baseType: !10, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1487, file: !1488, line: 42, baseType: !10, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1487, file: !1488, line: 46, baseType: !10, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1487, file: !1488, line: 50, baseType: !10, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1487, file: !1488, line: 53, baseType: !10, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1487, file: !1488, line: 56, baseType: !1497, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !656, line: 47, baseType: !882)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1408, file: !1319, line: 60, baseType: !1487, size: 128, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1408, file: !1319, line: 64, baseType: !1500, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1502, line: 33, flags: DIFlagFwdDecl)
!1502 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1408, file: !1319, line: 67, baseType: !655, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1408, file: !1319, line: 73, baseType: !1411, size: 64, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1408, file: !1319, line: 77, baseType: !1497, size: 64, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1408, file: !1319, line: 80, baseType: !10, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1408, file: !1319, line: 82, baseType: !1508, size: 320, offset: 832)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1010, line: 62, size: 320, elements: !1509)
!1509 = !{!1510, !1516, !1517, !1518, !1519, !1520}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1508, file: !1010, line: 63, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1010, line: 56, size: 128, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1512, file: !1010, line: 57, baseType: !1511, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1512, file: !1010, line: 58, baseType: !753, size: 8, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1508, file: !1010, line: 64, baseType: !10, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1508, file: !1010, line: 66, baseType: !10, size: 32, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1508, file: !1010, line: 68, baseType: !647, size: 8, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1508, file: !1010, line: 70, baseType: !1008, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1508, file: !1010, line: 71, baseType: !1016, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1368, file: !1369, line: 476, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1369, line: 476, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1368, file: !1369, line: 479, baseType: !1411, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1368, file: !1369, line: 484, baseType: !655, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1368, file: !1369, line: 488, baseType: !655, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1368, file: !1369, line: 493, baseType: !655, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1368, file: !1369, line: 496, baseType: !655, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1368, file: !1369, line: 501, baseType: !1530, size: 64, offset: 640)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !344, line: 2355, size: 576, elements: !1532)
!1532 = !{!1533, !1536, !1537, !1538, !1539, !1541, !1542, !1547, !1548, !1549, !1550, !1551, !1552}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1531, file: !344, line: 2356, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !344, line: 2356, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1531, file: !344, line: 2357, baseType: !653, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1531, file: !344, line: 2358, baseType: !648, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1531, file: !344, line: 2359, baseType: !648, size: 32, offset: 160)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1531, file: !344, line: 2360, baseType: !1540, size: 128, offset: 192)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 128, elements: !922)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1531, file: !344, line: 2364, baseType: !648, size: 32, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1531, file: !344, line: 2367, baseType: !1543, size: 128, offset: 384)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !344, line: 2349, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1543, file: !344, line: 2351, baseType: !830, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1543, file: !344, line: 2352, baseType: !711, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1531, file: !344, line: 2371, baseType: !343, size: 32, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1531, file: !344, line: 2374, baseType: !10, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1531, file: !344, line: 2377, baseType: !10, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1531, file: !344, line: 2381, baseType: !10, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1531, file: !344, line: 2392, baseType: !10, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1531, file: !344, line: 2396, baseType: !10, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1368, file: !1369, line: 504, baseType: !1554, size: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1369, line: 504, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1368, file: !1369, line: 507, baseType: !1411, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1368, file: !1369, line: 510, baseType: !648, size: 32, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1368, file: !1369, line: 513, baseType: !648, size: 32, offset: 864)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1368, file: !1369, line: 516, baseType: !780, size: 32, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1368, file: !1369, line: 519, baseType: !780, size: 32, offset: 928)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1368, file: !1369, line: 522, baseType: !10, size: 32, offset: 960)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1368, file: !1369, line: 523, baseType: !10, size: 32, offset: 992)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1368, file: !1369, line: 528, baseType: !653, size: 64, offset: 1024)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1368, file: !1369, line: 535, baseType: !10, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1368, file: !1369, line: 539, baseType: !10, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1368, file: !1369, line: 543, baseType: !10, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1368, file: !1369, line: 546, baseType: !10, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1368, file: !1369, line: 550, baseType: !10, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1368, file: !1369, line: 554, baseType: !10, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1368, file: !1369, line: 559, baseType: !10, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1368, file: !1369, line: 562, baseType: !10, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1368, file: !1369, line: 571, baseType: !10, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1368, file: !1369, line: 573, baseType: !10, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1368, file: !1369, line: 574, baseType: !10, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1368, file: !1369, line: 581, baseType: !10, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1368, file: !1369, line: 585, baseType: !10, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1368, file: !1369, line: 588, baseType: !10, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1368, file: !1369, line: 592, baseType: !10, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1368, file: !1369, line: 598, baseType: !10, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1363, file: !138, line: 3254, baseType: !655, size: 64, offset: 1536)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1363, file: !138, line: 3257, baseType: !655, size: 64, offset: 1600)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1363, file: !138, line: 3258, baseType: !655, size: 64, offset: 1664)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1363, file: !138, line: 3264, baseType: !10, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1363, file: !138, line: 3265, baseType: !10, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1363, file: !138, line: 3267, baseType: !10, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1363, file: !138, line: 3268, baseType: !10, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1363, file: !138, line: 3269, baseType: !10, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1363, file: !138, line: 3271, baseType: !10, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1363, file: !138, line: 3272, baseType: !10, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1363, file: !138, line: 3273, baseType: !10, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1363, file: !138, line: 3274, baseType: !10, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1363, file: !138, line: 3275, baseType: !10, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1363, file: !138, line: 3276, baseType: !10, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1363, file: !138, line: 3277, baseType: !10, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1363, file: !138, line: 3279, baseType: !10, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1363, file: !138, line: 3280, baseType: !10, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1363, file: !138, line: 3281, baseType: !10, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1363, file: !138, line: 3282, baseType: !10, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1363, file: !138, line: 3283, baseType: !10, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1363, file: !138, line: 3284, baseType: !10, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !138, line: 3394, baseType: !1602, size: 1344)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !138, line: 2279, size: 1344, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1602, file: !138, line: 2280, baseType: !694, size: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1602, file: !138, line: 2281, baseType: !655, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1602, file: !138, line: 2282, baseType: !655, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1602, file: !138, line: 2283, baseType: !655, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1602, file: !138, line: 2284, baseType: !655, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1602, file: !138, line: 2285, baseType: !10, size: 32, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1602, file: !138, line: 2287, baseType: !10, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1602, file: !138, line: 2288, baseType: !10, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1602, file: !138, line: 2289, baseType: !10, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1602, file: !138, line: 2290, baseType: !10, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1602, file: !138, line: 2291, baseType: !10, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1602, file: !138, line: 2292, baseType: !10, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1602, file: !138, line: 2294, baseType: !10, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1602, file: !138, line: 2296, baseType: !10, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1602, file: !138, line: 2297, baseType: !10, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1602, file: !138, line: 2298, baseType: !10, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1602, file: !138, line: 2299, baseType: !10, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1602, file: !138, line: 2300, baseType: !10, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1602, file: !138, line: 2301, baseType: !10, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1602, file: !138, line: 2302, baseType: !10, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1602, file: !138, line: 2303, baseType: !10, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1602, file: !138, line: 2305, baseType: !10, size: 32, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1602, file: !138, line: 2306, baseType: !1236, size: 32, offset: 544)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1602, file: !138, line: 2307, baseType: !655, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1602, file: !138, line: 2308, baseType: !655, size: 64, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1602, file: !138, line: 2314, baseType: !1630, size: 64, offset: 704)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !138, line: 2309, size: 64, elements: !1631)
!1631 = !{!1632, !1633, !1634}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1630, file: !138, line: 2310, baseType: !648, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1630, file: !138, line: 2311, baseType: !653, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1630, file: !138, line: 2312, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !138, line: 2277, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1602, file: !138, line: 2315, baseType: !655, size: 64, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1602, file: !138, line: 2316, baseType: !655, size: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1602, file: !138, line: 2317, baseType: !655, size: 64, offset: 896)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1602, file: !138, line: 2318, baseType: !655, size: 64, offset: 960)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1602, file: !138, line: 2319, baseType: !655, size: 64, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1602, file: !138, line: 2320, baseType: !655, size: 64, offset: 1088)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1602, file: !138, line: 2321, baseType: !655, size: 64, offset: 1152)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1602, file: !138, line: 2322, baseType: !655, size: 64, offset: 1216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1602, file: !138, line: 2324, baseType: !1646, size: 64, offset: 1280)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !138, line: 2324, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !658, file: !138, line: 3395, baseType: !1649, size: 320)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !138, line: 1469, size: 320, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1649, file: !138, line: 1470, baseType: !694, size: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1649, file: !138, line: 1471, baseType: !655, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1649, file: !138, line: 1472, baseType: !655, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !658, file: !138, line: 3396, baseType: !1655, size: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !138, line: 1482, size: 320, elements: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1655, file: !138, line: 1483, baseType: !694, size: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1655, file: !138, line: 1484, baseType: !648, size: 32, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1655, file: !138, line: 1485, baseType: !1033, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !658, file: !138, line: 3397, baseType: !1661, size: 384)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !138, line: 1829, size: 384, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1661, file: !138, line: 1830, baseType: !694, size: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1661, file: !138, line: 1831, baseType: !780, size: 32, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1661, file: !138, line: 1832, baseType: !655, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1661, file: !138, line: 1835, baseType: !1033, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !658, file: !138, line: 3398, baseType: !1668, size: 704)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !138, line: 1898, size: 704, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1679}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1668, file: !138, line: 1899, baseType: !694, size: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1668, file: !138, line: 1902, baseType: !655, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1668, file: !138, line: 1905, baseType: !979, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1668, file: !138, line: 1908, baseType: !10, size: 32, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1668, file: !138, line: 1911, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1319, line: 117, size: 128, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1676, file: !1319, line: 120, baseType: !1487, size: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1668, file: !138, line: 1914, baseType: !1021, size: 256, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !658, file: !138, line: 3399, baseType: !1681, size: 704)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !138, line: 2008, size: 704, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1681, file: !138, line: 2009, baseType: !694, size: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1681, file: !138, line: 2011, baseType: !10, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1681, file: !138, line: 2012, baseType: !10, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1681, file: !138, line: 2014, baseType: !780, size: 32, offset: 224)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1681, file: !138, line: 2016, baseType: !655, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1681, file: !138, line: 2017, baseType: !1474, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1681, file: !138, line: 2019, baseType: !655, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1681, file: !138, line: 2020, baseType: !655, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1681, file: !138, line: 2021, baseType: !655, size: 64, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1681, file: !138, line: 2022, baseType: !655, size: 64, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1681, file: !138, line: 2023, baseType: !655, size: 64, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !658, file: !138, line: 3400, baseType: !1695, size: 832)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !138, line: 2430, size: 832, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1695, file: !138, line: 2431, baseType: !694, size: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1695, file: !138, line: 2433, baseType: !655, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1695, file: !138, line: 2434, baseType: !655, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1695, file: !138, line: 2435, baseType: !655, size: 64, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1695, file: !138, line: 2436, baseType: !655, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1695, file: !138, line: 2437, baseType: !1474, size: 64, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1695, file: !138, line: 2438, baseType: !655, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1695, file: !138, line: 2440, baseType: !655, size: 64, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1695, file: !138, line: 2441, baseType: !655, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1695, file: !138, line: 2443, baseType: !1707, size: 128, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !138, line: 182, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !138, line: 182, size: 128, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1708, file: !138, line: 182, baseType: !1479, size: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !658, file: !138, line: 3401, baseType: !1712, size: 320)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !138, line: 3327, size: 320, elements: !1713)
!1713 = !{!1714, !1715, !1722}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1712, file: !138, line: 3329, baseType: !694, size: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1712, file: !138, line: 3330, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !138, line: 3320, size: 192, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1717, file: !138, line: 3322, baseType: !1716, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1717, file: !138, line: 3323, baseType: !1716, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1717, file: !138, line: 3324, baseType: !655, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1712, file: !138, line: 3331, baseType: !1716, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !658, file: !138, line: 3402, baseType: !1724, size: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !138, line: 1540, size: 256, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1724, file: !138, line: 1541, baseType: !694, size: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1724, file: !138, line: 1542, baseType: !1728, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !138, line: 1538, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !138, line: 1538, size: 192, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1730, file: !138, line: 1538, baseType: !1733, size: 192)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !138, line: 1537, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !138, line: 1537, size: 192, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1734, file: !138, line: 1537, baseType: !10, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1734, file: !138, line: 1537, baseType: !10, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1734, file: !138, line: 1537, baseType: !1739, size: 128, offset: 64)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1740, size: 128, elements: !754)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !138, line: 1535, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !138, line: 1532, size: 128, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1741, file: !138, line: 1533, baseType: !655, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1741, file: !138, line: 1534, baseType: !655, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !658, file: !138, line: 3403, baseType: !1746, size: 512)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !138, line: 1938, size: 512, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1757, !1758, !1759}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1746, file: !138, line: 1939, baseType: !694, size: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1746, file: !138, line: 1940, baseType: !780, size: 32, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1746, file: !138, line: 1941, baseType: !348, size: 32, offset: 224)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1746, file: !138, line: 1946, baseType: !1752, size: 32, offset: 256)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !138, line: 1942, size: 32, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1752, file: !138, line: 1943, baseType: !366, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1752, file: !138, line: 1944, baseType: !373, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1752, file: !138, line: 1945, baseType: !137, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1746, file: !138, line: 1950, baseType: !969, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1746, file: !138, line: 1951, baseType: !969, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1746, file: !138, line: 1953, baseType: !1033, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !658, file: !138, line: 3404, baseType: !1761, size: 1664)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !138, line: 3337, size: 1664, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1761, file: !138, line: 3338, baseType: !694, size: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1761, file: !138, line: 3341, baseType: !1765, size: 1472, offset: 192)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1766, line: 410, size: 1472, elements: !1767)
!1766 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1765, file: !1766, line: 412, baseType: !648, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1765, file: !1766, line: 413, baseType: !648, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1765, file: !1766, line: 414, baseType: !648, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1765, file: !1766, line: 415, baseType: !648, size: 32, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1765, file: !1766, line: 416, baseType: !648, size: 32, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1765, file: !1766, line: 417, baseType: !648, size: 32, offset: 160)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1765, file: !1766, line: 418, baseType: !647, size: 8, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1765, file: !1766, line: 419, baseType: !647, size: 8, offset: 200)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1765, file: !1766, line: 420, baseType: !1777, size: 8, offset: 208)
!1777 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1765, file: !1766, line: 421, baseType: !1777, size: 8, offset: 216)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1765, file: !1766, line: 422, baseType: !1777, size: 8, offset: 224)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1765, file: !1766, line: 423, baseType: !1777, size: 8, offset: 232)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1765, file: !1766, line: 424, baseType: !1777, size: 8, offset: 240)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1765, file: !1766, line: 425, baseType: !1777, size: 8, offset: 248)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1765, file: !1766, line: 426, baseType: !1777, size: 8, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1765, file: !1766, line: 427, baseType: !1777, size: 8, offset: 264)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1765, file: !1766, line: 428, baseType: !1777, size: 8, offset: 272)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1765, file: !1766, line: 429, baseType: !1777, size: 8, offset: 280)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1765, file: !1766, line: 430, baseType: !1777, size: 8, offset: 288)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1765, file: !1766, line: 431, baseType: !1777, size: 8, offset: 296)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1765, file: !1766, line: 432, baseType: !1777, size: 8, offset: 304)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1765, file: !1766, line: 433, baseType: !1777, size: 8, offset: 312)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1765, file: !1766, line: 434, baseType: !1777, size: 8, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1765, file: !1766, line: 435, baseType: !1777, size: 8, offset: 328)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1765, file: !1766, line: 436, baseType: !1777, size: 8, offset: 336)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1765, file: !1766, line: 437, baseType: !1777, size: 8, offset: 344)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1765, file: !1766, line: 438, baseType: !1777, size: 8, offset: 352)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1765, file: !1766, line: 439, baseType: !1777, size: 8, offset: 360)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1765, file: !1766, line: 440, baseType: !1777, size: 8, offset: 368)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1765, file: !1766, line: 441, baseType: !1777, size: 8, offset: 376)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1765, file: !1766, line: 442, baseType: !1777, size: 8, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1765, file: !1766, line: 443, baseType: !1777, size: 8, offset: 392)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1765, file: !1766, line: 444, baseType: !1777, size: 8, offset: 400)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1765, file: !1766, line: 445, baseType: !1777, size: 8, offset: 408)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1765, file: !1766, line: 446, baseType: !1777, size: 8, offset: 416)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1765, file: !1766, line: 447, baseType: !1777, size: 8, offset: 424)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1765, file: !1766, line: 448, baseType: !1777, size: 8, offset: 432)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1765, file: !1766, line: 449, baseType: !1777, size: 8, offset: 440)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1765, file: !1766, line: 450, baseType: !1777, size: 8, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1765, file: !1766, line: 451, baseType: !1777, size: 8, offset: 456)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1765, file: !1766, line: 452, baseType: !1777, size: 8, offset: 464)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1765, file: !1766, line: 453, baseType: !1777, size: 8, offset: 472)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1765, file: !1766, line: 454, baseType: !1777, size: 8, offset: 480)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1765, file: !1766, line: 455, baseType: !1777, size: 8, offset: 488)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1765, file: !1766, line: 456, baseType: !1777, size: 8, offset: 496)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1765, file: !1766, line: 457, baseType: !1777, size: 8, offset: 504)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1765, file: !1766, line: 458, baseType: !1777, size: 8, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1765, file: !1766, line: 459, baseType: !1777, size: 8, offset: 520)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1765, file: !1766, line: 460, baseType: !1777, size: 8, offset: 528)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1765, file: !1766, line: 461, baseType: !1777, size: 8, offset: 536)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1765, file: !1766, line: 462, baseType: !1777, size: 8, offset: 544)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1765, file: !1766, line: 463, baseType: !1777, size: 8, offset: 552)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1765, file: !1766, line: 464, baseType: !1777, size: 8, offset: 560)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1765, file: !1766, line: 465, baseType: !1777, size: 8, offset: 568)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1765, file: !1766, line: 466, baseType: !1777, size: 8, offset: 576)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1765, file: !1766, line: 467, baseType: !1777, size: 8, offset: 584)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1765, file: !1766, line: 468, baseType: !1777, size: 8, offset: 592)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1765, file: !1766, line: 469, baseType: !1777, size: 8, offset: 600)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1765, file: !1766, line: 470, baseType: !1777, size: 8, offset: 608)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1765, file: !1766, line: 471, baseType: !1777, size: 8, offset: 616)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1765, file: !1766, line: 472, baseType: !1777, size: 8, offset: 624)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1765, file: !1766, line: 473, baseType: !1777, size: 8, offset: 632)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1765, file: !1766, line: 474, baseType: !1777, size: 8, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1765, file: !1766, line: 475, baseType: !1777, size: 8, offset: 648)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1765, file: !1766, line: 476, baseType: !1777, size: 8, offset: 656)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1765, file: !1766, line: 477, baseType: !1777, size: 8, offset: 664)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1765, file: !1766, line: 478, baseType: !1777, size: 8, offset: 672)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1765, file: !1766, line: 479, baseType: !1777, size: 8, offset: 680)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1765, file: !1766, line: 480, baseType: !1777, size: 8, offset: 688)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1765, file: !1766, line: 481, baseType: !1777, size: 8, offset: 696)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1765, file: !1766, line: 482, baseType: !1777, size: 8, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1765, file: !1766, line: 483, baseType: !1777, size: 8, offset: 712)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1765, file: !1766, line: 484, baseType: !1777, size: 8, offset: 720)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1765, file: !1766, line: 485, baseType: !1777, size: 8, offset: 728)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1765, file: !1766, line: 486, baseType: !1777, size: 8, offset: 736)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1765, file: !1766, line: 487, baseType: !1777, size: 8, offset: 744)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1765, file: !1766, line: 488, baseType: !1777, size: 8, offset: 752)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1765, file: !1766, line: 489, baseType: !1777, size: 8, offset: 760)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1765, file: !1766, line: 490, baseType: !1777, size: 8, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1765, file: !1766, line: 491, baseType: !1777, size: 8, offset: 776)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1765, file: !1766, line: 492, baseType: !1777, size: 8, offset: 784)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1765, file: !1766, line: 493, baseType: !1777, size: 8, offset: 792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1765, file: !1766, line: 494, baseType: !1777, size: 8, offset: 800)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1765, file: !1766, line: 495, baseType: !1777, size: 8, offset: 808)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1765, file: !1766, line: 496, baseType: !1777, size: 8, offset: 816)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1765, file: !1766, line: 497, baseType: !1777, size: 8, offset: 824)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1765, file: !1766, line: 498, baseType: !1777, size: 8, offset: 832)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1765, file: !1766, line: 499, baseType: !1777, size: 8, offset: 840)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1765, file: !1766, line: 500, baseType: !1777, size: 8, offset: 848)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1765, file: !1766, line: 501, baseType: !1777, size: 8, offset: 856)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1765, file: !1766, line: 502, baseType: !1777, size: 8, offset: 864)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1765, file: !1766, line: 503, baseType: !1777, size: 8, offset: 872)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1765, file: !1766, line: 504, baseType: !1777, size: 8, offset: 880)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1765, file: !1766, line: 505, baseType: !1777, size: 8, offset: 888)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1765, file: !1766, line: 506, baseType: !1777, size: 8, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1765, file: !1766, line: 507, baseType: !1777, size: 8, offset: 904)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1765, file: !1766, line: 508, baseType: !1777, size: 8, offset: 912)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1765, file: !1766, line: 509, baseType: !1777, size: 8, offset: 920)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1765, file: !1766, line: 510, baseType: !1777, size: 8, offset: 928)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1765, file: !1766, line: 511, baseType: !1777, size: 8, offset: 936)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1765, file: !1766, line: 512, baseType: !1777, size: 8, offset: 944)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1765, file: !1766, line: 513, baseType: !1777, size: 8, offset: 952)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1765, file: !1766, line: 514, baseType: !1777, size: 8, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1765, file: !1766, line: 515, baseType: !1777, size: 8, offset: 968)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1765, file: !1766, line: 516, baseType: !1777, size: 8, offset: 976)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1765, file: !1766, line: 517, baseType: !1777, size: 8, offset: 984)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1765, file: !1766, line: 518, baseType: !1777, size: 8, offset: 992)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1765, file: !1766, line: 519, baseType: !1777, size: 8, offset: 1000)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1765, file: !1766, line: 520, baseType: !1777, size: 8, offset: 1008)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1765, file: !1766, line: 521, baseType: !1777, size: 8, offset: 1016)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1765, file: !1766, line: 522, baseType: !1777, size: 8, offset: 1024)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1765, file: !1766, line: 523, baseType: !1777, size: 8, offset: 1032)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1765, file: !1766, line: 524, baseType: !1777, size: 8, offset: 1040)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1765, file: !1766, line: 525, baseType: !1777, size: 8, offset: 1048)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1765, file: !1766, line: 526, baseType: !1777, size: 8, offset: 1056)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1765, file: !1766, line: 527, baseType: !1777, size: 8, offset: 1064)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1765, file: !1766, line: 528, baseType: !1777, size: 8, offset: 1072)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1765, file: !1766, line: 529, baseType: !1777, size: 8, offset: 1080)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1765, file: !1766, line: 530, baseType: !1777, size: 8, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1765, file: !1766, line: 531, baseType: !1777, size: 8, offset: 1096)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1765, file: !1766, line: 532, baseType: !1777, size: 8, offset: 1104)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1765, file: !1766, line: 533, baseType: !1777, size: 8, offset: 1112)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1765, file: !1766, line: 534, baseType: !1777, size: 8, offset: 1120)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1765, file: !1766, line: 535, baseType: !1777, size: 8, offset: 1128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1765, file: !1766, line: 536, baseType: !1777, size: 8, offset: 1136)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1765, file: !1766, line: 537, baseType: !1777, size: 8, offset: 1144)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1765, file: !1766, line: 538, baseType: !1777, size: 8, offset: 1152)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1765, file: !1766, line: 539, baseType: !1777, size: 8, offset: 1160)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1765, file: !1766, line: 540, baseType: !1777, size: 8, offset: 1168)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1765, file: !1766, line: 541, baseType: !1777, size: 8, offset: 1176)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1765, file: !1766, line: 542, baseType: !1777, size: 8, offset: 1184)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1765, file: !1766, line: 543, baseType: !1777, size: 8, offset: 1192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1765, file: !1766, line: 544, baseType: !1777, size: 8, offset: 1200)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1765, file: !1766, line: 545, baseType: !1777, size: 8, offset: 1208)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1765, file: !1766, line: 546, baseType: !1777, size: 8, offset: 1216)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1765, file: !1766, line: 547, baseType: !1777, size: 8, offset: 1224)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1765, file: !1766, line: 548, baseType: !1777, size: 8, offset: 1232)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1765, file: !1766, line: 549, baseType: !1777, size: 8, offset: 1240)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1765, file: !1766, line: 550, baseType: !1777, size: 8, offset: 1248)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1765, file: !1766, line: 551, baseType: !1777, size: 8, offset: 1256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1765, file: !1766, line: 552, baseType: !1777, size: 8, offset: 1264)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1765, file: !1766, line: 553, baseType: !1777, size: 8, offset: 1272)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1765, file: !1766, line: 554, baseType: !1777, size: 8, offset: 1280)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1765, file: !1766, line: 555, baseType: !1777, size: 8, offset: 1288)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1765, file: !1766, line: 556, baseType: !1777, size: 8, offset: 1296)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1765, file: !1766, line: 557, baseType: !1777, size: 8, offset: 1304)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1765, file: !1766, line: 558, baseType: !1777, size: 8, offset: 1312)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1765, file: !1766, line: 559, baseType: !1777, size: 8, offset: 1320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1765, file: !1766, line: 560, baseType: !1777, size: 8, offset: 1328)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1765, file: !1766, line: 561, baseType: !1777, size: 8, offset: 1336)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1765, file: !1766, line: 562, baseType: !1777, size: 8, offset: 1344)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1765, file: !1766, line: 563, baseType: !1777, size: 8, offset: 1352)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1765, file: !1766, line: 564, baseType: !1777, size: 8, offset: 1360)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1765, file: !1766, line: 565, baseType: !1777, size: 8, offset: 1368)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1765, file: !1766, line: 566, baseType: !1777, size: 8, offset: 1376)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1765, file: !1766, line: 567, baseType: !1777, size: 8, offset: 1384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1765, file: !1766, line: 568, baseType: !1777, size: 8, offset: 1392)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1765, file: !1766, line: 569, baseType: !1777, size: 8, offset: 1400)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1765, file: !1766, line: 570, baseType: !1777, size: 8, offset: 1408)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1765, file: !1766, line: 571, baseType: !1777, size: 8, offset: 1416)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1765, file: !1766, line: 572, baseType: !1777, size: 8, offset: 1424)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1765, file: !1766, line: 573, baseType: !1777, size: 8, offset: 1432)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1765, file: !1766, line: 574, baseType: !1777, size: 8, offset: 1440)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !658, file: !138, line: 3405, baseType: !1933, size: 384)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !138, line: 3352, size: 384, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1933, file: !138, line: 3353, baseType: !694, size: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1933, file: !138, line: 3356, baseType: !1937, size: 192, offset: 192)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1766, line: 578, size: 192, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1937, file: !1766, line: 580, baseType: !648, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1937, file: !1766, line: 581, baseType: !648, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1937, file: !1766, line: 582, baseType: !648, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1937, file: !1766, line: 583, baseType: !648, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1937, file: !1766, line: 584, baseType: !647, size: 8, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1937, file: !1766, line: 585, baseType: !647, size: 8, offset: 136)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1937, file: !1766, line: 586, baseType: !647, size: 8, offset: 144)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1937, file: !1766, line: 587, baseType: !647, size: 8, offset: 152)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1937, file: !1766, line: 588, baseType: !647, size: 8, offset: 160)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1937, file: !1766, line: 589, baseType: !647, size: 8, offset: 168)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1937, file: !1766, line: 590, baseType: !647, size: 8, offset: 176)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mf_xform_decls_data", file: !3, line: 1045, size: 64, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "param_decls", scope: !1951, file: !3, line: 1047, baseType: !655, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!1956 = !{!1957, !1958, !1986, !1988, !2004, !2006, !2008, !2010, !2012, !2014, !2016, !2018, !2020, !2022, !2024, !2026, !2028, !2030, !2032, !2034, !2036, !2186}
!1957 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(name: "pass_mudflap_1", scope: !6, file: !3, line: 1389, type: !1960, isLocal: false, isDefinition: true)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !381, line: 156, size: 640, elements: !1961)
!1961 = !{!1962}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1960, file: !381, line: 158, baseType: !1963, size: 640)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !381, line: 114, size: 640, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1971, !1975, !1977, !1978, !1979, !1981, !1982, !1983, !1984, !1985}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1963, file: !381, line: 117, baseType: !380, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1963, file: !381, line: 121, baseType: !653, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1963, file: !381, line: 125, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!647}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1963, file: !381, line: 130, baseType: !1972, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!10}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1963, file: !381, line: 133, baseType: !1976, size: 64, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1963, file: !381, line: 136, baseType: !1976, size: 64, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1963, file: !381, line: 139, baseType: !648, size: 32, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1963, file: !381, line: 143, baseType: !1980, size: 32, offset: 416)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !388, line: 80, baseType: !387)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1963, file: !381, line: 146, baseType: !10, size: 32, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1963, file: !381, line: 147, baseType: !10, size: 32, offset: 480)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1963, file: !381, line: 148, baseType: !10, size: 32, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1963, file: !381, line: 151, baseType: !10, size: 32, offset: 544)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1963, file: !381, line: 152, baseType: !10, size: 32, offset: 576)
!1986 = !DIGlobalVariableExpression(var: !1987, expr: !DIExpression())
!1987 = distinct !DIGlobalVariable(name: "pass_mudflap_2", scope: !6, file: !3, line: 1408, type: !1960, isLocal: false, isDefinition: true)
!1988 = !DIGlobalVariableExpression(var: !1989, expr: !DIExpression())
!1989 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_tree_mudflap_h", scope: !6, file: !1990, line: 24, type: !1991, isLocal: false, isDefinition: true)
!1990 = !DIFile(filename: "./gt-tree-mudflap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1992, size: 5440, elements: !2002)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1994, line: 69, size: 320, elements: !1995)
!1994 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1995 = !{!1996, !1997, !1998, !1999, !2001}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1993, file: !1994, line: 70, baseType: !652, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1993, file: !1994, line: 71, baseType: !1125, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1993, file: !1994, line: 72, baseType: !1125, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1993, file: !1994, line: 73, baseType: !2000, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1994, line: 65, baseType: !1431)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1993, file: !1994, line: 74, baseType: !2000, size: 64, offset: 256)
!2002 = !{!2003}
!2003 = !DISubrange(count: 17)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(name: "mf_uintptr_type", scope: !6, file: !3, line: 252, type: !655, isLocal: true, isDefinition: true)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(name: "mf_cache_struct_type", scope: !6, file: !3, line: 255, type: !655, isLocal: true, isDefinition: true)
!2008 = !DIGlobalVariableExpression(var: !2009, expr: !DIExpression())
!2009 = distinct !DIGlobalVariable(name: "mf_cache_structptr_type", scope: !6, file: !3, line: 258, type: !655, isLocal: true, isDefinition: true)
!2010 = !DIGlobalVariableExpression(var: !2011, expr: !DIExpression())
!2011 = distinct !DIGlobalVariable(name: "mf_cache_array_decl", scope: !6, file: !3, line: 261, type: !655, isLocal: true, isDefinition: true)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(name: "mf_cache_shift_decl", scope: !6, file: !3, line: 264, type: !655, isLocal: true, isDefinition: true)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(name: "mf_cache_mask_decl", scope: !6, file: !3, line: 267, type: !655, isLocal: true, isDefinition: true)
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(name: "mf_cache_shift_decl_l", scope: !6, file: !3, line: 272, type: !655, isLocal: true, isDefinition: true)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(name: "mf_cache_mask_decl_l", scope: !6, file: !3, line: 275, type: !655, isLocal: true, isDefinition: true)
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(name: "mf_check_fndecl", scope: !6, file: !3, line: 278, type: !655, isLocal: true, isDefinition: true)
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(name: "mf_register_fndecl", scope: !6, file: !3, line: 281, type: !655, isLocal: true, isDefinition: true)
!2024 = !DIGlobalVariableExpression(var: !2025, expr: !DIExpression())
!2025 = distinct !DIGlobalVariable(name: "mf_unregister_fndecl", scope: !6, file: !3, line: 284, type: !655, isLocal: true, isDefinition: true)
!2026 = !DIGlobalVariableExpression(var: !2027, expr: !DIExpression())
!2027 = distinct !DIGlobalVariable(name: "mf_init_fndecl", scope: !6, file: !3, line: 287, type: !655, isLocal: true, isDefinition: true)
!2028 = !DIGlobalVariableExpression(var: !2029, expr: !DIExpression())
!2029 = distinct !DIGlobalVariable(name: "mf_set_options_fndecl", scope: !6, file: !3, line: 290, type: !655, isLocal: true, isDefinition: true)
!2030 = !DIGlobalVariableExpression(var: !2031, expr: !DIExpression())
!2031 = distinct !DIGlobalVariable(name: "deferred_static_decls", scope: !6, file: !3, line: 1249, type: !1474, isLocal: true, isDefinition: true)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(name: "enqueued_call_stmt_chain", scope: !6, file: !3, line: 1252, type: !655, isLocal: true, isDefinition: true)
!2034 = !DIGlobalVariableExpression(var: !2035, expr: !DIExpression())
!2035 = distinct !DIGlobalVariable(name: "marked_trees", scope: !6, file: !3, line: 1212, type: !1411, isLocal: true, isDefinition: true)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(name: "buf_rec", scope: !2038, file: !3, line: 105, type: !2045, isLocal: true, isDefinition: true)
!2038 = distinct !DISubprogram(name: "mf_varname_tree", scope: !3, file: !3, line: 103, type: !2039, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!655, !655}
!2041 = !{!2042, !2043, !2166, !2167, !2168, !2177, !2178, !2179, !2180, !2184}
!2042 = !DILocalVariable(name: "decl", arg: 1, scope: !2038, file: !3, line: 103, type: !655)
!2043 = !DILocalVariable(name: "buf", scope: !2038, file: !3, line: 107, type: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !564, line: 134, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !564, line: 158, size: 448, elements: !2047)
!2047 = !{!2048, !2123, !2124, !2126, !2127, !2128, !2135, !2163, !2164, !2165}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2046, file: !564, line: 161, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !564, line: 99, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 74, size: 2688, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2057, !2066, !2118, !2119}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !2051, file: !564, line: 77, baseType: !910, size: 704)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !2051, file: !564, line: 81, baseType: !910, size: 704, offset: 704)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !2051, file: !564, line: 85, baseType: !2056, size: 64, offset: 1408)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !2051, file: !564, line: 88, baseType: !2058, size: 64, offset: 1472)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !564, line: 58, size: 3904, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2059, file: !564, line: 61, baseType: !2058, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2059, file: !564, line: 69, baseType: !2063, size: 3840, offset: 64)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 3840, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 60)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !2051, file: !564, line: 91, baseType: !2067, size: 64, offset: 1536)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2069, line: 7, baseType: !2070)
!2069 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2071, line: 49, size: 1728, elements: !2072)
!2071 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2088, !2090, !2091, !2092, !2095, !2097, !2098, !2099, !2102, !2104, !2107, !2110, !2111, !2112, !2113, !2114}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2070, file: !2071, line: 51, baseType: !648, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2070, file: !2071, line: 54, baseType: !650, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2070, file: !2071, line: 55, baseType: !650, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2070, file: !2071, line: 56, baseType: !650, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2070, file: !2071, line: 57, baseType: !650, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2070, file: !2071, line: 58, baseType: !650, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2070, file: !2071, line: 59, baseType: !650, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2070, file: !2071, line: 60, baseType: !650, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2070, file: !2071, line: 61, baseType: !650, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2070, file: !2071, line: 64, baseType: !650, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2070, file: !2071, line: 65, baseType: !650, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2070, file: !2071, line: 66, baseType: !650, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2070, file: !2071, line: 68, baseType: !2086, size: 64, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2071, line: 36, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2070, file: !2071, line: 70, baseType: !2089, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2070, file: !2071, line: 72, baseType: !648, size: 32, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2070, file: !2071, line: 73, baseType: !648, size: 32, offset: 928)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2070, file: !2071, line: 74, baseType: !2093, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2094, line: 152, baseType: !711)
!2094 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2070, file: !2071, line: 77, baseType: !2096, size: 16, offset: 1024)
!2096 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2070, file: !2071, line: 78, baseType: !1777, size: 8, offset: 1040)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2070, file: !2071, line: 79, baseType: !753, size: 8, offset: 1048)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2070, file: !2071, line: 81, baseType: !2100, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2071, line: 43, baseType: null)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2070, file: !2071, line: 89, baseType: !2103, size: 64, offset: 1152)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2094, line: 153, baseType: !711)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2070, file: !2071, line: 91, baseType: !2105, size: 64, offset: 1216)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2071, line: 37, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2070, file: !2071, line: 92, baseType: !2108, size: 64, offset: 1280)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2071, line: 38, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2070, file: !2071, line: 93, baseType: !2089, size: 64, offset: 1344)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2070, file: !2071, line: 94, baseType: !652, size: 64, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2070, file: !2071, line: 95, baseType: !1125, size: 64, offset: 1472)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2070, file: !2071, line: 96, baseType: !648, size: 32, offset: 1536)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2070, file: !2071, line: 98, baseType: !2115, size: 160, offset: 1568)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 160, elements: !2116)
!2116 = !{!2117}
!2117 = !DISubrange(count: 20)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !2051, file: !564, line: 94, baseType: !648, size: 32, offset: 1600)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !2051, file: !564, line: 98, baseType: !2120, size: 1024, offset: 1632)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 1024, elements: !2121)
!2121 = !{!2122}
!2122 = !DISubrange(count: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2046, file: !564, line: 164, baseType: !653, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2046, file: !564, line: 167, baseType: !2125, size: 32, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !564, line: 107, baseType: !563)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !2046, file: !564, line: 171, baseType: !648, size: 32, offset: 160)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !2046, file: !564, line: 174, baseType: !648, size: 32, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !2046, file: !564, line: 177, baseType: !2129, size: 64, offset: 224)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !564, line: 119, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 111, size: 64, elements: !2131)
!2131 = !{!2132, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !2130, file: !564, line: 114, baseType: !2133, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !564, line: 51, baseType: !569)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !2130, file: !564, line: 118, baseType: !648, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !2046, file: !564, line: 187, baseType: !2136, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !564, line: 135, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!647, !2044, !2140, !653, !648, !647, !647, !647}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !564, line: 39, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 32, size: 320, elements: !2143)
!2143 = !{!2144, !2145, !2159, !2160, !2162}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !2142, file: !564, line: 34, baseType: !653, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !2142, file: !564, line: 35, baseType: !2146, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2148, line: 52, baseType: !2149)
!2148 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2150, line: 32, baseType: !2151)
!2150 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 105, baseType: !2152)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2153, size: 192, elements: !754)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2158}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2153, file: !3, baseType: !10, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2153, file: !3, baseType: !10, size: 32, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2153, file: !3, baseType: !652, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2153, file: !3, baseType: !652, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !2142, file: !564, line: 36, baseType: !648, size: 32, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2142, file: !564, line: 37, baseType: !2161, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2142, file: !564, line: 38, baseType: !1014, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !2046, file: !564, line: 190, baseType: !647, size: 8, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !2046, file: !564, line: 193, baseType: !647, size: 8, offset: 392)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !2046, file: !564, line: 197, baseType: !647, size: 8, offset: 400)
!2166 = !DILocalVariable(name: "buf_contents", scope: !2038, file: !3, line: 108, type: !653)
!2167 = !DILocalVariable(name: "result", scope: !2038, file: !3, line: 109, type: !655)
!2168 = !DILocalVariable(name: "xloc", scope: !2169, file: !3, line: 122, type: !2170)
!2169 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 121, column: 3)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !781, line: 52, baseType: !2171)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 40, size: 192, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2171, file: !781, line: 43, baseType: !653, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2171, file: !781, line: 46, baseType: !648, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !2171, file: !781, line: 48, baseType: !648, size: 32, offset: 96)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2171, file: !781, line: 51, baseType: !647, size: 8, offset: 128)
!2177 = !DILocalVariable(name: "sourcefile", scope: !2169, file: !3, line: 123, type: !653)
!2178 = !DILocalVariable(name: "sourceline", scope: !2169, file: !3, line: 124, type: !10)
!2179 = !DILocalVariable(name: "sourcecolumn", scope: !2169, file: !3, line: 125, type: !10)
!2180 = !DILocalVariable(name: "funcname", scope: !2181, file: !3, line: 153, type: !653)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 152, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 149, column: 5)
!2183 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 148, column: 7)
!2184 = !DILocalVariable(name: "declname", scope: !2185, file: !3, line: 168, type: !653)
!2185 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 167, column: 3)
!2186 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression())
!2187 = distinct !DIGlobalVariable(name: "initialized", scope: !2038, file: !3, line: 106, type: !648, isLocal: true, isDefinition: true)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194}
!2189 = !DILocalVariable(name: "mf_const_string_type", scope: !2, file: !3, line: 359, type: !655)
!2190 = !DILocalVariable(name: "mf_cache_array_type", scope: !2, file: !3, line: 360, type: !655)
!2191 = !DILocalVariable(name: "mf_check_register_fntype", scope: !2, file: !3, line: 361, type: !655)
!2192 = !DILocalVariable(name: "mf_unregister_fntype", scope: !2, file: !3, line: 362, type: !655)
!2193 = !DILocalVariable(name: "mf_init_fntype", scope: !2, file: !3, line: 363, type: !655)
!2194 = !DILocalVariable(name: "mf_set_options_fntype", scope: !2, file: !3, line: 364, type: !655)
!2195 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2196 = !{i32 2, !"Dwarf Version", i32 4}
!2197 = !{i32 2, !"Debug Info Version", i32 3}
!2198 = !{i32 1, !"wchar_size", i32 4}
!2199 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2200 = distinct !DISubprogram(name: "vprintf", scope: !2201, file: !2201, line: 39, type: !2202, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2206)
!2201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!648, !2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2206 = !{!2207, !2208}
!2207 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2200, file: !2201, line: 39, type: !2204)
!2208 = !DILocalVariable(name: "__arg", arg: 2, scope: !2200, file: !2201, line: 39, type: !2205)
!2209 = !DILocation(line: 0, scope: !2200)
!2210 = !DILocation(line: 41, column: 20, scope: !2200)
!2211 = !DILocation(line: 41, column: 10, scope: !2200)
!2212 = !DILocation(line: 41, column: 3, scope: !2200)
!2213 = distinct !DISubprogram(name: "getchar", scope: !2201, file: !2201, line: 47, type: !2214, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!648}
!2216 = !{}
!2217 = !DILocation(line: 49, column: 16, scope: !2213)
!2218 = !DILocation(line: 49, column: 10, scope: !2213)
!2219 = !DILocation(line: 49, column: 3, scope: !2213)
!2220 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2201, file: !2201, line: 56, type: !2221, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!648, !2067}
!2223 = !{!2224}
!2224 = !DILocalVariable(name: "__fp", arg: 1, scope: !2220, file: !2201, line: 56, type: !2067)
!2225 = !DILocation(line: 0, scope: !2220)
!2226 = !DILocation(line: 58, column: 10, scope: !2220)
!2227 = !DILocation(line: 58, column: 3, scope: !2220)
!2228 = distinct !DISubprogram(name: "getc_unlocked", scope: !2201, file: !2201, line: 66, type: !2221, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2229)
!2229 = !{!2230}
!2230 = !DILocalVariable(name: "__fp", arg: 1, scope: !2228, file: !2201, line: 66, type: !2067)
!2231 = !DILocation(line: 0, scope: !2228)
!2232 = !DILocation(line: 68, column: 10, scope: !2228)
!2233 = !DILocation(line: 68, column: 3, scope: !2228)
!2234 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2201, file: !2201, line: 73, type: !2214, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2216)
!2235 = !DILocation(line: 75, column: 10, scope: !2234)
!2236 = !DILocation(line: 75, column: 3, scope: !2234)
!2237 = distinct !DISubprogram(name: "putchar", scope: !2201, file: !2201, line: 82, type: !2238, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!648, !648}
!2240 = !{!2241}
!2241 = !DILocalVariable(name: "__c", arg: 1, scope: !2237, file: !2201, line: 82, type: !648)
!2242 = !DILocation(line: 0, scope: !2237)
!2243 = !DILocation(line: 84, column: 21, scope: !2237)
!2244 = !DILocation(line: 84, column: 10, scope: !2237)
!2245 = !DILocation(line: 84, column: 3, scope: !2237)
!2246 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2201, file: !2201, line: 91, type: !2247, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!648, !648, !2067}
!2249 = !{!2250, !2251}
!2250 = !DILocalVariable(name: "__c", arg: 1, scope: !2246, file: !2201, line: 91, type: !648)
!2251 = !DILocalVariable(name: "__stream", arg: 2, scope: !2246, file: !2201, line: 91, type: !2067)
!2252 = !DILocation(line: 0, scope: !2246)
!2253 = !DILocation(line: 93, column: 10, scope: !2246)
!2254 = !DILocation(line: 93, column: 3, scope: !2246)
!2255 = distinct !DISubprogram(name: "putc_unlocked", scope: !2201, file: !2201, line: 101, type: !2247, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2256)
!2256 = !{!2257, !2258}
!2257 = !DILocalVariable(name: "__c", arg: 1, scope: !2255, file: !2201, line: 101, type: !648)
!2258 = !DILocalVariable(name: "__stream", arg: 2, scope: !2255, file: !2201, line: 101, type: !2067)
!2259 = !DILocation(line: 0, scope: !2255)
!2260 = !DILocation(line: 103, column: 10, scope: !2255)
!2261 = !DILocation(line: 103, column: 3, scope: !2255)
!2262 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2201, file: !2201, line: 108, type: !2238, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2263)
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "__c", arg: 1, scope: !2262, file: !2201, line: 108, type: !648)
!2265 = !DILocation(line: 0, scope: !2262)
!2266 = !DILocation(line: 110, column: 10, scope: !2262)
!2267 = !DILocation(line: 110, column: 3, scope: !2262)
!2268 = distinct !DISubprogram(name: "getline", scope: !2201, file: !2201, line: 118, type: !2269, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2273)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2271, !649, !2272, !2067}
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2094, line: 193, baseType: !711)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!2273 = !{!2274, !2275, !2276}
!2274 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2268, file: !2201, line: 118, type: !649)
!2275 = !DILocalVariable(name: "__n", arg: 2, scope: !2268, file: !2201, line: 118, type: !2272)
!2276 = !DILocalVariable(name: "__stream", arg: 3, scope: !2268, file: !2201, line: 118, type: !2067)
!2277 = !DILocation(line: 0, scope: !2268)
!2278 = !DILocation(line: 120, column: 10, scope: !2268)
!2279 = !DILocation(line: 120, column: 3, scope: !2268)
!2280 = distinct !DISubprogram(name: "feof_unlocked", scope: !2201, file: !2201, line: 128, type: !2221, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2281)
!2281 = !{!2282}
!2282 = !DILocalVariable(name: "__stream", arg: 1, scope: !2280, file: !2201, line: 128, type: !2067)
!2283 = !DILocation(line: 0, scope: !2280)
!2284 = !DILocation(line: 130, column: 10, scope: !2280)
!2285 = !DILocation(line: 130, column: 3, scope: !2280)
!2286 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2201, file: !2201, line: 135, type: !2221, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2287)
!2287 = !{!2288}
!2288 = !DILocalVariable(name: "__stream", arg: 1, scope: !2286, file: !2201, line: 135, type: !2067)
!2289 = !DILocation(line: 0, scope: !2286)
!2290 = !DILocation(line: 137, column: 10, scope: !2286)
!2291 = !DILocation(line: 137, column: 3, scope: !2286)
!2292 = distinct !DISubprogram(name: "tolower", scope: !2293, file: !2293, line: 207, type: !2238, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2294)
!2293 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2294 = !{!2295}
!2295 = !DILocalVariable(name: "__c", arg: 1, scope: !2292, file: !2293, line: 207, type: !648)
!2296 = !DILocation(line: 0, scope: !2292)
!2297 = !DILocation(line: 209, column: 22, scope: !2292)
!2298 = !DILocation(line: 209, column: 39, scope: !2292)
!2299 = !DILocation(line: 209, column: 38, scope: !2292)
!2300 = !DILocation(line: 209, column: 37, scope: !2292)
!2301 = !DILocation(line: 209, column: 10, scope: !2292)
!2302 = !DILocation(line: 209, column: 3, scope: !2292)
!2303 = distinct !DISubprogram(name: "toupper", scope: !2293, file: !2293, line: 213, type: !2238, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2304)
!2304 = !{!2305}
!2305 = !DILocalVariable(name: "__c", arg: 1, scope: !2303, file: !2293, line: 213, type: !648)
!2306 = !DILocation(line: 0, scope: !2303)
!2307 = !DILocation(line: 215, column: 22, scope: !2303)
!2308 = !DILocation(line: 215, column: 39, scope: !2303)
!2309 = !DILocation(line: 215, column: 38, scope: !2303)
!2310 = !DILocation(line: 215, column: 37, scope: !2303)
!2311 = !DILocation(line: 215, column: 10, scope: !2303)
!2312 = !DILocation(line: 215, column: 3, scope: !2303)
!2313 = distinct !DISubprogram(name: "atoi", scope: !2314, file: !2314, line: 361, type: !2315, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2317)
!2314 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!648, !653}
!2317 = !{!2318}
!2318 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2313, file: !2314, line: 361, type: !653)
!2319 = !DILocation(line: 0, scope: !2313)
!2320 = !DILocation(line: 363, column: 16, scope: !2313)
!2321 = !DILocation(line: 363, column: 10, scope: !2313)
!2322 = !DILocation(line: 363, column: 3, scope: !2313)
!2323 = distinct !DISubprogram(name: "atol", scope: !2314, file: !2314, line: 366, type: !2324, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!711, !653}
!2326 = !{!2327}
!2327 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2323, file: !2314, line: 366, type: !653)
!2328 = !DILocation(line: 0, scope: !2323)
!2329 = !DILocation(line: 368, column: 10, scope: !2323)
!2330 = !DILocation(line: 368, column: 3, scope: !2323)
!2331 = distinct !DISubprogram(name: "atoll", scope: !2314, file: !2314, line: 373, type: !2332, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2335)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!2334, !653}
!2334 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2335 = !{!2336}
!2336 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2331, file: !2314, line: 373, type: !653)
!2337 = !DILocation(line: 0, scope: !2331)
!2338 = !DILocation(line: 375, column: 10, scope: !2331)
!2339 = !DILocation(line: 375, column: 3, scope: !2331)
!2340 = distinct !DISubprogram(name: "bsearch", scope: !2341, file: !2341, line: 20, type: !2342, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2345)
!2341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!652, !1422, !1422, !1125, !1125, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2314, line: 808, baseType: !1426)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2346 = !DILocalVariable(name: "__key", arg: 1, scope: !2340, file: !2341, line: 20, type: !1422)
!2347 = !DILocalVariable(name: "__base", arg: 2, scope: !2340, file: !2341, line: 20, type: !1422)
!2348 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2340, file: !2341, line: 20, type: !1125)
!2349 = !DILocalVariable(name: "__size", arg: 4, scope: !2340, file: !2341, line: 20, type: !1125)
!2350 = !DILocalVariable(name: "__compar", arg: 5, scope: !2340, file: !2341, line: 21, type: !2344)
!2351 = !DILocalVariable(name: "__l", scope: !2340, file: !2341, line: 23, type: !1125)
!2352 = !DILocalVariable(name: "__u", scope: !2340, file: !2341, line: 23, type: !1125)
!2353 = !DILocalVariable(name: "__idx", scope: !2340, file: !2341, line: 23, type: !1125)
!2354 = !DILocalVariable(name: "__p", scope: !2340, file: !2341, line: 24, type: !1422)
!2355 = !DILocalVariable(name: "__comparison", scope: !2340, file: !2341, line: 25, type: !648)
!2356 = !DILocation(line: 0, scope: !2340)
!2357 = !DILocation(line: 29, column: 3, scope: !2340)
!2358 = !DILocation(line: 27, column: 7, scope: !2340)
!2359 = !DILocation(line: 29, column: 14, scope: !2340)
!2360 = !DILocation(line: 31, column: 20, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2340, file: !2341, line: 30, column: 5)
!2362 = !DILocation(line: 31, column: 27, scope: !2361)
!2363 = !DILocation(line: 32, column: 56, scope: !2361)
!2364 = !DILocation(line: 32, column: 47, scope: !2361)
!2365 = !DILocation(line: 33, column: 22, scope: !2361)
!2366 = !DILocation(line: 34, column: 24, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2361, file: !2341, line: 34, column: 11)
!2368 = !DILocation(line: 34, column: 11, scope: !2361)
!2369 = !DILocation(line: 36, column: 29, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !2341, line: 36, column: 16)
!2371 = !DILocation(line: 36, column: 16, scope: !2367)
!2372 = !DILocation(line: 37, column: 14, scope: !2370)
!2373 = distinct !{!2373, !2357, !2374}
!2374 = !DILocation(line: 40, column: 5, scope: !2340)
!2375 = !DILocation(line: 43, column: 1, scope: !2340)
!2376 = distinct !DISubprogram(name: "atof", scope: !2377, file: !2377, line: 25, type: !2378, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2381)
!2377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2380, !653}
!2380 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2381 = !{!2382}
!2382 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2376, file: !2377, line: 25, type: !653)
!2383 = !DILocation(line: 0, scope: !2376)
!2384 = !DILocation(line: 27, column: 10, scope: !2376)
!2385 = !DILocation(line: 27, column: 3, scope: !2376)
!2386 = distinct !DISubprogram(name: "strtoimax", scope: !2387, file: !2387, line: 324, type: !2388, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2394)
!2387 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2390, !2204, !2393, !648}
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2391, line: 101, baseType: !2392)
!2391 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2094, line: 72, baseType: !711)
!2393 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!2394 = !{!2395, !2396, !2397}
!2395 = !DILocalVariable(name: "nptr", arg: 1, scope: !2386, file: !2387, line: 324, type: !2204)
!2396 = !DILocalVariable(name: "endptr", arg: 2, scope: !2386, file: !2387, line: 324, type: !2393)
!2397 = !DILocalVariable(name: "base", arg: 3, scope: !2386, file: !2387, line: 324, type: !648)
!2398 = !DILocation(line: 0, scope: !2386)
!2399 = !DILocation(line: 327, column: 10, scope: !2386)
!2400 = !DILocation(line: 327, column: 3, scope: !2386)
!2401 = distinct !DISubprogram(name: "strtoumax", scope: !2387, file: !2387, line: 336, type: !2402, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2406)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2404, !2204, !2393, !648}
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2391, line: 102, baseType: !2405)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2094, line: 73, baseType: !709)
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "nptr", arg: 1, scope: !2401, file: !2387, line: 336, type: !2204)
!2408 = !DILocalVariable(name: "endptr", arg: 2, scope: !2401, file: !2387, line: 336, type: !2393)
!2409 = !DILocalVariable(name: "base", arg: 3, scope: !2401, file: !2387, line: 336, type: !648)
!2410 = !DILocation(line: 0, scope: !2401)
!2411 = !DILocation(line: 339, column: 10, scope: !2401)
!2412 = !DILocation(line: 339, column: 3, scope: !2401)
!2413 = distinct !DISubprogram(name: "wcstoimax", scope: !2387, file: !2387, line: 348, type: !2414, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2423)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2390, !2416, !2420, !648}
!2416 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2417)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2387, line: 34, baseType: !648)
!2420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2421)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2423 = !{!2424, !2425, !2426}
!2424 = !DILocalVariable(name: "nptr", arg: 1, scope: !2413, file: !2387, line: 348, type: !2416)
!2425 = !DILocalVariable(name: "endptr", arg: 2, scope: !2413, file: !2387, line: 348, type: !2420)
!2426 = !DILocalVariable(name: "base", arg: 3, scope: !2413, file: !2387, line: 348, type: !648)
!2427 = !DILocation(line: 0, scope: !2413)
!2428 = !DILocation(line: 351, column: 10, scope: !2413)
!2429 = !DILocation(line: 351, column: 3, scope: !2413)
!2430 = distinct !DISubprogram(name: "wcstoumax", scope: !2387, file: !2387, line: 362, type: !2431, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!2404, !2416, !2420, !648}
!2433 = !{!2434, !2435, !2436}
!2434 = !DILocalVariable(name: "nptr", arg: 1, scope: !2430, file: !2387, line: 362, type: !2416)
!2435 = !DILocalVariable(name: "endptr", arg: 2, scope: !2430, file: !2387, line: 362, type: !2420)
!2436 = !DILocalVariable(name: "base", arg: 3, scope: !2430, file: !2387, line: 362, type: !648)
!2437 = !DILocation(line: 0, scope: !2430)
!2438 = !DILocation(line: 365, column: 10, scope: !2430)
!2439 = !DILocation(line: 365, column: 3, scope: !2430)
!2440 = distinct !DISubprogram(name: "stat", scope: !2441, file: !2441, line: 453, type: !2442, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2479)
!2441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!648, !653, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2446, line: 46, size: 1152, elements: !2447)
!2446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2447 = !{!2448, !2450, !2452, !2454, !2456, !2458, !2460, !2461, !2462, !2463, !2465, !2467, !2475, !2476, !2477}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2445, file: !2446, line: 48, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2094, line: 145, baseType: !709)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2445, file: !2446, line: 53, baseType: !2451, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2094, line: 148, baseType: !709)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2445, file: !2446, line: 61, baseType: !2453, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2094, line: 151, baseType: !709)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2445, file: !2446, line: 62, baseType: !2455, size: 32, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2094, line: 150, baseType: !10)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2445, file: !2446, line: 64, baseType: !2457, size: 32, offset: 224)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2094, line: 146, baseType: !10)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2445, file: !2446, line: 65, baseType: !2459, size: 32, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2094, line: 147, baseType: !10)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2445, file: !2446, line: 67, baseType: !648, size: 32, offset: 288)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2445, file: !2446, line: 69, baseType: !2449, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2445, file: !2446, line: 74, baseType: !2093, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2445, file: !2446, line: 78, baseType: !2464, size: 64, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2094, line: 174, baseType: !711)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2445, file: !2446, line: 80, baseType: !2466, size: 64, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2094, line: 179, baseType: !711)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2445, file: !2446, line: 91, baseType: !2468, size: 128, offset: 576)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2469, line: 10, size: 128, elements: !2470)
!2469 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2470 = !{!2471, !2473}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2468, file: !2469, line: 12, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2094, line: 160, baseType: !711)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2468, file: !2469, line: 16, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2094, line: 196, baseType: !711)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2445, file: !2446, line: 92, baseType: !2468, size: 128, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2445, file: !2446, line: 93, baseType: !2468, size: 128, offset: 832)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2445, file: !2446, line: 106, baseType: !2478, size: 192, offset: 960)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2474, size: 192, elements: !729)
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "__path", arg: 1, scope: !2440, file: !2441, line: 453, type: !653)
!2481 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2440, file: !2441, line: 453, type: !2444)
!2482 = !DILocation(line: 0, scope: !2440)
!2483 = !DILocation(line: 455, column: 10, scope: !2440)
!2484 = !DILocation(line: 455, column: 3, scope: !2440)
!2485 = distinct !DISubprogram(name: "lstat", scope: !2441, file: !2441, line: 460, type: !2442, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2486)
!2486 = !{!2487, !2488}
!2487 = !DILocalVariable(name: "__path", arg: 1, scope: !2485, file: !2441, line: 460, type: !653)
!2488 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2485, file: !2441, line: 460, type: !2444)
!2489 = !DILocation(line: 0, scope: !2485)
!2490 = !DILocation(line: 462, column: 10, scope: !2485)
!2491 = !DILocation(line: 462, column: 3, scope: !2485)
!2492 = distinct !DISubprogram(name: "fstat", scope: !2441, file: !2441, line: 467, type: !2493, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!648, !648, !2444}
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "__fd", arg: 1, scope: !2492, file: !2441, line: 467, type: !648)
!2497 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2492, file: !2441, line: 467, type: !2444)
!2498 = !DILocation(line: 0, scope: !2492)
!2499 = !DILocation(line: 469, column: 10, scope: !2492)
!2500 = !DILocation(line: 469, column: 3, scope: !2492)
!2501 = distinct !DISubprogram(name: "fstatat", scope: !2441, file: !2441, line: 474, type: !2502, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!648, !648, !653, !2444, !648}
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DILocalVariable(name: "__fd", arg: 1, scope: !2501, file: !2441, line: 474, type: !648)
!2506 = !DILocalVariable(name: "__filename", arg: 2, scope: !2501, file: !2441, line: 474, type: !653)
!2507 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2501, file: !2441, line: 474, type: !2444)
!2508 = !DILocalVariable(name: "__flag", arg: 4, scope: !2501, file: !2441, line: 474, type: !648)
!2509 = !DILocation(line: 0, scope: !2501)
!2510 = !DILocation(line: 477, column: 10, scope: !2501)
!2511 = !DILocation(line: 477, column: 3, scope: !2501)
!2512 = distinct !DISubprogram(name: "mknod", scope: !2441, file: !2441, line: 483, type: !2513, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!648, !653, !2455, !2449}
!2515 = !{!2516, !2517, !2518}
!2516 = !DILocalVariable(name: "__path", arg: 1, scope: !2512, file: !2441, line: 483, type: !653)
!2517 = !DILocalVariable(name: "__mode", arg: 2, scope: !2512, file: !2441, line: 483, type: !2455)
!2518 = !DILocalVariable(name: "__dev", arg: 3, scope: !2512, file: !2441, line: 483, type: !2449)
!2519 = !DILocation(line: 0, scope: !2512)
!2520 = !DILocation(line: 485, column: 10, scope: !2512)
!2521 = !DILocation(line: 485, column: 3, scope: !2512)
!2522 = distinct !DISubprogram(name: "mknodat", scope: !2441, file: !2441, line: 491, type: !2523, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!648, !648, !653, !2455, !2449}
!2525 = !{!2526, !2527, !2528, !2529}
!2526 = !DILocalVariable(name: "__fd", arg: 1, scope: !2522, file: !2441, line: 491, type: !648)
!2527 = !DILocalVariable(name: "__path", arg: 2, scope: !2522, file: !2441, line: 491, type: !653)
!2528 = !DILocalVariable(name: "__mode", arg: 3, scope: !2522, file: !2441, line: 491, type: !2455)
!2529 = !DILocalVariable(name: "__dev", arg: 4, scope: !2522, file: !2441, line: 491, type: !2449)
!2530 = !DILocation(line: 0, scope: !2522)
!2531 = !DILocation(line: 494, column: 10, scope: !2522)
!2532 = !DILocation(line: 494, column: 3, scope: !2522)
!2533 = distinct !DISubprogram(name: "stat64", scope: !2441, file: !2441, line: 502, type: !2534, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2556)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!648, !653, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2446, line: 119, size: 1152, elements: !2538)
!2538 = !{!2539, !2540, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2552, !2553, !2554, !2555}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2537, file: !2446, line: 121, baseType: !2449, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2537, file: !2446, line: 123, baseType: !2541, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2094, line: 149, baseType: !709)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2537, file: !2446, line: 124, baseType: !2453, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2537, file: !2446, line: 125, baseType: !2455, size: 32, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2537, file: !2446, line: 132, baseType: !2457, size: 32, offset: 224)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2537, file: !2446, line: 133, baseType: !2459, size: 32, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2537, file: !2446, line: 135, baseType: !648, size: 32, offset: 288)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2537, file: !2446, line: 136, baseType: !2449, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2537, file: !2446, line: 137, baseType: !2093, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2537, file: !2446, line: 143, baseType: !2464, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2537, file: !2446, line: 144, baseType: !2551, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2094, line: 180, baseType: !711)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2537, file: !2446, line: 152, baseType: !2468, size: 128, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2537, file: !2446, line: 153, baseType: !2468, size: 128, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2537, file: !2446, line: 154, baseType: !2468, size: 128, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2537, file: !2446, line: 164, baseType: !2478, size: 192, offset: 960)
!2556 = !{!2557, !2558}
!2557 = !DILocalVariable(name: "__path", arg: 1, scope: !2533, file: !2441, line: 502, type: !653)
!2558 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2533, file: !2441, line: 502, type: !2536)
!2559 = !DILocation(line: 0, scope: !2533)
!2560 = !DILocation(line: 504, column: 10, scope: !2533)
!2561 = !DILocation(line: 504, column: 3, scope: !2533)
!2562 = distinct !DISubprogram(name: "lstat64", scope: !2441, file: !2441, line: 509, type: !2534, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2563)
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "__path", arg: 1, scope: !2562, file: !2441, line: 509, type: !653)
!2565 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2562, file: !2441, line: 509, type: !2536)
!2566 = !DILocation(line: 0, scope: !2562)
!2567 = !DILocation(line: 511, column: 10, scope: !2562)
!2568 = !DILocation(line: 511, column: 3, scope: !2562)
!2569 = distinct !DISubprogram(name: "fstat64", scope: !2441, file: !2441, line: 516, type: !2570, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!648, !648, !2536}
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "__fd", arg: 1, scope: !2569, file: !2441, line: 516, type: !648)
!2574 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2569, file: !2441, line: 516, type: !2536)
!2575 = !DILocation(line: 0, scope: !2569)
!2576 = !DILocation(line: 518, column: 10, scope: !2569)
!2577 = !DILocation(line: 518, column: 3, scope: !2569)
!2578 = distinct !DISubprogram(name: "fstatat64", scope: !2441, file: !2441, line: 523, type: !2579, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!648, !648, !653, !2536, !648}
!2581 = !{!2582, !2583, !2584, !2585}
!2582 = !DILocalVariable(name: "__fd", arg: 1, scope: !2578, file: !2441, line: 523, type: !648)
!2583 = !DILocalVariable(name: "__filename", arg: 2, scope: !2578, file: !2441, line: 523, type: !653)
!2584 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2578, file: !2441, line: 523, type: !2536)
!2585 = !DILocalVariable(name: "__flag", arg: 4, scope: !2578, file: !2441, line: 523, type: !648)
!2586 = !DILocation(line: 0, scope: !2578)
!2587 = !DILocation(line: 526, column: 10, scope: !2578)
!2588 = !DILocation(line: 526, column: 3, scope: !2578)
!2589 = !DILocation(line: 366, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2, file: !3, line: 366, column: 7)
!2591 = !DILocation(line: 366, column: 7, scope: !2)
!2592 = !DILocation(line: 368, column: 8, scope: !2)
!2593 = !DILocation(line: 370, column: 38, scope: !2)
!2594 = !DILocation(line: 370, column: 53, scope: !2)
!2595 = !DILocation(line: 370, column: 21, scope: !2)
!2596 = !DILocation(line: 370, column: 19, scope: !2)
!2597 = !DILocation(line: 374, column: 28, scope: !2)
!2598 = !DILocation(line: 373, column: 27, scope: !2)
!2599 = !DILocation(line: 373, column: 7, scope: !2)
!2600 = !DILocation(line: 0, scope: !2)
!2601 = !DILocation(line: 376, column: 56, scope: !2)
!2602 = !DILocation(line: 376, column: 26, scope: !2)
!2603 = !DILocation(line: 376, column: 24, scope: !2)
!2604 = !DILocation(line: 377, column: 29, scope: !2)
!2605 = !DILocation(line: 377, column: 27, scope: !2)
!2606 = !DILocation(line: 378, column: 43, scope: !2)
!2607 = !DILocation(line: 378, column: 25, scope: !2)
!2608 = !DILocation(line: 380, column: 5, scope: !2)
!2609 = !DILocation(line: 383, column: 5, scope: !2)
!2610 = !DILocation(line: 386, column: 5, scope: !2)
!2611 = !DILocation(line: 388, column: 5, scope: !2)
!2612 = !DILocation(line: 390, column: 25, scope: !2)
!2613 = !DILocation(line: 390, column: 23, scope: !2)
!2614 = !DILocation(line: 393, column: 42, scope: !2)
!2615 = !DILocation(line: 392, column: 25, scope: !2)
!2616 = !DILocation(line: 392, column: 23, scope: !2)
!2617 = !DILocation(line: 395, column: 41, scope: !2)
!2618 = !DILocation(line: 394, column: 24, scope: !2)
!2619 = !DILocation(line: 394, column: 22, scope: !2)
!2620 = !DILocation(line: 398, column: 12, scope: !2)
!2621 = !DILocation(line: 398, column: 3, scope: !2)
!2622 = !DILocation(line: 399, column: 12, scope: !2)
!2623 = !DILocation(line: 399, column: 3, scope: !2)
!2624 = !DILocation(line: 400, column: 12, scope: !2)
!2625 = !DILocation(line: 400, column: 3, scope: !2)
!2626 = !DILocation(line: 401, column: 21, scope: !2)
!2627 = !DILocation(line: 401, column: 19, scope: !2)
!2628 = !DILocation(line: 403, column: 24, scope: !2)
!2629 = !DILocation(line: 403, column: 22, scope: !2)
!2630 = !DILocation(line: 405, column: 26, scope: !2)
!2631 = !DILocation(line: 405, column: 24, scope: !2)
!2632 = !DILocation(line: 407, column: 20, scope: !2)
!2633 = !DILocation(line: 407, column: 18, scope: !2)
!2634 = !DILocation(line: 409, column: 27, scope: !2)
!2635 = !DILocation(line: 409, column: 25, scope: !2)
!2636 = !DILocation(line: 411, column: 1, scope: !2)
!2637 = distinct !DISubprogram(name: "mf_make_mf_cache_struct_type", scope: !3, file: !3, line: 314, type: !2039, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2638)
!2638 = !{!2639, !2640, !2641, !2642}
!2639 = !DILocalVariable(name: "field_type", arg: 1, scope: !2637, file: !3, line: 314, type: !655)
!2640 = !DILocalVariable(name: "fieldlo", scope: !2637, file: !3, line: 319, type: !655)
!2641 = !DILocalVariable(name: "fieldhi", scope: !2637, file: !3, line: 321, type: !655)
!2642 = !DILocalVariable(name: "struct_type", scope: !2637, file: !3, line: 324, type: !655)
!2643 = !DILocation(line: 0, scope: !2637)
!2644 = !DILocation(line: 319, column: 18, scope: !2637)
!2645 = !DILocation(line: 321, column: 18, scope: !2637)
!2646 = !DILocation(line: 324, column: 22, scope: !2637)
!2647 = !DILocation(line: 325, column: 3, scope: !2637)
!2648 = !DILocation(line: 325, column: 26, scope: !2637)
!2649 = !DILocation(line: 326, column: 3, scope: !2637)
!2650 = !DILocation(line: 326, column: 26, scope: !2637)
!2651 = !DILocation(line: 327, column: 3, scope: !2637)
!2652 = !DILocation(line: 327, column: 24, scope: !2637)
!2653 = !DILocation(line: 328, column: 3, scope: !2637)
!2654 = !DILocation(line: 328, column: 29, scope: !2637)
!2655 = !DILocation(line: 329, column: 29, scope: !2637)
!2656 = !DILocation(line: 329, column: 3, scope: !2637)
!2657 = !DILocation(line: 329, column: 27, scope: !2637)
!2658 = !DILocation(line: 330, column: 3, scope: !2637)
!2659 = !DILocation(line: 332, column: 3, scope: !2637)
!2660 = distinct !DISubprogram(name: "mf_make_builtin", scope: !3, file: !3, line: 296, type: !2661, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!655, !137, !653, !655}
!2663 = !{!2664, !2665, !2666, !2667}
!2664 = !DILocalVariable(name: "category", arg: 1, scope: !2660, file: !3, line: 296, type: !137)
!2665 = !DILocalVariable(name: "name", arg: 2, scope: !2660, file: !3, line: 296, type: !653)
!2666 = !DILocalVariable(name: "type", arg: 3, scope: !2660, file: !3, line: 296, type: !655)
!2667 = !DILocalVariable(name: "decl", scope: !2660, file: !3, line: 298, type: !655)
!2668 = !DILocation(line: 0, scope: !2660)
!2669 = !DILocation(line: 298, column: 24, scope: !2660)
!2670 = !DILocation(line: 298, column: 15, scope: !2660)
!2671 = !DILocation(line: 300, column: 3, scope: !2660)
!2672 = !DILocation(line: 300, column: 22, scope: !2660)
!2673 = !DILocation(line: 301, column: 3, scope: !2660)
!2674 = !DILocation(line: 301, column: 24, scope: !2660)
!2675 = !DILocation(line: 302, column: 20, scope: !2660)
!2676 = !DILocation(line: 302, column: 3, scope: !2660)
!2677 = !DILocation(line: 304, column: 26, scope: !2660)
!2678 = !DILocation(line: 306, column: 25, scope: !2660)
!2679 = !DILocation(line: 307, column: 3, scope: !2660)
!2680 = distinct !DISubprogram(name: "mf_mark", scope: !3, file: !3, line: 1215, type: !2039, scopeLine: 1216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2681)
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "t", arg: 1, scope: !2680, file: !3, line: 1215, type: !655)
!2683 = !DILocalVariable(name: "slot", scope: !2680, file: !3, line: 1217, type: !1435)
!2684 = !DILocation(line: 0, scope: !2680)
!2685 = !DILocation(line: 1219, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1219, column: 7)
!2687 = !DILocation(line: 1219, column: 20, scope: !2686)
!2688 = !DILocation(line: 1219, column: 7, scope: !2680)
!2689 = !DILocation(line: 1220, column: 20, scope: !2686)
!2690 = !DILocation(line: 1220, column: 18, scope: !2686)
!2691 = !DILocation(line: 1220, column: 5, scope: !2686)
!2692 = !DILocation(line: 1223, column: 26, scope: !2680)
!2693 = !DILocation(line: 1223, column: 40, scope: !2680)
!2694 = !DILocation(line: 1223, column: 10, scope: !2680)
!2695 = !DILocation(line: 1224, column: 9, scope: !2680)
!2696 = !DILocation(line: 1225, column: 3, scope: !2680)
!2697 = distinct !DISubprogram(name: "mf_marked_p", scope: !3, file: !3, line: 1229, type: !2698, scopeLine: 1230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!648, !655}
!2700 = !{!2701, !2702}
!2701 = !DILocalVariable(name: "t", arg: 1, scope: !2697, file: !3, line: 1229, type: !655)
!2702 = !DILocalVariable(name: "entry", scope: !2697, file: !3, line: 1231, type: !652)
!2703 = !DILocation(line: 0, scope: !2697)
!2704 = !DILocation(line: 1233, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1233, column: 7)
!2706 = !DILocation(line: 1233, column: 20, scope: !2705)
!2707 = !DILocation(line: 1233, column: 7, scope: !2697)
!2708 = !DILocation(line: 1236, column: 36, scope: !2697)
!2709 = !DILocation(line: 1236, column: 11, scope: !2697)
!2710 = !DILocation(line: 1237, column: 17, scope: !2697)
!2711 = !DILocation(line: 1237, column: 3, scope: !2697)
!2712 = !DILocation(line: 1238, column: 1, scope: !2697)
!2713 = distinct !DISubprogram(name: "mudflap_enqueue_decl", scope: !3, file: !3, line: 1273, type: !2714, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !655}
!2716 = !{!2717}
!2717 = !DILocalVariable(name: "obj", arg: 1, scope: !2713, file: !3, line: 1273, type: !655)
!2718 = !DILocation(line: 0, scope: !2713)
!2719 = !DILocation(line: 1275, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1275, column: 7)
!2721 = !DILocation(line: 1275, column: 7, scope: !2713)
!2722 = !DILocation(line: 1283, column: 7, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1283, column: 7)
!2724 = !DILocation(line: 1283, column: 20, scope: !2723)
!2725 = !DILocation(line: 1283, column: 23, scope: !2723)
!2726 = !DILocation(line: 1283, column: 43, scope: !2723)
!2727 = !DILocation(line: 1283, column: 46, scope: !2723)
!2728 = !DILocation(line: 1283, column: 7, scope: !2713)
!2729 = !DILocation(line: 1286, column: 3, scope: !2713)
!2730 = !DILocation(line: 1287, column: 1, scope: !2713)
!2731 = distinct !DISubprogram(name: "VEC_tree_gc_safe_push", scope: !138, file: !138, line: 183, type: !2732, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2735)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!1014, !2734, !655}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "vec_", arg: 1, scope: !2731, file: !138, line: 183, type: !2734)
!2737 = !DILocalVariable(name: "obj_", arg: 2, scope: !2731, file: !138, line: 183, type: !655)
!2738 = !DILocation(line: 0, scope: !2731)
!2739 = !DILocation(line: 183, column: 1, scope: !2731)
!2740 = distinct !DISubprogram(name: "mudflap_enqueue_constant", scope: !3, file: !3, line: 1291, type: !2714, scopeLine: 1292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2741)
!2741 = !{!2742, !2743, !2744}
!2742 = !DILocalVariable(name: "obj", arg: 1, scope: !2740, file: !3, line: 1291, type: !655)
!2743 = !DILocalVariable(name: "object_size", scope: !2740, file: !3, line: 1293, type: !655)
!2744 = !DILocalVariable(name: "varname", scope: !2740, file: !3, line: 1293, type: !655)
!2745 = !DILocation(line: 0, scope: !2740)
!2746 = !DILocation(line: 1295, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1295, column: 7)
!2748 = !DILocation(line: 1295, column: 7, scope: !2740)
!2749 = !DILocation(line: 1298, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1298, column: 7)
!2751 = !DILocation(line: 1298, column: 23, scope: !2750)
!2752 = !DILocation(line: 1298, column: 7, scope: !2740)
!2753 = !DILocation(line: 1299, column: 45, scope: !2750)
!2754 = !DILocation(line: 1299, column: 19, scope: !2750)
!2755 = !DILocation(line: 1299, column: 5, scope: !2750)
!2756 = !DILocation(line: 1301, column: 34, scope: !2750)
!2757 = !DILocation(line: 1301, column: 19, scope: !2750)
!2758 = !DILocation(line: 0, scope: !2750)
!2759 = !DILocation(line: 1303, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1303, column: 7)
!2761 = !DILocation(line: 1303, column: 23, scope: !2760)
!2762 = !DILocation(line: 1303, column: 7, scope: !2740)
!2763 = !DILocation(line: 1304, column: 15, scope: !2760)
!2764 = !DILocation(line: 1304, column: 5, scope: !2760)
!2765 = !DILocation(line: 1306, column: 15, scope: !2760)
!2766 = !DILocation(line: 0, scope: !2760)
!2767 = !DILocation(line: 1308, column: 3, scope: !2740)
!2768 = !DILocation(line: 1309, column: 1, scope: !2740)
!2769 = distinct !DISubprogram(name: "mf_build_string", scope: !3, file: !3, line: 81, type: !2770, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!655, !653}
!2772 = !{!2773, !2774, !2775}
!2773 = !DILocalVariable(name: "string", arg: 1, scope: !2769, file: !3, line: 81, type: !653)
!2774 = !DILocalVariable(name: "len", scope: !2769, file: !3, line: 83, type: !1125)
!2775 = !DILocalVariable(name: "result", scope: !2769, file: !3, line: 84, type: !655)
!2776 = !DILocation(line: 0, scope: !2769)
!2777 = !DILocation(line: 83, column: 16, scope: !2769)
!2778 = !DILocation(line: 84, column: 40, scope: !2769)
!2779 = !DILocation(line: 84, column: 26, scope: !2769)
!2780 = !DILocation(line: 84, column: 17, scope: !2769)
!2781 = !DILocation(line: 87, column: 6, scope: !2769)
!2782 = !DILocation(line: 87, column: 40, scope: !2769)
!2783 = !DILocation(line: 87, column: 22, scope: !2769)
!2784 = !DILocation(line: 86, column: 24, scope: !2769)
!2785 = !DILocation(line: 86, column: 3, scope: !2769)
!2786 = !DILocation(line: 86, column: 22, scope: !2769)
!2787 = !DILocation(line: 88, column: 3, scope: !2769)
!2788 = !DILocation(line: 88, column: 26, scope: !2769)
!2789 = !DILocation(line: 90, column: 24, scope: !2769)
!2790 = !DILocation(line: 92, column: 12, scope: !2769)
!2791 = !DILocation(line: 94, column: 10, scope: !2769)
!2792 = !DILocation(line: 94, column: 3, scope: !2769)
!2793 = distinct !DISubprogram(name: "mudflap_register_call", scope: !3, file: !3, line: 1255, type: !2794, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !655, !655, !655}
!2796 = !{!2797, !2798, !2799, !2800, !2801}
!2797 = !DILocalVariable(name: "obj", arg: 1, scope: !2793, file: !3, line: 1255, type: !655)
!2798 = !DILocalVariable(name: "object_size", arg: 2, scope: !2793, file: !3, line: 1255, type: !655)
!2799 = !DILocalVariable(name: "varname", arg: 3, scope: !2793, file: !3, line: 1255, type: !655)
!2800 = !DILocalVariable(name: "arg", scope: !2793, file: !3, line: 1257, type: !655)
!2801 = !DILocalVariable(name: "call_stmt", scope: !2793, file: !3, line: 1257, type: !655)
!2802 = !DILocation(line: 0, scope: !2793)
!2803 = !DILocation(line: 1259, column: 9, scope: !2793)
!2804 = !DILocation(line: 1260, column: 18, scope: !2793)
!2805 = !DILocation(line: 1260, column: 9, scope: !2793)
!2806 = !DILocation(line: 1262, column: 15, scope: !2793)
!2807 = !DILocation(line: 1269, column: 3, scope: !2793)
!2808 = !DILocation(line: 1270, column: 1, scope: !2793)
!2809 = distinct !DISubprogram(name: "mudflap_finish_file", scope: !3, file: !3, line: 1314, type: !4, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2810)
!2810 = !{!2811, !2812, !2814, !2817, !2818, !2821}
!2811 = !DILocalVariable(name: "ctor_statements", scope: !2809, file: !3, line: 1316, type: !655)
!2812 = !DILocalVariable(name: "call2_stmt", scope: !2813, file: !3, line: 1324, type: !655)
!2813 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1323, column: 3)
!2814 = !DILocalVariable(name: "arg", scope: !2815, file: !3, line: 1331, type: !655)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 1330, column: 5)
!2816 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1329, column: 7)
!2817 = !DILocalVariable(name: "call_stmt", scope: !2815, file: !3, line: 1332, type: !655)
!2818 = !DILocalVariable(name: "i", scope: !2819, file: !3, line: 1339, type: !1125)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1338, column: 5)
!2820 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1337, column: 7)
!2821 = !DILocalVariable(name: "obj", scope: !2819, file: !3, line: 1340, type: !655)
!2822 = !DILocation(line: 1316, column: 3, scope: !2809)
!2823 = !DILocation(line: 0, scope: !2809)
!2824 = !DILocation(line: 1316, column: 8, scope: !2809)
!2825 = !DILocation(line: 1319, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1319, column: 7)
!2827 = !DILocation(line: 1319, column: 18, scope: !2826)
!2828 = !DILocation(line: 1319, column: 23, scope: !2826)
!2829 = !DILocation(line: 1319, column: 26, scope: !2826)
!2830 = !DILocation(line: 1319, column: 37, scope: !2826)
!2831 = !DILocation(line: 1319, column: 7, scope: !2809)
!2832 = !DILocation(line: 1324, column: 23, scope: !2813)
!2833 = !DILocation(line: 0, scope: !2813)
!2834 = !DILocation(line: 1325, column: 5, scope: !2813)
!2835 = !DILocation(line: 1329, column: 7, scope: !2816)
!2836 = !DILocation(line: 1329, column: 7, scope: !2809)
!2837 = !DILocation(line: 1331, column: 18, scope: !2815)
!2838 = !DILocation(line: 0, scope: !2815)
!2839 = !DILocation(line: 1332, column: 24, scope: !2815)
!2840 = !DILocation(line: 1333, column: 7, scope: !2815)
!2841 = !DILocation(line: 1334, column: 5, scope: !2815)
!2842 = !DILocation(line: 1337, column: 7, scope: !2820)
!2843 = !DILocation(line: 1337, column: 7, scope: !2809)
!2844 = !DILocation(line: 1340, column: 7, scope: !2819)
!2845 = !DILocation(line: 0, scope: !2819)
!2846 = !DILocation(line: 0, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1342, column: 9)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 1341, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 1341, column: 7)
!2850 = !DILocation(line: 1341, column: 12, scope: !2849)
!2851 = !DILocation(line: 1341, column: 19, scope: !2848)
!2852 = !DILocation(line: 0, scope: !2849)
!2853 = !DILocation(line: 1341, column: 7, scope: !2849)
!2854 = !DILocation(line: 1343, column: 11, scope: !2847)
!2855 = !DILocation(line: 1345, column: 28, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1345, column: 15)
!2857 = !DILocation(line: 1345, column: 15, scope: !2856)
!2858 = !DILocation(line: 1345, column: 15, scope: !2847)
!2859 = !DILocation(line: 1352, column: 17, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1352, column: 15)
!2861 = !DILocation(line: 1352, column: 35, scope: !2860)
!2862 = !DILocation(line: 1352, column: 40, scope: !2860)
!2863 = !DILocation(line: 1352, column: 15, scope: !2847)
!2864 = !DILocation(line: 1355, column: 17, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1355, column: 15)
!2866 = !DILocation(line: 1355, column: 15, scope: !2847)
!2867 = !DILocation(line: 1359, column: 24, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 1356, column: 13)
!2869 = !DILocation(line: 1357, column: 15, scope: !2868)
!2870 = !DILocation(line: 1360, column: 15, scope: !2868)
!2871 = !DILocation(line: 1364, column: 34, scope: !2847)
!2872 = !DILocation(line: 1365, column: 51, scope: !2847)
!2873 = !DILocation(line: 1365, column: 34, scope: !2847)
!2874 = !DILocation(line: 1363, column: 11, scope: !2847)
!2875 = !DILocation(line: 1366, column: 9, scope: !2847)
!2876 = !DILocation(line: 1341, column: 71, scope: !2848)
!2877 = !DILocation(line: 1341, column: 7, scope: !2848)
!2878 = distinct !{!2878, !2853, !2879}
!2879 = !DILocation(line: 1366, column: 9, scope: !2849)
!2880 = !DILocation(line: 1368, column: 7, scope: !2819)
!2881 = !DILocation(line: 1369, column: 5, scope: !2820)
!2882 = !DILocation(line: 1369, column: 5, scope: !2819)
!2883 = !DILocation(line: 1372, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1372, column: 7)
!2885 = !DILocation(line: 1372, column: 7, scope: !2809)
!2886 = !DILocation(line: 1374, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1373, column: 5)
!2888 = !DILocation(line: 1375, column: 32, scope: !2887)
!2889 = !DILocation(line: 1376, column: 5, scope: !2887)
!2890 = !DILocation(line: 1378, column: 35, scope: !2809)
!2891 = !DILocation(line: 1378, column: 3, scope: !2809)
!2892 = !DILocation(line: 1380, column: 1, scope: !2809)
!2893 = distinct !DISubprogram(name: "VEC_tree_base_iterate", scope: !138, file: !138, line: 182, type: !2894, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2898)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!648, !2896, !10, !1014}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1479)
!2898 = !{!2899, !2900, !2901}
!2899 = !DILocalVariable(name: "vec_", arg: 1, scope: !2893, file: !138, line: 182, type: !2896)
!2900 = !DILocalVariable(name: "ix_", arg: 2, scope: !2893, file: !138, line: 182, type: !10)
!2901 = !DILocalVariable(name: "ptr", arg: 3, scope: !2893, file: !138, line: 182, type: !1014)
!2902 = !DILocation(line: 0, scope: !2893)
!2903 = !DILocation(line: 182, column: 1, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2893, file: !138, line: 182, column: 1)
!2905 = !DILocation(line: 182, column: 1, scope: !2893)
!2906 = !DILocation(line: 182, column: 1, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !138, line: 182, column: 1)
!2908 = !DILocation(line: 182, column: 1, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2904, file: !138, line: 182, column: 1)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocation(line: 0, scope: !2038)
!2912 = !DILocation(line: 111, column: 3, scope: !2038)
!2913 = !DILocation(line: 113, column: 8, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 113, column: 7)
!2915 = !DILocation(line: 113, column: 7, scope: !2038)
!2916 = !DILocation(line: 115, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 114, column: 5)
!2918 = !DILocation(line: 116, column: 19, scope: !2917)
!2919 = !DILocation(line: 117, column: 5, scope: !2917)
!2920 = !DILocation(line: 118, column: 3, scope: !2038)
!2921 = !DILocation(line: 122, column: 5, scope: !2169)
!2922 = !DILocation(line: 122, column: 47, scope: !2169)
!2923 = !DILocation(line: 0, scope: !2169)
!2924 = !DILocation(line: 122, column: 30, scope: !2169)
!2925 = !DILocation(line: 124, column: 32, scope: !2169)
!2926 = !DILocation(line: 126, column: 25, scope: !2169)
!2927 = !DILocation(line: 127, column: 23, scope: !2169)
!2928 = !DILocation(line: 128, column: 20, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 128, column: 9)
!2930 = !DILocation(line: 128, column: 31, scope: !2929)
!2931 = !DILocation(line: 128, column: 53, scope: !2929)
!2932 = !DILocation(line: 128, column: 28, scope: !2929)
!2933 = !DILocation(line: 129, column: 20, scope: !2929)
!2934 = !DILocation(line: 129, column: 7, scope: !2929)
!2935 = !DILocation(line: 130, column: 20, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 130, column: 9)
!2937 = !DILocation(line: 130, column: 9, scope: !2169)
!2938 = !DILocation(line: 133, column: 5, scope: !2169)
!2939 = !DILocation(line: 135, column: 20, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 135, column: 9)
!2941 = !DILocation(line: 135, column: 9, scope: !2169)
!2942 = !DILocation(line: 137, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 136, column: 7)
!2944 = !DILocation(line: 138, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 138, column: 9)
!2946 = !DILocation(line: 140, column: 26, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 140, column: 13)
!2948 = !DILocation(line: 140, column: 13, scope: !2943)
!2949 = !DILocation(line: 142, column: 13, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 141, column: 11)
!2951 = !DILocation(line: 143, column: 13, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 143, column: 13)
!2953 = !DILocation(line: 144, column: 11, scope: !2950)
!2954 = !DILocation(line: 146, column: 3, scope: !2038)
!2955 = !DILocation(line: 148, column: 7, scope: !2183)
!2956 = !DILocation(line: 148, column: 29, scope: !2183)
!2957 = !DILocation(line: 148, column: 7, scope: !2038)
!2958 = !DILocation(line: 151, column: 7, scope: !2182)
!2959 = !DILocation(line: 0, scope: !2181)
!2960 = !DILocation(line: 154, column: 13, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 154, column: 13)
!2962 = !DILocation(line: 154, column: 13, scope: !2181)
!2963 = !DILocation(line: 155, column: 33, scope: !2961)
!2964 = !DILocation(line: 155, column: 22, scope: !2961)
!2965 = !DILocation(line: 155, column: 11, scope: !2961)
!2966 = !DILocation(line: 156, column: 22, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 156, column: 13)
!2968 = !DILocation(line: 156, column: 13, scope: !2181)
!2969 = !DILocation(line: 159, column: 9, scope: !2181)
!2970 = !DILocation(line: 161, column: 7, scope: !2182)
!2971 = !DILocation(line: 162, column: 5, scope: !2182)
!2972 = !DILocation(line: 164, column: 5, scope: !2183)
!2973 = !DILocation(line: 0, scope: !2185)
!2974 = !DILocation(line: 170, column: 9, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 170, column: 9)
!2976 = !DILocation(line: 170, column: 26, scope: !2975)
!2977 = !DILocation(line: 170, column: 9, scope: !2185)
!2978 = !DILocation(line: 172, column: 36, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 172, column: 6)
!2980 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 171, column: 7)
!2981 = !DILocation(line: 172, column: 6, scope: !2979)
!2982 = !DILocation(line: 172, column: 42, scope: !2979)
!2983 = !DILocation(line: 172, column: 6, scope: !2980)
!2984 = !DILocation(line: 176, column: 33, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 173, column: 4)
!2986 = !DILocation(line: 176, column: 17, scope: !2985)
!2987 = !DILocation(line: 178, column: 4, scope: !2985)
!2988 = !DILocation(line: 179, column: 15, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 179, column: 6)
!2990 = !DILocation(line: 179, column: 6, scope: !2980)
!2991 = !DILocation(line: 180, column: 26, scope: !2989)
!2992 = !DILocation(line: 180, column: 15, scope: !2989)
!2993 = !DILocation(line: 180, column: 4, scope: !2989)
!2994 = !DILocation(line: 182, column: 18, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 182, column: 9)
!2996 = !DILocation(line: 182, column: 9, scope: !2185)
!2997 = !DILocation(line: 185, column: 5, scope: !2185)
!2998 = !DILocation(line: 189, column: 18, scope: !2038)
!2999 = !DILocation(line: 190, column: 12, scope: !2038)
!3000 = !DILocation(line: 191, column: 3, scope: !2038)
!3001 = !DILocation(line: 193, column: 3, scope: !2038)
!3002 = distinct !DISubprogram(name: "VEC_tree_base_truncate", scope: !138, file: !138, line: 182, type: !3003, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3006)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !3005, !10}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "vec_", arg: 1, scope: !3002, file: !138, line: 182, type: !3005)
!3008 = !DILocalVariable(name: "size_", arg: 2, scope: !3002, file: !138, line: 182, type: !10)
!3009 = !DILocation(line: 0, scope: !3002)
!3010 = !DILocation(line: 182, column: 1, scope: !3002)
!3011 = !DILocation(line: 182, column: 1, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3002, file: !138, line: 182, column: 1)
!3013 = distinct !DISubprogram(name: "gate_mudflap", scope: !3, file: !3, line: 1384, type: !1969, scopeLine: 1385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2216)
!3014 = !DILocation(line: 1386, column: 10, scope: !3013)
!3015 = !DILocation(line: 1386, column: 23, scope: !3013)
!3016 = !DILocation(line: 1386, column: 3, scope: !3013)
!3017 = distinct !DISubprogram(name: "execute_mudflap_function_decls", scope: !3, file: !3, line: 1023, type: !1973, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3018)
!3018 = !{!3019}
!3019 = !DILocalVariable(name: "gctx", scope: !3017, file: !3, line: 1025, type: !3020)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimplify_ctx", file: !575, line: 980, size: 576, elements: !3021)
!3021 = !{!3022, !3024, !3030, !3031, !3032, !3033, !3034, !3040, !3041, !3042, !3043, !3044}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "prev_context", scope: !3020, file: !575, line: 982, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bind_expr_stack", scope: !3020, file: !575, line: 984, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_heap", file: !575, line: 34, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_heap", file: !575, line: 34, size: 128, elements: !3028)
!3028 = !{!3029}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3027, file: !575, line: 34, baseType: !1466, size: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "temps", scope: !3020, file: !575, line: 985, baseType: !655, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "conditional_cleanups", scope: !3020, file: !575, line: 986, baseType: !969, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "exit_label", scope: !3020, file: !575, line: 987, baseType: !655, size: 64, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "return_temp", scope: !3020, file: !575, line: 988, baseType: !655, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "case_labels", scope: !3020, file: !575, line: 990, baseType: !3035, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !138, line: 184, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !138, line: 184, size: 128, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3037, file: !138, line: 184, baseType: !1479, size: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "temp_htab", scope: !3020, file: !575, line: 992, baseType: !1411, size: 64, offset: 448)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "conditions", scope: !3020, file: !575, line: 994, baseType: !648, size: 32, offset: 512)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "save_stack", scope: !3020, file: !575, line: 995, baseType: !647, size: 8, offset: 544)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "into_ssa", scope: !3020, file: !575, line: 996, baseType: !647, size: 8, offset: 552)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "allow_rhs_cond_expr", scope: !3020, file: !575, line: 997, baseType: !647, size: 8, offset: 560)
!3045 = !DILocation(line: 1025, column: 3, scope: !3017)
!3046 = !DILocation(line: 1029, column: 20, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 1029, column: 7)
!3048 = !DILocation(line: 1029, column: 7, scope: !3047)
!3049 = !DILocation(line: 1029, column: 43, scope: !3047)
!3050 = !DILocation(line: 1030, column: 7, scope: !3047)
!3051 = !DILocation(line: 1029, column: 7, scope: !3017)
!3052 = !DILocation(line: 0, scope: !3017)
!3053 = !DILocation(line: 1033, column: 3, scope: !3017)
!3054 = !DILocation(line: 1035, column: 32, scope: !3017)
!3055 = !DILocation(line: 1035, column: 19, scope: !3017)
!3056 = !DILocation(line: 1036, column: 19, scope: !3017)
!3057 = !DILocation(line: 1035, column: 3, scope: !3017)
!3058 = !DILocation(line: 1038, column: 3, scope: !3017)
!3059 = !DILocation(line: 1039, column: 3, scope: !3017)
!3060 = !DILocation(line: 1040, column: 1, scope: !3017)
!3061 = distinct !DISubprogram(name: "execute_mudflap_function_ops", scope: !3, file: !3, line: 434, type: !1973, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3062)
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "gctx", scope: !3061, file: !3, line: 436, type: !3020)
!3064 = !DILocation(line: 436, column: 3, scope: !3061)
!3065 = !DILocation(line: 440, column: 20, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 440, column: 7)
!3067 = !DILocation(line: 440, column: 7, scope: !3066)
!3068 = !DILocation(line: 440, column: 43, scope: !3066)
!3069 = !DILocation(line: 441, column: 7, scope: !3066)
!3070 = !DILocation(line: 440, column: 7, scope: !3061)
!3071 = !DILocation(line: 0, scope: !3061)
!3072 = !DILocation(line: 444, column: 3, scope: !3061)
!3073 = !DILocation(line: 447, column: 9, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 447, column: 7)
!3075 = !DILocation(line: 447, column: 7, scope: !3061)
!3076 = !DILocation(line: 448, column: 5, scope: !3074)
!3077 = !DILocation(line: 450, column: 3, scope: !3061)
!3078 = !DILocation(line: 452, column: 9, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 452, column: 7)
!3080 = !DILocation(line: 452, column: 7, scope: !3061)
!3081 = !DILocation(line: 453, column: 5, scope: !3079)
!3082 = !DILocation(line: 455, column: 3, scope: !3061)
!3083 = !DILocation(line: 456, column: 3, scope: !3061)
!3084 = !DILocation(line: 457, column: 1, scope: !3061)
!3085 = distinct !DISubprogram(name: "VEC_tree_gc_reserve", scope: !138, file: !138, line: 183, type: !3086, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!648, !2734, !648}
!3088 = !{!3089, !3090, !3091}
!3089 = !DILocalVariable(name: "vec_", arg: 1, scope: !3085, file: !138, line: 183, type: !2734)
!3090 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3085, file: !138, line: 183, type: !648)
!3091 = !DILocalVariable(name: "extend", scope: !3085, file: !138, line: 183, type: !648)
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocation(line: 183, column: 1, scope: !3085)
!3094 = !DILocation(line: 183, column: 1, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3085, file: !138, line: 183, column: 1)
!3096 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !138, file: !138, line: 182, type: !3097, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!1014, !3005, !655}
!3099 = !{!3100, !3101, !3102}
!3100 = !DILocalVariable(name: "vec_", arg: 1, scope: !3096, file: !138, line: 182, type: !3005)
!3101 = !DILocalVariable(name: "obj_", arg: 2, scope: !3096, file: !138, line: 182, type: !655)
!3102 = !DILocalVariable(name: "slot_", scope: !3096, file: !138, line: 182, type: !1014)
!3103 = !DILocation(line: 0, scope: !3096)
!3104 = !DILocation(line: 182, column: 1, scope: !3096)
!3105 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !138, file: !138, line: 182, type: !3106, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!648, !3005, !648}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "vec_", arg: 1, scope: !3105, file: !138, line: 182, type: !3005)
!3110 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3105, file: !138, line: 182, type: !648)
!3111 = !DILocation(line: 0, scope: !3105)
!3112 = !DILocation(line: 182, column: 1, scope: !3105)
!3113 = distinct !DISubprogram(name: "mf_xform_decls", scope: !3, file: !3, line: 1191, type: !3114, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !969, !655}
!3116 = !{!3117, !3118, !3119, !3120, !3139}
!3117 = !DILocalVariable(name: "fnbody", arg: 1, scope: !3113, file: !3, line: 1191, type: !969)
!3118 = !DILocalVariable(name: "fnparams", arg: 2, scope: !3113, file: !3, line: 1191, type: !655)
!3119 = !DILocalVariable(name: "d", scope: !3113, file: !3, line: 1193, type: !1951)
!3120 = !DILocalVariable(name: "wi", scope: !3113, file: !3, line: 1194, type: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "walk_stmt_info", file: !575, line: 4652, size: 448, elements: !3122)
!3122 = !{!3123, !3130, !3131, !3134, !3135, !3136, !3137, !3138}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !3121, file: !575, line: 4655, baseType: !3124, size: 192)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !575, line: 265, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 254, size: 192, elements: !3126)
!3126 = !{!3127, !3128, !3129}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3125, file: !575, line: 257, baseType: !974, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3125, file: !575, line: 263, baseType: !969, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3125, file: !575, line: 264, baseType: !1379, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3121, file: !575, line: 4659, baseType: !652, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pset", scope: !3121, file: !575, line: 4664, baseType: !3132, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !138, line: 5199, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "val_only", scope: !3121, file: !575, line: 4678, baseType: !647, size: 8, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "is_lhs", scope: !3121, file: !575, line: 4681, baseType: !647, size: 8, offset: 328)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3121, file: !575, line: 4685, baseType: !647, size: 8, offset: 336)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "want_locations", scope: !3121, file: !575, line: 4688, baseType: !647, size: 8, offset: 344)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !3121, file: !575, line: 4694, baseType: !655, size: 64, offset: 384)
!3139 = !DILocalVariable(name: "pset", scope: !3113, file: !3, line: 1195, type: !3132)
!3140 = !DILocation(line: 0, scope: !3113)
!3141 = !DILocation(line: 1193, column: 3, scope: !3113)
!3142 = !DILocation(line: 1194, column: 3, scope: !3113)
!3143 = !DILocation(line: 1195, column: 32, scope: !3113)
!3144 = !DILocation(line: 1197, column: 5, scope: !3113)
!3145 = !DILocation(line: 1197, column: 17, scope: !3113)
!3146 = !DILocation(line: 1198, column: 3, scope: !3113)
!3147 = !DILocation(line: 1199, column: 6, scope: !3113)
!3148 = !DILocation(line: 1199, column: 11, scope: !3113)
!3149 = !DILocation(line: 1200, column: 6, scope: !3113)
!3150 = !DILocation(line: 1200, column: 11, scope: !3113)
!3151 = !DILocation(line: 1201, column: 3, scope: !3113)
!3152 = !DILocation(line: 1202, column: 3, scope: !3113)
!3153 = !DILocation(line: 1203, column: 1, scope: !3113)
!3154 = distinct !DISubprogram(name: "mx_xfn_xform_decls", scope: !3, file: !3, line: 1147, type: !3155, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3159)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!655, !3157, !646, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3159 = !{!3160, !3161, !3162, !3163, !3164}
!3160 = !DILocalVariable(name: "gsi", arg: 1, scope: !3154, file: !3, line: 1147, type: !3157)
!3161 = !DILocalVariable(name: "handled_operands_p", arg: 2, scope: !3154, file: !3, line: 1148, type: !646)
!3162 = !DILocalVariable(name: "wi", arg: 3, scope: !3154, file: !3, line: 1149, type: !3158)
!3163 = !DILocalVariable(name: "d", scope: !3154, file: !3, line: 1151, type: !1950)
!3164 = !DILocalVariable(name: "stmt", scope: !3154, file: !3, line: 1152, type: !979)
!3165 = !DILocation(line: 0, scope: !3154)
!3166 = !DILocation(line: 1151, column: 70, scope: !3154)
!3167 = !DILocation(line: 1152, column: 17, scope: !3154)
!3168 = !DILocation(line: 1154, column: 11, scope: !3154)
!3169 = !DILocation(line: 1154, column: 3, scope: !3154)
!3170 = !DILocation(line: 1159, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 1159, column: 6)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 1157, column: 7)
!3173 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 1155, column: 5)
!3174 = !DILocation(line: 1159, column: 6, scope: !3171)
!3175 = !DILocation(line: 1159, column: 6, scope: !3172)
!3176 = !DILocation(line: 1163, column: 12, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 1160, column: 4)
!3178 = !DILocation(line: 1164, column: 12, scope: !3177)
!3179 = !DILocation(line: 1162, column: 7, scope: !3177)
!3180 = !DILocation(line: 1161, column: 6, scope: !3177)
!3181 = !DILocation(line: 1165, column: 21, scope: !3177)
!3182 = !DILocation(line: 1166, column: 4, scope: !3177)
!3183 = !DILocation(line: 1169, column: 29, scope: !3172)
!3184 = !DILocation(line: 1170, column: 8, scope: !3172)
!3185 = !DILocation(line: 1171, column: 8, scope: !3172)
!3186 = !DILocation(line: 1169, column: 10, scope: !3172)
!3187 = !DILocation(line: 1168, column: 2, scope: !3172)
!3188 = !DILocation(line: 1173, column: 7, scope: !3173)
!3189 = !DILocation(line: 1179, column: 3, scope: !3154)
!3190 = distinct !DISubprogram(name: "gsi_stmt", scope: !575, file: !575, line: 4501, type: !3191, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!979, !3124}
!3193 = !{!3194}
!3194 = !DILocalVariable(name: "i", arg: 1, scope: !3190, file: !575, line: 4501, type: !3124)
!3195 = !DILocation(line: 4501, column: 32, scope: !3190)
!3196 = !DILocation(line: 4503, column: 12, scope: !3190)
!3197 = !DILocation(line: 4503, column: 17, scope: !3190)
!3198 = !DILocation(line: 4503, column: 3, scope: !3190)
!3199 = distinct !DISubprogram(name: "gimple_code", scope: !575, file: !575, line: 1052, type: !3200, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3203)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!574, !3202}
!3202 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !656, line: 60, baseType: !1954)
!3203 = !{!3204}
!3204 = !DILocalVariable(name: "g", arg: 1, scope: !3199, file: !575, line: 1052, type: !3202)
!3205 = !DILocation(line: 0, scope: !3199)
!3206 = !DILocation(line: 1054, column: 20, scope: !3199)
!3207 = !DILocation(line: 1054, column: 3, scope: !3199)
!3208 = distinct !DISubprogram(name: "gimple_bind_set_body", scope: !575, file: !575, line: 2528, type: !3209, scopeLine: 2529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !979, !969}
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "gs", arg: 1, scope: !3208, file: !575, line: 2528, type: !979)
!3213 = !DILocalVariable(name: "seq", arg: 2, scope: !3208, file: !575, line: 2528, type: !969)
!3214 = !DILocation(line: 0, scope: !3208)
!3215 = !DILocation(line: 2531, column: 19, scope: !3208)
!3216 = !DILocation(line: 2531, column: 24, scope: !3208)
!3217 = !DILocation(line: 2532, column: 1, scope: !3208)
!3218 = distinct !DISubprogram(name: "mx_register_decls", scope: !3, file: !3, line: 1056, type: !3219, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!969, !655, !969, !780}
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3231, !3232, !3233, !3234, !3235, !3236, !3239}
!3222 = !DILocalVariable(name: "decl", arg: 1, scope: !3218, file: !3, line: 1056, type: !655)
!3223 = !DILocalVariable(name: "seq", arg: 2, scope: !3218, file: !3, line: 1056, type: !969)
!3224 = !DILocalVariable(name: "location", arg: 3, scope: !3218, file: !3, line: 1056, type: !780)
!3225 = !DILocalVariable(name: "finally_stmts", scope: !3218, file: !3, line: 1058, type: !969)
!3226 = !DILocalVariable(name: "initially_stmts", scope: !3218, file: !3, line: 1059, type: !3124)
!3227 = !DILocalVariable(name: "size", scope: !3228, file: !3, line: 1070, type: !655)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 1069, column: 9)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1063, column: 11)
!3230 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 1062, column: 5)
!3231 = !DILocalVariable(name: "variable_name", scope: !3228, file: !3, line: 1070, type: !655)
!3232 = !DILocalVariable(name: "unregister_fncall", scope: !3228, file: !3, line: 1071, type: !979)
!3233 = !DILocalVariable(name: "register_fncall", scope: !3228, file: !3, line: 1071, type: !979)
!3234 = !DILocalVariable(name: "unregister_fncall_param", scope: !3228, file: !3, line: 1072, type: !655)
!3235 = !DILocalVariable(name: "register_fncall_param", scope: !3228, file: !3, line: 1072, type: !655)
!3236 = !DILocalVariable(name: "stmt", scope: !3237, file: !3, line: 1134, type: !979)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 1133, column: 5)
!3238 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 1132, column: 7)
!3239 = !DILocalVariable(name: "new_seq", scope: !3237, file: !3, line: 1135, type: !969)
!3240 = !DILocation(line: 0, scope: !3218)
!3241 = !DILocation(line: 1058, column: 3, scope: !3218)
!3242 = !DILocation(line: 1058, column: 14, scope: !3218)
!3243 = !DILocation(line: 1059, column: 3, scope: !3218)
!3244 = !DILocation(line: 1059, column: 42, scope: !3218)
!3245 = !DILocation(line: 1061, column: 3, scope: !3218)
!3246 = !DILocation(line: 1061, column: 15, scope: !3218)
!3247 = !DILocation(line: 1063, column: 11, scope: !3229)
!3248 = !DILocation(line: 1065, column: 11, scope: !3229)
!3249 = !DILocation(line: 1065, column: 16, scope: !3229)
!3250 = !DILocation(line: 1067, column: 11, scope: !3229)
!3251 = !DILocation(line: 1067, column: 16, scope: !3229)
!3252 = !DILocation(line: 1068, column: 11, scope: !3229)
!3253 = !DILocation(line: 1068, column: 16, scope: !3229)
!3254 = !DILocation(line: 1063, column: 11, scope: !3230)
!3255 = !DILocation(line: 0, scope: !3228)
!3256 = !DILocation(line: 1076, column: 20, scope: !3228)
!3257 = !DILocation(line: 1076, column: 36, scope: !3228)
!3258 = !DILocation(line: 1076, column: 11, scope: !3228)
!3259 = !DILocation(line: 1077, column: 4, scope: !3228)
!3260 = !DILocation(line: 1081, column: 15, scope: !3228)
!3261 = !DILocation(line: 1081, column: 6, scope: !3228)
!3262 = !DILocation(line: 1085, column: 50, scope: !3228)
!3263 = !DILocation(line: 1088, column: 8, scope: !3228)
!3264 = !DILocation(line: 1085, column: 31, scope: !3228)
!3265 = !DILocation(line: 1091, column: 27, scope: !3228)
!3266 = !DILocation(line: 1093, column: 15, scope: !3228)
!3267 = !DILocation(line: 1093, column: 6, scope: !3228)
!3268 = !DILocation(line: 1098, column: 41, scope: !3228)
!3269 = !DILocation(line: 1101, column: 13, scope: !3228)
!3270 = !DILocation(line: 1098, column: 22, scope: !3228)
!3271 = !DILocation(line: 1106, column: 4, scope: !3228)
!3272 = !DILocation(line: 1107, column: 4, scope: !3228)
!3273 = !DILocation(line: 1110, column: 15, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1110, column: 15)
!3275 = !DILocation(line: 1110, column: 15, scope: !3228)
!3276 = !DILocation(line: 1112, column: 13, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 1112, column: 12)
!3278 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 1111, column: 6)
!3279 = !DILocation(line: 1112, column: 12, scope: !3278)
!3280 = !DILocation(line: 1115, column: 5, scope: !3277)
!3281 = !DILocation(line: 1113, column: 3, scope: !3277)
!3282 = !DILocation(line: 1119, column: 8, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 1118, column: 6)
!3284 = !DILocation(line: 1123, column: 8, scope: !3283)
!3285 = !DILocation(line: 1125, column: 11, scope: !3228)
!3286 = !DILocation(line: 1126, column: 9, scope: !3228)
!3287 = !DILocation(line: 1128, column: 14, scope: !3230)
!3288 = distinct !{!3288, !3245, !3289}
!3289 = !DILocation(line: 1129, column: 5, scope: !3218)
!3290 = !DILocation(line: 1132, column: 7, scope: !3238)
!3291 = !DILocation(line: 1132, column: 21, scope: !3238)
!3292 = !DILocation(line: 1132, column: 7, scope: !3218)
!3293 = !DILocation(line: 1134, column: 21, scope: !3237)
!3294 = !DILocation(line: 0, scope: !3237)
!3295 = !DILocation(line: 1135, column: 7, scope: !3237)
!3296 = !DILocation(line: 1135, column: 28, scope: !3237)
!3297 = !DILocation(line: 1135, column: 18, scope: !3237)
!3298 = !DILocation(line: 1137, column: 7, scope: !3237)
!3299 = !DILocation(line: 1138, column: 14, scope: !3237)
!3300 = !DILocation(line: 1139, column: 5, scope: !3238)
!3301 = !DILocation(line: 0, scope: !3238)
!3302 = !DILocation(line: 1142, column: 1, scope: !3218)
!3303 = distinct !DISubprogram(name: "gimple_bind_body", scope: !575, file: !575, line: 2517, type: !3304, scopeLine: 2518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!969, !979}
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "gs", arg: 1, scope: !3303, file: !575, line: 2517, type: !979)
!3308 = !DILocation(line: 0, scope: !3303)
!3309 = !DILocation(line: 2520, column: 26, scope: !3303)
!3310 = !DILocation(line: 2520, column: 3, scope: !3303)
!3311 = distinct !DISubprogram(name: "gimple_location", scope: !575, file: !575, line: 1139, type: !3312, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!780, !3202}
!3314 = !{!3315}
!3315 = !DILocalVariable(name: "g", arg: 1, scope: !3311, file: !575, line: 1139, type: !3202)
!3316 = !DILocation(line: 0, scope: !3311)
!3317 = !DILocation(line: 1141, column: 20, scope: !3311)
!3318 = !DILocation(line: 1141, column: 3, scope: !3311)
!3319 = distinct !DISubprogram(name: "gimple_bind_vars", scope: !575, file: !575, line: 2485, type: !3320, scopeLine: 2486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!655, !3202}
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "gs", arg: 1, scope: !3319, file: !575, line: 2485, type: !3202)
!3324 = !DILocation(line: 0, scope: !3319)
!3325 = !DILocation(line: 2488, column: 26, scope: !3319)
!3326 = !DILocation(line: 2488, column: 3, scope: !3319)
!3327 = distinct !DISubprogram(name: "gsi_start", scope: !575, file: !575, line: 4403, type: !3328, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!3124, !969}
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "seq", arg: 1, scope: !3327, file: !575, line: 4403, type: !969)
!3332 = !DILocalVariable(name: "i", scope: !3327, file: !575, line: 4405, type: !3124)
!3333 = !DILocation(line: 0, scope: !3327)
!3334 = !DILocation(line: 4405, column: 24, scope: !3327)
!3335 = !DILocation(line: 4407, column: 11, scope: !3327)
!3336 = !DILocation(line: 4407, column: 5, scope: !3327)
!3337 = !DILocation(line: 4407, column: 9, scope: !3327)
!3338 = !DILocation(line: 4408, column: 5, scope: !3327)
!3339 = !DILocation(line: 4408, column: 9, scope: !3327)
!3340 = !DILocation(line: 4409, column: 11, scope: !3327)
!3341 = !DILocation(line: 4409, column: 17, scope: !3327)
!3342 = !DILocation(line: 4409, column: 27, scope: !3327)
!3343 = !DILocation(line: 4409, column: 20, scope: !3327)
!3344 = !DILocation(line: 4409, column: 10, scope: !3327)
!3345 = !DILocation(line: 4409, column: 35, scope: !3327)
!3346 = !DILocation(line: 4409, column: 5, scope: !3327)
!3347 = !DILocation(line: 4409, column: 8, scope: !3327)
!3348 = !DILocation(line: 4411, column: 3, scope: !3327)
!3349 = distinct !DISubprogram(name: "mf_decl_eligible_p", scope: !3, file: !3, line: 740, type: !2698, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3350)
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "decl", arg: 1, scope: !3349, file: !3, line: 740, type: !655)
!3352 = !DILocation(line: 0, scope: !3349)
!3353 = !DILocation(line: 742, column: 12, scope: !3349)
!3354 = !DILocation(line: 742, column: 29, scope: !3349)
!3355 = !DILocation(line: 742, column: 41, scope: !3349)
!3356 = !DILocation(line: 742, column: 61, scope: !3349)
!3357 = !DILocation(line: 747, column: 11, scope: !3349)
!3358 = !DILocation(line: 747, column: 14, scope: !3349)
!3359 = !DILocation(line: 749, column: 11, scope: !3349)
!3360 = !DILocation(line: 749, column: 14, scope: !3349)
!3361 = !DILocation(line: 751, column: 4, scope: !3349)
!3362 = !DILocation(line: 751, column: 8, scope: !3349)
!3363 = !DILocation(line: 742, column: 3, scope: !3349)
!3364 = distinct !DISubprogram(name: "gimple_set_location", scope: !575, file: !575, line: 1156, type: !3365, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !979, !780}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "g", arg: 1, scope: !3364, file: !575, line: 1156, type: !979)
!3369 = !DILocalVariable(name: "location", arg: 2, scope: !3364, file: !575, line: 1156, type: !780)
!3370 = !DILocation(line: 0, scope: !3364)
!3371 = !DILocation(line: 1158, column: 13, scope: !3364)
!3372 = !DILocation(line: 1158, column: 22, scope: !3364)
!3373 = !DILocation(line: 1159, column: 1, scope: !3364)
!3374 = distinct !DISubprogram(name: "gsi_end_p", scope: !575, file: !575, line: 4467, type: !3375, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!647, !3124}
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "i", arg: 1, scope: !3374, file: !575, line: 4467, type: !3124)
!3379 = !DILocation(line: 4467, column: 33, scope: !3374)
!3380 = !DILocation(line: 4469, column: 12, scope: !3374)
!3381 = !DILocation(line: 4469, column: 16, scope: !3374)
!3382 = !DILocation(line: 4469, column: 10, scope: !3374)
!3383 = !DILocation(line: 4469, column: 3, scope: !3374)
!3384 = distinct !DISubprogram(name: "gimple_seq_first", scope: !575, file: !575, line: 159, type: !3385, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3390)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!974, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !656, line: 67, baseType: !3388)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "s", arg: 1, scope: !3384, file: !575, line: 159, type: !3387)
!3392 = !DILocation(line: 0, scope: !3384)
!3393 = !DILocation(line: 161, column: 10, scope: !3384)
!3394 = !DILocation(line: 161, column: 17, scope: !3384)
!3395 = !DILocation(line: 161, column: 3, scope: !3384)
!3396 = distinct !DISubprogram(name: "gimple_bb", scope: !575, file: !575, line: 1112, type: !3397, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!943, !3202}
!3399 = !{!3400}
!3400 = !DILocalVariable(name: "g", arg: 1, scope: !3396, file: !575, line: 1112, type: !3202)
!3401 = !DILocation(line: 0, scope: !3396)
!3402 = !DILocation(line: 1114, column: 20, scope: !3396)
!3403 = !DILocation(line: 1114, column: 3, scope: !3396)
!3404 = distinct !DISubprogram(name: "mf_decl_cache_locals", scope: !3, file: !3, line: 484, type: !4, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3405)
!3405 = !{!3406, !3407}
!3406 = !DILocalVariable(name: "g", scope: !3404, file: !3, line: 486, type: !979)
!3407 = !DILocalVariable(name: "seq", scope: !3404, file: !3, line: 487, type: !969)
!3408 = !DILocation(line: 487, column: 3, scope: !3404)
!3409 = !DILocation(line: 487, column: 20, scope: !3404)
!3410 = !DILocation(line: 0, scope: !3404)
!3411 = !DILocation(line: 487, column: 14, scope: !3404)
!3412 = !DILocation(line: 491, column: 34, scope: !3404)
!3413 = !DILocation(line: 491, column: 16, scope: !3404)
!3414 = !DILocation(line: 491, column: 7, scope: !3404)
!3415 = !DILocation(line: 491, column: 5, scope: !3404)
!3416 = !DILocation(line: 495, column: 34, scope: !3404)
!3417 = !DILocation(line: 495, column: 16, scope: !3404)
!3418 = !DILocation(line: 495, column: 7, scope: !3404)
!3419 = !DILocation(line: 495, column: 5, scope: !3404)
!3420 = !DILocation(line: 500, column: 7, scope: !3404)
!3421 = !DILocation(line: 501, column: 27, scope: !3404)
!3422 = !DILocation(line: 501, column: 3, scope: !3404)
!3423 = !DILocation(line: 502, column: 3, scope: !3404)
!3424 = !DILocation(line: 504, column: 7, scope: !3404)
!3425 = !DILocation(line: 505, column: 27, scope: !3404)
!3426 = !DILocation(line: 505, column: 3, scope: !3404)
!3427 = !DILocation(line: 506, column: 3, scope: !3404)
!3428 = !DILocation(line: 508, column: 27, scope: !3404)
!3429 = !DILocation(line: 508, column: 32, scope: !3404)
!3430 = !DILocation(line: 508, column: 3, scope: !3404)
!3431 = !DILocation(line: 510, column: 3, scope: !3404)
!3432 = !DILocation(line: 511, column: 1, scope: !3404)
!3433 = distinct !DISubprogram(name: "mf_xform_statements", scope: !3, file: !3, line: 958, type: !4, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3440, !3445}
!3435 = !DILocalVariable(name: "bb", scope: !3433, file: !3, line: 960, type: !1379)
!3436 = !DILocalVariable(name: "next", scope: !3433, file: !3, line: 960, type: !1379)
!3437 = !DILocalVariable(name: "i", scope: !3433, file: !3, line: 961, type: !3124)
!3438 = !DILocalVariable(name: "saved_last_basic_block", scope: !3433, file: !3, line: 962, type: !648)
!3439 = !DILocalVariable(name: "grhs_class", scope: !3433, file: !3, line: 963, type: !613)
!3440 = !DILocalVariable(name: "s", scope: !3441, file: !3, line: 971, type: !979)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 970, column: 9)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 969, column: 7)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 969, column: 7)
!3444 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 967, column: 5)
!3445 = !DILocalVariable(name: "fndecl", scope: !3446, file: !3, line: 998, type: !655)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 997, column: 15)
!3447 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 975, column: 13)
!3448 = !DILocation(line: 961, column: 3, scope: !3433)
!3449 = !DILocation(line: 962, column: 32, scope: !3433)
!3450 = !DILocation(line: 0, scope: !3433)
!3451 = !DILocation(line: 965, column: 8, scope: !3433)
!3452 = !DILocation(line: 965, column: 26, scope: !3433)
!3453 = !DILocation(line: 0, scope: !3443)
!3454 = !DILocation(line: 966, column: 3, scope: !3433)
!3455 = !DILocation(line: 968, column: 18, scope: !3444)
!3456 = !DILocation(line: 969, column: 16, scope: !3443)
!3457 = !DILocation(line: 969, column: 12, scope: !3443)
!3458 = !DILocation(line: 969, column: 36, scope: !3442)
!3459 = !DILocation(line: 969, column: 35, scope: !3442)
!3460 = !DILocation(line: 969, column: 7, scope: !3443)
!3461 = !DILocation(line: 971, column: 22, scope: !3441)
!3462 = !DILocation(line: 0, scope: !3441)
!3463 = !DILocation(line: 974, column: 19, scope: !3441)
!3464 = !DILocation(line: 974, column: 11, scope: !3441)
!3465 = !DILocation(line: 977, column: 31, scope: !3447)
!3466 = !DILocation(line: 978, column: 8, scope: !3447)
!3467 = !DILocation(line: 978, column: 29, scope: !3447)
!3468 = !DILocation(line: 977, column: 8, scope: !3447)
!3469 = !DILocation(line: 979, column: 31, scope: !3447)
!3470 = !DILocation(line: 980, column: 8, scope: !3447)
!3471 = !DILocation(line: 980, column: 29, scope: !3447)
!3472 = !DILocation(line: 979, column: 8, scope: !3447)
!3473 = !DILocation(line: 981, column: 43, scope: !3447)
!3474 = !DILocation(line: 981, column: 21, scope: !3447)
!3475 = !DILocation(line: 982, column: 23, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 982, column: 12)
!3477 = !DILocation(line: 982, column: 12, scope: !3447)
!3478 = !DILocation(line: 983, column: 26, scope: !3476)
!3479 = !DILocation(line: 984, column: 8, scope: !3476)
!3480 = !DILocation(line: 984, column: 29, scope: !3476)
!3481 = !DILocation(line: 983, column: 3, scope: !3476)
!3482 = !DILocation(line: 988, column: 19, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 988, column: 19)
!3484 = !DILocation(line: 988, column: 44, scope: !3483)
!3485 = !DILocation(line: 988, column: 19, scope: !3447)
!3486 = !DILocation(line: 990, column: 42, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 989, column: 17)
!3488 = !DILocation(line: 991, column: 10, scope: !3487)
!3489 = !DILocation(line: 992, column: 10, scope: !3487)
!3490 = !DILocation(line: 990, column: 19, scope: !3487)
!3491 = !DILocation(line: 993, column: 17, scope: !3487)
!3492 = !DILocation(line: 998, column: 31, scope: !3446)
!3493 = !DILocation(line: 0, scope: !3446)
!3494 = !DILocation(line: 999, column: 21, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 999, column: 21)
!3496 = !DILocation(line: 999, column: 28, scope: !3495)
!3497 = !DILocation(line: 999, column: 32, scope: !3495)
!3498 = !DILocation(line: 999, column: 60, scope: !3495)
!3499 = !DILocation(line: 999, column: 21, scope: !3446)
!3500 = !DILocation(line: 1000, column: 19, scope: !3495)
!3501 = !DILocation(line: 969, column: 51, scope: !3442)
!3502 = !DILocation(line: 969, column: 7, scope: !3442)
!3503 = distinct !{!3503, !3460, !3504}
!3504 = !DILocation(line: 1007, column: 9, scope: !3443)
!3505 = !DILocation(line: 1010, column: 10, scope: !3433)
!3506 = !DILocation(line: 1010, column: 13, scope: !3433)
!3507 = !DILocation(line: 1010, column: 20, scope: !3433)
!3508 = !DILocation(line: 1010, column: 26, scope: !3433)
!3509 = !DILocation(line: 1009, column: 5, scope: !3444)
!3510 = distinct !{!3510, !3454, !3511}
!3511 = !DILocation(line: 1010, column: 51, scope: !3433)
!3512 = !DILocation(line: 1011, column: 1, scope: !3433)
!3513 = distinct !DISubprogram(name: "mf_decl_clear_locals", scope: !3, file: !3, line: 515, type: !4, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2216)
!3514 = !DILocation(line: 518, column: 25, scope: !3513)
!3515 = !DILocation(line: 519, column: 24, scope: !3513)
!3516 = !DILocation(line: 520, column: 1, scope: !3513)
!3517 = distinct !DISubprogram(name: "insert_edge_copies_seq", scope: !3, file: !3, line: 464, type: !3518, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !969, !1379}
!3520 = !{!3521, !3522, !3523, !3524, !3531}
!3521 = !DILocalVariable(name: "seq", arg: 1, scope: !3517, file: !3, line: 464, type: !969)
!3522 = !DILocalVariable(name: "bb", arg: 2, scope: !3517, file: !3, line: 464, type: !1379)
!3523 = !DILocalVariable(name: "e", scope: !3517, file: !3, line: 466, type: !959)
!3524 = !DILocalVariable(name: "ei", scope: !3517, file: !3, line: 467, type: !3525)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !333, line: 682, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 679, size: 128, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3526, file: !333, line: 680, baseType: !10, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3526, file: !333, line: 681, baseType: !3530, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!3531 = !DILocalVariable(name: "n_copies", scope: !3517, file: !3, line: 468, type: !10)
!3532 = !DILocation(line: 0, scope: !3517)
!3533 = !DILocation(line: 466, column: 3, scope: !3517)
!3534 = !DILocation(line: 467, column: 3, scope: !3517)
!3535 = !DILocation(line: 470, column: 3, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 470, column: 3)
!3537 = !DILocation(line: 0, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 470, column: 3)
!3539 = !DILocation(line: 468, column: 12, scope: !3517)
!3540 = !DILocation(line: 470, column: 3, scope: !3538)
!3541 = !DILocation(line: 471, column: 11, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 471, column: 9)
!3543 = !DILocation(line: 471, column: 14, scope: !3542)
!3544 = !DILocation(line: 471, column: 9, scope: !3538)
!3545 = distinct !{!3545, !3535, !3546}
!3546 = !DILocation(line: 472, column: 15, scope: !3536)
!3547 = !DILocation(line: 474, column: 3, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 474, column: 3)
!3549 = !DILocation(line: 474, column: 3, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 474, column: 3)
!3551 = !DILocation(line: 475, column: 11, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 475, column: 9)
!3553 = !DILocation(line: 475, column: 14, scope: !3552)
!3554 = !DILocation(line: 475, column: 20, scope: !3552)
!3555 = !DILocation(line: 475, column: 9, scope: !3550)
!3556 = !DILocation(line: 476, column: 42, scope: !3552)
!3557 = !DILocation(line: 476, column: 45, scope: !3552)
!3558 = !DILocation(line: 476, column: 34, scope: !3552)
!3559 = !DILocation(line: 476, column: 51, scope: !3552)
!3560 = !DILocation(line: 476, column: 7, scope: !3552)
!3561 = distinct !{!3561, !3547, !3562}
!3562 = !DILocation(line: 476, column: 78, scope: !3548)
!3563 = !DILocation(line: 477, column: 1, scope: !3517)
!3564 = distinct !DISubprogram(name: "ei_start_1", scope: !333, file: !333, line: 696, type: !3565, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!3525, !3530}
!3567 = !{!3568, !3569}
!3568 = !DILocalVariable(name: "ev", arg: 1, scope: !3564, file: !333, line: 696, type: !3530)
!3569 = !DILocalVariable(name: "i", scope: !3564, file: !333, line: 698, type: !3525)
!3570 = !DILocation(line: 0, scope: !3564)
!3571 = !DILocation(line: 700, column: 5, scope: !3564)
!3572 = !DILocation(line: 700, column: 11, scope: !3564)
!3573 = !DILocation(line: 701, column: 5, scope: !3564)
!3574 = !DILocation(line: 701, column: 15, scope: !3564)
!3575 = !DILocation(line: 703, column: 3, scope: !3564)
!3576 = distinct !DISubprogram(name: "ei_cond", scope: !333, file: !333, line: 771, type: !3577, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3580)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!647, !3525, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!3580 = !{!3581, !3582}
!3581 = !DILocalVariable(name: "ei", arg: 1, scope: !3576, file: !333, line: 771, type: !3525)
!3582 = !DILocalVariable(name: "p", arg: 2, scope: !3576, file: !333, line: 771, type: !3579)
!3583 = !DILocation(line: 0, scope: !3576)
!3584 = !DILocation(line: 773, column: 8, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3576, file: !333, line: 773, column: 7)
!3586 = !DILocation(line: 773, column: 7, scope: !3576)
!3587 = !DILocation(line: 775, column: 12, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3585, file: !333, line: 774, column: 5)
!3589 = !DILocation(line: 776, column: 7, scope: !3588)
!3590 = !DILocation(line: 781, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3585, file: !333, line: 779, column: 5)
!3592 = !DILocation(line: 0, scope: !3585)
!3593 = !DILocation(line: 783, column: 1, scope: !3576)
!3594 = distinct !DISubprogram(name: "ei_next", scope: !333, file: !333, line: 736, type: !3595, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3598)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3597}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3598 = !{!3599}
!3599 = !DILocalVariable(name: "i", arg: 1, scope: !3594, file: !333, line: 736, type: !3597)
!3600 = !DILocation(line: 0, scope: !3594)
!3601 = !DILocation(line: 738, column: 3, scope: !3594)
!3602 = !DILocation(line: 739, column: 11, scope: !3594)
!3603 = !DILocation(line: 740, column: 1, scope: !3594)
!3604 = distinct !DISubprogram(name: "ei_end_p", scope: !333, file: !333, line: 721, type: !3605, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!647, !3525}
!3607 = !{!3608}
!3608 = !DILocalVariable(name: "i", arg: 1, scope: !3604, file: !333, line: 721, type: !3525)
!3609 = !DILocation(line: 723, column: 22, scope: !3604)
!3610 = !DILocation(line: 723, column: 19, scope: !3604)
!3611 = !DILocation(line: 723, column: 10, scope: !3604)
!3612 = !DILocation(line: 723, column: 3, scope: !3604)
!3613 = distinct !DISubprogram(name: "ei_edge", scope: !333, file: !333, line: 752, type: !3614, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!959, !3525}
!3616 = !{!3617}
!3617 = !DILocalVariable(name: "i", arg: 1, scope: !3613, file: !333, line: 752, type: !3525)
!3618 = !DILocation(line: 754, column: 10, scope: !3613)
!3619 = !DILocation(line: 754, column: 3, scope: !3613)
!3620 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !333, file: !333, line: 150, type: !3621, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3625)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!10, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!3625 = !{!3626}
!3626 = !DILocalVariable(name: "vec_", arg: 1, scope: !3620, file: !333, line: 150, type: !3623)
!3627 = !DILocation(line: 0, scope: !3620)
!3628 = !DILocation(line: 150, column: 1, scope: !3620)
!3629 = distinct !DISubprogram(name: "ei_container", scope: !333, file: !333, line: 685, type: !3630, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!947, !3525}
!3632 = !{!3633}
!3633 = !DILocalVariable(name: "i", arg: 1, scope: !3629, file: !333, line: 685, type: !3525)
!3634 = !DILocation(line: 687, column: 3, scope: !3629)
!3635 = !DILocation(line: 688, column: 10, scope: !3629)
!3636 = !DILocation(line: 688, column: 3, scope: !3629)
!3637 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !333, file: !333, line: 150, type: !3638, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!959, !3623, !10}
!3640 = !{!3641, !3642}
!3641 = !DILocalVariable(name: "vec_", arg: 1, scope: !3637, file: !333, line: 150, type: !3623)
!3642 = !DILocalVariable(name: "ix_", arg: 2, scope: !3637, file: !333, line: 150, type: !10)
!3643 = !DILocation(line: 0, scope: !3637)
!3644 = !DILocation(line: 150, column: 1, scope: !3637)
!3645 = distinct !DISubprogram(name: "gsi_start_bb", scope: !575, file: !575, line: 4418, type: !3646, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!3124, !1379}
!3648 = !{!3649, !3650, !3651}
!3649 = !DILocalVariable(name: "bb", arg: 1, scope: !3645, file: !575, line: 4418, type: !1379)
!3650 = !DILocalVariable(name: "i", scope: !3645, file: !575, line: 4420, type: !3124)
!3651 = !DILocalVariable(name: "seq", scope: !3645, file: !575, line: 4421, type: !969)
!3652 = !DILocation(line: 0, scope: !3645)
!3653 = !DILocation(line: 4420, column: 24, scope: !3645)
!3654 = !DILocation(line: 4423, column: 9, scope: !3645)
!3655 = !DILocation(line: 4424, column: 11, scope: !3645)
!3656 = !DILocation(line: 4424, column: 5, scope: !3645)
!3657 = !DILocation(line: 4424, column: 9, scope: !3645)
!3658 = !DILocation(line: 4425, column: 5, scope: !3645)
!3659 = !DILocation(line: 4425, column: 9, scope: !3645)
!3660 = !DILocation(line: 4426, column: 5, scope: !3645)
!3661 = !DILocation(line: 4426, column: 8, scope: !3645)
!3662 = !DILocation(line: 4429, column: 1, scope: !3645)
!3663 = distinct !DISubprogram(name: "mf_xform_derefs_1", scope: !3, file: !3, line: 756, type: !3664, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !3157, !1014, !780, !655}
!3666 = !{!3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3680, !3681, !3682, !3683, !3686, !3688, !3689}
!3667 = !DILocalVariable(name: "iter", arg: 1, scope: !3663, file: !3, line: 756, type: !3157)
!3668 = !DILocalVariable(name: "tp", arg: 2, scope: !3663, file: !3, line: 756, type: !1014)
!3669 = !DILocalVariable(name: "location", arg: 3, scope: !3663, file: !3, line: 757, type: !780)
!3670 = !DILocalVariable(name: "dirflag", arg: 4, scope: !3663, file: !3, line: 757, type: !655)
!3671 = !DILocalVariable(name: "type", scope: !3663, file: !3, line: 759, type: !655)
!3672 = !DILocalVariable(name: "base", scope: !3663, file: !3, line: 759, type: !655)
!3673 = !DILocalVariable(name: "limit", scope: !3663, file: !3, line: 759, type: !655)
!3674 = !DILocalVariable(name: "addr", scope: !3663, file: !3, line: 759, type: !655)
!3675 = !DILocalVariable(name: "size", scope: !3663, file: !3, line: 759, type: !655)
!3676 = !DILocalVariable(name: "t", scope: !3663, file: !3, line: 759, type: !655)
!3677 = !DILocalVariable(name: "var", scope: !3678, file: !3, line: 791, type: !655)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 781, column: 7)
!3679 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 778, column: 5)
!3680 = !DILocalVariable(name: "component_ref_only", scope: !3678, file: !3, line: 792, type: !648)
!3681 = !DILocalVariable(name: "elt", scope: !3678, file: !3, line: 796, type: !655)
!3682 = !DILocalVariable(name: "bitfield_ref_p", scope: !3678, file: !3, line: 797, type: !648)
!3683 = !DILocalVariable(name: "field", scope: !3684, file: !3, line: 861, type: !655)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 860, column: 11)
!3685 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 859, column: 13)
!3686 = !DILocalVariable(name: "ofs", scope: !3687, file: !3, line: 913, type: !655)
!3687 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 912, column: 7)
!3688 = !DILocalVariable(name: "rem", scope: !3687, file: !3, line: 913, type: !655)
!3689 = !DILocalVariable(name: "bpu", scope: !3687, file: !3, line: 913, type: !655)
!3690 = !DILocation(line: 0, scope: !3663)
!3691 = !DILocation(line: 762, column: 18, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 762, column: 7)
!3693 = !DILocation(line: 762, column: 15, scope: !3692)
!3694 = !DILocation(line: 762, column: 39, scope: !3692)
!3695 = !DILocation(line: 762, column: 36, scope: !3692)
!3696 = !DILocation(line: 766, column: 20, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 766, column: 7)
!3698 = !DILocation(line: 766, column: 7, scope: !3697)
!3699 = !DILocation(line: 766, column: 7, scope: !3663)
!3700 = !DILocation(line: 769, column: 7, scope: !3663)
!3701 = !DILocation(line: 770, column: 10, scope: !3663)
!3702 = !DILocation(line: 772, column: 15, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 772, column: 7)
!3704 = !DILocation(line: 772, column: 12, scope: !3703)
!3705 = !DILocation(line: 772, column: 7, scope: !3663)
!3706 = !DILocation(line: 775, column: 10, scope: !3663)
!3707 = !DILocation(line: 777, column: 11, scope: !3663)
!3708 = !DILocation(line: 777, column: 3, scope: !3663)
!3709 = !DILocation(line: 792, column: 49, scope: !3678)
!3710 = !DILocation(line: 0, scope: !3678)
!3711 = !DILocation(line: 798, column: 10, scope: !3678)
!3712 = !DILocation(line: 798, column: 13, scope: !3678)
!3713 = !DILocation(line: 802, column: 15, scope: !3678)
!3714 = !DILocation(line: 803, column: 9, scope: !3678)
!3715 = !DILocation(line: 805, column: 32, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 805, column: 10)
!3717 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 804, column: 11)
!3718 = !DILocation(line: 805, column: 25, scope: !3716)
!3719 = !DILocation(line: 0, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 810, column: 17)
!3721 = !DILocation(line: 810, column: 17, scope: !3720)
!3722 = !DILocation(line: 806, column: 7, scope: !3716)
!3723 = !DILocation(line: 806, column: 23, scope: !3716)
!3724 = !DILocation(line: 807, column: 7, scope: !3716)
!3725 = !DILocation(line: 807, column: 26, scope: !3716)
!3726 = !DILocation(line: 805, column: 10, scope: !3717)
!3727 = !DILocation(line: 808, column: 8, scope: !3716)
!3728 = !DILocation(line: 810, column: 33, scope: !3720)
!3729 = !DILocation(line: 810, column: 17, scope: !3717)
!3730 = !DILocation(line: 815, column: 38, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 815, column: 22)
!3732 = !DILocation(line: 815, column: 22, scope: !3720)
!3733 = !DILocation(line: 817, column: 22, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 817, column: 22)
!3735 = !DILocation(line: 817, column: 22, scope: !3731)
!3736 = !DILocation(line: 822, column: 38, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 822, column: 22)
!3738 = !DILocation(line: 822, column: 22, scope: !3734)
!3739 = !DILocation(line: 824, column: 9, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 823, column: 8)
!3741 = !DILocation(line: 825, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 825, column: 7)
!3743 = !DILocation(line: 826, column: 7, scope: !3742)
!3744 = !DILocation(line: 826, column: 26, scope: !3742)
!3745 = !DILocation(line: 825, column: 7, scope: !3740)
!3746 = !DILocation(line: 816, column: 21, scope: !3731)
!3747 = !DILocation(line: 816, column: 15, scope: !3731)
!3748 = !DILocation(line: 813, column: 23, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 811, column: 15)
!3750 = !DILocation(line: 814, column: 15, scope: !3749)
!3751 = distinct !{!3751, !3714, !3752}
!3752 = !DILocation(line: 848, column: 11, scope: !3678)
!3753 = !DILocation(line: 819, column: 10, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 818, column: 15)
!3755 = !DILocation(line: 831, column: 17, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 830, column: 15)
!3757 = !DILocation(line: 820, column: 17, scope: !3754)
!3758 = !DILocation(line: 839, column: 23, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 839, column: 21)
!3760 = !DILocation(line: 839, column: 51, scope: !3759)
!3761 = !DILocation(line: 839, column: 48, scope: !3759)
!3762 = !DILocation(line: 843, column: 14, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 842, column: 5)
!3764 = !DILocation(line: 845, column: 7, scope: !3763)
!3765 = !DILocation(line: 0, scope: !3734)
!3766 = !DILocation(line: 859, column: 13, scope: !3678)
!3767 = !DILocation(line: 861, column: 26, scope: !3684)
!3768 = !DILocation(line: 0, scope: !3684)
!3769 = !DILocation(line: 863, column: 17, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 863, column: 17)
!3771 = !DILocation(line: 863, column: 52, scope: !3770)
!3772 = !DILocation(line: 863, column: 17, scope: !3684)
!3773 = !DILocation(line: 864, column: 15, scope: !3770)
!3774 = !DILocation(line: 866, column: 10, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 866, column: 10)
!3776 = !DILocation(line: 866, column: 10, scope: !3684)
!3777 = !DILocation(line: 867, column: 14, scope: !3775)
!3778 = !DILocation(line: 867, column: 8, scope: !3775)
!3779 = !DILocation(line: 869, column: 48, scope: !3684)
!3780 = !DILocation(line: 869, column: 63, scope: !3684)
!3781 = !DILocation(line: 869, column: 20, scope: !3684)
!3782 = !DILocation(line: 870, column: 20, scope: !3684)
!3783 = !DILocation(line: 873, column: 11, scope: !3684)
!3784 = !DILocation(line: 875, column: 18, scope: !3685)
!3785 = !DILocation(line: 0, scope: !3685)
!3786 = !DILocation(line: 877, column: 17, scope: !3678)
!3787 = !DILocation(line: 882, column: 7, scope: !3679)
!3788 = !DILocation(line: 886, column: 14, scope: !3679)
!3789 = !DILocation(line: 888, column: 15, scope: !3679)
!3790 = !DILocation(line: 893, column: 7, scope: !3679)
!3791 = !DILocation(line: 896, column: 33, scope: !3679)
!3792 = !DILocation(line: 896, column: 14, scope: !3679)
!3793 = !DILocation(line: 898, column: 15, scope: !3679)
!3794 = !DILocation(line: 903, column: 7, scope: !3679)
!3795 = !DILocation(line: 906, column: 7, scope: !3679)
!3796 = !DILocation(line: 908, column: 7, scope: !3679)
!3797 = !DILocation(line: 917, column: 13, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 917, column: 13)
!3799 = !DILocation(line: 917, column: 45, scope: !3798)
!3800 = !DILocation(line: 917, column: 13, scope: !3687)
!3801 = !DILocation(line: 920, column: 15, scope: !3687)
!3802 = !DILocation(line: 0, scope: !3687)
!3803 = !DILocation(line: 921, column: 24, scope: !3687)
!3804 = !DILocation(line: 921, column: 37, scope: !3687)
!3805 = !DILocation(line: 921, column: 15, scope: !3687)
!3806 = !DILocation(line: 922, column: 15, scope: !3687)
!3807 = !DILocation(line: 924, column: 5, scope: !3687)
!3808 = !DILocation(line: 925, column: 5, scope: !3687)
!3809 = !DILocation(line: 923, column: 15, scope: !3687)
!3810 = !DILocation(line: 928, column: 25, scope: !3687)
!3811 = !DILocation(line: 928, column: 38, scope: !3687)
!3812 = !DILocation(line: 928, column: 16, scope: !3687)
!3813 = !DILocation(line: 929, column: 16, scope: !3687)
!3814 = !DILocation(line: 930, column: 16, scope: !3687)
!3815 = !DILocation(line: 931, column: 25, scope: !3687)
!3816 = !DILocation(line: 931, column: 16, scope: !3687)
!3817 = !DILocation(line: 933, column: 16, scope: !3687)
!3818 = !DILocation(line: 934, column: 25, scope: !3687)
!3819 = !DILocation(line: 934, column: 16, scope: !3687)
!3820 = !DILocation(line: 935, column: 16, scope: !3687)
!3821 = !DILocation(line: 939, column: 17, scope: !3687)
!3822 = !DILocation(line: 944, column: 7, scope: !3679)
!3823 = !DILocation(line: 951, column: 3, scope: !3663)
!3824 = !DILocation(line: 952, column: 1, scope: !3663)
!3825 = distinct !DISubprogram(name: "gimple_assign_lhs_ptr", scope: !575, file: !575, line: 1704, type: !3826, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!1014, !3202}
!3828 = !{!3829}
!3829 = !DILocalVariable(name: "gs", arg: 1, scope: !3825, file: !575, line: 1704, type: !3202)
!3830 = !DILocation(line: 0, scope: !3825)
!3831 = !DILocation(line: 1707, column: 10, scope: !3825)
!3832 = !DILocation(line: 1707, column: 3, scope: !3825)
!3833 = distinct !DISubprogram(name: "gimple_assign_rhs1_ptr", scope: !575, file: !575, line: 1738, type: !3826, scopeLine: 1739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3834)
!3834 = !{!3835}
!3835 = !DILocalVariable(name: "gs", arg: 1, scope: !3833, file: !575, line: 1738, type: !3202)
!3836 = !DILocation(line: 0, scope: !3833)
!3837 = !DILocation(line: 1741, column: 10, scope: !3833)
!3838 = !DILocation(line: 1741, column: 3, scope: !3833)
!3839 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !575, file: !575, line: 1686, type: !3840, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!613, !137}
!3842 = !{!3843}
!3843 = !DILocalVariable(name: "code", arg: 1, scope: !3839, file: !575, line: 1686, type: !137)
!3844 = !DILocation(line: 0, scope: !3839)
!3845 = !DILocation(line: 1688, column: 34, scope: !3839)
!3846 = !DILocation(line: 1688, column: 10, scope: !3839)
!3847 = !DILocation(line: 1688, column: 3, scope: !3839)
!3848 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !575, file: !575, line: 1815, type: !3849, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!137, !3202}
!3851 = !{!3852, !3853}
!3852 = !DILocalVariable(name: "gs", arg: 1, scope: !3848, file: !575, line: 1815, type: !3202)
!3853 = !DILocalVariable(name: "code", scope: !3848, file: !575, line: 1817, type: !137)
!3854 = !DILocation(line: 0, scope: !3848)
!3855 = !DILocation(line: 1820, column: 10, scope: !3848)
!3856 = !DILocation(line: 1821, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3848, file: !575, line: 1821, column: 7)
!3858 = !DILocation(line: 1821, column: 35, scope: !3857)
!3859 = !DILocation(line: 1821, column: 7, scope: !3848)
!3860 = !DILocation(line: 1822, column: 12, scope: !3857)
!3861 = !DILocation(line: 1822, column: 5, scope: !3857)
!3862 = !DILocation(line: 1824, column: 3, scope: !3848)
!3863 = distinct !DISubprogram(name: "gimple_assign_rhs2_ptr", scope: !575, file: !575, line: 1774, type: !3826, scopeLine: 1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3864)
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "gs", arg: 1, scope: !3863, file: !575, line: 1774, type: !3202)
!3866 = !DILocation(line: 0, scope: !3863)
!3867 = !DILocation(line: 1777, column: 10, scope: !3863)
!3868 = !DILocation(line: 1777, column: 3, scope: !3863)
!3869 = distinct !DISubprogram(name: "gimple_return_retval", scope: !575, file: !575, line: 4253, type: !3320, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3870)
!3870 = !{!3871}
!3871 = !DILocalVariable(name: "gs", arg: 1, scope: !3869, file: !575, line: 4253, type: !3202)
!3872 = !DILocation(line: 0, scope: !3869)
!3873 = !DILocation(line: 4256, column: 10, scope: !3869)
!3874 = !DILocation(line: 4256, column: 3, scope: !3869)
!3875 = distinct !DISubprogram(name: "gimple_return_retval_ptr", scope: !575, file: !575, line: 4244, type: !3826, scopeLine: 4245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3876)
!3876 = !{!3877}
!3877 = !DILocalVariable(name: "gs", arg: 1, scope: !3875, file: !575, line: 4244, type: !3202)
!3878 = !DILocation(line: 0, scope: !3875)
!3879 = !DILocation(line: 4247, column: 10, scope: !3875)
!3880 = !DILocation(line: 4247, column: 3, scope: !3875)
!3881 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !575, file: !575, line: 1954, type: !3320, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3882)
!3882 = !{!3883, !3884}
!3883 = !DILocalVariable(name: "gs", arg: 1, scope: !3881, file: !575, line: 1954, type: !3202)
!3884 = !DILocalVariable(name: "addr", scope: !3881, file: !575, line: 1956, type: !655)
!3885 = !DILocation(line: 0, scope: !3881)
!3886 = !DILocation(line: 1956, column: 15, scope: !3881)
!3887 = !DILocation(line: 1957, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3881, file: !575, line: 1957, column: 7)
!3889 = !DILocation(line: 1957, column: 24, scope: !3888)
!3890 = !DILocation(line: 1957, column: 7, scope: !3881)
!3891 = !DILocation(line: 1958, column: 12, scope: !3888)
!3892 = !DILocation(line: 1958, column: 5, scope: !3888)
!3893 = !DILocation(line: 1960, column: 1, scope: !3881)
!3894 = distinct !DISubprogram(name: "gimple_call_set_cannot_inline", scope: !575, file: !575, line: 2081, type: !3895, scopeLine: 2082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !979, !647}
!3897 = !{!3898, !3899}
!3898 = !DILocalVariable(name: "s", arg: 1, scope: !3894, file: !575, line: 2081, type: !979)
!3899 = !DILocalVariable(name: "inlinable_p", arg: 2, scope: !3894, file: !575, line: 2081, type: !647)
!3900 = !DILocation(line: 0, scope: !3894)
!3901 = !DILocation(line: 0, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3894, file: !575, line: 2084, column: 7)
!3903 = !DILocation(line: 2085, column: 23, scope: !3902)
!3904 = !DILocation(line: 2088, column: 1, scope: !3894)
!3905 = distinct !DISubprogram(name: "gsi_next", scope: !575, file: !575, line: 4485, type: !3906, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3157}
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "i", arg: 1, scope: !3905, file: !575, line: 4485, type: !3157)
!3910 = !DILocation(line: 0, scope: !3905)
!3911 = !DILocation(line: 4487, column: 15, scope: !3905)
!3912 = !DILocation(line: 4487, column: 20, scope: !3905)
!3913 = !DILocation(line: 4487, column: 10, scope: !3905)
!3914 = !DILocation(line: 4488, column: 1, scope: !3905)
!3915 = distinct !DISubprogram(name: "bb_seq", scope: !575, file: !575, line: 237, type: !3916, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3921)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!969, !3918}
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !656, line: 112, baseType: !3919)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!3921 = !{!3922}
!3922 = !DILocalVariable(name: "bb", arg: 1, scope: !3915, file: !575, line: 237, type: !3918)
!3923 = !DILocation(line: 0, scope: !3915)
!3924 = !DILocation(line: 239, column: 17, scope: !3915)
!3925 = !DILocation(line: 239, column: 23, scope: !3915)
!3926 = !DILocation(line: 239, column: 33, scope: !3915)
!3927 = !DILocation(line: 239, column: 43, scope: !3915)
!3928 = !DILocation(line: 239, column: 36, scope: !3915)
!3929 = !DILocation(line: 239, column: 10, scope: !3915)
!3930 = !DILocation(line: 239, column: 68, scope: !3915)
!3931 = !DILocation(line: 239, column: 3, scope: !3915)
!3932 = distinct !DISubprogram(name: "mf_build_check_statement_for", scope: !3, file: !3, line: 523, type: !3933, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !655, !655, !3157, !780, !655}
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3936 = !DILocalVariable(name: "base", arg: 1, scope: !3932, file: !3, line: 523, type: !655)
!3937 = !DILocalVariable(name: "limit", arg: 2, scope: !3932, file: !3, line: 523, type: !655)
!3938 = !DILocalVariable(name: "instr_gsi", arg: 3, scope: !3932, file: !3, line: 524, type: !3157)
!3939 = !DILocalVariable(name: "location", arg: 4, scope: !3932, file: !3, line: 525, type: !780)
!3940 = !DILocalVariable(name: "dirflag", arg: 5, scope: !3932, file: !3, line: 525, type: !655)
!3941 = !DILocalVariable(name: "gsi", scope: !3932, file: !3, line: 527, type: !3124)
!3942 = !DILocalVariable(name: "cond_bb", scope: !3932, file: !3, line: 528, type: !1379)
!3943 = !DILocalVariable(name: "then_bb", scope: !3932, file: !3, line: 528, type: !1379)
!3944 = !DILocalVariable(name: "join_bb", scope: !3932, file: !3, line: 528, type: !1379)
!3945 = !DILocalVariable(name: "e", scope: !3932, file: !3, line: 529, type: !959)
!3946 = !DILocalVariable(name: "cond", scope: !3932, file: !3, line: 530, type: !655)
!3947 = !DILocalVariable(name: "t", scope: !3932, file: !3, line: 530, type: !655)
!3948 = !DILocalVariable(name: "u", scope: !3932, file: !3, line: 530, type: !655)
!3949 = !DILocalVariable(name: "v", scope: !3932, file: !3, line: 530, type: !655)
!3950 = !DILocalVariable(name: "mf_base", scope: !3932, file: !3, line: 531, type: !655)
!3951 = !DILocalVariable(name: "mf_elem", scope: !3932, file: !3, line: 532, type: !655)
!3952 = !DILocalVariable(name: "mf_limit", scope: !3932, file: !3, line: 533, type: !655)
!3953 = !DILocalVariable(name: "g", scope: !3932, file: !3, line: 534, type: !979)
!3954 = !DILocalVariable(name: "seq", scope: !3932, file: !3, line: 535, type: !969)
!3955 = !DILocalVariable(name: "stmts", scope: !3932, file: !3, line: 535, type: !969)
!3956 = !DILocation(line: 0, scope: !3932)
!3957 = !DILocation(line: 527, column: 3, scope: !3932)
!3958 = !DILocation(line: 535, column: 3, scope: !3932)
!3959 = !DILocation(line: 541, column: 24, scope: !3932)
!3960 = !DILocation(line: 541, column: 13, scope: !3932)
!3961 = !DILocation(line: 542, column: 9, scope: !3932)
!3962 = !DILocation(line: 543, column: 3, scope: !3932)
!3963 = !DILocation(line: 544, column: 9, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 544, column: 7)
!3965 = !DILocation(line: 544, column: 7, scope: !3932)
!3966 = !DILocation(line: 545, column: 31, scope: !3964)
!3967 = !DILocation(line: 545, column: 9, scope: !3964)
!3968 = !DILocation(line: 545, column: 5, scope: !3964)
!3969 = !DILocation(line: 547, column: 9, scope: !3964)
!3970 = !DILocation(line: 0, scope: !3964)
!3971 = !DILocation(line: 548, column: 16, scope: !3932)
!3972 = !DILocation(line: 549, column: 16, scope: !3932)
!3973 = !DILocation(line: 559, column: 13, scope: !3932)
!3974 = !DILocation(line: 560, column: 3, scope: !3932)
!3975 = !DILocation(line: 561, column: 3, scope: !3932)
!3976 = !DILocation(line: 564, column: 7, scope: !3932)
!3977 = !DILocation(line: 565, column: 6, scope: !3932)
!3978 = !DILocation(line: 565, column: 12, scope: !3932)
!3979 = !DILocation(line: 566, column: 23, scope: !3932)
!3980 = !DILocation(line: 566, column: 6, scope: !3932)
!3981 = !DILocation(line: 566, column: 12, scope: !3932)
!3982 = !DILocation(line: 567, column: 6, scope: !3932)
!3983 = !DILocation(line: 567, column: 18, scope: !3932)
!3984 = !DILocation(line: 571, column: 7, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 571, column: 7)
!3986 = !DILocation(line: 571, column: 7, scope: !3932)
!3987 = !DILocation(line: 573, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 572, column: 5)
!3989 = !DILocation(line: 574, column: 7, scope: !3988)
!3990 = !DILocation(line: 575, column: 5, scope: !3988)
!3991 = !DILocation(line: 578, column: 31, scope: !3932)
!3992 = !DILocation(line: 578, column: 13, scope: !3932)
!3993 = !DILocation(line: 579, column: 31, scope: !3932)
!3994 = !DILocation(line: 579, column: 13, scope: !3932)
!3995 = !DILocation(line: 580, column: 32, scope: !3932)
!3996 = !DILocation(line: 580, column: 14, scope: !3932)
!3997 = !DILocation(line: 583, column: 9, scope: !3932)
!3998 = !DILocation(line: 583, column: 7, scope: !3932)
!3999 = !DILocation(line: 584, column: 35, scope: !3932)
!4000 = !DILocation(line: 585, column: 4, scope: !3932)
!4001 = !DILocation(line: 584, column: 7, scope: !3932)
!4002 = !DILocation(line: 586, column: 7, scope: !3932)
!4003 = !DILocation(line: 587, column: 29, scope: !3932)
!4004 = !DILocation(line: 587, column: 3, scope: !3932)
!4005 = !DILocation(line: 588, column: 7, scope: !3932)
!4006 = !DILocation(line: 589, column: 3, scope: !3932)
!4007 = !DILocation(line: 590, column: 3, scope: !3932)
!4008 = !DILocation(line: 593, column: 35, scope: !3932)
!4009 = !DILocation(line: 594, column: 4, scope: !3932)
!4010 = !DILocation(line: 593, column: 7, scope: !3932)
!4011 = !DILocation(line: 595, column: 7, scope: !3932)
!4012 = !DILocation(line: 596, column: 29, scope: !3932)
!4013 = !DILocation(line: 596, column: 3, scope: !3932)
!4014 = !DILocation(line: 597, column: 7, scope: !3932)
!4015 = !DILocation(line: 598, column: 3, scope: !3932)
!4016 = !DILocation(line: 599, column: 3, scope: !3932)
!4017 = !DILocation(line: 603, column: 7, scope: !3932)
!4018 = !DILocation(line: 606, column: 7, scope: !3932)
!4019 = !DILocation(line: 609, column: 7, scope: !3932)
!4020 = !DILocation(line: 612, column: 7, scope: !3932)
!4021 = !DILocation(line: 613, column: 7, scope: !3932)
!4022 = !DILocation(line: 614, column: 29, scope: !3932)
!4023 = !DILocation(line: 614, column: 3, scope: !3932)
!4024 = !DILocation(line: 615, column: 7, scope: !3932)
!4025 = !DILocation(line: 616, column: 3, scope: !3932)
!4026 = !DILocation(line: 617, column: 3, scope: !3932)
!4027 = !DILocation(line: 634, column: 7, scope: !3932)
!4028 = !DILocation(line: 637, column: 7, scope: !3932)
!4029 = !DILocation(line: 647, column: 7, scope: !3932)
!4030 = !DILocation(line: 653, column: 7, scope: !3932)
!4031 = !DILocation(line: 658, column: 7, scope: !3932)
!4032 = !DILocation(line: 659, column: 7, scope: !3932)
!4033 = !DILocation(line: 660, column: 29, scope: !3932)
!4034 = !DILocation(line: 660, column: 3, scope: !3932)
!4035 = !DILocation(line: 661, column: 28, scope: !3932)
!4036 = !DILocation(line: 661, column: 10, scope: !3932)
!4037 = !DILocation(line: 662, column: 7, scope: !3932)
!4038 = !DILocation(line: 663, column: 3, scope: !3932)
!4039 = !DILocation(line: 664, column: 3, scope: !3932)
!4040 = !DILocation(line: 668, column: 41, scope: !3932)
!4041 = !DILocation(line: 668, column: 7, scope: !3932)
!4042 = !DILocation(line: 670, column: 3, scope: !3932)
!4043 = !DILocation(line: 671, column: 3, scope: !3932)
!4044 = !DILocation(line: 684, column: 9, scope: !3932)
!4045 = !DILocation(line: 685, column: 31, scope: !3932)
!4046 = !DILocation(line: 685, column: 3, scope: !3932)
!4047 = !DILocation(line: 694, column: 9, scope: !3932)
!4048 = !DILocation(line: 694, column: 7, scope: !3932)
!4049 = !DILocation(line: 696, column: 7, scope: !3932)
!4050 = !DILocation(line: 698, column: 7, scope: !3932)
!4051 = !DILocation(line: 702, column: 7, scope: !3932)
!4052 = !DILocation(line: 703, column: 29, scope: !3932)
!4053 = !DILocation(line: 703, column: 3, scope: !3932)
!4054 = !DILocation(line: 704, column: 26, scope: !3932)
!4055 = !DILocation(line: 704, column: 7, scope: !3932)
!4056 = !DILocation(line: 705, column: 3, scope: !3932)
!4057 = !DILocation(line: 707, column: 9, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 707, column: 7)
!4059 = !DILocation(line: 707, column: 7, scope: !3932)
!4060 = !DILocation(line: 709, column: 11, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 709, column: 11)
!4062 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 708, column: 5)
!4063 = !DILocation(line: 709, column: 11, scope: !4062)
!4064 = !DILocation(line: 711, column: 10, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 710, column: 2)
!4066 = !DILocation(line: 712, column: 32, scope: !4065)
!4067 = !DILocation(line: 712, column: 4, scope: !4065)
!4068 = !DILocation(line: 713, column: 30, scope: !4065)
!4069 = !DILocation(line: 713, column: 8, scope: !4065)
!4070 = !DILocation(line: 714, column: 17, scope: !4065)
!4071 = !DILocation(line: 715, column: 10, scope: !4065)
!4072 = !DILocation(line: 715, column: 8, scope: !4065)
!4073 = !DILocation(line: 716, column: 2, scope: !4065)
!4074 = !DILocation(line: 718, column: 11, scope: !4062)
!4075 = !DILocation(line: 719, column: 7, scope: !4062)
!4076 = !DILocation(line: 721, column: 11, scope: !4062)
!4077 = !DILocation(line: 722, column: 7, scope: !4062)
!4078 = !DILocation(line: 723, column: 5, scope: !4062)
!4079 = !DILocation(line: 726, column: 9, scope: !3932)
!4080 = !DILocation(line: 727, column: 31, scope: !3932)
!4081 = !DILocation(line: 727, column: 3, scope: !3932)
!4082 = !DILocation(line: 729, column: 16, scope: !3932)
!4083 = !DILocation(line: 730, column: 1, scope: !3932)
!4084 = distinct !DISubprogram(name: "gsi_prev", scope: !575, file: !575, line: 4493, type: !3906, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4085)
!4085 = !{!4086}
!4086 = !DILocalVariable(name: "i", arg: 1, scope: !4084, file: !575, line: 4493, type: !3157)
!4087 = !DILocation(line: 0, scope: !4084)
!4088 = !DILocation(line: 4495, column: 15, scope: !4084)
!4089 = !DILocation(line: 4495, column: 20, scope: !4084)
!4090 = !DILocation(line: 4495, column: 10, scope: !4084)
!4091 = !DILocation(line: 4496, column: 1, scope: !4084)
!4092 = distinct !DISubprogram(name: "gsi_last_bb", scope: !575, file: !575, line: 4450, type: !3646, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4093)
!4093 = !{!4094, !4095, !4096}
!4094 = !DILocalVariable(name: "bb", arg: 1, scope: !4092, file: !575, line: 4450, type: !1379)
!4095 = !DILocalVariable(name: "i", scope: !4092, file: !575, line: 4452, type: !3124)
!4096 = !DILocalVariable(name: "seq", scope: !4092, file: !575, line: 4453, type: !969)
!4097 = !DILocation(line: 0, scope: !4092)
!4098 = !DILocation(line: 4452, column: 24, scope: !4092)
!4099 = !DILocation(line: 4455, column: 9, scope: !4092)
!4100 = !DILocation(line: 4456, column: 11, scope: !4092)
!4101 = !DILocation(line: 4456, column: 5, scope: !4092)
!4102 = !DILocation(line: 4456, column: 9, scope: !4092)
!4103 = !DILocation(line: 4457, column: 5, scope: !4092)
!4104 = !DILocation(line: 4457, column: 9, scope: !4092)
!4105 = !DILocation(line: 4458, column: 5, scope: !4092)
!4106 = !DILocation(line: 4458, column: 8, scope: !4092)
!4107 = !DILocation(line: 4461, column: 1, scope: !4092)
!4108 = distinct !DISubprogram(name: "mf_file_function_line_tree", scope: !3, file: !3, line: 200, type: !4109, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!655, !780}
!4111 = !{!4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4124, !4125}
!4112 = !DILocalVariable(name: "location", arg: 1, scope: !4108, file: !3, line: 200, type: !780)
!4113 = !DILocalVariable(name: "xloc", scope: !4108, file: !3, line: 202, type: !2170)
!4114 = !DILocalVariable(name: "file", scope: !4108, file: !3, line: 203, type: !653)
!4115 = !DILocalVariable(name: "colon", scope: !4108, file: !3, line: 203, type: !653)
!4116 = !DILocalVariable(name: "line", scope: !4108, file: !3, line: 203, type: !653)
!4117 = !DILocalVariable(name: "op", scope: !4108, file: !3, line: 203, type: !653)
!4118 = !DILocalVariable(name: "name", scope: !4108, file: !3, line: 203, type: !653)
!4119 = !DILocalVariable(name: "cp", scope: !4108, file: !3, line: 203, type: !653)
!4120 = !DILocalVariable(name: "linecolbuf", scope: !4108, file: !3, line: 204, type: !4121)
!4121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 240, elements: !4122)
!4122 = !{!4123}
!4123 = !DISubrange(count: 30)
!4124 = !DILocalVariable(name: "string", scope: !4108, file: !3, line: 205, type: !650)
!4125 = !DILocalVariable(name: "result", scope: !4108, file: !3, line: 206, type: !655)
!4126 = !DILocation(line: 0, scope: !4108)
!4127 = !DILocation(line: 202, column: 3, scope: !4108)
!4128 = !DILocation(line: 202, column: 28, scope: !4108)
!4129 = !DILocation(line: 204, column: 3, scope: !4108)
!4130 = !DILocation(line: 204, column: 8, scope: !4108)
!4131 = !DILocation(line: 209, column: 15, scope: !4108)
!4132 = !DILocation(line: 210, column: 12, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 210, column: 7)
!4134 = !DILocation(line: 210, column: 23, scope: !4133)
!4135 = !DILocation(line: 210, column: 45, scope: !4133)
!4136 = !DILocation(line: 210, column: 20, scope: !4133)
!4137 = !DILocation(line: 211, column: 12, scope: !4133)
!4138 = !DILocation(line: 211, column: 5, scope: !4133)
!4139 = !DILocation(line: 212, column: 12, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 212, column: 7)
!4141 = !DILocation(line: 212, column: 7, scope: !4108)
!4142 = !DILocation(line: 215, column: 12, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 215, column: 7)
!4144 = !DILocation(line: 215, column: 17, scope: !4143)
!4145 = !DILocation(line: 215, column: 7, scope: !4108)
!4146 = !DILocation(line: 217, column: 16, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 217, column: 11)
!4148 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 216, column: 5)
!4149 = !DILocation(line: 217, column: 23, scope: !4147)
!4150 = !DILocation(line: 217, column: 11, scope: !4148)
!4151 = !DILocation(line: 218, column: 9, scope: !4147)
!4152 = !DILocation(line: 220, column: 9, scope: !4147)
!4153 = !DILocation(line: 223, column: 5, scope: !4148)
!4154 = !DILocation(line: 0, scope: !4143)
!4155 = !DILocation(line: 228, column: 21, scope: !4108)
!4156 = !DILocation(line: 228, column: 42, scope: !4108)
!4157 = !DILocation(line: 228, column: 10, scope: !4108)
!4158 = !DILocation(line: 229, column: 7, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 229, column: 7)
!4160 = !DILocation(line: 237, column: 12, scope: !4108)
!4161 = !DILocation(line: 238, column: 12, scope: !4108)
!4162 = !DILocation(line: 239, column: 3, scope: !4108)
!4163 = !DILocation(line: 242, column: 1, scope: !4108)
!4164 = !DILocation(line: 241, column: 3, scope: !4108)
!4165 = distinct !DISubprogram(name: "gimple_seq_last", scope: !575, file: !575, line: 178, type: !3385, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4166)
!4166 = !{!4167}
!4167 = !DILocalVariable(name: "s", arg: 1, scope: !4165, file: !575, line: 178, type: !3387)
!4168 = !DILocation(line: 0, scope: !4165)
!4169 = !DILocation(line: 180, column: 10, scope: !4165)
!4170 = !DILocation(line: 180, column: 17, scope: !4165)
!4171 = !DILocation(line: 180, column: 3, scope: !4165)
!4172 = distinct !DISubprogram(name: "gimple_op_ptr", scope: !575, file: !575, line: 1647, type: !4173, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!1014, !3202, !10}
!4175 = !{!4176, !4177}
!4176 = !DILocalVariable(name: "gs", arg: 1, scope: !4172, file: !575, line: 1647, type: !3202)
!4177 = !DILocalVariable(name: "i", arg: 2, scope: !4172, file: !575, line: 1647, type: !10)
!4178 = !DILocation(line: 0, scope: !4172)
!4179 = !DILocation(line: 1649, column: 7, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !575, line: 1649, column: 7)
!4181 = !DILocation(line: 1649, column: 7, scope: !4172)
!4182 = !DILocation(line: 1654, column: 14, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !575, line: 1650, column: 5)
!4184 = !DILocation(line: 1654, column: 50, scope: !4183)
!4185 = !DILocation(line: 1654, column: 7, scope: !4183)
!4186 = !DILocation(line: 0, scope: !4180)
!4187 = !DILocation(line: 1658, column: 1, scope: !4172)
!4188 = distinct !DISubprogram(name: "gimple_has_ops", scope: !575, file: !575, line: 1274, type: !4189, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!647, !3202}
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "g", arg: 1, scope: !4188, file: !575, line: 1274, type: !3202)
!4193 = !DILocation(line: 0, scope: !4188)
!4194 = !DILocation(line: 1276, column: 10, scope: !4188)
!4195 = !DILocation(line: 1276, column: 26, scope: !4188)
!4196 = !DILocation(line: 1276, column: 41, scope: !4188)
!4197 = !DILocation(line: 1276, column: 44, scope: !4188)
!4198 = !DILocation(line: 1276, column: 60, scope: !4188)
!4199 = !DILocation(line: 1276, column: 3, scope: !4188)
!4200 = distinct !DISubprogram(name: "gimple_ops", scope: !575, file: !575, line: 1614, type: !4201, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!1014, !979}
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "gs", arg: 1, scope: !4200, file: !575, line: 1614, type: !979)
!4205 = !DILocalVariable(name: "off", scope: !4200, file: !575, line: 1616, type: !1125)
!4206 = !DILocation(line: 0, scope: !4200)
!4207 = !DILocation(line: 1621, column: 28, scope: !4200)
!4208 = !DILocation(line: 1621, column: 9, scope: !4200)
!4209 = !DILocation(line: 1622, column: 3, scope: !4200)
!4210 = !DILocation(line: 1624, column: 20, scope: !4200)
!4211 = !DILocation(line: 1624, column: 32, scope: !4200)
!4212 = !DILocation(line: 1624, column: 10, scope: !4200)
!4213 = !DILocation(line: 1624, column: 3, scope: !4200)
!4214 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !575, file: !575, line: 1073, type: !4215, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!619, !979}
!4217 = !{!4218}
!4218 = !DILocalVariable(name: "gs", arg: 1, scope: !4214, file: !575, line: 1073, type: !979)
!4219 = !DILocation(line: 0, scope: !4214)
!4220 = !DILocation(line: 1075, column: 24, scope: !4214)
!4221 = !DILocation(line: 1075, column: 10, scope: !4214)
!4222 = !DILocation(line: 1075, column: 3, scope: !4214)
!4223 = distinct !DISubprogram(name: "gss_for_code", scope: !575, file: !575, line: 1061, type: !4224, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!619, !574}
!4226 = !{!4227}
!4227 = !DILocalVariable(name: "code", arg: 1, scope: !4223, file: !575, line: 1061, type: !574)
!4228 = !DILocation(line: 0, scope: !4223)
!4229 = !DILocation(line: 1066, column: 10, scope: !4223)
!4230 = !DILocation(line: 1066, column: 3, scope: !4223)
!4231 = distinct !DISubprogram(name: "gimple_expr_code", scope: !575, file: !575, line: 1438, type: !3849, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4232)
!4232 = !{!4233, !4234}
!4233 = !DILocalVariable(name: "stmt", arg: 1, scope: !4231, file: !575, line: 1438, type: !3202)
!4234 = !DILocalVariable(name: "code", scope: !4231, file: !575, line: 1440, type: !574)
!4235 = !DILocation(line: 0, scope: !4231)
!4236 = !DILocation(line: 1440, column: 27, scope: !4231)
!4237 = !DILocation(line: 1441, column: 29, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4231, file: !575, line: 1441, column: 7)
!4239 = !DILocation(line: 1442, column: 42, scope: !4238)
!4240 = !DILocation(line: 1442, column: 5, scope: !4238)
!4241 = !DILocation(line: 1446, column: 5, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4238, file: !575, line: 1443, column: 12)
!4243 = !DILocation(line: 1448, column: 5, scope: !4231)
!4244 = !DILocation(line: 1450, column: 1, scope: !4231)
!4245 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !575, file: !575, line: 1727, type: !3320, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4246)
!4246 = !{!4247}
!4247 = !DILocalVariable(name: "gs", arg: 1, scope: !4245, file: !575, line: 1727, type: !3202)
!4248 = !DILocation(line: 0, scope: !4245)
!4249 = !DILocation(line: 1730, column: 10, scope: !4245)
!4250 = !DILocation(line: 1730, column: 3, scope: !4245)
!4251 = distinct !DISubprogram(name: "gimple_op", scope: !575, file: !575, line: 1631, type: !4252, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!655, !3202, !10}
!4254 = !{!4255, !4256}
!4255 = !DILocalVariable(name: "gs", arg: 1, scope: !4251, file: !575, line: 1631, type: !3202)
!4256 = !DILocalVariable(name: "i", arg: 2, scope: !4251, file: !575, line: 1631, type: !10)
!4257 = !DILocation(line: 0, scope: !4251)
!4258 = !DILocation(line: 1633, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4251, file: !575, line: 1633, column: 7)
!4260 = !DILocation(line: 1633, column: 7, scope: !4251)
!4261 = !DILocation(line: 1638, column: 14, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4259, file: !575, line: 1634, column: 5)
!4263 = !DILocation(line: 1638, column: 7, scope: !4262)
!4264 = !DILocation(line: 0, scope: !4259)
!4265 = !DILocation(line: 1642, column: 1, scope: !4251)
!4266 = distinct !DISubprogram(name: "gimple_call_fn", scope: !575, file: !575, line: 1911, type: !3320, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4267)
!4267 = !{!4268}
!4268 = !DILocalVariable(name: "gs", arg: 1, scope: !4266, file: !575, line: 1911, type: !3202)
!4269 = !DILocation(line: 0, scope: !4266)
!4270 = !DILocation(line: 1914, column: 10, scope: !4266)
!4271 = !DILocation(line: 1914, column: 3, scope: !4266)
