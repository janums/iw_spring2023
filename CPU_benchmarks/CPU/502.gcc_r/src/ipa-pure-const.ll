; ModuleID = 'ipa-pure-const.bc'
source_filename = "ipa-pure-const.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
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
%union.section = type { %struct.unnamed_section }
%struct.unnamed_section = type { %struct.section_common, void (i8*)*, i8*, %union.section* }
%struct.section_common = type { i32 }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, {}*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
%struct.VEC_cgraph_node_ptr_heap = type { %struct.VEC_cgraph_node_ptr_base }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.cgraph_node_hook_list = type opaque
%struct.cgraph_2node_hook_list = type opaque
%struct.VEC_funct_state_heap = type { %struct.VEC_funct_state_base }
%struct.VEC_funct_state_base = type { i32, i32, [1 x %struct.funct_state_d*] }
%struct.funct_state_d = type { i32, i32, i8, i8, i8 }
%struct.pointer_set_t = type opaque
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, %struct.cgraph_node*, i8* }
%struct.cgraph_node_set_iterator = type { %struct.cgraph_node_set_def*, i32 }
%struct.lto_simple_output_block = type { i32, %struct.lto_out_decl_state*, %struct.lto_output_stream* }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], %struct.lto_cgraph_encoder_d*, %union.tree_node* }
%struct.lto_tree_ref_encoder = type { %struct.htab*, i32, %struct.VEC_tree_heap* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.lto_output_stream = type { %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base*, i8*, i32, i32, i32 }
%struct.lto_char_ptr_base = type { i8* }
%struct.bitpack_d = type { i64, i64, %struct.VEC_bitpack_word_t_heap* }
%struct.VEC_bitpack_word_t_heap = type { %struct.VEC_bitpack_word_t_base }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.lto_input_block = type { i8*, i32, i32 }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, i8*, %struct.pointer_set_t*, i8, i8, i8, i8, %union.tree_node* }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, i8*, i8, i8, i8, i8, [1 x %union.tree_node*] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, %union.tree_node*, %union.tree_node* }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"pure-const\00", align 1
@pass_ipa_pure_const = dso_local local_unnamed_addr global { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* } { %struct.opt_pass { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_pure_const, i32 ()* @propagate, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 }, void ()* @generate_summary, void (%struct.cgraph_node_set_def*)* @pure_const_write_summary, void ()* @pure_const_read_summary, void (%struct.cgraph_node*)* null, void (%struct.cgraph_node*, %union.gimple_statement_d**)* null, i32 0, i32 (%struct.cgraph_node*)* null, void (%struct.varpool_node*)* null }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"local-pure-const\00", align 1
@pass_local_pure_const = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_pure_const, i32 ()* @local_pure_const, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2384
@flag_ipa_pure_const = external dso_local local_unnamed_addr global i32, align 4
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@cgraph_n_nodes = external dso_local local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global %struct.cgraph_node_hook_list* null, align 8, !dbg !2389
@node_duplication_hook_holder = internal unnamed_addr global %struct.cgraph_2node_hook_list* null, align 8, !dbg !2393
@node_removal_hook_holder = internal unnamed_addr global %struct.cgraph_node_hook_list* null, align 8, !dbg !2397
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"reduced\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Function found to be %sconst: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"looping \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Function found to be %spure: %s\0A\00", align 1
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"reduced for nothrow\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Function found to be nothrow: %s\0A\00", align 1
@funct_state_vec = internal global %struct.VEC_funct_state_heap* null, align 8, !dbg !2399
@visited_nodes = internal unnamed_addr global %struct.pointer_set_t* null, align 8, !dbg !2405
@register_hooks.init_p = internal unnamed_addr global i1 false, align 1, !dbg !2409
@.str.9 = private unnamed_addr constant [17 x i8] c"ipa-pure-const.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"\0A\0A local analysis of %s\0A \00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"    has irreducible loops\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"    can not prove finiteness of loop %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Function is locally looping.\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Function is locally throwing.\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Function is locally const.\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Function is locally pure.\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"  scanning: \00", align 1
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"    can throw; looping\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"    can throw externally\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"    nonlocal label is not const/pure\00", align 1
@memory_identifier_string = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.22 = private unnamed_addr constant [41 x i8] c"    memory asm clobber is not const/pure\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"    volatile is not const/pure\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.24 = private unnamed_addr constant [39 x i8] c"    Volatile operand is not const/pure\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"    Used static/global variable is not const/pure\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"    static/global memory write is not const/pure\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"    global memory read is not const\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"    static memory read is not const\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"    Volatile indirect ref is not const/pure\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"    Indirect ref to local memory is OK\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"    Indirect ref write is not const/pure\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"    Indirect ref read is not const\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"    operand can throw; looping\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"    operand can throw externally\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"    setjmp is not const/pure\0A\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"    longjmp and nonlocal goto is not const/pure\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"    can throw; looping\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"    can throw externally to lp %i\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"     callee:%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"    pure function call in not const\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"    uknown function call is not const/pure\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.43 = private unnamed_addr constant [46 x i8] c"Function called in recursive cycle; ignoring\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"Function has wrong visibility; ignoring\0A\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str.45 = private unnamed_addr constant [38 x i8] c"Function found to be non-looping: %s\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2414 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2428, metadata !DIExpression()), !dbg !2429
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2430
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2431
  ret i32 %call, !dbg !2432
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2433 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2436
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2437
  ret i32 %call, !dbg !2438
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2439 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2493, metadata !DIExpression()), !dbg !2494
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2495
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2495
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2495
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2495
  %cmp = icmp uge i8* %0, %1, !dbg !2495
  %conv1 = zext i1 %cmp to i64, !dbg !2495
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2495
  %tobool = icmp eq i64 %expval, 0, !dbg !2495
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2495

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2495
  br label %cond.end, !dbg !2495

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2495
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2495
  %2 = load i8, i8* %0, align 1, !dbg !2495
  %conv3 = zext i8 %2 to i32, !dbg !2495
  br label %cond.end, !dbg !2495

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2495
  ret i32 %cond, !dbg !2496
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2497 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2499, metadata !DIExpression()), !dbg !2500
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2501
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2501
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2501
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2501
  %cmp = icmp uge i8* %0, %1, !dbg !2501
  %conv1 = zext i1 %cmp to i64, !dbg !2501
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2501
  %tobool = icmp eq i64 %expval, 0, !dbg !2501
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2501

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2501
  br label %cond.end, !dbg !2501

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2501
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2501
  %2 = load i8, i8* %0, align 1, !dbg !2501
  %conv3 = zext i8 %2 to i32, !dbg !2501
  br label %cond.end, !dbg !2501

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2501
  ret i32 %cond, !dbg !2502
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2503 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2504
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2504
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2504
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2504
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2504
  %cmp = icmp uge i8* %1, %2, !dbg !2504
  %conv1 = zext i1 %cmp to i64, !dbg !2504
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2504
  %tobool = icmp eq i64 %expval, 0, !dbg !2504
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2504

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2504
  br label %cond.end, !dbg !2504

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2504
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2504
  %3 = load i8, i8* %1, align 1, !dbg !2504
  %conv3 = zext i8 %3 to i32, !dbg !2504
  br label %cond.end, !dbg !2504

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2504
  ret i32 %cond, !dbg !2505
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2506 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2510, metadata !DIExpression()), !dbg !2511
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2512
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2513
  ret i32 %call, !dbg !2514
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2515 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2520, metadata !DIExpression()), !dbg !2521
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2522
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2522
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2522
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2522
  %cmp = icmp uge i8* %0, %1, !dbg !2522
  %conv1 = zext i1 %cmp to i64, !dbg !2522
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2522
  %tobool = icmp eq i64 %expval, 0, !dbg !2522
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2522

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2522
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2522
  br label %cond.end, !dbg !2522

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2522
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2522
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2522
  store i8 %conv2, i8* %0, align 1, !dbg !2522
  %conv6 = and i32 %__c, 255, !dbg !2522
  br label %cond.end, !dbg !2522

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2522
  ret i32 %cond, !dbg !2523
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2524 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2526, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2527, metadata !DIExpression()), !dbg !2528
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2529
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2529
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2529
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2529
  %cmp = icmp uge i8* %0, %1, !dbg !2529
  %conv1 = zext i1 %cmp to i64, !dbg !2529
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2529
  %tobool = icmp eq i64 %expval, 0, !dbg !2529
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2529

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2529
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2529
  br label %cond.end, !dbg !2529

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2529
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2529
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2529
  store i8 %conv2, i8* %0, align 1, !dbg !2529
  %conv6 = and i32 %__c, 255, !dbg !2529
  br label %cond.end, !dbg !2529

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2529
  ret i32 %cond, !dbg !2530
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2531 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2533, metadata !DIExpression()), !dbg !2534
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2535
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2535
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2535
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2535
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2535
  %cmp = icmp uge i8* %1, %2, !dbg !2535
  %conv1 = zext i1 %cmp to i64, !dbg !2535
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2535
  %tobool = icmp eq i64 %expval, 0, !dbg !2535
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2535

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2535
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2535
  br label %cond.end, !dbg !2535

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2535
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2535
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2535
  store i8 %conv4, i8* %1, align 1, !dbg !2535
  %conv6 = and i32 %__c, 255, !dbg !2535
  br label %cond.end, !dbg !2535

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2535
  ret i32 %cond, !dbg !2536
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2537 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2543, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2545, metadata !DIExpression()), !dbg !2546
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2547
  ret i64 %call, !dbg !2548
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2549 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2551, metadata !DIExpression()), !dbg !2552
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2553
  %0 = load i32, i32* %_flags, align 8, !dbg !2553
  %and = lshr i32 %0, 4, !dbg !2553
  %and.lobit = and i32 %and, 1, !dbg !2553
  ret i32 %and.lobit, !dbg !2554
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2555 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2557, metadata !DIExpression()), !dbg !2558
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2559
  %0 = load i32, i32* %_flags, align 8, !dbg !2559
  %and = lshr i32 %0, 5, !dbg !2559
  %and.lobit = and i32 %and, 1, !dbg !2559
  ret i32 %and.lobit, !dbg !2560
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2561 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2564, metadata !DIExpression()), !dbg !2565
  %__c.off = add i32 %__c, 128, !dbg !2566
  %0 = icmp ult i32 %__c.off, 384, !dbg !2566
  br i1 %0, label %cond.true, label %cond.end, !dbg !2566

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2567
  %1 = load i32*, i32** %call, align 8, !dbg !2568
  %idxprom = sext i32 %__c to i64, !dbg !2569
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2569
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2569
  br label %cond.end, !dbg !2570

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2570
  ret i32 %cond, !dbg !2571
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2572 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2574, metadata !DIExpression()), !dbg !2575
  %__c.off = add i32 %__c, 128, !dbg !2576
  %0 = icmp ult i32 %__c.off, 384, !dbg !2576
  br i1 %0, label %cond.true, label %cond.end, !dbg !2576

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2577
  %1 = load i32*, i32** %call, align 8, !dbg !2578
  %idxprom = sext i32 %__c to i64, !dbg !2579
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2579
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2579
  br label %cond.end, !dbg !2580

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2580
  ret i32 %cond, !dbg !2581
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2582 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2587, metadata !DIExpression()), !dbg !2588
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2589
  %conv = trunc i64 %call to i32, !dbg !2590
  ret i32 %conv, !dbg !2591
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2592 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2596, metadata !DIExpression()), !dbg !2597
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2598
  ret i64 %call, !dbg !2599
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2600 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2605, metadata !DIExpression()), !dbg !2606
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2607
  ret i64 %call, !dbg !2608
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2615, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2616, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2617, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2618, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 0, metadata !2620, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2621, metadata !DIExpression()), !dbg !2625
  br label %while.cond, !dbg !2626

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2627
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2625
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2621, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2620, metadata !DIExpression()), !dbg !2625
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2628
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2626

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2629
  %div = lshr i64 %add, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %div, metadata !2622, metadata !DIExpression()), !dbg !2625
  %mul = mul i64 %div, %__size, !dbg !2632
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2623, metadata !DIExpression()), !dbg !2625
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %call, metadata !2624, metadata !DIExpression()), !dbg !2625
  %cmp1 = icmp slt i32 %call, 0, !dbg !2635
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2637

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2638
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2640

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2620, metadata !DIExpression()), !dbg !2625
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2625
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2625
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2621, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2620, metadata !DIExpression()), !dbg !2625
  br label %while.cond, !dbg !2626, !llvm.loop !2642

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2625
  ret i8* %retval.0, !dbg !2644
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2645 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2651, metadata !DIExpression()), !dbg !2652
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2653
  ret double %call, !dbg !2654
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2655 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2665, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 %base, metadata !2666, metadata !DIExpression()), !dbg !2667
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2668
  ret i64 %call, !dbg !2669
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2670 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2676, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 %base, metadata !2678, metadata !DIExpression()), !dbg !2679
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2680
  ret i64 %call, !dbg !2681
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2682 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32 %base, metadata !2695, metadata !DIExpression()), !dbg !2696
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2697
  ret i64 %call, !dbg !2698
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2699 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2703, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 %base, metadata !2705, metadata !DIExpression()), !dbg !2706
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2707
  ret i64 %call, !dbg !2708
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2709 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2749, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2750, metadata !DIExpression()), !dbg !2751
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2752
  ret i32 %call, !dbg !2753
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2754 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2757, metadata !DIExpression()), !dbg !2758
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2759
  ret i32 %call, !dbg !2760
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2761 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2765, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2766, metadata !DIExpression()), !dbg !2767
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2768
  ret i32 %call, !dbg !2769
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2770 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2774, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2775, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2777, metadata !DIExpression()), !dbg !2778
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2779
  ret i32 %call, !dbg !2780
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2781 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2786, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2787, metadata !DIExpression()), !dbg !2788
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2787, metadata !DIExpression(DW_OP_deref)), !dbg !2788
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2789
  ret i32 %call, !dbg !2790
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2791 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2798, metadata !DIExpression()), !dbg !2799
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2798, metadata !DIExpression(DW_OP_deref)), !dbg !2799
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2800
  ret i32 %call, !dbg !2801
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2802 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2827, metadata !DIExpression()), !dbg !2828
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2829
  ret i32 %call, !dbg !2830
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2831 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2834, metadata !DIExpression()), !dbg !2835
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2836
  ret i32 %call, !dbg !2837
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2838 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2843, metadata !DIExpression()), !dbg !2844
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2845
  ret i32 %call, !dbg !2846
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2847 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2851, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2852, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2854, metadata !DIExpression()), !dbg !2855
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2856
  ret i32 %call, !dbg !2857
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_pure_const() #5 !dbg !2858 {
entry:
  %0 = load i32, i32* @flag_ipa_pure_const, align 4, !dbg !2859
  %tobool = icmp eq i32 %0, 0, !dbg !2859
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2860

land.rhs:                                         ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2861
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !2861
  %2 = load i32, i32* %arrayidx, align 8, !dbg !2861
  %tobool1 = icmp eq i32 %2, 0, !dbg !2861
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !2862

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx3 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !2863
  %3 = load i32, i32* %arrayidx3, align 4, !dbg !2863
  %tobool4 = icmp eq i32 %3, 0, !dbg !2862
  %phitmp2 = zext i1 %tobool4 to i8, !dbg !2862
  br label %lor.end, !dbg !2862

lor.end:                                          ; preds = %land.rhs, %lor.rhs
  %4 = phi i8 [ 0, %land.rhs ], [ %phitmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %entry, %lor.end
  %5 = phi i8 [ 0, %entry ], [ %4, %lor.end ]
  ret i8 %5, !dbg !2864
}

; Function Attrs: nounwind uwtable
define internal i32 @propagate() #5 !dbg !2865 {
entry:
  %0 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !2914
  %conv = sext i32 %0 to i64, !dbg !2914
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2914
  %1 = bitcast i8* %call to %struct.cgraph_node**, !dbg !2914
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %1, metadata !2869, metadata !DIExpression()), !dbg !2915
  %2 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** @function_insertion_hook_holder, align 8, !dbg !2916
  tail call void @cgraph_remove_function_insertion_hook(%struct.cgraph_node_hook_list* %2) #6, !dbg !2917
  %3 = load %struct.cgraph_2node_hook_list*, %struct.cgraph_2node_hook_list** @node_duplication_hook_holder, align 8, !dbg !2918
  tail call void @cgraph_remove_node_duplication_hook(%struct.cgraph_2node_hook_list* %3) #6, !dbg !2919
  %4 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** @node_removal_hook_holder, align 8, !dbg !2920
  tail call void @cgraph_remove_node_removal_hook(%struct.cgraph_node_hook_list* %4) #6, !dbg !2921
  %call1 = tail call i32 @ipa_utils_reduced_inorder(%struct.cgraph_node** %1, i8 zeroext 1, i8 zeroext 0, i8 (%struct.cgraph_edge*)* null) #6, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2870, metadata !DIExpression()), !dbg !2915
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2923
  %tobool = icmp eq %struct._IO_FILE* %5, null, !dbg !2923
  br i1 %tobool, label %if.end, label %if.then, !dbg !2925

if.then:                                          ; preds = %entry
  tail call void @dump_cgraph(%struct._IO_FILE* nonnull %5) #6, !dbg !2926
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2928
  tail call void @ipa_utils_print_order(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.cgraph_node** %1, i32 %call1) #6, !dbg !2929
  br label %if.end, !dbg !2930

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !2871, metadata !DIExpression()), !dbg !2915
  %7 = sext i32 %call1 to i64, !dbg !2931
  br label %for.cond, !dbg !2931

for.cond:                                         ; preds = %for.inc138, %if.end
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc138 ], [ 0, %if.end ], !dbg !2932
  call void @llvm.dbg.value(metadata i64 %indvars.iv56, metadata !2871, metadata !DIExpression()), !dbg !2915
  %cmp = icmp slt i64 %indvars.iv56, %7, !dbg !2933
  br i1 %cmp, label %for.body, label %for.end140, !dbg !2934

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 0, metadata !2878, metadata !DIExpression()), !dbg !2935
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv56, !dbg !2936
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2936
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !2867, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %while.cond, !dbg !2937

while.cond:                                       ; preds = %cleanup78, %for.body
  %count.0 = phi i32 [ 0, %for.body ], [ %count.1, %cleanup78 ], !dbg !2938
  %looping.0 = phi i8 [ 0, %for.body ], [ %looping.13, %cleanup78 ], !dbg !2935
  %pure_const_state.0 = phi i32 [ 0, %for.body ], [ %pure_const_state.11, %cleanup78 ], !dbg !2935
  %w.0 = phi %struct.cgraph_node* [ %8, %for.body ], [ %w.1, %cleanup78 ], !dbg !2939
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.0, metadata !2868, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 %pure_const_state.0, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.0, metadata !2877, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !2878, metadata !DIExpression()), !dbg !2935
  %tobool3 = icmp eq %struct.cgraph_node* %w.0, null, !dbg !2937
  br i1 %tobool3, label %while.end, label %while.body, !dbg !2937

while.body:                                       ; preds = %while.cond
  %call4 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* nonnull %w.0) #7, !dbg !2940
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call4, metadata !2881, metadata !DIExpression()), !dbg !2941
  %pure_const_state5 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call4, i64 0, i32 0, !dbg !2942
  %9 = load i32, i32* %pure_const_state5, align 4, !dbg !2942
  %cmp6 = icmp ult i32 %pure_const_state.0, %9, !dbg !2944
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !2945

if.then8:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 %9, metadata !2873, metadata !DIExpression()), !dbg !2935
  br label %if.end10, !dbg !2946

if.end10:                                         ; preds = %if.then8, %while.body
  %pure_const_state.1 = phi i32 [ %9, %if.then8 ], [ %pure_const_state.0, %while.body ], !dbg !2935
  call void @llvm.dbg.value(metadata i32 %pure_const_state.1, metadata !2873, metadata !DIExpression()), !dbg !2935
  %looping11 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call4, i64 0, i32 3, !dbg !2947
  %10 = load i8, i8* %looping11, align 1, !dbg !2947
  %tobool12 = icmp eq i8 %10, 0, !dbg !2949
  %spec.select = select i1 %tobool12, i8 %looping.0, i8 1, !dbg !2950
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2877, metadata !DIExpression()), !dbg !2935
  %call15 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %w.0) #6, !dbg !2951
  %cmp16 = icmp eq i32 %call15, 2, !dbg !2953
  br i1 %cmp16, label %if.then18, label %if.end27, !dbg !2954

if.then18:                                        ; preds = %if.end10
  %looping_previously_known = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call4, i64 0, i32 2, !dbg !2955
  %11 = load i8, i8* %looping_previously_known, align 4, !dbg !2955
  %or20 = or i8 %spec.select, %11, !dbg !2957
  call void @llvm.dbg.value(metadata i8 %or20, metadata !2877, metadata !DIExpression()), !dbg !2935
  %state_previously_known = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call4, i64 0, i32 1, !dbg !2958
  %12 = load i32, i32* %state_previously_known, align 4, !dbg !2958
  %cmp22 = icmp ult i32 %pure_const_state.1, %12, !dbg !2960
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !2961

if.then24:                                        ; preds = %if.then18
  call void @llvm.dbg.value(metadata i32 %12, metadata !2873, metadata !DIExpression()), !dbg !2935
  br label %if.end27, !dbg !2962

if.end27:                                         ; preds = %if.then18, %if.then24, %if.end10
  %looping.2 = phi i8 [ %spec.select, %if.end10 ], [ %or20, %if.then24 ], [ %or20, %if.then18 ], !dbg !2941
  %pure_const_state.3 = phi i32 [ %pure_const_state.1, %if.end10 ], [ %12, %if.then24 ], [ %pure_const_state.1, %if.then18 ], !dbg !2941
  call void @llvm.dbg.value(metadata i32 %pure_const_state.3, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.2, metadata !2877, metadata !DIExpression()), !dbg !2935
  %cmp28 = icmp eq i32 %pure_const_state.3, 2, !dbg !2963
  br i1 %cmp28, label %cleanup78, label %if.end31, !dbg !2965

if.end31:                                         ; preds = %if.end27
  %inc = add nsw i32 %count.0, 1, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2878, metadata !DIExpression()), !dbg !2935
  %cmp32 = icmp sgt i32 %count.0, 0, !dbg !2967
  %spec.select3 = select i1 %cmp32, i8 1, i8 %looping.2, !dbg !2969
  call void @llvm.dbg.value(metadata i8 %spec.select3, metadata !2877, metadata !DIExpression()), !dbg !2935
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.0, i64 0, i32 1, !dbg !2970
  br label %for.cond36, !dbg !2971

for.cond36:                                       ; preds = %for.inc, %if.end31
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.end31 ], [ %next_callee, %for.inc ]
  %looping.4 = phi i8 [ %spec.select3, %if.end31 ], [ %looping.11, %for.inc ], !dbg !2972
  %pure_const_state.4 = phi i32 [ %pure_const_state.3, %if.end31 ], [ %pure_const_state.9, %for.inc ], !dbg !2941
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %pure_const_state.4, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.4, metadata !2877, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !2879, metadata !DIExpression()), !dbg !2941
  %tobool37 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !2974
  br i1 %tobool37, label %for.end, label %for.body38, !dbg !2974

for.body38:                                       ; preds = %for.cond36
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !2975
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2975
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %13, metadata !2882, metadata !DIExpression()), !dbg !2976
  %call39 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %13) #6, !dbg !2977
  %cmp40 = icmp ugt i32 %call39, 2, !dbg !2978
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !2979

if.then42:                                        ; preds = %for.body38
  %call43 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %13) #7, !dbg !2980
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call43, metadata !2886, metadata !DIExpression()), !dbg !2981
  %pure_const_state44 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call43, i64 0, i32 0, !dbg !2982
  %14 = load i32, i32* %pure_const_state44, align 4, !dbg !2982
  %cmp45 = icmp ult i32 %pure_const_state.4, %14, !dbg !2984
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !2985

if.then47:                                        ; preds = %if.then42
  call void @llvm.dbg.value(metadata i32 %14, metadata !2873, metadata !DIExpression()), !dbg !2935
  br label %if.end49, !dbg !2986

if.end49:                                         ; preds = %if.then47, %if.then42
  %pure_const_state.5 = phi i32 [ %14, %if.then47 ], [ %pure_const_state.4, %if.then42 ], !dbg !2941
  call void @llvm.dbg.value(metadata i32 %pure_const_state.5, metadata !2873, metadata !DIExpression()), !dbg !2935
  %cmp50 = icmp eq i32 %pure_const_state.5, 2, !dbg !2987
  br i1 %cmp50, label %cleanup, label %if.end53, !dbg !2989

if.end53:                                         ; preds = %if.end49
  %looping54 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call43, i64 0, i32 3, !dbg !2990
  %15 = load i8, i8* %looping54, align 1, !dbg !2990
  %tobool55 = icmp eq i8 %15, 0, !dbg !2992
  %spec.select4 = select i1 %tobool55, i8 %looping.4, i8 1, !dbg !2993
  call void @llvm.dbg.value(metadata i8 %spec.select4, metadata !2877, metadata !DIExpression()), !dbg !2935
  br label %cleanup, !dbg !2994

cleanup:                                          ; preds = %if.end49, %if.end53
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end53 ], [ 7, %if.end49 ]
  %looping.6 = phi i8 [ %spec.select4, %if.end53 ], [ %looping.4, %if.end49 ], !dbg !2941
  call void @llvm.dbg.value(metadata i8 %looping.6, metadata !2877, metadata !DIExpression()), !dbg !2935
  %cond2 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond2, label %if.end74, label %cleanup75

if.else:                                          ; preds = %for.body38
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 0, !dbg !2995
  %16 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2995
  %call58 = tail call i32 @flags_from_decl_or_type(%union.tree_node* %16) #6, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %call58, metadata !2889, metadata !DIExpression()), !dbg !2997
  %and = and i32 %call58, 4, !dbg !2998
  %tobool59 = icmp eq i32 %and, 0, !dbg !2998
  %spec.select5 = select i1 %tobool59, i8 %looping.4, i8 1, !dbg !3000
  call void @llvm.dbg.value(metadata i8 %spec.select5, metadata !2877, metadata !DIExpression()), !dbg !2935
  %and62 = and i32 %call58, 1, !dbg !3001
  %tobool63 = icmp eq i32 %and62, 0, !dbg !3001
  br i1 %tobool63, label %if.else65, label %if.end74, !dbg !3003

if.else65:                                        ; preds = %if.else
  %and66 = and i32 %call58, 2, !dbg !3004
  %tobool67 = icmp ne i32 %and66, 0, !dbg !3004
  %cmp68 = icmp eq i32 %pure_const_state.4, 0, !dbg !3006
  %or.cond = and i1 %tobool67, %cmp68, !dbg !3007
  %looping.8 = select i1 %or.cond, i8 %spec.select5, i8 1, !dbg !3007
  %pure_const_state.6 = select i1 %or.cond, i32 1, i32 2, !dbg !3007
  br label %if.end74, !dbg !3007

if.end74:                                         ; preds = %if.else, %if.else65, %cleanup
  %looping.10 = phi i8 [ %looping.6, %cleanup ], [ %spec.select5, %if.else ], [ %looping.8, %if.else65 ], !dbg !2941
  %pure_const_state.8 = phi i32 [ %pure_const_state.5, %cleanup ], [ %pure_const_state.4, %if.else ], [ %pure_const_state.6, %if.else65 ], !dbg !2941
  call void @llvm.dbg.value(metadata i32 %pure_const_state.8, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.10, metadata !2877, metadata !DIExpression()), !dbg !2935
  br label %cleanup75, !dbg !3008

cleanup75:                                        ; preds = %cleanup, %if.end74
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end74 ]
  %looping.11 = phi i8 [ %looping.6, %cleanup ], [ %looping.10, %if.end74 ], !dbg !2972
  %pure_const_state.9 = phi i32 [ %pure_const_state.5, %cleanup ], [ %pure_const_state.8, %if.end74 ], !dbg !3009
  call void @llvm.dbg.value(metadata i32 %pure_const_state.9, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.11, metadata !2877, metadata !DIExpression()), !dbg !2935
  %switch = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %switch, label %for.inc, label %for.end

for.inc:                                          ; preds = %cleanup75
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3010
  br label %for.cond36, !dbg !3011, !llvm.loop !3012

for.end:                                          ; preds = %for.cond36, %cleanup75
  %looping.12 = phi i8 [ %looping.11, %cleanup75 ], [ %looping.4, %for.cond36 ], !dbg !2972
  %pure_const_state.10 = phi i32 [ %pure_const_state.9, %cleanup75 ], [ %pure_const_state.4, %for.cond36 ], !dbg !2941
  call void @llvm.dbg.value(metadata i32 %pure_const_state.10, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.12, metadata !2877, metadata !DIExpression()), !dbg !2935
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.0, i64 0, i32 16, !dbg !3014
  %17 = bitcast i8** %aux to %struct.ipa_dfs_info**, !dbg !3014
  %18 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %17, align 8, !dbg !3014
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %18, metadata !2872, metadata !DIExpression()), !dbg !2915
  %next_cycle = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %18, i64 0, i32 4, !dbg !3015
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %next_cycle, align 8, !dbg !3015
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %19, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %cleanup78, !dbg !3016

cleanup78:                                        ; preds = %if.end27, %for.end
  %cleanup.dest.slot.2 = phi i1 [ true, %for.end ], [ false, %if.end27 ]
  %count.1 = phi i32 [ %inc, %for.end ], [ %count.0, %if.end27 ], !dbg !2935
  %looping.13 = phi i8 [ %looping.12, %for.end ], [ %looping.2, %if.end27 ], !dbg !2941
  %pure_const_state.11 = phi i32 [ %pure_const_state.10, %for.end ], [ 2, %if.end27 ], !dbg !2941
  %w.1 = phi %struct.cgraph_node* [ %19, %for.end ], [ %w.0, %if.end27 ], !dbg !2935
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.1, metadata !2868, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 %pure_const_state.11, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.13, metadata !2877, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !2878, metadata !DIExpression()), !dbg !2935
  br i1 %cleanup.dest.slot.2, label %while.cond, label %while.end, !llvm.loop !3017

while.end:                                        ; preds = %while.cond, %cleanup78
  %looping.14 = phi i8 [ %looping.13, %cleanup78 ], [ %looping.0, %while.cond ], !dbg !2935
  %pure_const_state.12 = phi i32 [ %pure_const_state.11, %cleanup78 ], [ %pure_const_state.0, %while.cond ], !dbg !2935
  call void @llvm.dbg.value(metadata i32 %pure_const_state.12, metadata !2873, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %looping.14, metadata !2877, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !2868, metadata !DIExpression()), !dbg !2915
  %tobool97 = icmp eq i8 %looping.14, 0, !dbg !3018
  br i1 %tobool97, label %while.end.split.us, label %while.end.while.end.split_crit_edge, !dbg !3020

while.end.while.end.split_crit_edge:              ; preds = %while.end
  br label %while.cond82, !dbg !3020

while.end.split.us:                               ; preds = %while.end
  br label %while.cond82.us, !dbg !3020

while.cond82.us:                                  ; preds = %sw.epilog.us, %while.end.split.us
  %w.2.us = phi %struct.cgraph_node* [ %8, %while.end.split.us ], [ %30, %sw.epilog.us ], !dbg !2935
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.2.us, metadata !2868, metadata !DIExpression()), !dbg !2915
  %tobool83.us = icmp eq %struct.cgraph_node* %w.2.us, null, !dbg !3020
  br i1 %tobool83.us, label %for.inc138.us-lcssa.us, label %while.body84.us, !dbg !3020

while.body84.us:                                  ; preds = %while.cond82.us
  %call86.us = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* nonnull %w.2.us) #7, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call86.us, metadata !2891, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %pure_const_state.12, metadata !2893, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 %looping.14, metadata !2894, metadata !DIExpression()), !dbg !3022
  %state_previously_known87.us = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86.us, i64 0, i32 1, !dbg !3023
  %20 = load i32, i32* %state_previously_known87.us, align 4, !dbg !3023
  %cmp88.us = icmp eq i32 %20, 2, !dbg !3025
  br i1 %cmp88.us, label %if.end96.us, label %land.lhs.true90.us, !dbg !3026

land.lhs.true90.us:                               ; preds = %while.body84.us
  %cmp92.us = icmp ugt i32 %pure_const_state.12, %20, !dbg !3027
  br i1 %cmp92.us, label %if.then94.us, label %if.end96.us, !dbg !3028

if.then94.us:                                     ; preds = %land.lhs.true90.us
  call void @llvm.dbg.value(metadata i32 %20, metadata !2893, metadata !DIExpression()), !dbg !3022
  br label %if.end96.us, !dbg !3029

if.end96.us:                                      ; preds = %if.then94.us, %land.lhs.true90.us, %while.body84.us
  %this_state.0.us = phi i32 [ %20, %if.then94.us ], [ %pure_const_state.12, %land.lhs.true90.us ], [ %pure_const_state.12, %while.body84.us ], !dbg !3022
  call void @llvm.dbg.value(metadata i32 %this_state.0.us, metadata !2893, metadata !DIExpression()), !dbg !3022
  %call99.us = tail call fastcc zeroext i8 @self_recursive_p(%struct.cgraph_node* nonnull %w.2.us) #7, !dbg !3030
  %tobool101.us = icmp ne i8 %call99.us, 0, !dbg !3030
  call void @llvm.dbg.value(metadata i1 %tobool101.us, metadata !2894, metadata !DIExpression()), !dbg !3022
  %looping_previously_known104.us = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86.us, i64 0, i32 2, !dbg !3031
  %21 = load i8, i8* %looping_previously_known104.us, align 4, !dbg !3031
  %tobool105.us = icmp ne i8 %21, 0, !dbg !3033
  %narrow = and i1 %tobool101.us, %tobool105.us, !dbg !3034
  %spec.select8.us = zext i1 %narrow to i8, !dbg !3034
  call void @llvm.dbg.value(metadata i8 %spec.select8.us, metadata !2894, metadata !DIExpression()), !dbg !3022
  %pure_const_state108.us = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86.us, i64 0, i32 0, !dbg !3035
  store i32 %this_state.0.us, i32* %pure_const_state108.us, align 4, !dbg !3036
  %looping109.us = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86.us, i64 0, i32 3, !dbg !3037
  store i8 %spec.select8.us, i8* %looping109.us, align 1, !dbg !3038
  switch i32 %this_state.0.us, label %sw.epilog.us [
    i32 0, label %sw.bb.us
    i32 1, label %sw.bb120.us
  ], !dbg !3039

sw.bb120.us:                                      ; preds = %if.end96.us
  %22 = bitcast %struct.cgraph_node* %w.2.us to %struct.tree_function_decl**, !dbg !3040
  %23 = load %struct.tree_function_decl*, %struct.tree_function_decl** %22, align 8, !dbg !3040
  %pure_flag.us = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %23, i64 0, i32 5, !dbg !3040
  %bf.load122.us = load i32, i32* %pure_flag.us, align 8, !dbg !3040
  %bf.clear124.us = and i32 %bf.load122.us, 134217728, !dbg !3040
  %tobool125.us = icmp eq i32 %bf.clear124.us, 0, !dbg !3040
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3043
  %tobool127.us = icmp ne %struct._IO_FILE* %24, null, !dbg !3043
  %or.cond10.us = and i1 %tobool125.us, %tobool127.us, !dbg !3044
  br i1 %or.cond10.us, label %if.then128.us, label %if.end134.us, !dbg !3044

if.then128.us:                                    ; preds = %sw.bb120.us
  %tobool130.us.demorgan = and i1 %tobool101.us, %tobool105.us, !dbg !3045
  %cond131.us = select i1 %tobool130.us.demorgan, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !3045
  %call132.us = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %w.2.us) #6, !dbg !3046
  %call133.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %cond131.us, i8* %call132.us) #6, !dbg !3047
  br label %if.end134.us, !dbg !3047

if.end134.us:                                     ; preds = %if.then128.us, %sw.bb120.us
  tail call void @cgraph_set_pure_flag(%struct.cgraph_node* nonnull %w.2.us, i8 zeroext 1) #6, !dbg !3048
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* nonnull %w.2.us, i8 zeroext %spec.select8.us) #6, !dbg !3049
  br label %sw.epilog.us, !dbg !3050

sw.bb.us:                                         ; preds = %if.end96.us
  %25 = bitcast %struct.cgraph_node* %w.2.us to i64**, !dbg !3051
  %26 = load i64*, i64** %25, align 8, !dbg !3051
  %bf.load.us = load i64, i64* %26, align 8, !dbg !3051
  %bf.cast19.us = and i64 %bf.load.us, 1048576, !dbg !3051
  %tobool111.us = icmp eq i64 %bf.cast19.us, 0, !dbg !3051
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3053
  %tobool113.us = icmp ne %struct._IO_FILE* %27, null, !dbg !3053
  %or.cond9.us = and i1 %tobool111.us, %tobool113.us, !dbg !3054
  br i1 %or.cond9.us, label %if.then114.us, label %if.end119.us, !dbg !3054

if.then114.us:                                    ; preds = %sw.bb.us
  %cond.us = select i1 %narrow, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !3055
  %call117.us = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %w.2.us) #6, !dbg !3056
  %call118.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %cond.us, i8* %call117.us) #6, !dbg !3057
  br label %if.end119.us, !dbg !3057

if.end119.us:                                     ; preds = %if.then114.us, %sw.bb.us
  tail call void @cgraph_set_readonly_flag(%struct.cgraph_node* nonnull %w.2.us, i8 zeroext 1) #6, !dbg !3058
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* nonnull %w.2.us, i8 zeroext %spec.select8.us) #6, !dbg !3059
  br label %sw.epilog.us, !dbg !3060

sw.epilog.us:                                     ; preds = %if.end119.us, %if.end134.us, %if.end96.us
  %aux135.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.2.us, i64 0, i32 16, !dbg !3061
  %28 = bitcast i8** %aux135.us to %struct.ipa_dfs_info**, !dbg !3061
  %29 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %28, align 8, !dbg !3061
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %29, metadata !2872, metadata !DIExpression()), !dbg !2915
  %next_cycle136.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %29, i64 0, i32 4, !dbg !3062
  %30 = load %struct.cgraph_node*, %struct.cgraph_node** %next_cycle136.us, align 8, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %30, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %while.cond82.us, !dbg !3020, !llvm.loop !3063

for.inc138.us-lcssa.us:                           ; preds = %while.cond82.us
  br label %for.inc138, !dbg !3065

while.cond82:                                     ; preds = %sw.epilog, %while.end.while.end.split_crit_edge
  %w.2 = phi %struct.cgraph_node* [ %8, %while.end.while.end.split_crit_edge ], [ %41, %sw.epilog ], !dbg !2935
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.2, metadata !2868, metadata !DIExpression()), !dbg !2915
  %tobool83 = icmp eq %struct.cgraph_node* %w.2, null, !dbg !3020
  br i1 %tobool83, label %for.inc138.us-lcssa, label %while.body84, !dbg !3020

while.body84:                                     ; preds = %while.cond82
  %call86 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* nonnull %w.2) #7, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call86, metadata !2891, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %pure_const_state.12, metadata !2893, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 %looping.14, metadata !2894, metadata !DIExpression()), !dbg !3022
  %state_previously_known87 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86, i64 0, i32 1, !dbg !3023
  %31 = load i32, i32* %state_previously_known87, align 4, !dbg !3023
  %cmp88 = icmp eq i32 %31, 2, !dbg !3025
  br i1 %cmp88, label %if.end96, label %land.lhs.true90, !dbg !3026

land.lhs.true90:                                  ; preds = %while.body84
  %cmp92 = icmp ugt i32 %pure_const_state.12, %31, !dbg !3027
  br i1 %cmp92, label %if.then94, label %if.end96, !dbg !3028

if.then94:                                        ; preds = %land.lhs.true90
  call void @llvm.dbg.value(metadata i32 %31, metadata !2893, metadata !DIExpression()), !dbg !3022
  br label %if.end96, !dbg !3029

if.end96:                                         ; preds = %while.body84, %if.then94, %land.lhs.true90
  %this_state.0 = phi i32 [ %31, %if.then94 ], [ %pure_const_state.12, %land.lhs.true90 ], [ %pure_const_state.12, %while.body84 ], !dbg !3022
  call void @llvm.dbg.value(metadata i32 %this_state.0, metadata !2893, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 %looping.14, metadata !2894, metadata !DIExpression()), !dbg !3022
  %looping_previously_known104 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86, i64 0, i32 2, !dbg !3031
  %32 = load i8, i8* %looping_previously_known104, align 4, !dbg !3031
  %tobool105 = icmp eq i8 %32, 0, !dbg !3033
  %spec.select8 = select i1 %tobool105, i8 0, i8 %looping.14, !dbg !3034
  call void @llvm.dbg.value(metadata i8 %spec.select8, metadata !2894, metadata !DIExpression()), !dbg !3022
  %pure_const_state108 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86, i64 0, i32 0, !dbg !3035
  store i32 %this_state.0, i32* %pure_const_state108, align 4, !dbg !3036
  %looping109 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call86, i64 0, i32 3, !dbg !3037
  store i8 %spec.select8, i8* %looping109, align 1, !dbg !3038
  switch i32 %this_state.0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb120
  ], !dbg !3039

sw.bb:                                            ; preds = %if.end96
  %33 = bitcast %struct.cgraph_node* %w.2 to i64**, !dbg !3051
  %34 = load i64*, i64** %33, align 8, !dbg !3051
  %bf.load = load i64, i64* %34, align 8, !dbg !3051
  %bf.cast19 = and i64 %bf.load, 1048576, !dbg !3051
  %tobool111 = icmp eq i64 %bf.cast19, 0, !dbg !3051
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3053
  %tobool113 = icmp ne %struct._IO_FILE* %35, null, !dbg !3053
  %or.cond9 = and i1 %tobool111, %tobool113, !dbg !3054
  br i1 %or.cond9, label %if.then114, label %if.end119, !dbg !3054

if.then114:                                       ; preds = %sw.bb
  %tobool116 = icmp eq i8 %spec.select8, 0, !dbg !3055
  %cond = select i1 %tobool116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), !dbg !3055
  %call117 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %w.2) #6, !dbg !3056
  %call118 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %cond, i8* %call117) #6, !dbg !3057
  br label %if.end119, !dbg !3057

if.end119:                                        ; preds = %sw.bb, %if.then114
  tail call void @cgraph_set_readonly_flag(%struct.cgraph_node* nonnull %w.2, i8 zeroext 1) #6, !dbg !3058
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* nonnull %w.2, i8 zeroext %spec.select8) #6, !dbg !3059
  br label %sw.epilog, !dbg !3060

sw.bb120:                                         ; preds = %if.end96
  %36 = bitcast %struct.cgraph_node* %w.2 to %struct.tree_function_decl**, !dbg !3040
  %37 = load %struct.tree_function_decl*, %struct.tree_function_decl** %36, align 8, !dbg !3040
  %pure_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %37, i64 0, i32 5, !dbg !3040
  %bf.load122 = load i32, i32* %pure_flag, align 8, !dbg !3040
  %bf.clear124 = and i32 %bf.load122, 134217728, !dbg !3040
  %tobool125 = icmp eq i32 %bf.clear124, 0, !dbg !3040
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3043
  %tobool127 = icmp ne %struct._IO_FILE* %38, null, !dbg !3043
  %or.cond10 = and i1 %tobool125, %tobool127, !dbg !3044
  br i1 %or.cond10, label %if.then128, label %if.end134, !dbg !3044

if.then128:                                       ; preds = %sw.bb120
  %tobool130 = icmp eq i8 %spec.select8, 0, !dbg !3045
  %cond131 = select i1 %tobool130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), !dbg !3045
  %call132 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %w.2) #6, !dbg !3046
  %call133 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %cond131, i8* %call132) #6, !dbg !3047
  br label %if.end134, !dbg !3047

if.end134:                                        ; preds = %sw.bb120, %if.then128
  tail call void @cgraph_set_pure_flag(%struct.cgraph_node* nonnull %w.2, i8 zeroext 1) #6, !dbg !3048
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* nonnull %w.2, i8 zeroext %spec.select8) #6, !dbg !3049
  br label %sw.epilog, !dbg !3050

sw.epilog:                                        ; preds = %if.end96, %if.end134, %if.end119
  %aux135 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.2, i64 0, i32 16, !dbg !3061
  %39 = bitcast i8** %aux135 to %struct.ipa_dfs_info**, !dbg !3061
  %40 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %39, align 8, !dbg !3061
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %40, metadata !2872, metadata !DIExpression()), !dbg !2915
  %next_cycle136 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %40, i64 0, i32 4, !dbg !3062
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %next_cycle136, align 8, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %41, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %while.cond82, !dbg !3020, !llvm.loop !3063

for.inc138.us-lcssa:                              ; preds = %while.cond82
  br label %for.inc138, !dbg !3065

for.inc138:                                       ; preds = %for.inc138.us-lcssa.us, %for.inc138.us-lcssa
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i32 undef, metadata !2871, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2915
  br label %for.cond, !dbg !3066, !llvm.loop !3067

for.end140:                                       ; preds = %for.cond
  br label %for.cond141, !dbg !3069

for.cond141:                                      ; preds = %for.inc151, %for.end140
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end140 ], [ %next, %for.inc151 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2867, metadata !DIExpression()), !dbg !2915
  %tobool142 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3072
  br i1 %tobool142, label %for.end152, label %for.body143, !dbg !3072

for.body143:                                      ; preds = %for.cond141
  %aux144 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !3073
  %42 = load i8*, i8** %aux144, align 8, !dbg !3073
  %tobool145 = icmp eq i8* %42, null, !dbg !3077
  br i1 %tobool145, label %for.inc151, label %if.then146, !dbg !3078

if.then146:                                       ; preds = %for.body143
  tail call void @free(i8* nonnull %42) #6, !dbg !3079
  store i8* null, i8** %aux144, align 8, !dbg !3081
  br label %for.inc151, !dbg !3082

for.inc151:                                       ; preds = %for.body143, %if.then146
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3083
  br label %for.cond141, !dbg !3084, !llvm.loop !3085

for.end152:                                       ; preds = %for.cond141
  %call153 = tail call i32 @ipa_utils_reduced_inorder(%struct.cgraph_node** %1, i8 zeroext 1, i8 zeroext 0, i8 (%struct.cgraph_edge*)* nonnull @ignore_edge) #6, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %call153, metadata !2870, metadata !DIExpression()), !dbg !2915
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3088
  %tobool154 = icmp eq %struct._IO_FILE* %43, null, !dbg !3088
  br i1 %tobool154, label %if.end156, label %if.then155, !dbg !3090

if.then155:                                       ; preds = %for.end152
  tail call void @dump_cgraph(%struct._IO_FILE* nonnull %43) #6, !dbg !3091
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3093
  tail call void @ipa_utils_print_order(%struct._IO_FILE* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.cgraph_node** %1, i32 %call153) #6, !dbg !3094
  br label %if.end156, !dbg !3095

if.end156:                                        ; preds = %for.end152, %if.then155
  call void @llvm.dbg.value(metadata i32 0, metadata !2871, metadata !DIExpression()), !dbg !2915
  %45 = sext i32 %call153 to i64, !dbg !3096
  br label %for.cond157, !dbg !3096

for.cond157:                                      ; preds = %for.inc295, %if.end156
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc295 ], [ 0, %if.end156 ], !dbg !3097
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2871, metadata !DIExpression()), !dbg !2915
  %cmp158 = icmp slt i64 %indvars.iv, %45, !dbg !3098
  br i1 %cmp158, label %for.body160, label %for.end297, !dbg !3099

for.body160:                                      ; preds = %for.cond157
  call void @llvm.dbg.value(metadata i8 0, metadata !2895, metadata !DIExpression()), !dbg !3100
  %arrayidx162 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv, !dbg !3101
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx162, align 8, !dbg !3101
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %46, metadata !2867, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %46, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %while.cond163, !dbg !3102

while.cond163:                                    ; preds = %cleanup243, %for.body160
  %can_throw.0 = phi i8 [ 0, %for.body160 ], [ %can_throw.9, %cleanup243 ], !dbg !3100
  %w.3 = phi %struct.cgraph_node* [ %46, %for.body160 ], [ %w.4, %cleanup243 ], !dbg !3103
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.3, metadata !2868, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %can_throw.0, metadata !2895, metadata !DIExpression()), !dbg !3100
  %tobool164 = icmp eq %struct.cgraph_node* %w.3, null, !dbg !3102
  br i1 %tobool164, label %while.end247, label %while.body165, !dbg !3102

while.body165:                                    ; preds = %while.cond163
  %call168 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* nonnull %w.3) #7, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call168, metadata !2901, metadata !DIExpression()), !dbg !3105
  %can_throw169 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call168, i64 0, i32 4, !dbg !3106
  %47 = load i8, i8* %can_throw169, align 2, !dbg !3106
  %tobool171 = icmp eq i8 %47, 0, !dbg !3108
  br i1 %tobool171, label %lor.lhs.false, label %if.then175, !dbg !3109

lor.lhs.false:                                    ; preds = %while.body165
  %call172 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %w.3) #6, !dbg !3110
  %cmp173 = icmp eq i32 %call172, 2, !dbg !3111
  br i1 %cmp173, label %if.then175, label %if.end176, !dbg !3112

if.then175:                                       ; preds = %while.body165, %lor.lhs.false
  call void @llvm.dbg.value(metadata i8 1, metadata !2895, metadata !DIExpression()), !dbg !3100
  br label %if.end176, !dbg !3113

if.end176:                                        ; preds = %if.then175, %lor.lhs.false
  %can_throw.1 = phi i8 [ 1, %if.then175 ], [ %can_throw.0, %lor.lhs.false ], !dbg !3100
  call void @llvm.dbg.value(metadata i8 %can_throw.1, metadata !2895, metadata !DIExpression()), !dbg !3100
  %tobool177 = icmp eq i8 %can_throw.1, 0, !dbg !3114
  br i1 %tobool177, label %if.end179, label %cleanup243, !dbg !3116

if.end179:                                        ; preds = %if.end176
  %callees180 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.3, i64 0, i32 1, !dbg !3117
  %48 = bitcast %struct.cgraph_node* %w.3 to i64**, !dbg !3118
  br label %for.cond181, !dbg !3120

for.cond181:                                      ; preds = %for.inc238, %if.end179
  %can_throw.2 = phi i8 [ 0, %if.end179 ], [ %can_throw.7, %for.inc238 ], !dbg !3121
  %e166.0.in = phi %struct.cgraph_edge** [ %callees180, %if.end179 ], [ %next_callee239, %for.inc238 ]
  %e166.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e166.0.in, align 8, !dbg !3122
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e166.0, metadata !2899, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 %can_throw.2, metadata !2895, metadata !DIExpression()), !dbg !3100
  %tobool182 = icmp eq %struct.cgraph_edge* %e166.0, null, !dbg !3123
  br i1 %tobool182, label %for.end240, label %for.body183, !dbg !3123

for.body183:                                      ; preds = %for.cond181
  %callee185 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e166.0, i64 0, i32 2, !dbg !3124
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %callee185, align 8, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %49, metadata !2902, metadata !DIExpression()), !dbg !3125
  %call186 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %49) #6, !dbg !3126
  %cmp187 = icmp ugt i32 %call186, 2, !dbg !3127
  br i1 %cmp187, label %if.then189, label %if.else217, !dbg !3128

if.then189:                                       ; preds = %for.body183
  %call191 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %49) #7, !dbg !3129
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call191, metadata !2906, metadata !DIExpression()), !dbg !3130
  %tobool192 = icmp eq i8 %can_throw.2, 0, !dbg !3131
  br i1 %tobool192, label %if.end194, label %cleanup214, !dbg !3133

if.end194:                                        ; preds = %if.then189
  %can_throw195 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call191, i64 0, i32 4, !dbg !3134
  %50 = load i8, i8* %can_throw195, align 2, !dbg !3134
  %tobool197 = icmp eq i8 %50, 0, !dbg !3135
  br i1 %tobool197, label %cleanup214, label %land.lhs.true198, !dbg !3136

land.lhs.true198:                                 ; preds = %if.end194
  %51 = load i64*, i64** %48, align 8, !dbg !3137
  %bf.load201 = load i64, i64* %51, align 8, !dbg !3137
  %bf.cast20418 = and i64 %bf.load201, 33554432, !dbg !3137
  %tobool205 = icmp eq i64 %bf.cast20418, 0, !dbg !3137
  br i1 %tobool205, label %land.lhs.true206, label %cleanup214, !dbg !3138

land.lhs.true206:                                 ; preds = %land.lhs.true198
  %can_throw_external = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e166.0, i64 0, i32 14, !dbg !3139
  %bf.load207 = load i8, i8* %can_throw_external, align 2, !dbg !3139
  %bf.clear209 = lshr i8 %bf.load207, 2, !dbg !3140
  %bf.clear209.lobit = and i8 %bf.clear209, 1, !dbg !3140
  br label %cleanup214, !dbg !3140

cleanup214:                                       ; preds = %land.lhs.true198, %if.end194, %if.then189, %land.lhs.true206
  %can_throw.4 = phi i8 [ %can_throw.2, %if.then189 ], [ 0, %land.lhs.true198 ], [ 0, %if.end194 ], [ %bf.clear209.lobit, %land.lhs.true206 ], !dbg !3121
  %cleanup.dest.slot.3 = phi i32 [ 21, %if.then189 ], [ 0, %land.lhs.true198 ], [ 0, %if.end194 ], [ 0, %land.lhs.true206 ]
  call void @llvm.dbg.value(metadata i8 %can_throw.4, metadata !2895, metadata !DIExpression()), !dbg !3100
  %cond1 = icmp eq i32 %cleanup.dest.slot.3, 0
  br i1 %cond1, label %if.end234, label %cleanup235

if.else217:                                       ; preds = %for.body183
  %can_throw_external218 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e166.0, i64 0, i32 14, !dbg !3141
  %bf.load219 = load i8, i8* %can_throw_external218, align 2, !dbg !3141
  %bf.clear221 = and i8 %bf.load219, 4, !dbg !3141
  %tobool223 = icmp eq i8 %bf.clear221, 0, !dbg !3143
  br i1 %tobool223, label %if.end234, label %land.lhs.true224, !dbg !3144

land.lhs.true224:                                 ; preds = %if.else217
  %52 = bitcast %struct.cgraph_node* %49 to i64**, !dbg !3145
  %53 = load i64*, i64** %52, align 8, !dbg !3145
  %bf.load227 = load i64, i64* %53, align 8, !dbg !3145
  %bf.cast23017 = and i64 %bf.load227, 33554432, !dbg !3145
  %tobool231 = icmp eq i64 %bf.cast23017, 0, !dbg !3145
  %spec.select12 = select i1 %tobool231, i8 1, i8 %can_throw.2, !dbg !3146
  br label %if.end234, !dbg !3146

if.end234:                                        ; preds = %if.else217, %land.lhs.true224, %cleanup214
  %can_throw.6 = phi i8 [ %can_throw.4, %cleanup214 ], [ %can_throw.2, %if.else217 ], [ %spec.select12, %land.lhs.true224 ], !dbg !3121
  call void @llvm.dbg.value(metadata i8 %can_throw.6, metadata !2895, metadata !DIExpression()), !dbg !3100
  br label %cleanup235, !dbg !3147

cleanup235:                                       ; preds = %cleanup214, %if.end234
  %can_throw.7 = phi i8 [ %can_throw.4, %cleanup214 ], [ %can_throw.6, %if.end234 ], !dbg !3121
  %cleanup.dest.slot.4 = phi i32 [ %cleanup.dest.slot.3, %cleanup214 ], [ 0, %if.end234 ]
  call void @llvm.dbg.value(metadata i8 %can_throw.7, metadata !2895, metadata !DIExpression()), !dbg !3100
  %switch13 = icmp eq i32 %cleanup.dest.slot.4, 0
  br i1 %switch13, label %for.inc238, label %for.end240

for.inc238:                                       ; preds = %cleanup235
  %next_callee239 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e166.0, i64 0, i32 6, !dbg !3148
  br label %for.cond181, !dbg !3149, !llvm.loop !3150

for.end240:                                       ; preds = %for.cond181, %cleanup235
  %can_throw.8 = phi i8 [ %can_throw.7, %cleanup235 ], [ %can_throw.2, %for.cond181 ], !dbg !3121
  call void @llvm.dbg.value(metadata i8 %can_throw.8, metadata !2895, metadata !DIExpression()), !dbg !3100
  %aux241 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.3, i64 0, i32 16, !dbg !3152
  %54 = bitcast i8** %aux241 to %struct.ipa_dfs_info**, !dbg !3152
  %55 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %54, align 8, !dbg !3152
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %55, metadata !2872, metadata !DIExpression()), !dbg !2915
  %next_cycle242 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %55, i64 0, i32 4, !dbg !3153
  %56 = load %struct.cgraph_node*, %struct.cgraph_node** %next_cycle242, align 8, !dbg !3153
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %56, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %cleanup243, !dbg !3154

cleanup243:                                       ; preds = %if.end176, %for.end240
  %can_throw.9 = phi i8 [ %can_throw.8, %for.end240 ], [ %can_throw.1, %if.end176 ], !dbg !3121
  %cleanup.dest.slot.5 = phi i1 [ true, %for.end240 ], [ false, %if.end176 ]
  %w.4 = phi %struct.cgraph_node* [ %56, %for.end240 ], [ %w.3, %if.end176 ], !dbg !3100
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.4, metadata !2868, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %can_throw.9, metadata !2895, metadata !DIExpression()), !dbg !3100
  br i1 %cleanup.dest.slot.5, label %while.cond163, label %while.end247, !llvm.loop !3155

while.end247:                                     ; preds = %while.cond163, %cleanup243
  %can_throw.10 = phi i8 [ %can_throw.9, %cleanup243 ], [ %can_throw.0, %while.cond163 ], !dbg !3100
  call void @llvm.dbg.value(metadata i8 %can_throw.10, metadata !2895, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %46, metadata !2868, metadata !DIExpression()), !dbg !2915
  %tobool253 = icmp eq i8 %can_throw.10, 0, !dbg !3156
  br i1 %tobool253, label %while.end247.split.us, label %while.end247.while.end247.split_crit_edge, !dbg !3157

while.end247.while.end247.split_crit_edge:        ; preds = %while.end247
  br i1 false, label %while.end247.split.split.us, label %while.end247.split.while.end247.split.split_crit_edge, !dbg !3157

while.end247.split.us:                            ; preds = %while.end247
  br label %while.cond248.us, !dbg !3157

while.cond248.us:                                 ; preds = %if.end291.us, %while.end247.split.us
  %w.5.us = phi %struct.cgraph_node* [ %46, %while.end247.split.us ], [ %62, %if.end291.us ], !dbg !3100
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.5.us, metadata !2868, metadata !DIExpression()), !dbg !2915
  %tobool249.us = icmp eq %struct.cgraph_node* %w.5.us, null, !dbg !3157
  br i1 %tobool249.us, label %for.inc295.us-lcssa.us, label %while.body250.us, !dbg !3157

while.body250.us:                                 ; preds = %while.cond248.us
  %call252.us = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* nonnull %w.5.us) #7, !dbg !3158
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call252.us, metadata !2909, metadata !DIExpression()), !dbg !3159
  %57 = bitcast %struct.cgraph_node* %w.5.us to i64**, !dbg !3160
  %58 = load i64*, i64** %57, align 8, !dbg !3160
  %bf.load257.us = load i64, i64* %58, align 8, !dbg !3160
  %bf.cast26015.us = and i64 %bf.load257.us, 33554432, !dbg !3160
  %tobool261.us = icmp eq i64 %bf.cast26015.us, 0, !dbg !3160
  br i1 %tobool261.us, label %if.then262.us, label %if.else277.us, !dbg !3161

if.else277.us:                                    ; preds = %while.body250.us
  br i1 true, label %if.end291.us, label %land.lhs.true280.us, !dbg !3162

land.lhs.true280.us:                              ; preds = %if.else277.us
  br i1 undef, label %if.then288.us, label %land.lhs.true280.us.if.end291.us_crit_edge, !dbg !3164

land.lhs.true280.us.if.end291.us_crit_edge:       ; preds = %land.lhs.true280.us
  br label %if.end291.us, !dbg !3164

if.then288.us:                                    ; preds = %land.lhs.true280.us
  br label %if.end291.us, !dbg !3165

if.then262.us:                                    ; preds = %while.body250.us
  tail call void @cgraph_set_nothrow_flag(%struct.cgraph_node* nonnull %w.5.us, i8 zeroext 1) #6, !dbg !3166
  %callers.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.5.us, i64 0, i32 2, !dbg !3167
  br label %for.cond264.us, !dbg !3169

for.cond264.us:                                   ; preds = %for.body266.us, %if.then262.us
  %e263.0.in.us = phi %struct.cgraph_edge** [ %callers.us, %if.then262.us ], [ %next_caller.us, %for.body266.us ]
  %e263.0.us = load %struct.cgraph_edge*, %struct.cgraph_edge** %e263.0.in.us, align 8, !dbg !3170
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e263.0.us, metadata !2911, metadata !DIExpression()), !dbg !3171
  %tobool265.us = icmp eq %struct.cgraph_edge* %e263.0.us, null, !dbg !3172
  br i1 %tobool265.us, label %for.end271.us, label %for.body266.us, !dbg !3172

for.body266.us:                                   ; preds = %for.cond264.us
  %can_throw_external267.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e263.0.us, i64 0, i32 14, !dbg !3173
  %bf.load268.us = load i8, i8* %can_throw_external267.us, align 2, !dbg !3175
  %bf.clear269.us = and i8 %bf.load268.us, -5, !dbg !3175
  store i8 %bf.clear269.us, i8* %can_throw_external267.us, align 2, !dbg !3175
  %next_caller.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e263.0.us, i64 0, i32 4, !dbg !3176
  br label %for.cond264.us, !dbg !3177, !llvm.loop !3178

for.end271.us:                                    ; preds = %for.cond264.us
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3180
  %tobool272.us = icmp eq %struct._IO_FILE* %59, null, !dbg !3180
  br i1 %tobool272.us, label %if.end291.us, label %if.then273.us, !dbg !3182

if.then273.us:                                    ; preds = %for.end271.us
  %call274.us = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %w.5.us) #6, !dbg !3183
  %call275.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %call274.us) #6, !dbg !3184
  br label %if.end291.us, !dbg !3184

if.end291.us:                                     ; preds = %land.lhs.true280.us.if.end291.us_crit_edge, %if.then273.us, %for.end271.us, %if.then288.us, %if.else277.us
  %aux292.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.5.us, i64 0, i32 16, !dbg !3185
  %60 = bitcast i8** %aux292.us to %struct.ipa_dfs_info**, !dbg !3185
  %61 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %60, align 8, !dbg !3185
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %61, metadata !2872, metadata !DIExpression()), !dbg !2915
  %next_cycle293.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %61, i64 0, i32 4, !dbg !3186
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %next_cycle293.us, align 8, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %62, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %while.cond248.us, !dbg !3157, !llvm.loop !3187

for.inc295.us-lcssa.us:                           ; preds = %while.cond248.us
  br label %for.inc295, !dbg !3189

while.end247.split.while.end247.split.split_crit_edge: ; preds = %while.end247.while.end247.split_crit_edge
  br label %while.cond248, !dbg !3157

while.end247.split.split.us:                      ; preds = %while.end247.while.end247.split_crit_edge
  br label %for.inc295.us-lcssa.us-lcssa.us, !dbg !3157

for.inc295.us-lcssa.us-lcssa.us:                  ; preds = %while.end247.split.split.us
  br label %for.inc295.us-lcssa, !dbg !3189

while.cond248:                                    ; preds = %if.end291, %while.end247.split.while.end247.split.split_crit_edge
  %w.5 = phi %struct.cgraph_node* [ %46, %while.end247.split.while.end247.split.split_crit_edge ], [ %67, %if.end291 ], !dbg !3100
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.5, metadata !2868, metadata !DIExpression()), !dbg !2915
  %tobool249 = icmp eq %struct.cgraph_node* %w.5, null, !dbg !3157
  br i1 %tobool249, label %for.inc295.us-lcssa.us-lcssa, label %while.body250, !dbg !3157

while.body250:                                    ; preds = %while.cond248
  %call252 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* nonnull %w.5) #7, !dbg !3158
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call252, metadata !2909, metadata !DIExpression()), !dbg !3159
  %63 = bitcast %struct.cgraph_node* %w.5 to i64**, !dbg !3190
  %64 = load i64*, i64** %63, align 8, !dbg !3190
  %bf.load283 = load i64, i64* %64, align 8, !dbg !3190
  %bf.cast28616 = and i64 %bf.load283, 33554432, !dbg !3190
  %tobool287 = icmp eq i64 %bf.cast28616, 0, !dbg !3190
  br i1 %tobool287, label %if.then288, label %if.end291, !dbg !3164

if.then288:                                       ; preds = %while.body250
  %can_throw289 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call252, i64 0, i32 4, !dbg !3191
  store i8 1, i8* %can_throw289, align 2, !dbg !3192
  br label %if.end291, !dbg !3165

if.end291:                                        ; preds = %while.body250, %if.then288
  %aux292 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.5, i64 0, i32 16, !dbg !3185
  %65 = bitcast i8** %aux292 to %struct.ipa_dfs_info**, !dbg !3185
  %66 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %65, align 8, !dbg !3185
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %66, metadata !2872, metadata !DIExpression()), !dbg !2915
  %next_cycle293 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %66, i64 0, i32 4, !dbg !3186
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %next_cycle293, align 8, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %67, metadata !2868, metadata !DIExpression()), !dbg !2915
  br label %while.cond248, !dbg !3157, !llvm.loop !3187

for.inc295.us-lcssa.us-lcssa:                     ; preds = %while.cond248
  br label %for.inc295.us-lcssa, !dbg !3189

for.inc295.us-lcssa:                              ; preds = %for.inc295.us-lcssa.us-lcssa.us, %for.inc295.us-lcssa.us-lcssa
  br label %for.inc295, !dbg !3189

for.inc295:                                       ; preds = %for.inc295.us-lcssa.us, %for.inc295.us-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3189
  call void @llvm.dbg.value(metadata i32 undef, metadata !2871, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2915
  br label %for.cond157, !dbg !3193, !llvm.loop !3194

for.end297:                                       ; preds = %for.cond157
  br label %for.cond298, !dbg !3196

for.cond298:                                      ; preds = %for.inc314, %for.end297
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end297 ], [ %next315, %for.inc314 ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !3198
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !2867, metadata !DIExpression()), !dbg !2915
  %tobool299 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !3199
  br i1 %tobool299, label %for.end316, label %for.body300, !dbg !3199

for.body300:                                      ; preds = %for.cond298
  %aux301 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 16, !dbg !3200
  %68 = load i8*, i8** %aux301, align 8, !dbg !3200
  %tobool302 = icmp eq i8* %68, null, !dbg !3204
  br i1 %tobool302, label %if.end307, label %if.then303, !dbg !3205

if.then303:                                       ; preds = %for.body300
  tail call void @free(i8* nonnull %68) #6, !dbg !3206
  store i8* null, i8** %aux301, align 8, !dbg !3208
  br label %if.end307, !dbg !3209

if.end307:                                        ; preds = %for.body300, %if.then303
  %call308 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.1) #6, !dbg !3210
  %cmp309 = icmp ugt i32 %call308, 1, !dbg !3212
  br i1 %cmp309, label %if.then311, label %for.inc314, !dbg !3213

if.then311:                                       ; preds = %if.end307
  %call312 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* nonnull %node.1) #7, !dbg !3214
  %69 = bitcast %struct.funct_state_d* %call312 to i8*, !dbg !3214
  tail call void @free(i8* %69) #6, !dbg !3215
  br label %for.inc314, !dbg !3215

for.inc314:                                       ; preds = %if.end307, %if.then311
  %next315 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !3216
  br label %for.cond298, !dbg !3217, !llvm.loop !3218

for.end316:                                       ; preds = %for.cond298
  tail call void @free(i8* %call) #6, !dbg !3220
  tail call fastcc void @VEC_funct_state_heap_free(%struct.VEC_funct_state_heap** nonnull @funct_state_vec) #7, !dbg !3221
  tail call fastcc void @finish_state() #7, !dbg !3222
  ret i32 0, !dbg !3223
}

; Function Attrs: nounwind uwtable
define internal void @generate_summary() #5 !dbg !3224 {
entry:
  tail call fastcc void @register_hooks() #7, !dbg !3227
  %call = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !3228
  store %struct.pointer_set_t* %call, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3229
  br label %for.cond, !dbg !3230

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3226, metadata !DIExpression()), !dbg !3233
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3234
  br i1 %tobool, label %for.end, label %for.body, !dbg !3234

for.body:                                         ; preds = %for.cond
  %call1 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.0) #6, !dbg !3235
  %cmp = icmp ugt i32 %call1, 1, !dbg !3238
  br i1 %cmp, label %if.then, label %for.inc, !dbg !3239

if.then:                                          ; preds = %for.body
  %call2 = tail call fastcc %struct.funct_state_d* @analyze_function(%struct.cgraph_node* nonnull %node.0, i8 zeroext 1) #7, !dbg !3240
  tail call fastcc void @set_function_state(%struct.cgraph_node* nonnull %node.0, %struct.funct_state_d* %call2) #7, !dbg !3241
  br label %for.inc, !dbg !3241

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3242
  br label %for.cond, !dbg !3243, !llvm.loop !3244

for.end:                                          ; preds = %for.cond
  %0 = load %struct.pointer_set_t*, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3246
  tail call void @pointer_set_destroy(%struct.pointer_set_t* %0) #6, !dbg !3247
  store %struct.pointer_set_t* null, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3248
  ret void, !dbg !3249
}

; Function Attrs: nounwind uwtable
define internal void @pure_const_write_summary(%struct.cgraph_node_set_def* %set) #5 !dbg !3250 {
entry:
  %csi = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp6 = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !3255, metadata !DIExpression()), !dbg !3329
  %call = tail call %struct.lto_simple_output_block* @lto_create_simple_output_block(i32 5) #6, !dbg !3330
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %call, metadata !3257, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 0, metadata !3294, metadata !DIExpression()), !dbg !3329
  %0 = bitcast %struct.cgraph_node_set_iterator* %csi to i8*, !dbg !3331
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3331
  %1 = bitcast %struct.cgraph_node_set_iterator* %tmp to i8*, !dbg !3332
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3332
  %call1 = tail call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #7, !dbg !3332
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 0, !dbg !3332
  %3 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call1, 0, !dbg !3332
  store %struct.cgraph_node_set_def* %3, %struct.cgraph_node_set_def** %2, align 8, !dbg !3332
  %4 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 1, !dbg !3332
  %5 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call1, 1, !dbg !3332
  store i32 %5, i32* %4, align 8, !dbg !3332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !3332
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3332
  %6 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 0, !dbg !3334
  %7 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !3334
  br label %for.cond, !dbg !3336

for.cond:                                         ; preds = %for.inc, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %count.1, %for.inc ], !dbg !3329
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !3294, metadata !DIExpression()), !dbg !3329
  %8 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3337
  %9 = load i32, i32* %7, align 8, !dbg !3337
  %call2 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %8, i32 %9) #7, !dbg !3337
  %tobool = icmp eq i8 %call2, 0, !dbg !3338
  br i1 %tobool, label %for.body, label %for.end, !dbg !3339

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3340
  %11 = load i32, i32* %7, align 8, !dbg !3340
  %call3 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %10, i32 %11) #7, !dbg !3340
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call3, metadata !3256, metadata !DIExpression()), !dbg !3329
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call3, i64 0, i32 27, !dbg !3342
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3342
  %bf.clear = and i16 %bf.load, 32, !dbg !3342
  %tobool4 = icmp eq i16 %bf.clear, 0, !dbg !3344
  br i1 %tobool4, label %for.inc, label %land.lhs.true, !dbg !3345

land.lhs.true:                                    ; preds = %for.body
  %call5 = call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %call3) #7, !dbg !3346
  %cmp = icmp ne %struct.funct_state_d* %call5, null, !dbg !3347
  %inc = zext i1 %cmp to i32, !dbg !3348
  %spec.select = add i32 %count.0, %inc, !dbg !3348
  br label %for.inc, !dbg !3348

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %count.1 = phi i32 [ %count.0, %for.body ], [ %spec.select, %land.lhs.true ], !dbg !3329
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !3294, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !3295, metadata !DIExpression(DW_OP_deref)), !dbg !3329
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #7, !dbg !3349
  br label %for.cond, !dbg !3350, !llvm.loop !3351

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i32 [ %count.0, %for.cond ], !dbg !3329
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3294, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3294, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3294, metadata !DIExpression()), !dbg !3329
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 2, !dbg !3353
  %12 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3353
  %conv = zext i32 %count.0.lcssa to i64, !dbg !3354
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %12, i64 %conv) #6, !dbg !3355
  %13 = bitcast %struct.cgraph_node_set_iterator* %tmp6 to i8*, !dbg !3356
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !3356
  %call7 = call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #7, !dbg !3356
  %14 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp6, i64 0, i32 0, !dbg !3356
  %15 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call7, 0, !dbg !3356
  store %struct.cgraph_node_set_def* %15, %struct.cgraph_node_set_def** %14, align 8, !dbg !3356
  %16 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp6, i64 0, i32 1, !dbg !3356
  %17 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call7, 1, !dbg !3356
  store i32 %17, i32* %16, align 8, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !3356
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !3356
  %decl_state = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 1, !dbg !3357
  br label %for.cond8, !dbg !3358

for.cond8:                                        ; preds = %for.inc37, %for.end
  %18 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3359
  %19 = load i32, i32* %7, align 8, !dbg !3359
  %call9 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %18, i32 %19) #7, !dbg !3359
  %tobool10 = icmp eq i8 %call9, 0, !dbg !3360
  br i1 %tobool10, label %for.body12, label %for.end38, !dbg !3361

for.body12:                                       ; preds = %for.cond8
  %20 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3362
  %21 = load i32, i32* %7, align 8, !dbg !3362
  %call13 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %20, i32 %21) #7, !dbg !3362
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call13, metadata !3256, metadata !DIExpression()), !dbg !3329
  %analyzed14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call13, i64 0, i32 27, !dbg !3363
  %bf.load15 = load i16, i16* %analyzed14, align 4, !dbg !3363
  %bf.clear17 = and i16 %bf.load15, 32, !dbg !3363
  %tobool19 = icmp eq i16 %bf.clear17, 0, !dbg !3364
  br i1 %tobool19, label %for.inc37, label %land.lhs.true20, !dbg !3365

land.lhs.true20:                                  ; preds = %for.body12
  %call21 = call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %call13) #7, !dbg !3366
  %cmp22 = icmp eq %struct.funct_state_d* %call21, null, !dbg !3367
  br i1 %cmp22, label %for.inc37, label %if.then24, !dbg !3368

if.then24:                                        ; preds = %land.lhs.true20
  %call25 = call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %call13) #7, !dbg !3369
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call25, metadata !3326, metadata !DIExpression()), !dbg !3357
  %22 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3370
  %cgraph_node_encoder = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %22, i64 0, i32 1, !dbg !3371
  %23 = load %struct.lto_cgraph_encoder_d*, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder, align 8, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %23, metadata !3328, metadata !DIExpression()), !dbg !3357
  %call26 = call i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %23, %struct.cgraph_node* %call13) #6, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %call26, metadata !3327, metadata !DIExpression()), !dbg !3357
  %24 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3373
  %conv28 = sext i32 %call26 to i64, !dbg !3374
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %24, i64 %conv28) #6, !dbg !3375
  %call29 = call %struct.bitpack_d* @bitpack_create() #6, !dbg !3376
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %call29, metadata !3301, metadata !DIExpression()), !dbg !3357
  %pure_const_state = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call25, i64 0, i32 0, !dbg !3377
  %25 = load i32, i32* %pure_const_state, align 4, !dbg !3377
  %conv30 = zext i32 %25 to i64, !dbg !3378
  call void @bp_pack_value(%struct.bitpack_d* %call29, i64 %conv30, i32 2) #6, !dbg !3379
  %state_previously_known = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call25, i64 0, i32 1, !dbg !3380
  %26 = load i32, i32* %state_previously_known, align 4, !dbg !3380
  %conv31 = zext i32 %26 to i64, !dbg !3381
  call void @bp_pack_value(%struct.bitpack_d* %call29, i64 %conv31, i32 2) #6, !dbg !3382
  %looping_previously_known = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call25, i64 0, i32 2, !dbg !3383
  %27 = load i8, i8* %looping_previously_known, align 4, !dbg !3383
  %conv32 = zext i8 %27 to i64, !dbg !3384
  call void @bp_pack_value(%struct.bitpack_d* %call29, i64 %conv32, i32 1) #6, !dbg !3385
  %looping = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call25, i64 0, i32 3, !dbg !3386
  %28 = load i8, i8* %looping, align 1, !dbg !3386
  %conv33 = zext i8 %28 to i64, !dbg !3387
  call void @bp_pack_value(%struct.bitpack_d* %call29, i64 %conv33, i32 1) #6, !dbg !3388
  %can_throw = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call25, i64 0, i32 4, !dbg !3389
  %29 = load i8, i8* %can_throw, align 2, !dbg !3389
  %conv34 = zext i8 %29 to i64, !dbg !3390
  call void @bp_pack_value(%struct.bitpack_d* %call29, i64 %conv34, i32 1) #6, !dbg !3391
  %30 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3392
  call void @lto_output_bitpack(%struct.lto_output_stream* %30, %struct.bitpack_d* %call29) #6, !dbg !3393
  call void @bitpack_delete(%struct.bitpack_d* %call29) #6, !dbg !3394
  br label %for.inc37, !dbg !3395

for.inc37:                                        ; preds = %land.lhs.true20, %for.body12, %if.then24
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !3295, metadata !DIExpression(DW_OP_deref)), !dbg !3329
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #7, !dbg !3396
  br label %for.cond8, !dbg !3397, !llvm.loop !3398

for.end38:                                        ; preds = %for.cond8
  call void @lto_destroy_simple_output_block(%struct.lto_simple_output_block* %call) #6, !dbg !3400
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3401
  ret void, !dbg !3401
}

; Function Attrs: nounwind uwtable
define internal void @pure_const_read_summary() #5 !dbg !3402 {
entry:
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %call = tail call %struct.lto_file_decl_data** @lto_get_file_decl_data() #6, !dbg !3430
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data** %call, metadata !3404, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 0, metadata !3407, metadata !DIExpression()), !dbg !3431
  tail call fastcc void @register_hooks() #7, !dbg !3432
  %0 = bitcast i8** %data to i8*, !dbg !3433
  %1 = bitcast i64* %len to i8*, !dbg !3433
  br label %while.cond, !dbg !3434

while.cond:                                       ; preds = %if.end, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !3431
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3407, metadata !DIExpression()), !dbg !3431
  %inc = add i32 %j.0, 1, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3407, metadata !DIExpression()), !dbg !3431
  %idxprom = zext i32 %j.0 to i64, !dbg !3436
  %arrayidx = getelementptr inbounds %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %call, i64 %idxprom, !dbg !3436
  %2 = load %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %arrayidx, align 8, !dbg !3436
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %2, metadata !3406, metadata !DIExpression()), !dbg !3431
  %tobool = icmp eq %struct.lto_file_decl_data* %2, null, !dbg !3434
  br i1 %tobool, label %while.end, label %while.body, !dbg !3434

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3437
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3438
  call void @llvm.dbg.value(metadata i8** %data, metadata !3408, metadata !DIExpression(DW_OP_deref)), !dbg !3433
  call void @llvm.dbg.value(metadata i64* %len, metadata !3410, metadata !DIExpression(DW_OP_deref)), !dbg !3433
  %call1 = call %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data* nonnull %2, i32 5, i8** nonnull %data, i64* nonnull %len) #6, !dbg !3439
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %call1, metadata !3411, metadata !DIExpression()), !dbg !3433
  %tobool2 = icmp eq %struct.lto_input_block* %call1, null, !dbg !3440
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3441

if.then:                                          ; preds = %while.body
  %call3 = call i64 @lto_input_uleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3442
  %conv = trunc i64 %call3 to i32, !dbg !3442
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3421, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()), !dbg !3443
  %cgraph_node_encoder = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %2, i64 0, i32 2, !dbg !3444
  br label %for.cond, !dbg !3445

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc20, %for.body ], !dbg !3446
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3418, metadata !DIExpression()), !dbg !3443
  %exitcond = icmp eq i32 %i.0, %conv, !dbg !3447
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3448

for.body:                                         ; preds = %for.cond
  %call5 = call i8* @xcalloc(i64 1, i64 12) #6, !dbg !3449
  %3 = bitcast i8* %call5 to %struct.funct_state_d*, !dbg !3449
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %3, metadata !3428, metadata !DIExpression()), !dbg !3444
  %call6 = call i64 @lto_input_uleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3450
  %conv7 = trunc i64 %call6 to i32, !dbg !3450
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !3422, metadata !DIExpression()), !dbg !3444
  %4 = load %struct.lto_cgraph_encoder_d*, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder, align 8, !dbg !3451
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %4, metadata !3429, metadata !DIExpression()), !dbg !3444
  %call8 = call %struct.cgraph_node* @lto_cgraph_encoder_deref(%struct.lto_cgraph_encoder_d* %4, i32 %conv7) #6, !dbg !3452
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call8, metadata !3426, metadata !DIExpression()), !dbg !3444
  call fastcc void @set_function_state(%struct.cgraph_node* %call8, %struct.funct_state_d* %3) #7, !dbg !3453
  %call9 = call %struct.bitpack_d* @lto_input_bitpack(%struct.lto_input_block* nonnull %call1) #6, !dbg !3454
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %call9, metadata !3427, metadata !DIExpression()), !dbg !3444
  %call10 = call i64 @bp_unpack_value(%struct.bitpack_d* %call9, i32 2) #6, !dbg !3455
  %conv11 = trunc i64 %call10 to i32, !dbg !3456
  %pure_const_state = bitcast i8* %call5 to i32*, !dbg !3457
  store i32 %conv11, i32* %pure_const_state, align 4, !dbg !3458
  %call12 = call i64 @bp_unpack_value(%struct.bitpack_d* %call9, i32 2) #6, !dbg !3459
  %conv13 = trunc i64 %call12 to i32, !dbg !3460
  %state_previously_known = getelementptr inbounds i8, i8* %call5, i64 4, !dbg !3461
  %5 = bitcast i8* %state_previously_known to i32*, !dbg !3461
  store i32 %conv13, i32* %5, align 4, !dbg !3462
  %call14 = call i64 @bp_unpack_value(%struct.bitpack_d* %call9, i32 1) #6, !dbg !3463
  %conv15 = trunc i64 %call14 to i8, !dbg !3463
  %6 = getelementptr inbounds i8, i8* %call5, i64 8, !dbg !3464
  store i8 %conv15, i8* %6, align 4, !dbg !3465
  %call16 = call i64 @bp_unpack_value(%struct.bitpack_d* %call9, i32 1) #6, !dbg !3466
  %conv17 = trunc i64 %call16 to i8, !dbg !3466
  %7 = getelementptr inbounds i8, i8* %call5, i64 9, !dbg !3467
  store i8 %conv17, i8* %7, align 1, !dbg !3468
  %call18 = call i64 @bp_unpack_value(%struct.bitpack_d* %call9, i32 1) #6, !dbg !3469
  %conv19 = trunc i64 %call18 to i8, !dbg !3469
  %8 = getelementptr inbounds i8, i8* %call5, i64 10, !dbg !3470
  store i8 %conv19, i8* %8, align 2, !dbg !3471
  call void @bitpack_delete(%struct.bitpack_d* %call9) #6, !dbg !3472
  %inc20 = add i32 %i.0, 1, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %inc20, metadata !3418, metadata !DIExpression()), !dbg !3443
  br label %for.cond, !dbg !3474, !llvm.loop !3475

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %data, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %9, metadata !3408, metadata !DIExpression()), !dbg !3433
  %10 = load i64, i64* %len, align 8, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %10, metadata !3410, metadata !DIExpression()), !dbg !3433
  call void @lto_destroy_simple_input_block(%struct.lto_file_decl_data* nonnull %2, i32 5, %struct.lto_input_block* nonnull %call1, i8* %9, i64 %10) #6, !dbg !3479
  br label %if.end, !dbg !3480

if.end:                                           ; preds = %while.body, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3481
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3481
  br label %while.cond, !dbg !3434, !llvm.loop !3482

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3483
}

; Function Attrs: nounwind uwtable
define internal i32 @local_pure_const() #5 !dbg !3484 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !3486, metadata !DIExpression()), !dbg !3492
  %call = tail call zeroext i8 @function_called_by_processed_nodes_p() #6, !dbg !3493
  %tobool = icmp eq i8 %call, 0, !dbg !3493
  br i1 %tobool, label %if.end4, label %if.then, !dbg !3495

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3496
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !3496
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !3499

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !3500
  br label %cleanup, !dbg !3500

if.end4:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3501
  %call5 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %1) #6, !dbg !3502
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call5, metadata !3488, metadata !DIExpression()), !dbg !3492
  %call6 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %call5) #6, !dbg !3503
  %cmp = icmp ult i32 %call6, 3, !dbg !3505
  br i1 %cmp, label %if.then7, label %if.end12, !dbg !3506

if.then7:                                         ; preds = %if.end4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3507
  %tobool8 = icmp eq %struct._IO_FILE* %2, null, !dbg !3507
  br i1 %tobool8, label %cleanup, label %if.then9, !dbg !3510

if.then9:                                         ; preds = %if.then7
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !3511
  br label %cleanup, !dbg !3511

if.end12:                                         ; preds = %if.end4
  %call13 = tail call fastcc %struct.funct_state_d* @analyze_function(%struct.cgraph_node* %call5, i8 zeroext 0) #7, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %call13, metadata !3487, metadata !DIExpression()), !dbg !3492
  %pure_const_state = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call13, i64 0, i32 0, !dbg !3513
  %3 = load i32, i32* %pure_const_state, align 4, !dbg !3513
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
  ], !dbg !3514

sw.bb:                                            ; preds = %if.end12
  %4 = load i64*, i64** bitcast (%union.tree_node** @current_function_decl to i64**), align 8, !dbg !3515
  %bf.load = load i64, i64* %4, align 8, !dbg !3515
  %bf.cast3 = and i64 %bf.load, 1048576, !dbg !3515
  %tobool14 = icmp eq i64 %bf.cast3, 0, !dbg !3515
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !3518

if.then15:                                        ; preds = %sw.bb
  tail call void @cgraph_set_readonly_flag(%struct.cgraph_node* %call5, i8 zeroext 1) #6, !dbg !3519
  %looping = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call13, i64 0, i32 3, !dbg !3521
  %5 = load i8, i8* %looping, align 1, !dbg !3521
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* %call5, i8 zeroext %5) #6, !dbg !3522
  call void @llvm.dbg.value(metadata i8 1, metadata !3486, metadata !DIExpression()), !dbg !3492
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3523
  %tobool16 = icmp eq %struct._IO_FILE* %6, null, !dbg !3523
  br i1 %tobool16, label %sw.epilog, label %if.then17, !dbg !3525

if.then17:                                        ; preds = %if.then15
  %7 = load i8, i8* %looping, align 1, !dbg !3526
  %tobool19 = icmp eq i8 %7, 0, !dbg !3527
  %cond = select i1 %tobool19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), !dbg !3527
  %8 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3528
  %9 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3529
  %call20 = tail call i8* %8(%union.tree_node* %9, i32 2) #6, !dbg !3530
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %cond, i8* %call20) #6, !dbg !3531
  br label %sw.epilog, !dbg !3531

if.else:                                          ; preds = %sw.bb
  %looping_const_or_pure_flag = getelementptr inbounds i64, i64* %4, i64 27, !dbg !3532
  %10 = bitcast i64* %looping_const_or_pure_flag to i32*, !dbg !3532
  %bf.load23 = load i32, i32* %10, align 8, !dbg !3532
  %bf.clear25 = and i32 %bf.load23, 268435456, !dbg !3532
  %tobool26 = icmp eq i32 %bf.clear25, 0, !dbg !3532
  br i1 %tobool26, label %sw.epilog, label %land.lhs.true, !dbg !3534

land.lhs.true:                                    ; preds = %if.else
  %looping27 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call13, i64 0, i32 3, !dbg !3535
  %11 = load i8, i8* %looping27, align 1, !dbg !3535
  %tobool28 = icmp eq i8 %11, 0, !dbg !3536
  br i1 %tobool28, label %if.then29, label %sw.epilog, !dbg !3537

if.then29:                                        ; preds = %land.lhs.true
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* %call5, i8 zeroext 0) #6, !dbg !3538
  call void @llvm.dbg.value(metadata i8 1, metadata !3486, metadata !DIExpression()), !dbg !3492
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3540
  %tobool30 = icmp eq %struct._IO_FILE* %12, null, !dbg !3540
  br i1 %tobool30, label %sw.epilog, label %if.then31, !dbg !3542

if.then31:                                        ; preds = %if.then29
  %13 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3543
  %14 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3544
  %call32 = tail call i8* %13(%union.tree_node* %14, i32 2) #6, !dbg !3545
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i64 0, i64 0), i8* %call32) #6, !dbg !3546
  br label %sw.epilog, !dbg !3546

sw.bb37:                                          ; preds = %if.end12
  %15 = load i64*, i64** bitcast (%union.tree_node** @current_function_decl to i64**), align 8, !dbg !3547
  %bf.load39 = load i64, i64* %15, align 8, !dbg !3547
  %bf.cast421 = and i64 %bf.load39, 1048576, !dbg !3547
  %tobool43 = icmp eq i64 %bf.cast421, 0, !dbg !3547
  br i1 %tobool43, label %if.then44, label %if.else55, !dbg !3549

if.then44:                                        ; preds = %sw.bb37
  tail call void @cgraph_set_pure_flag(%struct.cgraph_node* %call5, i8 zeroext 1) #6, !dbg !3550
  %looping45 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call13, i64 0, i32 3, !dbg !3552
  %16 = load i8, i8* %looping45, align 1, !dbg !3552
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* %call5, i8 zeroext %16) #6, !dbg !3553
  call void @llvm.dbg.value(metadata i8 1, metadata !3486, metadata !DIExpression()), !dbg !3492
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3554
  %tobool46 = icmp eq %struct._IO_FILE* %17, null, !dbg !3554
  br i1 %tobool46, label %sw.epilog, label %if.then47, !dbg !3556

if.then47:                                        ; preds = %if.then44
  %18 = load i8, i8* %looping45, align 1, !dbg !3557
  %tobool50 = icmp eq i8 %18, 0, !dbg !3558
  %cond51 = select i1 %tobool50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), !dbg !3558
  %19 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3559
  %20 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3560
  %call52 = tail call i8* %19(%union.tree_node* %20, i32 2) #6, !dbg !3561
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %cond51, i8* %call52) #6, !dbg !3562
  br label %sw.epilog, !dbg !3562

if.else55:                                        ; preds = %sw.bb37
  %looping_const_or_pure_flag57 = getelementptr inbounds i64, i64* %15, i64 27, !dbg !3563
  %21 = bitcast i64* %looping_const_or_pure_flag57 to i32*, !dbg !3563
  %bf.load58 = load i32, i32* %21, align 8, !dbg !3563
  %bf.clear60 = and i32 %bf.load58, 268435456, !dbg !3563
  %tobool61 = icmp eq i32 %bf.clear60, 0, !dbg !3563
  br i1 %tobool61, label %sw.epilog, label %land.lhs.true62, !dbg !3565

land.lhs.true62:                                  ; preds = %if.else55
  %looping63 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call13, i64 0, i32 3, !dbg !3566
  %22 = load i8, i8* %looping63, align 1, !dbg !3566
  %tobool64 = icmp eq i8 %22, 0, !dbg !3567
  br i1 %tobool64, label %if.then65, label %sw.epilog, !dbg !3568

if.then65:                                        ; preds = %land.lhs.true62
  tail call void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* %call5, i8 zeroext 0) #6, !dbg !3569
  call void @llvm.dbg.value(metadata i8 1, metadata !3486, metadata !DIExpression()), !dbg !3492
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3571
  %tobool66 = icmp eq %struct._IO_FILE* %23, null, !dbg !3571
  br i1 %tobool66, label %sw.epilog, label %if.then67, !dbg !3573

if.then67:                                        ; preds = %if.then65
  %24 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3574
  %25 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3575
  %call68 = tail call i8* %24(%union.tree_node* %25, i32 2) #6, !dbg !3576
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i64 0, i64 0), i8* %call68) #6, !dbg !3577
  br label %sw.epilog, !dbg !3577

sw.epilog:                                        ; preds = %if.then29, %land.lhs.true, %if.else, %if.then15, %if.then65, %land.lhs.true62, %if.else55, %if.then44, %if.end12, %if.then47, %if.then67, %if.then17, %if.then31
  %changed.4 = phi i8 [ 1, %if.then17 ], [ 1, %if.then15 ], [ 0, %land.lhs.true ], [ 0, %if.else ], [ 1, %if.then31 ], [ 1, %if.then29 ], [ 1, %if.then47 ], [ 1, %if.then44 ], [ 0, %land.lhs.true62 ], [ 0, %if.else55 ], [ 1, %if.then67 ], [ 1, %if.then65 ], [ 0, %if.end12 ], !dbg !3578
  call void @llvm.dbg.value(metadata i8 %changed.4, metadata !3486, metadata !DIExpression()), !dbg !3492
  %can_throw = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %call13, i64 0, i32 4, !dbg !3579
  %26 = load i8, i8* %can_throw, align 2, !dbg !3579
  %tobool73 = icmp eq i8 %26, 0, !dbg !3580
  br i1 %tobool73, label %land.lhs.true74, label %if.end90, !dbg !3581

land.lhs.true74:                                  ; preds = %sw.epilog
  %27 = load i64*, i64** bitcast (%union.tree_node** @current_function_decl to i64**), align 8, !dbg !3582
  %bf.load76 = load i64, i64* %27, align 8, !dbg !3582
  %bf.cast792 = and i64 %bf.load76, 33554432, !dbg !3582
  %tobool80 = icmp eq i64 %bf.cast792, 0, !dbg !3582
  br i1 %tobool80, label %if.then81, label %if.end90, !dbg !3583

if.then81:                                        ; preds = %land.lhs.true74
  tail call void @cgraph_set_nothrow_flag(%struct.cgraph_node* %call5, i8 zeroext 1) #6, !dbg !3584
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call5, i64 0, i32 2, !dbg !3585
  br label %for.cond, !dbg !3587

for.cond:                                         ; preds = %for.body, %if.then81
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %if.then81 ], [ %next_caller, %for.body ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3588
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3489, metadata !DIExpression()), !dbg !3589
  %tobool82 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3590
  br i1 %tobool82, label %for.end, label %for.body, !dbg !3590

for.body:                                         ; preds = %for.cond
  %can_throw_external = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 14, !dbg !3591
  %bf.load83 = load i8, i8* %can_throw_external, align 2, !dbg !3593
  %bf.clear84 = and i8 %bf.load83, -5, !dbg !3593
  store i8 %bf.clear84, i8* %can_throw_external, align 2, !dbg !3593
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !3594
  br label %for.cond, !dbg !3595, !llvm.loop !3596

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 1, metadata !3486, metadata !DIExpression()), !dbg !3492
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3598
  %tobool85 = icmp eq %struct._IO_FILE* %28, null, !dbg !3598
  br i1 %tobool85, label %if.end90, label %if.then86, !dbg !3600

if.then86:                                        ; preds = %for.end
  %29 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3601
  %30 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3602
  %call87 = tail call i8* %29(%union.tree_node* %30, i32 2) #6, !dbg !3603
  %call88 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %call87) #6, !dbg !3604
  br label %if.end90, !dbg !3604

if.end90:                                         ; preds = %for.end, %land.lhs.true74, %sw.epilog, %if.then86
  %changed.5 = phi i8 [ %changed.4, %sw.epilog ], [ %changed.4, %land.lhs.true74 ], [ 1, %if.then86 ], [ 1, %for.end ], !dbg !3492
  call void @llvm.dbg.value(metadata i8 %changed.5, metadata !3486, metadata !DIExpression()), !dbg !3492
  %tobool91 = icmp eq %struct.funct_state_d* %call13, null, !dbg !3605
  br i1 %tobool91, label %if.end93, label %if.then92, !dbg !3607

if.then92:                                        ; preds = %if.end90
  %31 = bitcast %struct.funct_state_d* %call13 to i8*, !dbg !3608
  tail call void @free(i8* nonnull %31) #6, !dbg !3609
  br label %if.end93, !dbg !3609

if.end93:                                         ; preds = %if.end90, %if.then92
  %tobool94 = icmp eq i8 %changed.5, 0, !dbg !3610
  br i1 %tobool94, label %cleanup, label %if.then95, !dbg !3612

if.then95:                                        ; preds = %if.end93
  %call96 = tail call i32 @execute_fixup_cfg() #6, !dbg !3613
  br label %cleanup, !dbg !3614

cleanup:                                          ; preds = %if.then, %if.then7, %if.end93, %if.then9, %if.then2, %if.then95
  %retval.0 = phi i32 [ %call96, %if.then95 ], [ 0, %if.then2 ], [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then7 ], [ 0, %if.end93 ], !dbg !3492
  ret i32 %retval.0, !dbg !3615
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local void @cgraph_remove_function_insertion_hook(%struct.cgraph_node_hook_list*) local_unnamed_addr #2

declare dso_local void @cgraph_remove_node_duplication_hook(%struct.cgraph_2node_hook_list*) local_unnamed_addr #2

declare dso_local void @cgraph_remove_node_removal_hook(%struct.cgraph_node_hook_list*) local_unnamed_addr #2

declare dso_local i32 @ipa_utils_reduced_inorder(%struct.cgraph_node**, i8 zeroext, i8 zeroext, i8 (%struct.cgraph_edge*)*) local_unnamed_addr #2

declare dso_local void @dump_cgraph(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @ipa_utils_print_order(%struct._IO_FILE*, i8*, %struct.cgraph_node**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !3616 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3620, metadata !DIExpression()), !dbg !3621
  %0 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !3622
  %tobool = icmp eq %struct.VEC_funct_state_heap* %0, null, !dbg !3622
  br i1 %tobool, label %return, label %lor.lhs.false, !dbg !3624

lor.lhs.false:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %0, i64 0, i32 0, !dbg !3625
  %call = tail call fastcc i32 @VEC_funct_state_base_length(%struct.VEC_funct_state_base* nonnull %base) #7, !dbg !3625
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3626
  %1 = load i32, i32* %uid, align 8, !dbg !3626
  %cmp = icmp ugt i32 %call, %1, !dbg !3627
  br i1 %cmp, label %if.end, label %return, !dbg !3628

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !3629
  %base4 = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %2, i64 0, i32 0, !dbg !3629
  %call9 = tail call fastcc %struct.funct_state_d* @VEC_funct_state_base_index(%struct.VEC_funct_state_base* %base4, i32 %1) #7, !dbg !3629
  br label %return, !dbg !3630

return:                                           ; preds = %lor.lhs.false, %entry, %if.end
  %retval.0 = phi %struct.funct_state_d* [ %call9, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], !dbg !3621
  ret %struct.funct_state_d* %retval.0, !dbg !3631
}

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local i32 @flags_from_decl_or_type(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @self_recursive_p(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !3632 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3636, metadata !DIExpression()), !dbg !3638
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !3639
  br label %for.cond, !dbg !3641

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %entry ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3642
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3637, metadata !DIExpression()), !dbg !3638
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3643
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3643

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !3644
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3644
  %cmp = icmp eq %struct.cgraph_node* %0, %node, !dbg !3647
  br i1 %cmp, label %cleanup, label %for.inc, !dbg !3648

for.inc:                                          ; preds = %for.body
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3649
  br label %for.cond, !dbg !3650, !llvm.loop !3651

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3638
  ret i8 %retval.0, !dbg !3653
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @cgraph_set_readonly_flag(%struct.cgraph_node*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @cgraph_set_pure_flag(%struct.cgraph_node*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ignore_edge(%struct.cgraph_edge* %e) #5 !dbg !3654 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !3658, metadata !DIExpression()), !dbg !3659
  %can_throw_external = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 14, !dbg !3660
  %bf.load = load i8, i8* %can_throw_external, align 2, !dbg !3660
  %bf.clear = lshr i8 %bf.load, 2, !dbg !3661
  %bf.clear.lobit = and i8 %bf.clear, 1, !dbg !3661
  %0 = xor i8 %bf.clear.lobit, 1, !dbg !3661
  ret i8 %0, !dbg !3662
}

declare dso_local void @cgraph_set_nothrow_flag(%struct.cgraph_node*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_funct_state_heap_free(%struct.VEC_funct_state_heap** %vec_) unnamed_addr #0 !dbg !3663 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_heap** @funct_state_vec, metadata !3668, metadata !DIExpression()), !dbg !3669
  %0 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !3670
  %tobool = icmp eq %struct.VEC_funct_state_heap* %0, null, !dbg !3670
  br i1 %tobool, label %if.end, label %if.then, !dbg !3672

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_funct_state_heap* %0 to i8*, !dbg !3672
  tail call void @free(i8* nonnull %1) #6, !dbg !3670
  br label %if.end, !dbg !3670

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_funct_state_heap* null, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !3672
  ret void, !dbg !3672
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finish_state() unnamed_addr #5 !dbg !3673 {
entry:
  %0 = load i8*, i8** bitcast (%struct.VEC_funct_state_heap** @funct_state_vec to i8**), align 8, !dbg !3674
  tail call void @free(i8* %0) #6, !dbg !3675
  ret void, !dbg !3676
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_funct_state_base_length(%struct.VEC_funct_state_base* %vec_) unnamed_addr #0 !dbg !3677 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_base* %vec_, metadata !3683, metadata !DIExpression()), !dbg !3684
  %tobool = icmp eq %struct.VEC_funct_state_base* %vec_, null, !dbg !3685
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3685

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_funct_state_base, %struct.VEC_funct_state_base* %vec_, i64 0, i32 0, !dbg !3685
  %0 = load i32, i32* %num, align 8, !dbg !3685
  br label %cond.end, !dbg !3685

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3685
  ret i32 %cond, !dbg !3685
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.funct_state_d* @VEC_funct_state_base_index(%struct.VEC_funct_state_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3686 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_base* %vec_, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3691, metadata !DIExpression()), !dbg !3692
  br label %land.end, !dbg !3693

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3693
  %arrayidx = getelementptr inbounds %struct.VEC_funct_state_base, %struct.VEC_funct_state_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3693
  %0 = load %struct.funct_state_d*, %struct.funct_state_d** %arrayidx, align 8, !dbg !3693
  ret %struct.funct_state_d* %0, !dbg !3693
}

; Function Attrs: nounwind uwtable
define internal fastcc void @register_hooks() unnamed_addr #5 !dbg !2403 {
entry:
  %.b = load i1, i1* @register_hooks.init_p, align 1, !dbg !3694
  br i1 %.b, label %return, label %if.end, !dbg !3696

if.end:                                           ; preds = %entry
  store i1 true, i1* @register_hooks.init_p, align 1, !dbg !3697
  %call = tail call %struct.cgraph_node_hook_list* @cgraph_add_node_removal_hook(void (%struct.cgraph_node*, i8*)* nonnull @remove_node_data, i8* null) #6, !dbg !3698
  store %struct.cgraph_node_hook_list* %call, %struct.cgraph_node_hook_list** @node_removal_hook_holder, align 8, !dbg !3699
  %call1 = tail call %struct.cgraph_2node_hook_list* @cgraph_add_node_duplication_hook(void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)* nonnull @duplicate_node_data, i8* null) #6, !dbg !3700
  store %struct.cgraph_2node_hook_list* %call1, %struct.cgraph_2node_hook_list** @node_duplication_hook_holder, align 8, !dbg !3701
  %call2 = tail call %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)* nonnull @add_new_function, i8* null) #6, !dbg !3702
  store %struct.cgraph_node_hook_list* %call2, %struct.cgraph_node_hook_list** @function_insertion_hook_holder, align 8, !dbg !3703
  br label %return, !dbg !3704

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3704
}

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_function_state(%struct.cgraph_node* %node, %struct.funct_state_d* %s) unnamed_addr #0 !dbg !3705 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3709, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %s, metadata !3710, metadata !DIExpression()), !dbg !3711
  %0 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !3712
  %tobool = icmp eq %struct.VEC_funct_state_heap* %0, null, !dbg !3712
  br i1 %tobool, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !3714

entry.if.then_crit_edge:                          ; preds = %entry
  %uid2.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3715
  %.pre = load i32, i32* %uid2.phi.trans.insert, align 8, !dbg !3716
  br label %if.then, !dbg !3714

lor.lhs.false:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %0, i64 0, i32 0, !dbg !3717
  %call = tail call fastcc i32 @VEC_funct_state_base_length(%struct.VEC_funct_state_base* nonnull %base) #7, !dbg !3717
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3718
  %1 = load i32, i32* %uid, align 8, !dbg !3718
  %cmp = icmp ugt i32 %call, %1, !dbg !3719
  br i1 %cmp, label %if.end, label %if.then, !dbg !3720

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false
  %2 = phi i32 [ %.pre, %entry.if.then_crit_edge ], [ %1, %lor.lhs.false ], !dbg !3716
  %uid2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3716
  %add = add nsw i32 %2, 1, !dbg !3716
  tail call fastcc void @VEC_funct_state_heap_safe_grow_cleared(%struct.VEC_funct_state_heap** nonnull @funct_state_vec, i32 %add) #7, !dbg !3716
  %.pre1 = load i32, i32* %uid2, align 8, !dbg !3721
  br label %if.end, !dbg !3716

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %3 = phi i32 [ %1, %lor.lhs.false ], [ %.pre1, %if.then ], !dbg !3721
  %4 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !3721
  %base5 = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %4, i64 0, i32 0, !dbg !3721
  %call10 = tail call fastcc %struct.funct_state_d* @VEC_funct_state_base_replace(%struct.VEC_funct_state_base* %base5, i32 %3, %struct.funct_state_d* %s) #7, !dbg !3721
  ret void, !dbg !3722
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.funct_state_d* @analyze_function(%struct.cgraph_node* %fn, i8 zeroext %ipa) unnamed_addr #5 !dbg !3723 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %wi = alloca %struct.walk_stmt_info, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !3727, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8 %ipa, metadata !3728, metadata !DIExpression()), !dbg !3768
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %fn, i64 0, i32 0, !dbg !3769
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !3769
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3729, metadata !DIExpression()), !dbg !3768
  %1 = load i64, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !3770
  %call = tail call i8* @xcalloc(i64 1, i64 12) #6, !dbg !3771
  %2 = bitcast i8* %call to %struct.funct_state_d*, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %2, metadata !3731, metadata !DIExpression()), !dbg !3768
  %pure_const_state = bitcast i8* %call to i32*, !dbg !3772
  store i32 0, i32* %pure_const_state, align 4, !dbg !3773
  %state_previously_known = getelementptr inbounds i8, i8* %call, i64 4, !dbg !3774
  %3 = bitcast i8* %state_previously_known to i32*, !dbg !3774
  store i32 2, i32* %3, align 4, !dbg !3775
  %4 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3776
  store i8 1, i8* %4, align 4, !dbg !3777
  %5 = getelementptr inbounds i8, i8* %call, i64 9, !dbg !3778
  store i8 0, i8* %5, align 1, !dbg !3779
  %6 = getelementptr inbounds i8, i8* %call, i64 10, !dbg !3780
  store i8 0, i8* %6, align 2, !dbg !3781
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3782
  %tobool = icmp eq %struct._IO_FILE* %7, null, !dbg !3782
  br i1 %tobool, label %if.end, label %if.then, !dbg !3784

if.then:                                          ; preds = %entry
  %call2 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %fn) #6, !dbg !3785
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %call2) #6, !dbg !3787
  br label %if.end, !dbg !3788

if.end:                                           ; preds = %entry, %if.then
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 1, !dbg !3789
  %8 = load %struct.function*, %struct.function** %f, align 8, !dbg !3789
  tail call void @push_cfun(%struct.function* %8) #6, !dbg !3790
  store %union.tree_node* %0, %union.tree_node** @current_function_decl, align 8, !dbg !3791
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3792
  %cfg = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !3792
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3792
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 0, !dbg !3792
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3792
  %12 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3793
  %13 = bitcast %struct.walk_stmt_info* %wi to i8*, !dbg !3793
  %14 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3794
  br label %for.cond, !dbg !3792

for.cond:                                         ; preds = %for.inc22, %if.end
  %15 = phi %struct.control_flow_graph* [ %10, %if.end ], [ %.pre4, %for.inc22 ], !dbg !3796
  %.pn = phi %struct.basic_block_def* [ %11, %if.end ], [ %this_block.0, %for.inc22 ]
  %this_block.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3797
  %this_block.0 = load %struct.basic_block_def*, %struct.basic_block_def** %this_block.0.in, align 8, !dbg !3797
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %this_block.0, metadata !3732, metadata !DIExpression()), !dbg !3768
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 1, !dbg !3796
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3796
  %cmp = icmp eq %struct.basic_block_def* %this_block.0, %16, !dbg !3796
  br i1 %cmp, label %end, label %for.body, !dbg !3792

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8, !dbg !3798
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %13) #8, !dbg !3799
  %call6 = call i8* @memset(i8* nonnull %13, i32 0, i64 56) #6, !dbg !3800
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #8, !dbg !3801
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %this_block.0) #7, !dbg !3801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %14, i64 24, i1 false), !dbg !3801
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #8, !dbg !3801
  br label %for.cond7, !dbg !3802

for.cond7:                                        ; preds = %for.inc, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3733, metadata !DIExpression(DW_OP_deref)), !dbg !3793
  %call8 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3803
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3805
  br i1 %tobool9, label %for.body10, label %cleanup, !dbg !3806

for.body10:                                       ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3733, metadata !DIExpression(DW_OP_deref)), !dbg !3793
  call fastcc void @check_stmt(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.funct_state_d* %2, i8 zeroext %ipa) #7, !dbg !3807
  %17 = load i32, i32* %pure_const_state, align 4, !dbg !3809
  %cmp12 = icmp eq i32 %17, 2, !dbg !3811
  br i1 %cmp12, label %land.lhs.true, label %for.inc, !dbg !3812

land.lhs.true:                                    ; preds = %for.body10
  %18 = load i8, i8* %5, align 1, !dbg !3813
  %tobool14 = icmp eq i8 %18, 0, !dbg !3814
  br i1 %tobool14, label %for.inc, label %land.lhs.true15, !dbg !3815

land.lhs.true15:                                  ; preds = %land.lhs.true
  %19 = load i8, i8* %6, align 2, !dbg !3816
  %tobool18 = icmp eq i8 %19, 0, !dbg !3817
  br i1 %tobool18, label %for.inc, label %cleanup, !dbg !3818

for.inc:                                          ; preds = %land.lhs.true15, %land.lhs.true, %for.body10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3733, metadata !DIExpression(DW_OP_deref)), !dbg !3793
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3819
  br label %for.cond7, !dbg !3820, !llvm.loop !3821

cleanup:                                          ; preds = %land.lhs.true15, %for.cond7
  %cleanup.dest.slot.0 = phi i1 [ false, %land.lhs.true15 ], [ true, %for.cond7 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %13) #8, !dbg !3823
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8, !dbg !3823
  br i1 %cleanup.dest.slot.0, label %for.inc22, label %end

for.inc22:                                        ; preds = %cleanup
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3796
  %cfg5.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3824
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5.phi.trans.insert, align 8, !dbg !3796
  br label %for.cond, !dbg !3796, !llvm.loop !3825

end:                                              ; preds = %for.cond, %cleanup
  call void @llvm.dbg.label(metadata !3767), !dbg !3827
  %20 = load i32, i32* %pure_const_state, align 4, !dbg !3828
  %cmp26 = icmp eq i32 %20, 2, !dbg !3829
  br i1 %cmp26, label %if.end61, label %if.then28, !dbg !3830

if.then28:                                        ; preds = %end
  %call29 = call zeroext i8 @mark_dfs_back_edges() #6, !dbg !3831
  %tobool30 = icmp eq i8 %call29, 0, !dbg !3831
  br i1 %tobool30, label %if.end61, label %if.then31, !dbg !3832

if.then31:                                        ; preds = %if.then28
  call void @loop_optimizer_init(i32 15) #6, !dbg !3833
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3834
  %tobool32 = icmp eq %struct._IO_FILE* %21, null, !dbg !3834
  br i1 %tobool32, label %if.end36, label %land.lhs.true33, !dbg !3836

land.lhs.true33:                                  ; preds = %if.then31
  %22 = load i32, i32* @dump_flags, align 4, !dbg !3837
  %and = and i32 %22, 8, !dbg !3838
  %tobool34 = icmp eq i32 %and, 0, !dbg !3838
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !3839

if.then35:                                        ; preds = %land.lhs.true33
  call void @flow_loops_dump(%struct._IO_FILE* nonnull %21, void (%struct.loop*, %struct._IO_FILE*, i32)* null, i32 0) #6, !dbg !3840
  br label %if.end36, !dbg !3840

if.end36:                                         ; preds = %land.lhs.true33, %if.then31, %if.then35
  %call37 = call zeroext i8 @mark_irreducible_loops() #6, !dbg !3841
  %tobool38 = icmp eq i8 %call37, 0, !dbg !3841
  br i1 %tobool38, label %if.else, label %if.then39, !dbg !3842

if.then39:                                        ; preds = %if.end36
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3843
  %tobool40 = icmp eq %struct._IO_FILE* %23, null, !dbg !3843
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !3846

if.then41:                                        ; preds = %if.then39
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3847
  br label %if.end43, !dbg !3847

if.end43:                                         ; preds = %if.then39, %if.then41
  store i8 1, i8* %5, align 1, !dbg !3848
  br label %if.end59, !dbg !3849

if.else:                                          ; preds = %if.end36
  %24 = bitcast %struct.loop_iterator* %li to i8*, !dbg !3850
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8, !dbg !3850
  %25 = bitcast %struct.loop** %loop to i8*, !dbg !3851
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #8, !dbg !3851
  call void @scev_initialize() #6, !dbg !3852
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3754, metadata !DIExpression(DW_OP_deref)), !dbg !3853
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3766, metadata !DIExpression(DW_OP_deref)), !dbg !3853
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !3854
  br label %for.cond45, !dbg !3854

for.cond45:                                       ; preds = %for.inc57, %if.else
  %26 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !3856
  call void @llvm.dbg.value(metadata %struct.loop* %26, metadata !3766, metadata !DIExpression()), !dbg !3853
  %tobool46 = icmp eq %struct.loop* %26, null, !dbg !3854
  br i1 %tobool46, label %for.end58.loopexit, label %for.body47, !dbg !3854

for.body47:                                       ; preds = %for.cond45
  call void @llvm.dbg.value(metadata %struct.loop* %26, metadata !3766, metadata !DIExpression()), !dbg !3853
  %call48 = call zeroext i8 @finite_loop_p(%struct.loop* nonnull %26) #6, !dbg !3858
  %tobool49 = icmp eq i8 %call48, 0, !dbg !3858
  br i1 %tobool49, label %if.then50, label %for.inc57, !dbg !3860

if.then50:                                        ; preds = %for.body47
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3861
  %tobool51 = icmp eq %struct._IO_FILE* %27, null, !dbg !3861
  br i1 %tobool51, label %if.end54, label %if.then52, !dbg !3864

if.then52:                                        ; preds = %if.then50
  %28 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !3865
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !3766, metadata !DIExpression()), !dbg !3853
  %num = getelementptr inbounds %struct.loop, %struct.loop* %28, i64 0, i32 0, !dbg !3866
  %29 = load i32, i32* %num, align 8, !dbg !3866
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %29) #6, !dbg !3867
  br label %if.end54, !dbg !3867

if.end54:                                         ; preds = %if.then50, %if.then52
  store i8 1, i8* %5, align 1, !dbg !3868
  br label %for.end58, !dbg !3869

for.inc57:                                        ; preds = %for.body47
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3754, metadata !DIExpression(DW_OP_deref)), !dbg !3853
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3766, metadata !DIExpression(DW_OP_deref)), !dbg !3853
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !3856
  br label %for.cond45, !dbg !3856, !llvm.loop !3870

for.end58.loopexit:                               ; preds = %for.cond45
  br label %for.end58, !dbg !3872

for.end58:                                        ; preds = %for.end58.loopexit, %if.end54
  call void @scev_finalize() #6, !dbg !3872
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #8, !dbg !3873
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #8, !dbg !3873
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.end43
  call void @loop_optimizer_finalize() #6, !dbg !3874
  br label %if.end61, !dbg !3875

if.end61:                                         ; preds = %if.then28, %end, %if.end59
  %30 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3876
  %bf.load = load i64, i64* %30, align 8, !dbg !3876
  %bf.cast2 = and i64 %bf.load, 1048576, !dbg !3876
  %tobool62 = icmp eq i64 %bf.cast2, 0, !dbg !3876
  br i1 %tobool62, label %if.end75, label %if.then63, !dbg !3878

if.then63:                                        ; preds = %if.end61
  store i32 0, i32* %pure_const_state, align 4, !dbg !3879
  store i32 0, i32* %3, align 4, !dbg !3881
  %looping_const_or_pure_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 5, !dbg !3882
  %bf.load67 = load i32, i32* %looping_const_or_pure_flag, align 8, !dbg !3882
  %bf.clear69 = and i32 %bf.load67, 268435456, !dbg !3882
  %tobool70 = icmp eq i32 %bf.clear69, 0, !dbg !3882
  br i1 %tobool70, label %if.then71, label %if.end75, !dbg !3884

if.then71:                                        ; preds = %if.then63
  store i8 0, i8* %5, align 1, !dbg !3885
  store i8 0, i8* %4, align 4, !dbg !3886
  br label %if.end75, !dbg !3887

if.end75:                                         ; preds = %if.then63, %if.end61, %if.then71
  %pure_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 5, !dbg !3888
  %bf.load77 = load i32, i32* %pure_flag, align 8, !dbg !3888
  %bf.clear79 = and i32 %bf.load77, 134217728, !dbg !3888
  %tobool80 = icmp eq i32 %bf.clear79, 0, !dbg !3888
  br i1 %tobool80, label %if.end99, label %if.then81, !dbg !3890

if.then81:                                        ; preds = %if.end75
  %31 = load i32, i32* %pure_const_state, align 4, !dbg !3891
  %cmp83 = icmp eq i32 %31, 0, !dbg !3894
  br i1 %cmp83, label %if.end87, label %if.then85, !dbg !3895

if.then85:                                        ; preds = %if.then81
  store i32 1, i32* %pure_const_state, align 4, !dbg !3896
  br label %if.end87, !dbg !3897

if.end87:                                         ; preds = %if.then81, %if.then85
  store i32 1, i32* %3, align 4, !dbg !3898
  %bf.load91 = load i32, i32* %pure_flag, align 8, !dbg !3899
  %bf.clear93 = and i32 %bf.load91, 268435456, !dbg !3899
  %tobool94 = icmp eq i32 %bf.clear93, 0, !dbg !3899
  br i1 %tobool94, label %if.then95, label %if.end99, !dbg !3901

if.then95:                                        ; preds = %if.end87
  store i8 0, i8* %5, align 1, !dbg !3902
  store i8 0, i8* %4, align 4, !dbg !3903
  br label %if.end99, !dbg !3904

if.end99:                                         ; preds = %if.end87, %if.end75, %if.then95
  %bf.load101 = load i64, i64* %30, align 8, !dbg !3905
  %bf.cast1043 = and i64 %bf.load101, 33554432, !dbg !3905
  %tobool105 = icmp eq i64 %bf.cast1043, 0, !dbg !3905
  br i1 %tobool105, label %if.end108, label %if.then106, !dbg !3907

if.then106:                                       ; preds = %if.end99
  store i8 0, i8* %6, align 2, !dbg !3908
  br label %if.end108, !dbg !3909

if.end108:                                        ; preds = %if.end99, %if.then106
  call void @pop_cfun() #6, !dbg !3910
  store i64 %1, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !3911
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3912
  %tobool109 = icmp eq %struct._IO_FILE* %32, null, !dbg !3912
  br i1 %tobool109, label %cleanup134, label %if.then110, !dbg !3914

if.then110:                                       ; preds = %if.end108
  %33 = load i8, i8* %5, align 1, !dbg !3915
  %tobool112 = icmp eq i8 %33, 0, !dbg !3918
  br i1 %tobool112, label %if.end115, label %if.then113, !dbg !3919

if.then113:                                       ; preds = %if.then110
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !3920
  br label %if.end115, !dbg !3920

if.end115:                                        ; preds = %if.then110, %if.then113
  %34 = load i8, i8* %6, align 2, !dbg !3921
  %tobool117 = icmp eq i8 %34, 0, !dbg !3923
  br i1 %tobool117, label %if.end120, label %if.then118, !dbg !3924

if.then118:                                       ; preds = %if.end115
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3925
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3926
  br label %if.end120, !dbg !3926

if.end120:                                        ; preds = %if.end115, %if.then118
  %36 = load i32, i32* %pure_const_state, align 4, !dbg !3927
  %cmp122 = icmp eq i32 %36, 0, !dbg !3929
  br i1 %cmp122, label %if.then124, label %if.end126, !dbg !3930

if.then124:                                       ; preds = %if.end120
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3931
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3932
  %.pre5 = load i32, i32* %pure_const_state, align 4, !dbg !3933
  br label %if.end126, !dbg !3932

if.end126:                                        ; preds = %if.then124, %if.end120
  %38 = phi i32 [ %.pre5, %if.then124 ], [ %36, %if.end120 ], !dbg !3933
  %cmp128 = icmp eq i32 %38, 1, !dbg !3935
  br i1 %cmp128, label %if.then130, label %cleanup134, !dbg !3936

if.then130:                                       ; preds = %if.end126
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3937
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3938
  br label %cleanup134, !dbg !3938

cleanup134:                                       ; preds = %if.end108, %if.then130, %if.end126
  ret %struct.funct_state_d* %2, !dbg !3939
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

declare dso_local %struct.cgraph_node_hook_list* @cgraph_add_node_removal_hook(void (%struct.cgraph_node*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @remove_node_data(%struct.cgraph_node* %node, i8* %data) #5 !dbg !3940 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3944, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i8* %data, metadata !3945, metadata !DIExpression()), !dbg !3946
  %call = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %node) #7, !dbg !3947
  %tobool = icmp eq %struct.funct_state_d* %call, null, !dbg !3947
  br i1 %tobool, label %if.end, label %if.then, !dbg !3949

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %node) #7, !dbg !3950
  %0 = bitcast %struct.funct_state_d* %call1 to i8*, !dbg !3950
  tail call void @free(i8* %0) #6, !dbg !3952
  tail call fastcc void @set_function_state(%struct.cgraph_node* %node, %struct.funct_state_d* null) #7, !dbg !3953
  br label %if.end, !dbg !3954

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3955
}

declare dso_local %struct.cgraph_2node_hook_list* @cgraph_add_node_duplication_hook(void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @duplicate_node_data(%struct.cgraph_node* %src, %struct.cgraph_node* %dst, i8* %data) #5 !dbg !3956 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %src, metadata !3960, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %dst, metadata !3961, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i8* %data, metadata !3962, metadata !DIExpression()), !dbg !3966
  %call = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %src) #7, !dbg !3967
  %tobool = icmp eq %struct.funct_state_d* %call, null, !dbg !3967
  br i1 %tobool, label %if.end, label %if.then, !dbg !3968

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @xmalloc(i64 12) #6, !dbg !3969
  %0 = bitcast i8* %call1 to %struct.funct_state_d*, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %0, metadata !3963, metadata !DIExpression()), !dbg !3970
  %call2 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %dst) #7, !dbg !3971
  %tobool3 = icmp eq %struct.funct_state_d* %call2, null, !dbg !3971
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !3971

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 621, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3971
  br label %cond.end, !dbg !3971

cond.end:                                         ; preds = %if.then, %cond.true
  %call4 = tail call fastcc %struct.funct_state_d* @get_function_state(%struct.cgraph_node* %src) #7, !dbg !3972
  %1 = bitcast %struct.funct_state_d* %call4 to i8*, !dbg !3972
  %call5 = tail call i8* @memcpy(i8* %call1, i8* %1, i64 12) #6, !dbg !3973
  tail call fastcc void @set_function_state(%struct.cgraph_node* %dst, %struct.funct_state_d* %0) #7, !dbg !3974
  br label %if.end, !dbg !3975

if.end:                                           ; preds = %entry, %cond.end
  ret void, !dbg !3976
}

declare dso_local %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @add_new_function(%struct.cgraph_node* %node, i8* %data) #5 !dbg !3977 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3979, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i8* %data, metadata !3980, metadata !DIExpression()), !dbg !3981
  %call = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %node) #6, !dbg !3982
  %cmp = icmp ult i32 %call, 2, !dbg !3984
  br i1 %cmp, label %return, label %if.end, !dbg !3985

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !3986
  store %struct.pointer_set_t* %call1, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3987
  %call2 = tail call fastcc %struct.funct_state_d* @analyze_function(%struct.cgraph_node* %node, i8 zeroext 1) #7, !dbg !3988
  tail call fastcc void @set_function_state(%struct.cgraph_node* %node, %struct.funct_state_d* %call2) #7, !dbg !3989
  %0 = load %struct.pointer_set_t*, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3990
  tail call void @pointer_set_destroy(%struct.pointer_set_t* %0) #6, !dbg !3991
  store %struct.pointer_set_t* null, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3992
  br label %return, !dbg !3993

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3993
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_funct_state_heap_safe_grow_cleared(%struct.VEC_funct_state_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3994 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_heap** @funct_state_vec, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3999, metadata !DIExpression()), !dbg !4001
  %0 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !4002
  %tobool = icmp eq %struct.VEC_funct_state_heap* %0, null, !dbg !4002
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4002

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %0, i64 0, i32 0, !dbg !4002
  br label %cond.end, !dbg !4002

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_funct_state_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4002
  %call = tail call fastcc i32 @VEC_funct_state_base_length(%struct.VEC_funct_state_base* %cond) #7, !dbg !4002
  call void @llvm.dbg.value(metadata i32 %call, metadata !4000, metadata !DIExpression()), !dbg !4001
  tail call fastcc void @VEC_funct_state_heap_safe_grow(%struct.VEC_funct_state_heap** nonnull @funct_state_vec, i32 %size_) #7, !dbg !4002
  %1 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !4002
  %tobool1 = icmp eq %struct.VEC_funct_state_heap* %1, null, !dbg !4002
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4002

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %1, i64 0, i32 0, !dbg !4002
  br label %cond.end5, !dbg !4002

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_funct_state_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !4002
  %call7 = tail call fastcc %struct.funct_state_d** @VEC_funct_state_base_address(%struct.VEC_funct_state_base* %cond6) #7, !dbg !4002
  %idxprom = sext i32 %call to i64, !dbg !4002
  %arrayidx = getelementptr inbounds %struct.funct_state_d*, %struct.funct_state_d** %call7, i64 %idxprom, !dbg !4002
  %2 = bitcast %struct.funct_state_d** %arrayidx to i8*, !dbg !4002
  %sub = sub nsw i32 %size_, %call, !dbg !4002
  %conv = sext i32 %sub to i64, !dbg !4002
  %mul = shl nsw i64 %conv, 3, !dbg !4002
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !4002
  ret void, !dbg !4002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.funct_state_d* @VEC_funct_state_base_replace(%struct.VEC_funct_state_base* %vec_, i32 %ix_, %struct.funct_state_d* %obj_) unnamed_addr #0 !dbg !4003 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_base* %vec_, metadata !4008, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4009, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %obj_, metadata !4010, metadata !DIExpression()), !dbg !4012
  %idxprom = zext i32 %ix_ to i64, !dbg !4013
  %arrayidx = getelementptr inbounds %struct.VEC_funct_state_base, %struct.VEC_funct_state_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4013
  %0 = load %struct.funct_state_d*, %struct.funct_state_d** %arrayidx, align 8, !dbg !4013
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %0, metadata !4011, metadata !DIExpression()), !dbg !4012
  store %struct.funct_state_d* %obj_, %struct.funct_state_d** %arrayidx, align 8, !dbg !4013
  ret %struct.funct_state_d* %0, !dbg !4013
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_funct_state_heap_safe_grow(%struct.VEC_funct_state_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !4014 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_heap** @funct_state_vec, metadata !4016, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 %size_, metadata !4017, metadata !DIExpression()), !dbg !4018
  %cmp = icmp sgt i32 %size_, -1, !dbg !4019
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4019

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !4019
  %tobool = icmp eq %struct.VEC_funct_state_heap* %0, null, !dbg !4019
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4019

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %0, i64 0, i32 0, !dbg !4019
  br label %cond.end, !dbg !4019

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_funct_state_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !4019
  %call = tail call fastcc i32 @VEC_funct_state_base_length(%struct.VEC_funct_state_base* %cond) #7, !dbg !4019
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !4019
  %tobool2 = icmp eq %struct.VEC_funct_state_heap* %1, null, !dbg !4019
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !4019

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %1, i64 0, i32 0, i32 0, !dbg !4019
  %2 = load i32, i32* %num, align 8, !dbg !4019
  br label %cond.end11, !dbg !4019

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !4019
  %sub = sub nsw i32 %size_, %cond12, !dbg !4019
  %call13 = tail call fastcc i32 @VEC_funct_state_heap_reserve_exact(%struct.VEC_funct_state_heap** nonnull @funct_state_vec, i32 %sub) #7, !dbg !4019
  %3 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !4019
  %num20 = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %3, i64 0, i32 0, i32 0, !dbg !4019
  store i32 %size_, i32* %num20, align 8, !dbg !4019
  ret void, !dbg !4019
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.funct_state_d** @VEC_funct_state_base_address(%struct.VEC_funct_state_base* %vec_) unnamed_addr #0 !dbg !4020 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_base* %vec_, metadata !4025, metadata !DIExpression()), !dbg !4026
  %tobool = icmp eq %struct.VEC_funct_state_base* %vec_, null, !dbg !4027
  %arraydecay = getelementptr inbounds %struct.VEC_funct_state_base, %struct.VEC_funct_state_base* %vec_, i64 0, i32 2, i64 0, !dbg !4027
  %cond = select i1 %tobool, %struct.funct_state_d** null, %struct.funct_state_d** %arraydecay, !dbg !4027
  ret %struct.funct_state_d** %cond, !dbg !4027
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_funct_state_heap_reserve_exact(%struct.VEC_funct_state_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4028 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_heap** @funct_state_vec, metadata !4032, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4033, metadata !DIExpression()), !dbg !4035
  %0 = load %struct.VEC_funct_state_heap*, %struct.VEC_funct_state_heap** @funct_state_vec, align 8, !dbg !4036
  %tobool = icmp eq %struct.VEC_funct_state_heap* %0, null, !dbg !4036
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4036

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_funct_state_heap, %struct.VEC_funct_state_heap* %0, i64 0, i32 0, !dbg !4036
  br label %cond.end, !dbg !4036

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_funct_state_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4036
  %call = tail call fastcc i32 @VEC_funct_state_base_space(%struct.VEC_funct_state_base* %cond, i32 %alloc_) #7, !dbg !4036
  %tobool1 = icmp eq i32 %call, 0, !dbg !4036
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4036
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4034, metadata !DIExpression()), !dbg !4035
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4036

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_funct_state_heap** @funct_state_vec to i8**), align 8, !dbg !4037
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %1, i32 %alloc_) #6, !dbg !4037
  store i8* %call3, i8** bitcast (%struct.VEC_funct_state_heap** @funct_state_vec to i8**), align 8, !dbg !4037
  br label %if.end, !dbg !4037

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4036
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_funct_state_base_space(%struct.VEC_funct_state_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4039 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_funct_state_base* %vec_, metadata !4043, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4044, metadata !DIExpression()), !dbg !4045
  %tobool = icmp eq %struct.VEC_funct_state_base* %vec_, null, !dbg !4046
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4046

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_funct_state_base, %struct.VEC_funct_state_base* %vec_, i64 0, i32 1, !dbg !4046
  %0 = load i32, i32* %alloc, align 4, !dbg !4046
  %num = getelementptr inbounds %struct.VEC_funct_state_base, %struct.VEC_funct_state_base* %vec_, i64 0, i32 0, !dbg !4046
  %1 = load i32, i32* %num, align 8, !dbg !4046
  %sub = sub i32 %0, %1, !dbg !4046
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4046
  br label %cond.end, !dbg !4046

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4046
  br label %cond.end, !dbg !4046

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4046
  ret i32 %cond, !dbg !4046
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4047 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4051, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4052, metadata !DIExpression()), !dbg !4055
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4056
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4053, metadata !DIExpression()), !dbg !4054
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4057
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4058
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4059
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4060
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4061
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4062
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4063
  ret void, !dbg !4064
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4065 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4069, metadata !DIExpression()), !dbg !4070
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4071
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4071
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !4072
  %conv1 = zext i1 %cmp to i8, !dbg !4073
  ret i8 %conv1, !dbg !4074
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_stmt(%struct.gimple_stmt_iterator* %gsip, %struct.funct_state_d* %local, i8 zeroext %ipa) unnamed_addr #5 !dbg !4075 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsip, metadata !4080, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %local, metadata !4081, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i8 %ipa, metadata !4082, metadata !DIExpression()), !dbg !4090
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsip) #7, !dbg !4091
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4083, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 0, metadata !4084, metadata !DIExpression()), !dbg !4090
  %call1 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call) #7, !dbg !4092
  %tobool = icmp eq i8 %call1, 0, !dbg !4092
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !4094

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4095
  %tobool2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4095
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !4097

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !4098
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4100
  tail call void @print_gimple_stmt(%struct._IO_FILE* %1, %union.gimple_statement_d* %call, i32 0, i32 0) #6, !dbg !4101
  br label %if.end5, !dbg !4102

if.end5:                                          ; preds = %if.end, %if.then3
  %2 = bitcast %struct.funct_state_d* %local to i8*, !dbg !4103
  %call6 = tail call zeroext i8 @walk_stmt_load_store_ops(%union.gimple_statement_d* %call, i8* %2, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)* nonnull @check_load, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)* nonnull @check_store) #6, !dbg !4104
  %call7 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !4105
  %cmp = icmp eq i32 %call7, 8, !dbg !4107
  br i1 %cmp, label %if.end26, label %land.lhs.true, !dbg !4108

land.lhs.true:                                    ; preds = %if.end5
  %call8 = tail call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %call) #6, !dbg !4109
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4109
  br i1 %tobool9, label %if.end26, label %if.then10, !dbg !4110

if.then10:                                        ; preds = %land.lhs.true
  %3 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !4111
  %tobool11 = icmp eq i32 %3, 0, !dbg !4111
  br i1 %tobool11, label %if.end17, label %if.then12, !dbg !4114

if.then12:                                        ; preds = %if.then10
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4115
  %tobool13 = icmp eq %struct._IO_FILE* %4, null, !dbg !4115
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !4118

if.then14:                                        ; preds = %if.then12
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !4119
  br label %if.end16, !dbg !4119

if.end16:                                         ; preds = %if.then12, %if.then14
  %looping = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4120
  store i8 1, i8* %looping, align 1, !dbg !4121
  br label %if.end17, !dbg !4122

if.end17:                                         ; preds = %if.then10, %if.end16
  %call18 = tail call zeroext i8 @stmt_can_throw_external(%union.gimple_statement_d* %call) #6, !dbg !4123
  %tobool19 = icmp eq i8 %call18, 0, !dbg !4123
  br i1 %tobool19, label %if.end26, label %if.then20, !dbg !4125

if.then20:                                        ; preds = %if.end17
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4126
  %tobool21 = icmp eq %struct._IO_FILE* %5, null, !dbg !4126
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !4129

if.then22:                                        ; preds = %if.then20
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !4130
  br label %if.end24, !dbg !4130

if.end24:                                         ; preds = %if.then20, %if.then22
  %can_throw = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 4, !dbg !4131
  store i8 1, i8* %can_throw, align 2, !dbg !4132
  br label %if.end26, !dbg !4133

if.end26:                                         ; preds = %if.end17, %land.lhs.true, %if.end5, %if.end24
  %call27 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !4134
  switch i32 %call27, label %cleanup.cont [
    i32 8, label %sw.bb
    i32 4, label %sw.bb28
    i32 7, label %for.cond.preheader
  ], !dbg !4135

for.cond.preheader:                               ; preds = %if.end26
  %pure_const_state50 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4136
  br label %for.cond, !dbg !4139

sw.bb:                                            ; preds = %if.end26
  tail call fastcc void @check_call(%struct.funct_state_d* %local, %union.gimple_statement_d* %call, i8 zeroext %ipa) #7, !dbg !4140
  br label %cleanup.cont, !dbg !4141

sw.bb28:                                          ; preds = %if.end26
  %call29 = tail call fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* %call) #7, !dbg !4142
  %nonlocal_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call29, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4142
  %6 = bitcast i40* %nonlocal_flag to i64*, !dbg !4142
  %bf.load = load i64, i64* %6, align 8, !dbg !4142
  %bf.cast1 = and i64 %bf.load, 256, !dbg !4142
  %tobool30 = icmp eq i64 %bf.cast1, 0, !dbg !4142
  br i1 %tobool30, label %cleanup.cont, label %if.then31, !dbg !4144

if.then31:                                        ; preds = %sw.bb28
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4145
  %tobool32 = icmp eq %struct._IO_FILE* %7, null, !dbg !4145
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !4148

if.then33:                                        ; preds = %if.then31
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4149
  br label %if.end35, !dbg !4149

if.end35:                                         ; preds = %if.then31, %if.then33
  %pure_const_state = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4150
  store i32 2, i32* %pure_const_state, align 4, !dbg !4151
  br label %cleanup.cont, !dbg !4152

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !4153
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4084, metadata !DIExpression()), !dbg !4090
  %call38 = tail call fastcc i32 @gimple_asm_nclobbers(%union.gimple_statement_d* %call) #7, !dbg !4154
  %cmp39 = icmp ult i32 %i.0, %call38, !dbg !4155
  br i1 %cmp39, label %for.body, label %for.end, !dbg !4139

for.body:                                         ; preds = %for.cond
  %call41 = tail call fastcc %union.tree_node* @gimple_asm_clobber_op(%union.gimple_statement_d* %call, i32 %i.0) #7, !dbg !4156
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !4085, metadata !DIExpression()), !dbg !4157
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call41, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4158
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !4158
  %10 = load %union.tree_node*, %union.tree_node** @memory_identifier_string, align 8, !dbg !4159
  %call42 = tail call i32 @simple_cst_equal(%union.tree_node* %9, %union.tree_node* %10) #6, !dbg !4160
  %cmp43 = icmp eq i32 %call42, 1, !dbg !4161
  br i1 %cmp43, label %if.then45, label %for.inc, !dbg !4162

if.then45:                                        ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4163
  %tobool46 = icmp eq %struct._IO_FILE* %11, null, !dbg !4163
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !4165

if.then47:                                        ; preds = %if.then45
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !4166
  br label %if.end49, !dbg !4166

if.end49:                                         ; preds = %if.then45, %if.then47
  store i32 2, i32* %pure_const_state50, align 4, !dbg !4167
  br label %for.inc, !dbg !4168

for.inc:                                          ; preds = %for.body, %if.end49
  %inc = add i32 %i.0, 1, !dbg !4169
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4084, metadata !DIExpression()), !dbg !4090
  br label %for.cond, !dbg !4170, !llvm.loop !4171

for.end:                                          ; preds = %for.cond
  %call52 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(%union.gimple_statement_d* %call) #7, !dbg !4173
  %tobool53 = icmp eq i8 %call52, 0, !dbg !4173
  br i1 %tobool53, label %cleanup.cont, label %if.then54, !dbg !4175

if.then54:                                        ; preds = %for.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4176
  %tobool55 = icmp eq %struct._IO_FILE* %12, null, !dbg !4176
  br i1 %tobool55, label %if.end58, label %if.then56, !dbg !4179

if.then56:                                        ; preds = %if.then54
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !4180
  br label %if.end58, !dbg !4180

if.end58:                                         ; preds = %if.then54, %if.then56
  store i32 2, i32* %pure_const_state50, align 4, !dbg !4181
  %looping60 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4182
  store i8 1, i8* %looping60, align 1, !dbg !4183
  br label %cleanup.cont, !dbg !4184

cleanup.cont:                                     ; preds = %sw.bb28, %for.end, %entry, %if.end58, %if.end26, %if.end35, %sw.bb
  ret void, !dbg !4185
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4186 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4190, metadata !DIExpression()), !dbg !4191
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4192
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4192
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !4193
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !4193
  %2 = load i64, i64* %1, align 8, !dbg !4193
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4194
  store i64 %2, i64* %3, align 8, !dbg !4194
  ret void, !dbg !4195
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

declare dso_local void @loop_optimizer_init(i32) local_unnamed_addr #2

declare dso_local void @flow_loops_dump(%struct._IO_FILE*, void (%struct.loop*, %struct._IO_FILE*, i32)*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

declare dso_local void @scev_initialize() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !4196 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4202, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4203, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i32 0, metadata !4204, metadata !DIExpression()), !dbg !4208
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !4209
  store i32 0, i32* %idx, align 8, !dbg !4210
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4211
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4211
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4211
  %tobool = icmp eq %struct.loops* %1, null, !dbg !4211
  br i1 %tobool, label %if.then, label %if.end, !dbg !4213

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4214
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !4216
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !4217
  br label %cleanup, !dbg !4218

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !4219
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #7, !dbg !4219
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4220
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4221
  call void @llvm.dbg.value(metadata i32 1, metadata !4207, metadata !DIExpression()), !dbg !4208
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4222
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !4222
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !4222
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !4222
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !4222
  br label %while.cond79, !dbg !4225

while.cond79:                                     ; preds = %if.end, %if.end111
  %5 = phi %struct.loop* [ %4, %if.end ], [ %25, %if.end111 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %26, %if.end111 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %27, %if.end111 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %28, %if.end111 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %29, %if.end111 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %30, %if.end111 ]
  %11 = phi %struct.loop* [ %4, %if.end ], [ %31, %if.end111 ]
  %12 = phi %struct.loop* [ %4, %if.end ], [ %32, %if.end111 ], !dbg !4227
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !4205, metadata !DIExpression()), !dbg !4208
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !4230
  %13 = load i32, i32* %num81, align 8, !dbg !4230
  %cmp82 = icmp slt i32 %13, 1, !dbg !4231
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !4232

if.then83:                                        ; preds = %while.cond79
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4233
  %tobool85 = icmp eq %struct.VEC_int_heap* %14, null, !dbg !4233
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !4233

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %14, i64 0, i32 0, !dbg !4233
  br label %cond.end90, !dbg !4233

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !4233
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !4205, metadata !DIExpression()), !dbg !4208
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 0, !dbg !4233
  %15 = load i32, i32* %num92, align 8, !dbg !4233
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %15) #7, !dbg !4233
  br label %if.end94, !dbg !4233

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !4205, metadata !DIExpression()), !dbg !4208
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !4234
  %16 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !4234
  %cmp96 = icmp eq %struct.loop* %16, null, !dbg !4236
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !4237

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !4238

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !4205, metadata !DIExpression()), !dbg !4208
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !4240
  %17 = load %struct.loop*, %struct.loop** %inner98, align 8, !dbg !4240
  br label %if.end111, !dbg !4241

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %18 = phi %struct.loop* [ %5, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %19 = phi %struct.loop* [ %6, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %20 = phi %struct.loop* [ %7, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %21 = phi %struct.loop* [ %8, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !4242
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !4205, metadata !DIExpression()), !dbg !4208
  %cmp101 = icmp eq %struct.loop* %21, null, !dbg !4243
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !4244

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !4205, metadata !DIExpression()), !dbg !4208
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %20, i64 0, i32 9, !dbg !4245
  %22 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !4245
  %cmp103 = icmp eq %struct.loop* %22, null, !dbg !4246
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %23 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !4247
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !4205, metadata !DIExpression()), !dbg !4208
  br i1 %23, label %while.body104, label %while.end106, !dbg !4238

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #7, !dbg !4248
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !4205, metadata !DIExpression()), !dbg !4208
  br label %while.cond100, !dbg !4238, !llvm.loop !4249

while.end106:                                     ; preds = %land.end
  %.lcssa4 = phi %struct.loop* [ %18, %land.end ]
  %.lcssa = phi %struct.loop* [ %19, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !4251
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !4253

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa4, metadata !4205, metadata !DIExpression()), !dbg !4208
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa4, i64 0, i32 9, !dbg !4254
  %24 = load %struct.loop*, %struct.loop** %next110, align 8, !dbg !4254
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.then97
  %25 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %26 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %27 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %28 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %29 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %30 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %31 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %32 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  br label %while.cond79, !dbg !4225, !llvm.loop !4255

if.end114.loopexit:                               ; preds = %while.end106
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #7, !dbg !4257
  br label %cleanup, !dbg !4258

cleanup:                                          ; preds = %if.end114.loopexit, %if.then
  ret void, !dbg !4258
}

declare dso_local zeroext i8 @finite_loop_p(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !4259 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4263, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4264, metadata !DIExpression()), !dbg !4266
  %0 = bitcast i32* %anum to i8*, !dbg !4267
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4267
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4266
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !4266
  br label %while.cond, !dbg !4268

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !4269
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !4269
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4269

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !4269
  br label %cond.end, !dbg !4269

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !4269
  %2 = load i32, i32* %idx, align 8, !dbg !4269
  call void @llvm.dbg.value(metadata i32* %anum, metadata !4265, metadata !DIExpression(DW_OP_deref)), !dbg !4266
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #7, !dbg !4269
  %tobool2 = icmp eq i32 %call, 0, !dbg !4268
  br i1 %tobool2, label %while.end, label %while.body, !dbg !4268

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !4270
  %inc = add i32 %3, 1, !dbg !4270
  store i32 %inc, i32* %idx, align 8, !dbg !4270
  %4 = load i32, i32* %anum, align 4, !dbg !4272
  call void @llvm.dbg.value(metadata i32 %4, metadata !4265, metadata !DIExpression()), !dbg !4266
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #7, !dbg !4273
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !4274
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !4275
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !4277, !llvm.loop !4278

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #7, !dbg !4280
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !4281
  br label %cleanup, !dbg !4282

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !4282

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4282
  ret void, !dbg !4282
}

declare dso_local void @scev_finalize() local_unnamed_addr #2

declare dso_local void @loop_optimizer_finalize() local_unnamed_addr #2

declare dso_local void @pop_cfun() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4283 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4290, metadata !DIExpression()), !dbg !4291
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4292
  %0 = load i32, i32* %flags, align 8, !dbg !4292
  %and = and i32 %0, 512, !dbg !4293
  %tobool = icmp eq i32 %and, 0, !dbg !4293
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4294

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4295
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4295
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4296
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4297

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4298
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4298
  br label %cond.end, !dbg !4297

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4297
  ret %struct.gimple_seq_d* %cond, !dbg !4299
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4300 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4307, metadata !DIExpression()), !dbg !4308
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4309
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4309

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4310
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4310
  br label %cond.end, !dbg !4309

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4309
  ret %struct.gimple_seq_node_d* %cond, !dbg !4311
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4312 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4316, metadata !DIExpression()), !dbg !4317
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4318
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4318
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !4319
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4319
  ret %union.gimple_statement_d* %1, !dbg !4320
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4321 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4326, metadata !DIExpression()), !dbg !4327
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4328
  %cmp = icmp eq i32 %call, 2, !dbg !4329
  %conv1 = zext i1 %cmp to i8, !dbg !4328
  ret i8 %conv1, !dbg !4330
}

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @walk_stmt_load_store_ops(%union.gimple_statement_d*, i8*, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)*, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @check_load(%union.gimple_statement_d* %stmt, %union.tree_node* %op, i8* %data) #5 !dbg !4331 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4335, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4336, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i8* %data, metadata !4337, metadata !DIExpression()), !dbg !4338
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4339
  %bf.load = load i64, i64* %0, align 8, !dbg !4339
  %bf.cast = and i64 %bf.load, 65535, !dbg !4339
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !4339
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4339
  %cmp = icmp eq i32 %1, 3, !dbg !4339
  %2 = bitcast i8* %data to %struct.funct_state_d*, !dbg !4341
  br i1 %cmp, label %if.then, label %if.else, !dbg !4342

if.then:                                          ; preds = %entry
  tail call fastcc void @check_decl(%struct.funct_state_d* %2, %union.tree_node* %op, i8 zeroext 0) #7, !dbg !4343
  br label %if.end, !dbg !4343

if.else:                                          ; preds = %entry
  tail call fastcc void @check_op(%struct.funct_state_d* %2, %union.tree_node* %op, i8 zeroext 0) #7, !dbg !4344
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8 0, !dbg !4345
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @check_store(%union.gimple_statement_d* %stmt, %union.tree_node* %op, i8* %data) #5 !dbg !4346 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4348, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4349, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i8* %data, metadata !4350, metadata !DIExpression()), !dbg !4351
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4352
  %bf.load = load i64, i64* %0, align 8, !dbg !4352
  %bf.cast = and i64 %bf.load, 65535, !dbg !4352
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !4352
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4352
  %cmp = icmp eq i32 %1, 3, !dbg !4352
  %2 = bitcast i8* %data to %struct.funct_state_d*, !dbg !4354
  br i1 %cmp, label %if.then, label %if.else, !dbg !4355

if.then:                                          ; preds = %entry
  tail call fastcc void @check_decl(%struct.funct_state_d* %2, %union.tree_node* %op, i8 zeroext 1) #7, !dbg !4356
  br label %if.end, !dbg !4356

if.else:                                          ; preds = %entry
  tail call fastcc void @check_op(%struct.funct_state_d* %2, %union.tree_node* %op, i8 zeroext 1) #7, !dbg !4357
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8 0, !dbg !4358
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4359 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4363, metadata !DIExpression()), !dbg !4364
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4365
  %bf.load = load i32, i32* %0, align 8, !dbg !4365
  %bf.clear = and i32 %bf.load, 255, !dbg !4365
  ret i32 %bf.clear, !dbg !4366
}

declare dso_local zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @stmt_can_throw_external(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @check_call(%struct.funct_state_d* %local, %union.gimple_statement_d* %call, i8 zeroext %ipa) unnamed_addr #5 !dbg !4367 {
entry:
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %local, metadata !4371, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4372, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i8 %ipa, metadata !4373, metadata !DIExpression()), !dbg !4381
  %call1 = tail call i32 @gimple_call_flags(%union.gimple_statement_d* %call) #6, !dbg !4382
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4374, metadata !DIExpression()), !dbg !4381
  %call2 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #7, !dbg !4383
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4375, metadata !DIExpression()), !dbg !4381
  %call3 = tail call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %call) #6, !dbg !4384
  call void @llvm.dbg.value(metadata i8 %call3, metadata !4376, metadata !DIExpression()), !dbg !4381
  %tobool = icmp eq i8 %call3, 0, !dbg !4385
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4386

land.rhs:                                         ; preds = %entry
  %call4 = tail call zeroext i8 @stmt_can_throw_external(%union.gimple_statement_d* %call) #6, !dbg !4387
  %tobool6 = icmp ne i8 %call4, 0, !dbg !4386
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i1 [ false, %entry ], [ %tobool6, %land.rhs ], !dbg !4381
  call void @llvm.dbg.value(metadata i1 %0, metadata !4377, metadata !DIExpression()), !dbg !4381
  br i1 %tobool, label %if.end35, label %for.cond.preheader, !dbg !4388

for.cond.preheader:                               ; preds = %land.end
  %looping = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4389
  %can_throw = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 4, !dbg !4396
  br label %for.cond.us, !dbg !4399

for.cond.us:                                      ; preds = %for.inc.us, %for.cond.preheader
  %i.0.us = phi i32 [ %inc.us, %for.inc.us ], [ 0, %for.cond.preheader ], !dbg !4400
  call void @llvm.dbg.value(metadata i32 %i.0.us, metadata !4378, metadata !DIExpression()), !dbg !4401
  %call9.us = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %call) #7, !dbg !4402
  %cmp.us = icmp ult i32 %i.0.us, %call9.us, !dbg !4403
  br i1 %cmp.us, label %for.body.us, label %if.end35.loopexit.us-lcssa.us, !dbg !4399

for.body.us:                                      ; preds = %for.cond.us
  %call11.us = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %call, i32 %i.0.us) #7, !dbg !4404
  %tobool12.us = icmp eq %union.tree_node* %call11.us, null, !dbg !4404
  br i1 %tobool12.us, label %for.inc.us, label %land.lhs.true.us, !dbg !4405

land.lhs.true.us:                                 ; preds = %for.body.us
  %call13.us = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %call, i32 %i.0.us) #7, !dbg !4406
  %call14.us = tail call zeroext i8 @tree_could_throw_p(%union.tree_node* %call13.us) #6, !dbg !4407
  %tobool16.us = icmp eq i8 %call14.us, 0, !dbg !4407
  br i1 %tobool16.us, label %for.inc.us, label %if.then17.us, !dbg !4408

if.then17.us:                                     ; preds = %land.lhs.true.us
  %1 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !4409
  %tobool21.us = icmp eq i32 %1, 0, !dbg !4409
  br i1 %tobool21.us, label %if.end26.us, label %if.then22.us, !dbg !4410

if.then22.us:                                     ; preds = %if.then17.us
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4411
  %tobool23.us = icmp eq %struct._IO_FILE* %2, null, !dbg !4411
  br i1 %tobool23.us, label %if.end.us, label %if.then24.us, !dbg !4413

if.then24.us:                                     ; preds = %if.then22.us
  %call25.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !4414
  br label %if.end.us, !dbg !4414

if.end.us:                                        ; preds = %if.then24.us, %if.then22.us
  store i8 1, i8* %looping, align 1, !dbg !4415
  br label %if.end26.us, !dbg !4416

if.end26.us:                                      ; preds = %if.then17.us, %if.end.us
  br i1 %0, label %if.then28.us, label %for.inc.us, !dbg !4417

if.then28.us:                                     ; preds = %if.end26.us
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4418
  %tobool29.us = icmp eq %struct._IO_FILE* %3, null, !dbg !4418
  br i1 %tobool29.us, label %if.end32.us, label %if.then30.us, !dbg !4420

if.then30.us:                                     ; preds = %if.then28.us
  %call31.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !4421
  br label %if.end32.us, !dbg !4421

if.end32.us:                                      ; preds = %if.then30.us, %if.then28.us
  store i8 1, i8* %can_throw, align 2, !dbg !4422
  br label %for.inc.us, !dbg !4423

for.inc.us:                                       ; preds = %if.end32.us, %if.end26.us, %land.lhs.true.us, %for.body.us
  %inc.us = add i32 %i.0.us, 1, !dbg !4424
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !4378, metadata !DIExpression()), !dbg !4401
  br label %for.cond.us, !dbg !4425, !llvm.loop !4426

if.end35.loopexit.us-lcssa.us:                    ; preds = %for.cond.us
  br label %if.end35, !dbg !4428

if.end35:                                         ; preds = %if.end35.loopexit.us-lcssa.us, %land.end
  %tobool36 = icmp eq %union.tree_node* %call2, null, !dbg !4428
  br i1 %tobool36, label %if.end60, label %if.then37, !dbg !4430

if.then37:                                        ; preds = %if.end35
  %call38 = tail call i32 @setjmp_call_p(%union.tree_node* nonnull %call2) #6, !dbg !4431
  %tobool39 = icmp eq i32 %call38, 0, !dbg !4431
  br i1 %tobool39, label %if.end46, label %if.then40, !dbg !4434

if.then40:                                        ; preds = %if.then37
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4435
  %tobool41 = icmp eq %struct._IO_FILE* %4, null, !dbg !4435
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !4438

if.then42:                                        ; preds = %if.then40
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !4439
  br label %if.end44, !dbg !4439

if.end44:                                         ; preds = %if.then40, %if.then42
  %looping45 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4440
  store i8 1, i8* %looping45, align 1, !dbg !4441
  %pure_const_state = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4442
  store i32 2, i32* %pure_const_state, align 4, !dbg !4443
  br label %if.end46, !dbg !4444

if.end46:                                         ; preds = %if.then37, %if.end44
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 5, !dbg !4445
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !4445
  %bf.clear = and i32 %bf.load, 6144, !dbg !4445
  %cmp47 = icmp eq i32 %bf.clear, 6144, !dbg !4447
  br i1 %cmp47, label %if.then49, label %if.end60, !dbg !4448

if.then49:                                        ; preds = %if.end46
  %bf.clear52 = and i32 %bf.load, 2047, !dbg !4449
  switch i32 %bf.clear52, label %if.end60 [
    i32 490, label %sw.bb
    i32 522, label %sw.bb
  ], !dbg !4450

sw.bb:                                            ; preds = %if.then49, %if.then49
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4451
  %tobool53 = icmp eq %struct._IO_FILE* %5, null, !dbg !4451
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !4454

if.then54:                                        ; preds = %sw.bb
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !4455
  br label %if.end56, !dbg !4455

if.end56:                                         ; preds = %sw.bb, %if.then54
  %pure_const_state57 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4456
  store i32 2, i32* %pure_const_state57, align 4, !dbg !4457
  %looping58 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4458
  store i8 1, i8* %looping58, align 1, !dbg !4459
  br label %if.end60, !dbg !4460

if.end60:                                         ; preds = %if.end35, %if.end46, %if.then49, %if.end56
  %tobool61 = icmp eq i8 %ipa, 0, !dbg !4461
  %6 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4463
  %cmp63 = icmp eq %union.tree_node* %call2, %6, !dbg !4464
  %or.cond1 = and i1 %tobool61, %cmp63, !dbg !4465
  br i1 %or.cond1, label %if.then65, label %if.else, !dbg !4465

if.then65:                                        ; preds = %if.end60
  %looping66 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4466
  store i8 1, i8* %looping66, align 1, !dbg !4467
  br label %if.end142, !dbg !4468

if.else:                                          ; preds = %if.end60
  %tobool67 = icmp ne i8 %ipa, 0, !dbg !4469
  %tobool68 = icmp ne %union.tree_node* %call2, null, !dbg !4471
  %or.cond2 = and i1 %tobool67, %tobool68, !dbg !4472
  br i1 %or.cond2, label %if.end142, label %if.then69, !dbg !4472

if.then69:                                        ; preds = %if.else
  %tobool71 = icmp ne i8 %call3, 0, !dbg !4473
  %7 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !4476
  %tobool73 = icmp ne i32 %7, 0, !dbg !4476
  %or.cond3 = and i1 %tobool71, %tobool73, !dbg !4477
  br i1 %or.cond3, label %if.then74, label %if.end80, !dbg !4477

if.then74:                                        ; preds = %if.then69
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4478
  %tobool75 = icmp eq %struct._IO_FILE* %8, null, !dbg !4478
  br i1 %tobool75, label %if.end78, label %if.then76, !dbg !4481

if.then76:                                        ; preds = %if.then74
  %call77 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !4482
  br label %if.end78, !dbg !4482

if.end78:                                         ; preds = %if.then74, %if.then76
  %looping79 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4483
  store i8 1, i8* %looping79, align 1, !dbg !4484
  br label %if.end80, !dbg !4485

if.end80:                                         ; preds = %if.end78, %if.then69
  br i1 %0, label %if.then82, label %if.end94, !dbg !4486

if.then82:                                        ; preds = %if.end80
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4487
  %tobool83 = icmp eq %struct._IO_FILE* %9, null, !dbg !4487
  br i1 %tobool83, label %if.end92, label %if.then84, !dbg !4491

if.then84:                                        ; preds = %if.then82
  %call85 = tail call i32 @lookup_stmt_eh_lp(%union.gimple_statement_d* %call) #6, !dbg !4492
  %call86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0), i32 %call85) #6, !dbg !4494
  br i1 %tobool36, label %if.end92, label %if.then88, !dbg !4495

if.then88:                                        ; preds = %if.then84
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4496
  %call89 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* nonnull %call2) #6, !dbg !4498
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call89, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4498
  %str = bitcast i32* %id to i8**, !dbg !4498
  %11 = load i8*, i8** %str, align 8, !dbg !4498
  %call90 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %11) #6, !dbg !4499
  br label %if.end92, !dbg !4499

if.end92:                                         ; preds = %if.then84, %if.then82, %if.then88
  %can_throw93 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 4, !dbg !4500
  store i8 1, i8* %can_throw93, align 2, !dbg !4501
  br label %if.end94, !dbg !4502

if.end94:                                         ; preds = %if.end92, %if.end80
  %and = and i32 %call1, 1, !dbg !4503
  %tobool95 = icmp eq i32 %and, 0, !dbg !4503
  br i1 %tobool95, label %if.else107, label %if.then96, !dbg !4505

if.then96:                                        ; preds = %if.end94
  br i1 %tobool36, label %if.end142, label %land.lhs.true98, !dbg !4506

land.lhs.true98:                                  ; preds = %if.then96
  %looping_const_or_pure_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 5, !dbg !4509
  %bf.load100 = load i32, i32* %looping_const_or_pure_flag, align 8, !dbg !4509
  %bf.clear102 = and i32 %bf.load100, 268435456, !dbg !4509
  %tobool103 = icmp eq i32 %bf.clear102, 0, !dbg !4509
  br i1 %tobool103, label %if.end142, label %if.then104, !dbg !4510

if.then104:                                       ; preds = %land.lhs.true98
  %looping105 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4511
  store i8 1, i8* %looping105, align 1, !dbg !4512
  br label %if.end142, !dbg !4513

if.else107:                                       ; preds = %if.end94
  %and108 = and i32 %call1, 2, !dbg !4514
  %tobool109 = icmp eq i32 %and108, 0, !dbg !4514
  br i1 %tobool109, label %if.else132, label %if.then110, !dbg !4516

if.then110:                                       ; preds = %if.else107
  br i1 %tobool36, label %if.end121, label %land.lhs.true112, !dbg !4517

land.lhs.true112:                                 ; preds = %if.then110
  %looping_const_or_pure_flag114 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 5, !dbg !4520
  %bf.load115 = load i32, i32* %looping_const_or_pure_flag114, align 8, !dbg !4520
  %bf.clear117 = and i32 %bf.load115, 268435456, !dbg !4520
  %tobool118 = icmp eq i32 %bf.clear117, 0, !dbg !4520
  br i1 %tobool118, label %if.end121, label %if.then119, !dbg !4521

if.then119:                                       ; preds = %land.lhs.true112
  %looping120 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4522
  store i8 1, i8* %looping120, align 1, !dbg !4523
  br label %if.end121, !dbg !4524

if.end121:                                        ; preds = %land.lhs.true112, %if.then110, %if.then119
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4525
  %tobool122 = icmp eq %struct._IO_FILE* %12, null, !dbg !4525
  br i1 %tobool122, label %if.end125, label %if.then123, !dbg !4527

if.then123:                                       ; preds = %if.end121
  %call124 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !4528
  br label %if.end125, !dbg !4528

if.end125:                                        ; preds = %if.end121, %if.then123
  %pure_const_state126 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4529
  %13 = load i32, i32* %pure_const_state126, align 4, !dbg !4529
  %cmp127 = icmp eq i32 %13, 0, !dbg !4531
  br i1 %cmp127, label %if.then129, label %if.end142, !dbg !4532

if.then129:                                       ; preds = %if.end125
  store i32 1, i32* %pure_const_state126, align 4, !dbg !4533
  br label %if.end142, !dbg !4534

if.else132:                                       ; preds = %if.else107
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4535
  %tobool133 = icmp eq %struct._IO_FILE* %14, null, !dbg !4535
  br i1 %tobool133, label %if.end136, label %if.then134, !dbg !4538

if.then134:                                       ; preds = %if.else132
  %call135 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !4539
  br label %if.end136, !dbg !4539

if.end136:                                        ; preds = %if.else132, %if.then134
  %pure_const_state137 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4540
  store i32 2, i32* %pure_const_state137, align 4, !dbg !4541
  %looping138 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 3, !dbg !4542
  store i8 1, i8* %looping138, align 1, !dbg !4543
  br label %if.end142

if.end142:                                        ; preds = %land.lhs.true98, %if.then96, %if.else, %if.end136, %if.then129, %if.end125, %if.then104, %if.then65
  ret void, !dbg !4544
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4545 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4549, metadata !DIExpression()), !dbg !4550
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !4551
  ret %union.tree_node* %call, !dbg !4552
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_nclobbers(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4553 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4557, metadata !DIExpression()), !dbg !4558
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !4559
  %nc = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 4, !dbg !4560
  %0 = load i8, i8* %nc, align 2, !dbg !4560
  %conv = zext i8 %0 to i32, !dbg !4561
  ret i32 %conv, !dbg !4562
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_clobber_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4563 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4567, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 %index, metadata !4568, metadata !DIExpression()), !dbg !4569
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !4570
  %nc = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 4, !dbg !4570
  %0 = load i8, i8* %nc, align 2, !dbg !4570
  %conv = zext i8 %0 to i32, !dbg !4570
  %cmp = icmp ult i32 %conv, %index, !dbg !4570
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4570

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 2688, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !4570
  br label %cond.end, !dbg !4570

cond.end:                                         ; preds = %entry, %cond.true
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !4571
  %1 = bitcast %union.tree_node*** %ni to i8*, !dbg !4571
  %2 = load i8, i8* %1, align 8, !dbg !4571
  %conv3 = zext i8 %2 to i32, !dbg !4572
  %add = add i32 %conv3, %index, !dbg !4573
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !4574
  %3 = load i8, i8* %no, align 1, !dbg !4574
  %conv5 = zext i8 %3 to i32, !dbg !4575
  %add6 = add i32 %add, %conv5, !dbg !4576
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add6) #7, !dbg !4577
  ret %union.tree_node* %call, !dbg !4578
}

declare dso_local i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4579 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4581, metadata !DIExpression()), !dbg !4582
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !4583
  %bf.load = load i32, i32* %0, align 8, !dbg !4583
  %and = lshr i32 %bf.load, 17, !dbg !4584
  %1 = trunc i32 %and to i8, !dbg !4584
  %2 = and i8 %1, 1, !dbg !4584
  ret i8 %2, !dbg !4585
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @check_decl(%struct.funct_state_d* %local, %union.tree_node* %t, i8 zeroext %checking_write) unnamed_addr #0 !dbg !4586 {
entry:
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %local, metadata !4590, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4591, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i8 %checking_write, metadata !4592, metadata !DIExpression()), !dbg !4593
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4594
  %bf.load = load i64, i64* %0, align 8, !dbg !4594
  %bf.cast1 = and i64 %bf.load, 524288, !dbg !4594
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !4594
  br i1 %tobool, label %if.end3, label %if.then, !dbg !4596

if.then:                                          ; preds = %entry
  %pure_const_state = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4597
  store i32 2, i32* %pure_const_state, align 4, !dbg !4599
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4600
  %tobool1 = icmp eq %struct._IO_FILE* %1, null, !dbg !4600
  br i1 %tobool1, label %if.end92, label %if.then2, !dbg !4602

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !4603
  br label %if.end92, !dbg !4603

if.end3:                                          ; preds = %entry
  %bf.cast82 = and i64 %bf.load, 67108864, !dbg !4604
  %tobool9 = icmp eq i64 %bf.cast82, 0, !dbg !4604
  br i1 %tobool9, label %land.lhs.true, label %if.end3.if.end16_crit_edge, !dbg !4606

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  %preserve_flag.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4607
  %.phi.trans.insert = bitcast i40* %preserve_flag.phi.trans.insert to i64*, !dbg !4607
  %bf.load18.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !4609
  br label %if.end16, !dbg !4606

land.lhs.true:                                    ; preds = %if.end3
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4610
  %2 = bitcast i40* %decl_flag_1 to i64*, !dbg !4610
  %bf.load10 = load i64, i64* %2, align 8, !dbg !4610
  %bf.cast133 = and i64 %bf.load10, 33554432, !dbg !4610
  %tobool14 = icmp eq i64 %bf.cast133, 0, !dbg !4610
  br i1 %tobool14, label %if.end92, label %if.end16, !dbg !4611

if.end16:                                         ; preds = %if.end3.if.end16_crit_edge, %land.lhs.true
  %bf.load40 = phi i64 [ %bf.load18.pre, %if.end3.if.end16_crit_edge ], [ %bf.load10, %land.lhs.true ], !dbg !4609
  %bf.cast214 = and i64 %bf.load40, 8192, !dbg !4609
  %tobool22 = icmp eq i64 %bf.cast214, 0, !dbg !4609
  br i1 %tobool22, label %if.end29, label %if.then23, !dbg !4612

if.then23:                                        ; preds = %if.end16
  %pure_const_state24 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4613
  store i32 2, i32* %pure_const_state24, align 4, !dbg !4615
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4616
  %tobool25 = icmp eq %struct._IO_FILE* %3, null, !dbg !4616
  br i1 %tobool25, label %if.end92, label %if.then26, !dbg !4618

if.then26:                                        ; preds = %if.then23
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4619
  br label %if.end92, !dbg !4619

if.end29:                                         ; preds = %if.end16
  %tobool30 = icmp eq i8 %checking_write, 0, !dbg !4620
  br i1 %tobool30, label %if.end37, label %if.then31, !dbg !4622

if.then31:                                        ; preds = %if.end29
  %pure_const_state32 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4623
  store i32 2, i32* %pure_const_state32, align 4, !dbg !4625
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4626
  %tobool33 = icmp eq %struct._IO_FILE* %4, null, !dbg !4626
  br i1 %tobool33, label %if.end92, label %if.then34, !dbg !4628

if.then34:                                        ; preds = %if.then31
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !4629
  br label %if.end92, !dbg !4629

if.end37:                                         ; preds = %if.end29
  %bf.cast435 = and i64 %bf.load40, 33554432, !dbg !4630
  %tobool44 = icmp eq i64 %bf.cast435, 0, !dbg !4630
  br i1 %tobool44, label %lor.lhs.false, label %if.then51, !dbg !4632

lor.lhs.false:                                    ; preds = %if.end37
  %bf.cast496 = and i64 %bf.load, 134217728, !dbg !4633
  %tobool50 = icmp eq i64 %bf.cast496, 0, !dbg !4633
  br i1 %tobool50, label %if.else74, label %if.then51, !dbg !4634

if.then51:                                        ; preds = %lor.lhs.false, %if.end37
  %bf.cast568 = and i64 %bf.load, 1048576, !dbg !4635
  %tobool57 = icmp eq i64 %bf.cast568, 0, !dbg !4635
  br i1 %tobool57, label %if.else, label %land.lhs.true58, !dbg !4638

land.lhs.true58:                                  ; preds = %if.then51
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4639
  %5 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !4639
  %6 = load %struct.tree_type*, %struct.tree_type** %5, align 8, !dbg !4639
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 6, !dbg !4639
  %bf.load60 = load i32, i32* %needs_constructing_flag, align 4, !dbg !4639
  %bf.clear62 = and i32 %bf.load60, 2048, !dbg !4639
  %tobool63 = icmp eq i32 %bf.clear62, 0, !dbg !4639
  br i1 %tobool63, label %if.end92, label %if.else, !dbg !4640

if.else:                                          ; preds = %land.lhs.true58, %if.then51
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4641
  %tobool65 = icmp eq %struct._IO_FILE* %7, null, !dbg !4641
  br i1 %tobool65, label %if.end68, label %if.then66, !dbg !4644

if.then66:                                        ; preds = %if.else
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !4645
  br label %if.end68, !dbg !4645

if.end68:                                         ; preds = %if.else, %if.then66
  %pure_const_state69 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4646
  %8 = load i32, i32* %pure_const_state69, align 4, !dbg !4646
  %cmp = icmp eq i32 %8, 0, !dbg !4648
  br i1 %cmp, label %if.then70, label %if.end92, !dbg !4649

if.then70:                                        ; preds = %if.end68
  store i32 1, i32* %pure_const_state69, align 4, !dbg !4650
  br label %if.end92, !dbg !4651

if.else74:                                        ; preds = %lor.lhs.false
  %bf.cast797 = and i64 %bf.load, 1048576, !dbg !4652
  %tobool80 = icmp eq i64 %bf.cast797, 0, !dbg !4652
  br i1 %tobool80, label %if.end82, label %if.end92, !dbg !4655

if.end82:                                         ; preds = %if.else74
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4656
  %tobool83 = icmp eq %struct._IO_FILE* %9, null, !dbg !4656
  br i1 %tobool83, label %if.end86, label %if.then84, !dbg !4658

if.then84:                                        ; preds = %if.end82
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !4659
  br label %if.end86, !dbg !4659

if.end86:                                         ; preds = %if.end82, %if.then84
  %pure_const_state87 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4660
  %10 = load i32, i32* %pure_const_state87, align 4, !dbg !4660
  %cmp88 = icmp eq i32 %10, 0, !dbg !4662
  br i1 %cmp88, label %if.then89, label %if.end92, !dbg !4663

if.then89:                                        ; preds = %if.end86
  store i32 1, i32* %pure_const_state87, align 4, !dbg !4664
  br label %if.end92, !dbg !4665

if.end92:                                         ; preds = %if.then, %if.then23, %if.then31, %land.lhs.true58, %if.else74, %land.lhs.true, %if.end86, %if.then89, %if.then70, %if.end68, %if.then34, %if.then26, %if.then2
  ret void, !dbg !4666
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @check_op(%struct.funct_state_d* %local, %union.tree_node* %t, i8 zeroext %checking_write) unnamed_addr #0 !dbg !4667 {
entry:
  call void @llvm.dbg.value(metadata %struct.funct_state_d* %local, metadata !4669, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4670, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i8 %checking_write, metadata !4671, metadata !DIExpression()), !dbg !4672
  %call = tail call %union.tree_node* @get_base_address(%union.tree_node* %t) #6, !dbg !4673
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4670, metadata !DIExpression()), !dbg !4672
  %cond = icmp eq %union.tree_node* %call, null, !dbg !4674
  br i1 %cond, label %if.else39, label %land.lhs.true, !dbg !4674

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4676
  %bf.load = load i64, i64* %0, align 8, !dbg !4676
  %bf.cast1 = and i64 %bf.load, 524288, !dbg !4676
  %tobool1 = icmp eq i64 %bf.cast1, 0, !dbg !4676
  br i1 %tobool1, label %if.else, label %if.then, !dbg !4677

if.then:                                          ; preds = %land.lhs.true
  %pure_const_state = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4678
  store i32 2, i32* %pure_const_state, align 4, !dbg !4680
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4681
  %tobool2 = icmp eq %struct._IO_FILE* %1, null, !dbg !4681
  br i1 %tobool2, label %if.end59, label %if.then3, !dbg !4683

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !4684
  br label %if.end59, !dbg !4684

if.else:                                          ; preds = %land.lhs.true
  %bf.cast102 = and i64 %bf.load, 65535, !dbg !4685
  %cmp = icmp eq i64 %bf.cast102, 47, !dbg !4685
  br i1 %cmp, label %land.lhs.true22, label %lor.lhs.false, !dbg !4685

lor.lhs.false:                                    ; preds = %if.else
  %cmp15 = icmp eq i64 %bf.cast102, 48, !dbg !4685
  br i1 %cmp15, label %land.lhs.true22, label %lor.lhs.false16, !dbg !4685

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %cmp21 = icmp eq i64 %bf.cast102, 49, !dbg !4685
  br i1 %cmp21, label %land.lhs.true22, label %if.else39, !dbg !4687

land.lhs.true22:                                  ; preds = %lor.lhs.false16, %lor.lhs.false, %if.else
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4688
  %2 = bitcast %union.tree_node** %operands to i64**, !dbg !4688
  %3 = load i64*, i64** %2, align 8, !dbg !4688
  %bf.load24 = load i64, i64* %3, align 8, !dbg !4688
  %bf.cast265 = and i64 %bf.load24, 65535, !dbg !4689
  %cmp27 = icmp eq i64 %bf.cast265, 141, !dbg !4689
  br i1 %cmp27, label %land.lhs.true28, label %if.else39, !dbg !4690

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %4 = bitcast i64* %3 to %union.tree_node*, !dbg !4690
  %call32 = tail call zeroext i8 @ptr_deref_may_alias_global_p(%union.tree_node* %4) #6, !dbg !4691
  %tobool33 = icmp eq i8 %call32, 0, !dbg !4691
  br i1 %tobool33, label %if.then34, label %if.else39, !dbg !4692

if.then34:                                        ; preds = %land.lhs.true28
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4693
  %tobool35 = icmp eq %struct._IO_FILE* %5, null, !dbg !4693
  br i1 %tobool35, label %if.end59, label %if.then36, !dbg !4696

if.then36:                                        ; preds = %if.then34
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !4697
  br label %if.end59, !dbg !4697

if.else39:                                        ; preds = %land.lhs.true28, %entry, %land.lhs.true22, %lor.lhs.false16
  %tobool40 = icmp eq i8 %checking_write, 0, !dbg !4698
  br i1 %tobool40, label %if.else47, label %if.then41, !dbg !4700

if.then41:                                        ; preds = %if.else39
  %pure_const_state42 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4701
  store i32 2, i32* %pure_const_state42, align 4, !dbg !4703
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4704
  %tobool43 = icmp eq %struct._IO_FILE* %6, null, !dbg !4704
  br i1 %tobool43, label %if.end59, label %if.then44, !dbg !4706

if.then44:                                        ; preds = %if.then41
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !4707
  br label %if.end59, !dbg !4707

if.else47:                                        ; preds = %if.else39
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4708
  %tobool48 = icmp eq %struct._IO_FILE* %7, null, !dbg !4708
  br i1 %tobool48, label %if.end51, label %if.then49, !dbg !4711

if.then49:                                        ; preds = %if.else47
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !4712
  br label %if.end51, !dbg !4712

if.end51:                                         ; preds = %if.else47, %if.then49
  %pure_const_state52 = getelementptr inbounds %struct.funct_state_d, %struct.funct_state_d* %local, i64 0, i32 0, !dbg !4713
  %8 = load i32, i32* %pure_const_state52, align 4, !dbg !4713
  %cmp53 = icmp eq i32 %8, 0, !dbg !4715
  br i1 %cmp53, label %if.then54, label %if.end59, !dbg !4716

if.then54:                                        ; preds = %if.end51
  store i32 1, i32* %pure_const_state52, align 4, !dbg !4717
  br label %if.end59, !dbg !4718

if.end59:                                         ; preds = %if.then, %if.then34, %if.then41, %if.end51, %if.then54, %if.then44, %if.then36, %if.then3
  ret void, !dbg !4719
}

declare dso_local %union.tree_node* @get_base_address(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @ptr_deref_may_alias_global_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4720 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4722, metadata !DIExpression()), !dbg !4724
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !4725
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4723, metadata !DIExpression()), !dbg !4724
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4726
  %bf.load = load i64, i64* %0, align 8, !dbg !4726
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4728
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !4728
  br i1 %cmp, label %if.then, label %cleanup, !dbg !4729

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4730
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4730
  br label %cleanup, !dbg !4731

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !4724
  ret %union.tree_node* %retval.0, !dbg !4732
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4733 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4735, metadata !DIExpression()), !dbg !4736
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4737
  %0 = load i32, i32* %num_ops, align 4, !dbg !4737
  ret i32 %0, !dbg !4738
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4739 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4741, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %i, metadata !4742, metadata !DIExpression()), !dbg !4743
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4744
  %tobool = icmp eq i8 %call, 0, !dbg !4744
  br i1 %tobool, label %return, label %if.then, !dbg !4746

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4747
  %idxprom = zext i32 %i to i64, !dbg !4747
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4747
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4747
  br label %return, !dbg !4749

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4750
  ret %union.tree_node* %retval.0, !dbg !4751
}

declare dso_local zeroext i8 @tree_could_throw_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @setjmp_call_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @lookup_stmt_eh_lp(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4752 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4754, metadata !DIExpression()), !dbg !4755
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4756
  ret %union.tree_node* %call, !dbg !4757
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4758 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4760, metadata !DIExpression()), !dbg !4761
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4762
  %cmp = icmp eq i32 %call, 0, !dbg !4763
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4764

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4765
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4766
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4767
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4768 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4772, metadata !DIExpression()), !dbg !4774
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4775
  %idxprom = zext i32 %call to i64, !dbg !4776
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4776
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4776
  call void @llvm.dbg.value(metadata i64 %0, metadata !4773, metadata !DIExpression()), !dbg !4774
  %cmp = icmp eq i64 %0, 0, !dbg !4777
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4777

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !4777
  br label %cond.end, !dbg !4777

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4778
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4779
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4780
  ret %union.tree_node** %2, !dbg !4781
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4782 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4786, metadata !DIExpression()), !dbg !4787
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4788
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4789
  ret i32 %call1, !dbg !4790
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4791 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4795, metadata !DIExpression()), !dbg !4796
  %idxprom = zext i32 %code to i64, !dbg !4797
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4797
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4797
  ret i32 %0, !dbg !4798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4799 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4803, metadata !DIExpression()), !dbg !4804
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !4805
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !4805
  ret %struct.VEC_int_heap* %0, !dbg !4805
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !4806 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4807
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4807
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4807
  %tobool = icmp eq %struct.loops* %1, null, !dbg !4807
  br i1 %tobool, label %return, label %if.end, !dbg !4809

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4810
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4810
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4810
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !4810

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4810
  br label %cond.end, !dbg !4810

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !4810
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !4810
  br label %return, !dbg !4811

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !4812
  ret i32 %retval.0, !dbg !4813
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !4814 {
entry:
  unreachable, !dbg !4823
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !4824 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4830, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4831, metadata !DIExpression()), !dbg !4833
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4834
  %0 = load i32, i32* %num1, align 4, !dbg !4834
  %inc = add i32 %0, 1, !dbg !4834
  store i32 %inc, i32* %num1, align 4, !dbg !4834
  %idxprom = zext i32 %0 to i64, !dbg !4834
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4834
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4832, metadata !DIExpression()), !dbg !4833
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !4834
  ret i32* %arrayidx, !dbg !4834
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !4835 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4841, metadata !DIExpression()), !dbg !4843
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !4844
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4844
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !4844
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4844

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !4844
  br label %cond.end, !dbg !4844

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4844
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !4844
  call void @llvm.dbg.value(metadata i32 %call, metadata !4842, metadata !DIExpression()), !dbg !4843
  %cmp = icmp eq i32 %call, 0, !dbg !4845
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4847

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4848
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !4848
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !4848

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !4848
  br label %cond.end8, !dbg !4848

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !4848
  %sub = add i32 %call, -1, !dbg !4848
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #7, !dbg !4848
  br label %cleanup, !dbg !4849

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !4843
  ret %struct.loop* %retval.0, !dbg !4850
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !4851 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4855, metadata !DIExpression()), !dbg !4856
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !4857
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4857

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !4857
  %0 = load i32, i32* %num, align 8, !dbg !4857
  br label %cond.end, !dbg !4857

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4857
  ret i32 %cond, !dbg !4857
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4858 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4862, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4863, metadata !DIExpression()), !dbg !4864
  br label %land.end, !dbg !4865

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4865
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4865
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4865
  ret %struct.loop* %0, !dbg !4865
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !4866 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4872, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4873, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !4874, metadata !DIExpression()), !dbg !4875
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4876
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4876

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4876
  %0 = load i32, i32* %num, align 4, !dbg !4876
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4876
  br i1 %cmp, label %if.then, label %if.else, !dbg !4878

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4879
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4879
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4879
  br label %return, !dbg !4879

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4881

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !4883
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4883
  store i32 %storemerge, i32* %ptr, align 4, !dbg !4883
  ret i32 %retval.0, !dbg !4878
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !4884 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !4888, metadata !DIExpression()), !dbg !4889
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4890
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4890
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4890
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4890
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4890
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4890
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4890

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4890
  br label %cond.end, !dbg !4890

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4890
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #7, !dbg !4890
  ret %struct.loop* %call, !dbg !4891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !4892 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4897, metadata !DIExpression()), !dbg !4898
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4899
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4899
  br i1 %tobool, label %if.end, label %if.then, !dbg !4901

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !4901
  tail call void @free(i8* nonnull %1) #6, !dbg !4899
  br label %if.end, !dbg !4899

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !4901
  ret void, !dbg !4901
}

declare dso_local %struct.lto_simple_output_block* @lto_create_simple_output_block(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) unnamed_addr #0 !dbg !4902 {
entry:
  %retval = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !4906, metadata !DIExpression()), !dbg !4908
  %set1 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 0, !dbg !4909
  store %struct.cgraph_node_set_def* %set, %struct.cgraph_node_set_def** %set1, align 8, !dbg !4910
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 1, !dbg !4911
  store i32 0, i32* %index, align 8, !dbg !4912
  %0 = bitcast %struct.cgraph_node_set_iterator* %retval to { %struct.cgraph_node_set_def*, i32 }*, !dbg !4913
  %1 = load { %struct.cgraph_node_set_def*, i32 }, { %struct.cgraph_node_set_def*, i32 }* %0, align 8, !dbg !4913
  ret { %struct.cgraph_node_set_def*, i32 } %1, !dbg !4913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !4914 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !4919
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !4919
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !4919
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4919

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !4919
  br label %cond.end, !dbg !4919

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4919
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond) #7, !dbg !4919
  %cmp = icmp ule i32 %call, %csi.coerce1, !dbg !4920
  %conv3 = zext i1 %cmp to i8, !dbg !4921
  ret i8 %conv3, !dbg !4922
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !4923 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !4928
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !4928
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !4928
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4928

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !4928
  br label %cond.end, !dbg !4928

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4928
  %call = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %csi.coerce1) #7, !dbg !4928
  ret %struct.cgraph_node* %call, !dbg !4929
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @csi_next(%struct.cgraph_node_set_iterator* %csi) unnamed_addr #0 !dbg !4930 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !4935, metadata !DIExpression()), !dbg !4936
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !4937
  %0 = load i32, i32* %index, align 8, !dbg !4938
  %inc = add i32 %0, 1, !dbg !4938
  store i32 %inc, i32* %index, align 8, !dbg !4938
  ret void, !dbg !4939
}

declare dso_local void @lto_output_uleb128_stream(%struct.lto_output_stream*, i64) local_unnamed_addr #2

declare dso_local i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d*, %struct.cgraph_node*) local_unnamed_addr #2

declare dso_local %struct.bitpack_d* @bitpack_create() local_unnamed_addr #2

declare dso_local void @bp_pack_value(%struct.bitpack_d*, i64, i32) local_unnamed_addr #2

declare dso_local void @lto_output_bitpack(%struct.lto_output_stream*, %struct.bitpack_d*) local_unnamed_addr #2

declare dso_local void @bitpack_delete(%struct.bitpack_d*) local_unnamed_addr #2

declare dso_local void @lto_destroy_simple_output_block(%struct.lto_simple_output_block*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %vec_) unnamed_addr #0 !dbg !4940 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !4946, metadata !DIExpression()), !dbg !4947
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !4948
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4948

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !4948
  %0 = load i32, i32* %num, align 8, !dbg !4948
  br label %cond.end, !dbg !4948

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4948
  ret i32 %cond, !dbg !4948
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4949 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !4953, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4954, metadata !DIExpression()), !dbg !4955
  br label %land.end, !dbg !4956

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4956
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4956
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !4956
  ret %struct.cgraph_node* %0, !dbg !4956
}

declare dso_local %struct.lto_file_decl_data** @lto_get_file_decl_data() local_unnamed_addr #2

declare dso_local %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data*, i32, i8**, i64*) local_unnamed_addr #2

declare dso_local i64 @lto_input_uleb128(%struct.lto_input_block*) local_unnamed_addr #2

declare dso_local %struct.cgraph_node* @lto_cgraph_encoder_deref(%struct.lto_cgraph_encoder_d*, i32) local_unnamed_addr #2

declare dso_local %struct.bitpack_d* @lto_input_bitpack(%struct.lto_input_block*) local_unnamed_addr #2

declare dso_local i64 @bp_unpack_value(%struct.bitpack_d*, i32) local_unnamed_addr #2

declare dso_local void @lto_destroy_simple_input_block(%struct.lto_file_decl_data*, i32, %struct.lto_input_block*, i8*, i64) local_unnamed_addr #2

declare dso_local zeroext i8 @function_called_by_processed_nodes_p() local_unnamed_addr #2

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @execute_fixup_cfg() local_unnamed_addr #2

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
!llvm.module.flags = !{!2410, !2411, !2412}
!llvm.ident = !{!2413}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_ipa_pure_const", scope: !2, file: !3, line: 1078, type: !2133, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !680, globals: !2383, nameTableKind: None)
!3 = !DIFile(filename: "ipa-pure-const.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !512, !521, !525, !531, !536, !541, !559, !566, !573, !596, !601, !640, !666}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !318, line: 39, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!320 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!324 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!325 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!326 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!327 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!328 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!329 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!330 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!331 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!332 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!333 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!334 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!335 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!336 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!337 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!338 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!339 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!340 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!341 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!342 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!343 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!344 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!345 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!346 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!347 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!348 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!349 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!350 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!351 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!352 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!353 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!354 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!355 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!356 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!357 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!358 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!359 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!360 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!361 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!362 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!363 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!364 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!365 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!366 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!367 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!368 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!369 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!370 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!371 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!372 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!373 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!374 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!375 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!376 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!378 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!379 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!380 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!381 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!382 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!383 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!384 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!385 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!386 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!387 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!388 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!389 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!390 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!391 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!392 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!393 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!394 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!395 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!396 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!397 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!398 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!399 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!400 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!401 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!402 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!403 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!404 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!405 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!406 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!407 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!408 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!409 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!411 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!412 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!413 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!414 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!415 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!416 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!417 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!418 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!419 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!420 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!421 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!422 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!423 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!424 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!425 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!426 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!427 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!428 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!429 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!430 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!431 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!432 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!433 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!434 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!435 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!436 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!437 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!438 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!439 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!440 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!441 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!442 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!443 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!444 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!445 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!446 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!447 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!448 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!449 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!450 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!451 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!452 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!453 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!454 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!455 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!456 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!457 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!458 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!459 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!460 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!461 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!462 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!463 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!464 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!465 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!466 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!467 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!468 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!469 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!470 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!471 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!472 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!473 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!474 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!475 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!476 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!477 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!478 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!479 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!480 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!481 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!482 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!483 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!484 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!485 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!486 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!487 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!488 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!489 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!490 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!491 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!492 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!493 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!494 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!495 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!496 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!497 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!498 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!499 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!500 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!501 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!502 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!503 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!504 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!505 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!506 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!507 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!508 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!509 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!510 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!511 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!512 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !513, line: 31, baseType: !7, size: 32, elements: !514)
!513 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!514 = !{!515, !516, !517, !518, !519, !520}
!515 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!516 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!517 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!518 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!519 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!520 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!521 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !513, line: 91, baseType: !7, size: 32, elements: !522)
!522 = !{!523, !524}
!523 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!524 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !526, line: 363, baseType: !7, size: 32, elements: !527)
!526 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!527 = !{!528, !529, !530}
!528 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!529 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!530 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!531 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !526, line: 355, baseType: !7, size: 32, elements: !532)
!532 = !{!533, !534, !535}
!533 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!534 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!535 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!536 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !537, line: 474, baseType: !7, size: 32, elements: !538)
!537 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!538 = !{!539, !540}
!539 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!540 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!541 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !318, line: 280, baseType: !7, size: 32, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!543 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!544 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!545 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!546 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!547 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!548 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!549 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!550 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!551 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!552 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!553 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!554 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!555 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!556 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!557 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!558 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!559 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !318, line: 1817, baseType: !7, size: 32, elements: !560)
!560 = !{!561, !562, !563, !564, !565}
!561 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!562 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!563 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!564 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!565 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !318, line: 1805, baseType: !7, size: 32, elements: !567)
!567 = !{!568, !569, !570, !571, !572}
!568 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!569 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!570 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!571 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!572 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !574, line: 309, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!576 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!580 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!581 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!582 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!583 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!584 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!585 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!586 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!587 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!588 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!589 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!590 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!591 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!592 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!593 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!594 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!595 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!596 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pure_const_state_e", file: !3, line: 64, baseType: !7, size: 32, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIEnumerator(name: "IPA_CONST", value: 0, isUnsigned: true)
!599 = !DIEnumerator(name: "IPA_PURE", value: 1, isUnsigned: true)
!600 = !DIEnumerator(name: "IPA_NEITHER", value: 2, isUnsigned: true)
!601 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !602, line: 51, baseType: !7, size: 32, elements: !603)
!602 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!604 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!619 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!620 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!621 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!622 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!623 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!624 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!625 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!626 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!627 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!628 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!629 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!630 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!631 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!632 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!633 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!634 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!635 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!636 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!637 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!638 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!639 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!640 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !602, line: 727, baseType: !7, size: 32, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!642 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!644 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!645 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!646 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!647 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!648 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!649 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!650 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!651 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!652 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!653 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!654 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!655 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!656 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!657 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!658 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!659 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!660 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!661 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!662 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!663 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!664 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!665 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!666 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lto_section_type", file: !667, line: 256, baseType: !7, size: 32, elements: !668)
!667 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!669 = !DIEnumerator(name: "LTO_section_decls", value: 0, isUnsigned: true)
!670 = !DIEnumerator(name: "LTO_section_function_body", value: 1, isUnsigned: true)
!671 = !DIEnumerator(name: "LTO_section_static_initializer", value: 2, isUnsigned: true)
!672 = !DIEnumerator(name: "LTO_section_cgraph", value: 3, isUnsigned: true)
!673 = !DIEnumerator(name: "LTO_section_jump_functions", value: 4, isUnsigned: true)
!674 = !DIEnumerator(name: "LTO_section_ipa_pure_const", value: 5, isUnsigned: true)
!675 = !DIEnumerator(name: "LTO_section_ipa_reference", value: 6, isUnsigned: true)
!676 = !DIEnumerator(name: "LTO_section_symtab", value: 7, isUnsigned: true)
!677 = !DIEnumerator(name: "LTO_section_wpa_fixup", value: 8, isUnsigned: true)
!678 = !DIEnumerator(name: "LTO_section_opts", value: 9, isUnsigned: true)
!679 = !DIEnumerator(name: "LTO_N_SECTION_TYPES", value: 10, isUnsigned: true)
!680 = !{!681, !682, !683, !684, !687, !688, !690, !2337, !7, !2347, !2355, !317, !2367, !695, !1020, !2368, !1054, !685, !2370, !1262, !596}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!683 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !574, line: 181, size: 2496, elements: !693)
!693 = !{!694, !2080, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2220, !2274, !2284, !2288, !2314, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !692, file: !574, line: 182, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !696, line: 56, baseType: !697)
!696 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !318, line: 3371, size: 1792, elements: !699)
!699 = !{!700, !733, !739, !752, !771, !782, !787, !796, !802, !815, !827, !865, !1410, !1438, !1455, !1456, !1461, !1470, !1476, !1481, !1485, !1489, !1731, !1778, !1784, !1790, !1797, !1810, !1824, !1841, !1853, !1875, !1890, !2062}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !698, file: !318, line: 3372, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !318, line: 360, size: 64, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !701, file: !318, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !701, file: !318, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !701, file: !318, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !701, file: !318, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !701, file: !318, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !701, file: !318, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !701, file: !318, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !701, file: !318, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !701, file: !318, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !701, file: !318, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !701, file: !318, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !701, file: !318, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !701, file: !318, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !701, file: !318, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !701, file: !318, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !701, file: !318, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !701, file: !318, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !701, file: !318, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !701, file: !318, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !701, file: !318, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !701, file: !318, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !701, file: !318, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !701, file: !318, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !701, file: !318, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !701, file: !318, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !701, file: !318, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !701, file: !318, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !701, file: !318, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !701, file: !318, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !701, file: !318, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !698, file: !318, line: 3373, baseType: !734, size: 192)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !318, line: 402, size: 192, elements: !735)
!735 = !{!736, !737, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !734, file: !318, line: 403, baseType: !701, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !734, file: !318, line: 404, baseType: !695, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !318, line: 405, baseType: !695, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !698, file: !318, line: 3374, baseType: !740, size: 320)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !318, line: 1384, size: 320, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !740, file: !318, line: 1385, baseType: !734, size: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !740, file: !318, line: 1386, baseType: !744, size: 128, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !745, line: 58, baseType: !746)
!745 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !745, line: 54, size: 128, elements: !747)
!747 = !{!748, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !746, file: !745, line: 56, baseType: !749, size: 64)
!749 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !746, file: !745, line: 57, baseType: !751, size: 64, offset: 64)
!751 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !698, file: !318, line: 3375, baseType: !753, size: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !318, line: 1397, size: 256, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !753, file: !318, line: 1398, baseType: !734, size: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !753, file: !318, line: 1399, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !759, line: 52, size: 256, elements: !760)
!759 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!760 = !{!761, !762, !763, !764, !765, !766, !767}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !758, file: !759, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !758, file: !759, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !758, file: !759, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !758, file: !759, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !758, file: !759, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !758, file: !759, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !758, file: !759, line: 62, baseType: !768, size: 192, offset: 64)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 192, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 3)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !698, file: !318, line: 3376, baseType: !772, size: 256)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !318, line: 1408, size: 256, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !772, file: !318, line: 1409, baseType: !734, size: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !772, file: !318, line: 1410, baseType: !776, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !778, line: 27, size: 192, elements: !779)
!778 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !777, file: !778, line: 29, baseType: !744, size: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !777, file: !778, line: 30, baseType: !189, size: 32, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !698, file: !318, line: 3377, baseType: !783, size: 256)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !318, line: 1437, size: 256, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !783, file: !318, line: 1438, baseType: !734, size: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !783, file: !318, line: 1439, baseType: !695, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !698, file: !318, line: 3378, baseType: !788, size: 256)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !318, line: 1418, size: 256, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !788, file: !318, line: 1419, baseType: !734, size: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !788, file: !318, line: 1420, baseType: !683, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !788, file: !318, line: 1421, baseType: !793, size: 8, offset: 224)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 8, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 1)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !698, file: !318, line: 3379, baseType: !797, size: 320)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !318, line: 1428, size: 320, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !797, file: !318, line: 1429, baseType: !734, size: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !797, file: !318, line: 1430, baseType: !695, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !797, file: !318, line: 1431, baseType: !695, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !698, file: !318, line: 3380, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !318, line: 1460, size: 320, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !318, line: 1461, baseType: !734, size: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !803, file: !318, line: 1462, baseType: !807, size: 128, offset: 192)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !808, line: 31, size: 128, elements: !809)
!808 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!809 = !{!810, !813, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !807, file: !808, line: 32, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !807, file: !808, line: 33, baseType: !7, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !807, file: !808, line: 34, baseType: !7, size: 32, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !698, file: !318, line: 3381, baseType: !816, size: 384)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !318, line: 2507, size: 384, elements: !817)
!817 = !{!818, !819, !824, !825, !826}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !816, file: !318, line: 2508, baseType: !734, size: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !816, file: !318, line: 2509, baseType: !820, size: 32, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !821, line: 58, baseType: !822)
!821 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !823, line: 44, baseType: !7)
!823 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!824 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !816, file: !318, line: 2510, baseType: !7, size: 32, offset: 224)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !816, file: !318, line: 2511, baseType: !695, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !816, file: !318, line: 2512, baseType: !695, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !698, file: !318, line: 3382, baseType: !828, size: 896)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !318, line: 2652, size: 896, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !828, file: !318, line: 2653, baseType: !816, size: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !828, file: !318, line: 2654, baseType: !695, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !828, file: !318, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !828, file: !318, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !828, file: !318, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !828, file: !318, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !828, file: !318, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !828, file: !318, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !828, file: !318, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !828, file: !318, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !828, file: !318, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !828, file: !318, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !828, file: !318, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !828, file: !318, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !828, file: !318, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !828, file: !318, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !828, file: !318, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !828, file: !318, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !828, file: !318, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !828, file: !318, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !828, file: !318, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !828, file: !318, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !828, file: !318, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !828, file: !318, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !828, file: !318, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !828, file: !318, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !828, file: !318, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !828, file: !318, line: 2703, baseType: !7, size: 32, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !828, file: !318, line: 2705, baseType: !695, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !828, file: !318, line: 2706, baseType: !695, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !828, file: !318, line: 2707, baseType: !695, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !828, file: !318, line: 2708, baseType: !695, size: 64, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !828, file: !318, line: 2711, baseType: !863, size: 64, offset: 832)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !318, line: 2711, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !698, file: !318, line: 3383, baseType: !866, size: 960)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !318, line: 2756, size: 960, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !866, file: !318, line: 2757, baseType: !828, size: 896)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !866, file: !318, line: 2758, baseType: !870, size: 64, offset: 896)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !696, line: 50, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !873, line: 240, size: 384, elements: !874)
!873 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!874 = !{!875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !872, file: !873, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !872, file: !873, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !872, file: !873, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !872, file: !873, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !872, file: !873, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !872, file: !873, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !872, file: !873, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !872, file: !873, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !872, file: !873, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !872, file: !873, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !872, file: !873, line: 321, baseType: !886, size: 320, offset: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !873, line: 315, size: 320, elements: !887)
!887 = !{!888, !1343, !1345, !1408, !1409}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !886, file: !873, line: 316, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 64, elements: !794)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !873, line: 183, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !873, line: 166, size: 64, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !905, !906, !918, !921, !981, !982, !1320, !1333, !1340}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !891, file: !873, line: 168, baseType: !683, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !891, file: !873, line: 169, baseType: !7, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !891, file: !873, line: 170, baseType: !688, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !891, file: !873, line: 171, baseType: !870, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !891, file: !873, line: 172, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !696, line: 53, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !873, line: 359, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !900, file: !873, line: 360, baseType: !683, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !900, file: !873, line: 361, baseType: !904, size: 64, offset: 64)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 64, elements: !794)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !891, file: !873, line: 173, baseType: !189, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !891, file: !873, line: 174, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !873, line: 133, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !873, line: 115, size: 32, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !908, file: !873, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !908, file: !873, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !908, file: !873, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !908, file: !873, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !908, file: !873, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !908, file: !873, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !908, file: !873, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !908, file: !873, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !891, file: !873, line: 175, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !873, line: 175, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !891, file: !873, line: 176, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !924, line: 75, size: 256, elements: !925)
!924 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!925 = !{!926, !940, !941, !942}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !923, file: !924, line: 76, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !924, line: 68, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !924, line: 63, size: 320, elements: !930)
!930 = !{!931, !933, !934, !935}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !929, file: !924, line: 64, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !929, file: !924, line: 65, baseType: !932, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !929, file: !924, line: 66, baseType: !7, size: 32, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !929, file: !924, line: 67, baseType: !936, size: 128, offset: 192)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 128, elements: !938)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !924, line: 29, baseType: !749)
!938 = !{!939}
!939 = !DISubrange(count: 2)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !923, file: !924, line: 77, baseType: !927, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !923, file: !924, line: 78, baseType: !7, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !923, file: !924, line: 79, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !924, line: 49, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !924, line: 45, size: 832, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !945, file: !924, line: 46, baseType: !932, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !945, file: !924, line: 47, baseType: !922, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !945, file: !924, line: 48, baseType: !950, size: 704, offset: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !951, line: 164, size: 704, elements: !952)
!951 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!952 = !{!953, !954, !964, !965, !966, !967, !968, !969, !973, !977, !978, !979, !980}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !950, file: !951, line: 166, baseType: !751, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !950, file: !951, line: 167, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !951, line: 157, size: 192, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !956, file: !951, line: 159, baseType: !685, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !956, file: !951, line: 160, baseType: !955, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !956, file: !951, line: 161, baseType: !961, size: 32, offset: 128)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 32, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 4)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !950, file: !951, line: 168, baseType: !685, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !950, file: !951, line: 169, baseType: !685, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !950, file: !951, line: 170, baseType: !685, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !950, file: !951, line: 171, baseType: !751, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !950, file: !951, line: 172, baseType: !683, size: 32, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !950, file: !951, line: 176, baseType: !970, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!955, !687, !751}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !950, file: !951, line: 177, baseType: !974, size: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !687, !955}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !950, file: !951, line: 178, baseType: !687, size: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !950, file: !951, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !950, file: !951, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !950, file: !951, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !891, file: !873, line: 177, baseType: !695, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !891, file: !873, line: 178, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !526, line: 217, size: 832, elements: !985)
!985 = !{!986, !1232, !1233, !1234, !1290, !1294, !1295, !1296, !1314, !1315, !1316, !1317, !1318, !1319}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !984, file: !526, line: 219, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !526, line: 151, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !526, line: 151, size: 128, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !989, file: !526, line: 151, baseType: !992, size: 128)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !526, line: 150, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !526, line: 150, size: 128, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !993, file: !526, line: 150, baseType: !7, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !993, file: !526, line: 150, baseType: !7, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !993, file: !526, line: 150, baseType: !998, size: 64, offset: 64)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 64, elements: !794)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !696, line: 108, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !526, line: 122, size: 512, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1001, file: !526, line: 124, baseType: !983, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1001, file: !526, line: 125, baseType: !983, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1001, file: !526, line: 131, baseType: !1006, size: 64, offset: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !526, line: 128, size: 64, elements: !1007)
!1007 = !{!1008, !1223}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1006, file: !526, line: 129, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !696, line: 66, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !602, line: 143, size: 192, elements: !1012)
!1012 = !{!1013, !1221, !1222}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1011, file: !602, line: 145, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !696, line: 69, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !602, line: 136, size: 192, elements: !1017)
!1017 = !{!1018, !1219, !1220}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1016, file: !602, line: 137, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !696, line: 58, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !602, line: 737, size: 768, elements: !1022)
!1022 = !{!1023, !1040, !1074, !1080, !1085, !1090, !1097, !1103, !1109, !1114, !1128, !1133, !1139, !1144, !1154, !1159, !1177, !1184, !1191, !1197, !1202, !1208, !1214}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1021, file: !602, line: 738, baseType: !1024, size: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !602, line: 271, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1024, file: !602, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1024, file: !602, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1024, file: !602, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1024, file: !602, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1024, file: !602, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1024, file: !602, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1024, file: !602, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1024, file: !602, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1024, file: !602, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1024, file: !602, line: 312, baseType: !7, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1024, file: !602, line: 316, baseType: !820, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1024, file: !602, line: 319, baseType: !7, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1024, file: !602, line: 323, baseType: !983, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1024, file: !602, line: 327, baseType: !695, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1021, file: !602, line: 739, baseType: !1041, size: 448)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !602, line: 350, size: 448, elements: !1042)
!1042 = !{!1043, !1072}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1041, file: !602, line: 353, baseType: !1044, size: 384)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !602, line: 333, size: 384, elements: !1045)
!1045 = !{!1046, !1047, !1055}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1044, file: !602, line: 336, baseType: !1024, size: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1044, file: !602, line: 343, baseType: !1048, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1050, line: 37, size: 128, elements: !1051)
!1050 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1049, file: !1050, line: 39, baseType: !1048, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1049, file: !1050, line: 40, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1044, file: !602, line: 344, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1050, line: 45, size: 320, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1057, file: !1050, line: 47, baseType: !1056, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1057, file: !1050, line: 48, baseType: !1061, size: 256, offset: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !318, line: 1883, size: 256, elements: !1062)
!1062 = !{!1063, !1065, !1066, !1071}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1061, file: !318, line: 1884, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1061, file: !318, line: 1885, baseType: !1064, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1061, file: !318, line: 1891, baseType: !1067, size: 64, offset: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1061, file: !318, line: 1891, size: 64, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1067, file: !318, line: 1891, baseType: !1019, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1067, file: !318, line: 1891, baseType: !695, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1061, file: !318, line: 1892, baseType: !1054, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1041, file: !602, line: 359, baseType: !1073, size: 64, offset: 384)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 64, elements: !794)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1021, file: !602, line: 740, baseType: !1075, size: 512)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !602, line: 365, size: 512, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1075, file: !602, line: 368, baseType: !1044, size: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1075, file: !602, line: 373, baseType: !695, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1075, file: !602, line: 374, baseType: !695, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1021, file: !602, line: 741, baseType: !1081, size: 576)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !602, line: 380, size: 576, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1081, file: !602, line: 383, baseType: !1075, size: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1081, file: !602, line: 389, baseType: !1073, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1021, file: !602, line: 742, baseType: !1086, size: 320)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !602, line: 395, size: 320, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1086, file: !602, line: 397, baseType: !1024, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1086, file: !602, line: 400, baseType: !1009, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1021, file: !602, line: 743, baseType: !1091, size: 448)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !602, line: 406, size: 448, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1091, file: !602, line: 408, baseType: !1024, size: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1091, file: !602, line: 412, baseType: !695, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1091, file: !602, line: 420, baseType: !695, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1091, file: !602, line: 423, baseType: !1009, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1021, file: !602, line: 744, baseType: !1098, size: 384)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !602, line: 429, size: 384, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1098, file: !602, line: 431, baseType: !1024, size: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1098, file: !602, line: 434, baseType: !695, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1098, file: !602, line: 437, baseType: !1009, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1021, file: !602, line: 745, baseType: !1104, size: 384)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !602, line: 443, size: 384, elements: !1105)
!1105 = !{!1106, !1107, !1108}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1104, file: !602, line: 445, baseType: !1024, size: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1104, file: !602, line: 449, baseType: !695, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1104, file: !602, line: 453, baseType: !1009, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1021, file: !602, line: 746, baseType: !1110, size: 320)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !602, line: 459, size: 320, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1110, file: !602, line: 461, baseType: !1024, size: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1110, file: !602, line: 464, baseType: !695, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1021, file: !602, line: 747, baseType: !1115, size: 768)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !602, line: 469, size: 768, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1115, file: !602, line: 471, baseType: !1024, size: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1115, file: !602, line: 474, baseType: !7, size: 32, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1115, file: !602, line: 475, baseType: !7, size: 32, offset: 288)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1115, file: !602, line: 478, baseType: !695, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1115, file: !602, line: 481, baseType: !1122, size: 384, offset: 384)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 384, elements: !794)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !318, line: 1917, size: 384, elements: !1124)
!1124 = !{!1125, !1126, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1123, file: !318, line: 1920, baseType: !1061, size: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1123, file: !318, line: 1921, baseType: !695, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1123, file: !318, line: 1922, baseType: !820, size: 32, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1021, file: !602, line: 748, baseType: !1129, size: 320)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !602, line: 487, size: 320, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1129, file: !602, line: 490, baseType: !1024, size: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1129, file: !602, line: 494, baseType: !683, size: 32, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1021, file: !602, line: 749, baseType: !1134, size: 384)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !602, line: 500, size: 384, elements: !1135)
!1135 = !{!1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1134, file: !602, line: 502, baseType: !1024, size: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1134, file: !602, line: 506, baseType: !1009, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1134, file: !602, line: 510, baseType: !1009, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1021, file: !602, line: 750, baseType: !1140, size: 320)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !602, line: 529, size: 320, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1140, file: !602, line: 531, baseType: !1024, size: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1140, file: !602, line: 540, baseType: !1009, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1021, file: !602, line: 751, baseType: !1145, size: 704)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !602, line: 546, size: 704, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1145, file: !602, line: 549, baseType: !1075, size: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1145, file: !602, line: 553, baseType: !688, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1145, file: !602, line: 557, baseType: !682, size: 8, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1145, file: !602, line: 558, baseType: !682, size: 8, offset: 584)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1145, file: !602, line: 559, baseType: !682, size: 8, offset: 592)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1145, file: !602, line: 560, baseType: !682, size: 8, offset: 600)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1145, file: !602, line: 566, baseType: !1073, size: 64, offset: 640)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1021, file: !602, line: 752, baseType: !1155, size: 384)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !602, line: 571, size: 384, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1155, file: !602, line: 573, baseType: !1086, size: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1155, file: !602, line: 577, baseType: !695, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1021, file: !602, line: 753, baseType: !1160, size: 576)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !602, line: 600, size: 576, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1167, !1176}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1160, file: !602, line: 602, baseType: !1086, size: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1160, file: !602, line: 605, baseType: !695, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1160, file: !602, line: 609, baseType: !1165, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1166, line: 46, baseType: !749)
!1166 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1160, file: !602, line: 612, baseType: !1168, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !602, line: 581, size: 320, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1169, file: !602, line: 583, baseType: !317, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1169, file: !602, line: 586, baseType: !695, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1169, file: !602, line: 589, baseType: !695, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1169, file: !602, line: 592, baseType: !695, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1169, file: !602, line: 595, baseType: !695, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1160, file: !602, line: 616, baseType: !1009, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1021, file: !602, line: 754, baseType: !1178, size: 512)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !602, line: 622, size: 512, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1178, file: !602, line: 624, baseType: !1086, size: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1178, file: !602, line: 628, baseType: !695, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1178, file: !602, line: 632, baseType: !695, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1178, file: !602, line: 636, baseType: !695, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1021, file: !602, line: 755, baseType: !1185, size: 704)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !602, line: 642, size: 704, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1185, file: !602, line: 644, baseType: !1178, size: 512)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1185, file: !602, line: 648, baseType: !695, size: 64, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1185, file: !602, line: 652, baseType: !695, size: 64, offset: 576)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1185, file: !602, line: 653, baseType: !695, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1021, file: !602, line: 756, baseType: !1192, size: 448)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !602, line: 663, size: 448, elements: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1192, file: !602, line: 665, baseType: !1086, size: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1192, file: !602, line: 668, baseType: !695, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1192, file: !602, line: 673, baseType: !695, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1021, file: !602, line: 757, baseType: !1198, size: 384)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !602, line: 694, size: 384, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1198, file: !602, line: 696, baseType: !1086, size: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1198, file: !602, line: 699, baseType: !695, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1021, file: !602, line: 758, baseType: !1203, size: 384)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !602, line: 681, size: 384, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1203, file: !602, line: 683, baseType: !1024, size: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1203, file: !602, line: 686, baseType: !695, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1203, file: !602, line: 689, baseType: !695, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1021, file: !602, line: 759, baseType: !1209, size: 384)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !602, line: 707, size: 384, elements: !1210)
!1210 = !{!1211, !1212, !1213}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1209, file: !602, line: 709, baseType: !1024, size: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1209, file: !602, line: 712, baseType: !695, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1209, file: !602, line: 712, baseType: !695, size: 64, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1021, file: !602, line: 760, baseType: !1215, size: 320)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !602, line: 718, size: 320, elements: !1216)
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1215, file: !602, line: 720, baseType: !1024, size: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1215, file: !602, line: 723, baseType: !695, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1016, file: !602, line: 138, baseType: !1015, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1016, file: !602, line: 139, baseType: !1015, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1011, file: !602, line: 146, baseType: !1014, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1011, file: !602, line: 152, baseType: !1009, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1006, file: !526, line: 130, baseType: !870, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1001, file: !526, line: 134, baseType: !687, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1001, file: !526, line: 137, baseType: !695, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1001, file: !526, line: 138, baseType: !820, size: 32, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1001, file: !526, line: 142, baseType: !7, size: 32, offset: 352)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !526, line: 144, baseType: !683, size: 32, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1001, file: !526, line: 145, baseType: !683, size: 32, offset: 416)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1001, file: !526, line: 146, baseType: !1231, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !526, line: 119, baseType: !751)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !984, file: !526, line: 220, baseType: !987, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !984, file: !526, line: 223, baseType: !687, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !984, file: !526, line: 226, baseType: !1235, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !513, line: 100, size: 1216, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1247, !1248, !1249, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1280, !1288, !1289}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1236, file: !513, line: 102, baseType: !683, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1236, file: !513, line: 105, baseType: !7, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1236, file: !513, line: 108, baseType: !983, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1236, file: !513, line: 111, baseType: !983, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1236, file: !513, line: 114, baseType: !1243, size: 64, offset: 192)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !513, line: 41, size: 64, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1243, file: !513, line: 42, baseType: !512, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1243, file: !513, line: 43, baseType: !7, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1236, file: !513, line: 117, baseType: !7, size: 32, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1236, file: !513, line: 120, baseType: !7, size: 32, offset: 288)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1236, file: !513, line: 123, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !513, line: 87, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !513, line: 87, size: 128, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1252, file: !513, line: 87, baseType: !1255, size: 128)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !513, line: 85, baseType: !1256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !513, line: 85, size: 128, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1256, file: !513, line: 85, baseType: !7, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1256, file: !513, line: 85, baseType: !7, size: 32, offset: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1256, file: !513, line: 85, baseType: !1261, size: 64, offset: 64)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 64, elements: !794)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !513, line: 84, baseType: !1235)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1236, file: !513, line: 126, baseType: !1235, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1236, file: !513, line: 129, baseType: !1235, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1236, file: !513, line: 132, baseType: !687, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1236, file: !513, line: 139, baseType: !695, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1236, file: !513, line: 143, baseType: !744, size: 128, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1236, file: !513, line: 146, baseType: !744, size: 128, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1236, file: !513, line: 148, baseType: !682, size: 8, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1236, file: !513, line: 149, baseType: !682, size: 8, offset: 904)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1236, file: !513, line: 153, baseType: !521, size: 32, offset: 928)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1236, file: !513, line: 156, baseType: !1273, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !513, line: 48, size: 320, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1274, file: !513, line: 50, baseType: !1019, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1274, file: !513, line: 59, baseType: !744, size: 128, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1274, file: !513, line: 64, baseType: !682, size: 8, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1274, file: !513, line: 67, baseType: !1273, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1236, file: !513, line: 159, baseType: !1281, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !513, line: 72, size: 256, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1282, file: !513, line: 74, baseType: !1000, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1282, file: !513, line: 77, baseType: !1281, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1282, file: !513, line: 78, baseType: !1281, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1282, file: !513, line: 81, baseType: !1281, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1236, file: !513, line: 162, baseType: !682, size: 8, offset: 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1236, file: !513, line: 166, baseType: !695, size: 64, offset: 1152)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !984, file: !526, line: 229, baseType: !1291, size: 128, offset: 256)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 128, elements: !938)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !526, line: 229, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !984, file: !526, line: 232, baseType: !983, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !984, file: !526, line: 233, baseType: !983, size: 64, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !984, file: !526, line: 238, baseType: !1297, size: 64, offset: 512)
!1297 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !526, line: 235, size: 64, elements: !1298)
!1298 = !{!1299, !1305}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1297, file: !526, line: 236, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !526, line: 273, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1301, file: !526, line: 275, baseType: !1009, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1301, file: !526, line: 278, baseType: !1009, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1297, file: !526, line: 237, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !526, line: 259, size: 320, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1307, file: !526, line: 261, baseType: !870, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1307, file: !526, line: 262, baseType: !870, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1307, file: !526, line: 266, baseType: !870, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1307, file: !526, line: 267, baseType: !870, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1307, file: !526, line: 270, baseType: !683, size: 32, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !984, file: !526, line: 241, baseType: !1231, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !984, file: !526, line: 244, baseType: !683, size: 32, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !984, file: !526, line: 247, baseType: !683, size: 32, offset: 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !984, file: !526, line: 250, baseType: !683, size: 32, offset: 704)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !984, file: !526, line: 253, baseType: !683, size: 32, offset: 736)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !526, line: 256, baseType: !683, size: 32, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !891, file: !873, line: 179, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !873, line: 150, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !873, line: 142, size: 320, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1331, !1332}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1323, file: !873, line: 144, baseType: !695, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1323, file: !873, line: 145, baseType: !870, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1323, file: !873, line: 146, baseType: !870, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1323, file: !873, line: 147, baseType: !1329, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1330, line: 31, baseType: !683)
!1330 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1323, file: !873, line: 148, baseType: !7, size: 32, offset: 224)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1323, file: !873, line: 149, baseType: !682, size: 8, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !891, file: !873, line: 180, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !873, line: 162, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !873, line: 159, size: 128, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1336, file: !873, line: 160, baseType: !695, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1336, file: !873, line: 161, baseType: !751, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !891, file: !873, line: 181, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !873, line: 181, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !886, file: !873, line: 317, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 64, elements: !794)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !886, file: !873, line: 318, baseType: !1346, size: 320)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !873, line: 188, size: 320, elements: !1347)
!1347 = !{!1348, !1350, !1407}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1346, file: !873, line: 190, baseType: !1349, size: 192)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 192, elements: !769)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1346, file: !873, line: 193, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !873, line: 206, size: 320, elements: !1353)
!1353 = !{!1354, !1392, !1393, !1394, !1406}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1352, file: !873, line: 208, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !696, line: 62, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1358, line: 538, size: 256, elements: !1359)
!1358 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1359 = !{!1360, !1364, !1370, !1383}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1357, file: !1358, line: 539, baseType: !1361, size: 32)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1358, line: 482, size: 32, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !1358, line: 484, baseType: !7, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1357, file: !1358, line: 540, baseType: !1365, size: 192)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1358, line: 488, size: 192, elements: !1366)
!1366 = !{!1367, !1368, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1365, file: !1358, line: 489, baseType: !1361, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1365, file: !1358, line: 492, baseType: !688, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1365, file: !1358, line: 496, baseType: !695, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1357, file: !1358, line: 541, baseType: !1371, size: 256)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1358, line: 504, size: 256, elements: !1372)
!1372 = !{!1373, !1374, !1381, !1382}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1371, file: !1358, line: 505, baseType: !1361, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1371, file: !1358, line: 509, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1358, line: 501, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1371, file: !1358, line: 510, baseType: !1379, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1371, file: !1358, line: 513, baseType: !1355, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1357, file: !1358, line: 542, baseType: !1384, size: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1358, line: 530, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1384, file: !1358, line: 531, baseType: !1361, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1384, file: !1358, line: 534, baseType: !1388, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1358, line: 525, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!682, !695, !688, !749, !749}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1352, file: !873, line: 211, baseType: !7, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1352, file: !873, line: 214, baseType: !751, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1352, file: !873, line: 224, baseType: !1395, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !873, line: 202, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !873, line: 202, size: 128, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1397, file: !873, line: 202, baseType: !1400, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !873, line: 200, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !873, line: 200, size: 128, elements: !1402)
!1402 = !{!1403, !1404, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1401, file: !873, line: 200, baseType: !7, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1401, file: !873, line: 200, baseType: !7, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1401, file: !873, line: 200, baseType: !904, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1352, file: !873, line: 234, baseType: !1395, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1346, file: !873, line: 197, baseType: !751, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !886, file: !873, line: 319, baseType: !758, size: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !886, file: !873, line: 320, baseType: !777, size: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !698, file: !318, line: 3384, baseType: !1411, size: 1472)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !318, line: 3114, size: 1472, elements: !1412)
!1412 = !{!1413, !1434, !1435, !1436, !1437}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !318, line: 3115, baseType: !1414, size: 1216)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !318, line: 2984, size: 1216, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1414, file: !318, line: 2985, baseType: !866, size: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1414, file: !318, line: 2986, baseType: !695, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1414, file: !318, line: 2987, baseType: !695, size: 64, offset: 1024)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1414, file: !318, line: 2988, baseType: !695, size: 64, offset: 1088)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1414, file: !318, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1414, file: !318, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1414, file: !318, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1414, file: !318, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1414, file: !318, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1414, file: !318, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1414, file: !318, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1414, file: !318, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1414, file: !318, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1414, file: !318, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1414, file: !318, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1414, file: !318, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1414, file: !318, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1414, file: !318, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1411, file: !318, line: 3117, baseType: !695, size: 64, offset: 1216)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1411, file: !318, line: 3119, baseType: !695, size: 64, offset: 1280)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1411, file: !318, line: 3121, baseType: !695, size: 64, offset: 1344)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1411, file: !318, line: 3123, baseType: !695, size: 64, offset: 1408)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !698, file: !318, line: 3385, baseType: !1439, size: 1088)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !318, line: 2874, size: 1088, elements: !1440)
!1440 = !{!1441, !1442, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1439, file: !318, line: 2875, baseType: !866, size: 960)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1439, file: !318, line: 2876, baseType: !870, size: 64, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1439, file: !318, line: 2877, baseType: !1444, size: 64, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1446, line: 172, size: 128, elements: !1447)
!1446 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1445, file: !1446, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1445, file: !1446, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1445, file: !1446, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1445, file: !1446, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1445, file: !1446, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1445, file: !1446, line: 195, baseType: !7, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1445, file: !1446, line: 199, baseType: !695, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !698, file: !318, line: 3386, baseType: !1414, size: 1216)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !698, file: !318, line: 3387, baseType: !1457, size: 1280)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !318, line: 3093, size: 1280, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1457, file: !318, line: 3094, baseType: !1414, size: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1457, file: !318, line: 3095, baseType: !1444, size: 64, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !698, file: !318, line: 3388, baseType: !1462, size: 1216)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !318, line: 2824, size: 1216, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1462, file: !318, line: 2825, baseType: !828, size: 896)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1462, file: !318, line: 2827, baseType: !695, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1462, file: !318, line: 2828, baseType: !695, size: 64, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1462, file: !318, line: 2829, baseType: !695, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1462, file: !318, line: 2830, baseType: !695, size: 64, offset: 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1462, file: !318, line: 2831, baseType: !695, size: 64, offset: 1152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !698, file: !318, line: 3389, baseType: !1471, size: 1024)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !318, line: 2850, size: 1024, elements: !1472)
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1471, file: !318, line: 2851, baseType: !866, size: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1471, file: !318, line: 2852, baseType: !683, size: 32, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1471, file: !318, line: 2853, baseType: !683, size: 32, offset: 992)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !698, file: !318, line: 3390, baseType: !1477, size: 1024)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !318, line: 2857, size: 1024, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1477, file: !318, line: 2858, baseType: !866, size: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1477, file: !318, line: 2859, baseType: !1444, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !698, file: !318, line: 3391, baseType: !1482, size: 960)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !318, line: 2862, size: 960, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1482, file: !318, line: 2863, baseType: !866, size: 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !698, file: !318, line: 3392, baseType: !1486, size: 1472)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !318, line: 3304, size: 1472, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1486, file: !318, line: 3305, baseType: !1411, size: 1472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !698, file: !318, line: 3393, baseType: !1490, size: 1792)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !318, line: 3248, size: 1792, elements: !1491)
!1491 = !{!1492, !1493, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1490, file: !318, line: 3249, baseType: !1411, size: 1472)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1490, file: !318, line: 3251, baseType: !1494, size: 64, offset: 1472)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1496, line: 463, size: 1152, elements: !1497)
!1496 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1497 = !{!1498, !1501, !1532, !1533, !1646, !1654, !1655, !1656, !1657, !1658, !1659, !1683, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1495, file: !1496, line: 464, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1496, line: 464, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1495, file: !1496, line: 467, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !526, line: 374, size: 640, elements: !1504)
!1504 = !{!1505, !1507, !1508, !1521, !1522, !1523, !1524, !1525, !1526, !1528, !1530, !1531}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1503, file: !526, line: 377, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !696, line: 111, baseType: !983)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1503, file: !526, line: 378, baseType: !1506, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1503, file: !526, line: 381, baseType: !1509, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !526, line: 282, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !526, line: 282, size: 128, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1511, file: !526, line: 282, baseType: !1514, size: 128)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !526, line: 281, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !526, line: 281, size: 128, elements: !1516)
!1516 = !{!1517, !1518, !1519}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1515, file: !526, line: 281, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1515, file: !526, line: 281, baseType: !7, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1515, file: !526, line: 281, baseType: !1520, size: 64, offset: 64)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 64, elements: !794)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1503, file: !526, line: 384, baseType: !683, size: 32, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1503, file: !526, line: 387, baseType: !683, size: 32, offset: 224)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1503, file: !526, line: 390, baseType: !683, size: 32, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1503, file: !526, line: 394, baseType: !1509, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1503, file: !526, line: 396, baseType: !525, size: 32, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1503, file: !526, line: 399, baseType: !1527, size: 64, offset: 416)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 64, elements: !938)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1503, file: !526, line: 402, baseType: !1529, size: 64, offset: 480)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !938)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1503, file: !526, line: 406, baseType: !683, size: 32, offset: 544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1503, file: !526, line: 409, baseType: !683, size: 32, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1495, file: !1496, line: 470, baseType: !1010, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1495, file: !1496, line: 473, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1446, line: 39, size: 1152, elements: !1536)
!1536 = !{!1537, !1585, !1598, !1610, !1611, !1623, !1624, !1628, !1629, !1630, !1631, !1632}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1535, file: !1446, line: 41, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1539, line: 144, baseType: !1540)
!1539 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1539, line: 100, size: 896, elements: !1542)
!1542 = !{!1543, !1549, !1554, !1559, !1561, !1562, !1563, !1564, !1565, !1566, !1571, !1573, !1574, !1579, !1584}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1541, file: !1539, line: 102, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1539, line: 52, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1548, !1379}
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1539, line: 47, baseType: !7)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1541, file: !1539, line: 105, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1539, line: 59, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!683, !1379, !1379}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1541, file: !1539, line: 108, baseType: !1555, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1539, line: 63, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !687}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1541, file: !1539, line: 111, baseType: !1560, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1541, file: !1539, line: 114, baseType: !1165, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1541, file: !1539, line: 117, baseType: !1165, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1541, file: !1539, line: 120, baseType: !1165, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1541, file: !1539, line: 124, baseType: !7, size: 32, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1541, file: !1539, line: 128, baseType: !7, size: 32, offset: 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1541, file: !1539, line: 131, baseType: !1567, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1539, line: 75, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!687, !1165, !1165}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1541, file: !1539, line: 132, baseType: !1572, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1539, line: 78, baseType: !1556)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1541, file: !1539, line: 135, baseType: !687, size: 64, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1541, file: !1539, line: 136, baseType: !1575, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1539, line: 82, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!687, !687, !1165, !1165}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1541, file: !1539, line: 137, baseType: !1580, size: 64, offset: 768)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1539, line: 83, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !687, !687}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1541, file: !1539, line: 141, baseType: !7, size: 32, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1535, file: !1446, line: 48, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !602, line: 35, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !602, line: 35, size: 128, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1588, file: !602, line: 35, baseType: !1591, size: 128)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !602, line: 33, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !602, line: 33, size: 128, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1592, file: !602, line: 33, baseType: !7, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1592, file: !602, line: 33, baseType: !7, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1592, file: !602, line: 33, baseType: !1597, size: 64, offset: 64)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 64, elements: !794)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1535, file: !1446, line: 51, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !318, line: 183, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !318, line: 183, size: 128, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1601, file: !318, line: 183, baseType: !1604, size: 128)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !318, line: 182, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !318, line: 182, size: 128, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1605, file: !318, line: 182, baseType: !7, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1605, file: !318, line: 182, baseType: !7, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1605, file: !318, line: 182, baseType: !1073, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1535, file: !1446, line: 54, baseType: !695, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1535, file: !1446, line: 57, baseType: !1612, size: 128, offset: 256)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1613, line: 31, size: 128, elements: !1614)
!1613 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1612, file: !1613, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1612, file: !1613, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1612, file: !1613, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1612, file: !1613, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1612, file: !1613, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1612, file: !1613, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1612, file: !1613, line: 56, baseType: !1622, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !696, line: 47, baseType: !922)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1535, file: !1446, line: 60, baseType: !1612, size: 128, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1535, file: !1446, line: 64, baseType: !1625, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1627, line: 33, flags: DIFlagFwdDecl)
!1627 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1535, file: !1446, line: 67, baseType: !695, size: 64, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1535, file: !1446, line: 73, baseType: !1538, size: 64, offset: 640)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1535, file: !1446, line: 77, baseType: !1622, size: 64, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1535, file: !1446, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1535, file: !1446, line: 82, baseType: !1633, size: 320, offset: 832)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1050, line: 62, size: 320, elements: !1634)
!1634 = !{!1635, !1641, !1642, !1643, !1644, !1645}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1633, file: !1050, line: 63, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1050, line: 56, size: 128, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1637, file: !1050, line: 57, baseType: !1636, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1637, file: !1050, line: 58, baseType: !793, size: 8, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1633, file: !1050, line: 64, baseType: !7, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1633, file: !1050, line: 66, baseType: !7, size: 32, offset: 96)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1633, file: !1050, line: 68, baseType: !682, size: 8, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1633, file: !1050, line: 70, baseType: !1048, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1633, file: !1050, line: 71, baseType: !1056, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1495, file: !1496, line: 476, baseType: !1647, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !513, line: 187, size: 256, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1648, file: !513, line: 189, baseType: !683, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1648, file: !513, line: 192, baseType: !1250, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1648, file: !513, line: 197, baseType: !1538, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1648, file: !513, line: 200, baseType: !1235, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1495, file: !1496, line: 479, baseType: !1538, size: 64, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1495, file: !1496, line: 484, baseType: !695, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1495, file: !1496, line: 488, baseType: !695, size: 64, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1495, file: !1496, line: 493, baseType: !695, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1495, file: !1496, line: 496, baseType: !695, size: 64, offset: 576)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1495, file: !1496, line: 501, baseType: !1660, size: 64, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !537, line: 2355, size: 576, elements: !1662)
!1662 = !{!1663, !1666, !1667, !1668, !1669, !1671, !1672, !1677, !1678, !1679, !1680, !1681, !1682}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1661, file: !537, line: 2356, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !537, line: 2356, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1661, file: !537, line: 2357, baseType: !688, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1661, file: !537, line: 2358, baseType: !683, size: 32, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1661, file: !537, line: 2359, baseType: !683, size: 32, offset: 160)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1661, file: !537, line: 2360, baseType: !1670, size: 128, offset: 192)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 128, elements: !962)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1661, file: !537, line: 2364, baseType: !683, size: 32, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1661, file: !537, line: 2367, baseType: !1673, size: 128, offset: 384)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !537, line: 2349, size: 128, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1673, file: !537, line: 2351, baseType: !870, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1673, file: !537, line: 2352, baseType: !751, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1661, file: !537, line: 2371, baseType: !536, size: 32, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1661, file: !537, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1661, file: !537, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1661, file: !537, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1661, file: !537, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1661, file: !537, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1495, file: !1496, line: 504, baseType: !1684, size: 64, offset: 704)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1496, line: 504, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1495, file: !1496, line: 507, baseType: !1538, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1495, file: !1496, line: 510, baseType: !683, size: 32, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1495, file: !1496, line: 513, baseType: !683, size: 32, offset: 864)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1495, file: !1496, line: 516, baseType: !820, size: 32, offset: 896)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1495, file: !1496, line: 519, baseType: !820, size: 32, offset: 928)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1495, file: !1496, line: 522, baseType: !7, size: 32, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1495, file: !1496, line: 523, baseType: !7, size: 32, offset: 992)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1495, file: !1496, line: 528, baseType: !688, size: 64, offset: 1024)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1495, file: !1496, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1495, file: !1496, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1495, file: !1496, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1495, file: !1496, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1495, file: !1496, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1495, file: !1496, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1495, file: !1496, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1495, file: !1496, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1495, file: !1496, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1495, file: !1496, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1495, file: !1496, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1495, file: !1496, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1495, file: !1496, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1495, file: !1496, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1495, file: !1496, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1495, file: !1496, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1490, file: !318, line: 3254, baseType: !695, size: 64, offset: 1536)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1490, file: !318, line: 3257, baseType: !695, size: 64, offset: 1600)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1490, file: !318, line: 3258, baseType: !695, size: 64, offset: 1664)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1490, file: !318, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1490, file: !318, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1490, file: !318, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1490, file: !318, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1490, file: !318, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1490, file: !318, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1490, file: !318, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1490, file: !318, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1490, file: !318, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1490, file: !318, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1490, file: !318, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1490, file: !318, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1490, file: !318, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1490, file: !318, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1490, file: !318, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1490, file: !318, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1490, file: !318, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1490, file: !318, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !318, line: 3394, baseType: !1732, size: 1344)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !318, line: 2279, size: 1344, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1732, file: !318, line: 2280, baseType: !734, size: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1732, file: !318, line: 2281, baseType: !695, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1732, file: !318, line: 2282, baseType: !695, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1732, file: !318, line: 2283, baseType: !695, size: 64, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1732, file: !318, line: 2284, baseType: !695, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1732, file: !318, line: 2285, baseType: !7, size: 32, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1732, file: !318, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1732, file: !318, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1732, file: !318, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1732, file: !318, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1732, file: !318, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1732, file: !318, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1732, file: !318, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1732, file: !318, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1732, file: !318, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1732, file: !318, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1732, file: !318, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1732, file: !318, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1732, file: !318, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1732, file: !318, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1732, file: !318, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1732, file: !318, line: 2305, baseType: !7, size: 32, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1732, file: !318, line: 2306, baseType: !1329, size: 32, offset: 544)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1732, file: !318, line: 2307, baseType: !695, size: 64, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1732, file: !318, line: 2308, baseType: !695, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1732, file: !318, line: 2314, baseType: !1760, size: 64, offset: 704)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !318, line: 2309, size: 64, elements: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1760, file: !318, line: 2310, baseType: !683, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1760, file: !318, line: 2311, baseType: !688, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1760, file: !318, line: 2312, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !318, line: 2277, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1732, file: !318, line: 2315, baseType: !695, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1732, file: !318, line: 2316, baseType: !695, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1732, file: !318, line: 2317, baseType: !695, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1732, file: !318, line: 2318, baseType: !695, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1732, file: !318, line: 2319, baseType: !695, size: 64, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1732, file: !318, line: 2320, baseType: !695, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1732, file: !318, line: 2321, baseType: !695, size: 64, offset: 1152)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1732, file: !318, line: 2322, baseType: !695, size: 64, offset: 1216)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1732, file: !318, line: 2324, baseType: !1776, size: 64, offset: 1280)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !318, line: 2324, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !698, file: !318, line: 3395, baseType: !1779, size: 320)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !318, line: 1469, size: 320, elements: !1780)
!1780 = !{!1781, !1782, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1779, file: !318, line: 1470, baseType: !734, size: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1779, file: !318, line: 1471, baseType: !695, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1779, file: !318, line: 1472, baseType: !695, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !698, file: !318, line: 3396, baseType: !1785, size: 320)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !318, line: 1482, size: 320, elements: !1786)
!1786 = !{!1787, !1788, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1785, file: !318, line: 1483, baseType: !734, size: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1785, file: !318, line: 1484, baseType: !683, size: 32, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1785, file: !318, line: 1485, baseType: !1073, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !698, file: !318, line: 3397, baseType: !1791, size: 384)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !318, line: 1829, size: 384, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1791, file: !318, line: 1830, baseType: !734, size: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1791, file: !318, line: 1831, baseType: !820, size: 32, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1791, file: !318, line: 1832, baseType: !695, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1791, file: !318, line: 1835, baseType: !1073, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !698, file: !318, line: 3398, baseType: !1798, size: 704)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !318, line: 1898, size: 704, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1809}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1798, file: !318, line: 1899, baseType: !734, size: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1798, file: !318, line: 1902, baseType: !695, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1798, file: !318, line: 1905, baseType: !1019, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1798, file: !318, line: 1908, baseType: !7, size: 32, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1798, file: !318, line: 1911, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1446, line: 117, size: 128, elements: !1807)
!1807 = !{!1808}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1806, file: !1446, line: 120, baseType: !1612, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1798, file: !318, line: 1914, baseType: !1061, size: 256, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !698, file: !318, line: 3399, baseType: !1811, size: 704)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !318, line: 2008, size: 704, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1811, file: !318, line: 2009, baseType: !734, size: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1811, file: !318, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1811, file: !318, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1811, file: !318, line: 2014, baseType: !820, size: 32, offset: 224)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1811, file: !318, line: 2016, baseType: !695, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1811, file: !318, line: 2017, baseType: !1599, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1811, file: !318, line: 2019, baseType: !695, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1811, file: !318, line: 2020, baseType: !695, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1811, file: !318, line: 2021, baseType: !695, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1811, file: !318, line: 2022, baseType: !695, size: 64, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1811, file: !318, line: 2023, baseType: !695, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !698, file: !318, line: 3400, baseType: !1825, size: 832)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !318, line: 2430, size: 832, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1825, file: !318, line: 2431, baseType: !734, size: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1825, file: !318, line: 2433, baseType: !695, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1825, file: !318, line: 2434, baseType: !695, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1825, file: !318, line: 2435, baseType: !695, size: 64, offset: 320)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1825, file: !318, line: 2436, baseType: !695, size: 64, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1825, file: !318, line: 2437, baseType: !1599, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1825, file: !318, line: 2438, baseType: !695, size: 64, offset: 512)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1825, file: !318, line: 2440, baseType: !695, size: 64, offset: 576)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1825, file: !318, line: 2441, baseType: !695, size: 64, offset: 640)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1825, file: !318, line: 2443, baseType: !1837, size: 128, offset: 704)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !318, line: 182, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !318, line: 182, size: 128, elements: !1839)
!1839 = !{!1840}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1838, file: !318, line: 182, baseType: !1604, size: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !698, file: !318, line: 3401, baseType: !1842, size: 320)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !318, line: 3327, size: 320, elements: !1843)
!1843 = !{!1844, !1845, !1852}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1842, file: !318, line: 3329, baseType: !734, size: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1842, file: !318, line: 3330, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !318, line: 3320, size: 192, elements: !1848)
!1848 = !{!1849, !1850, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1847, file: !318, line: 3322, baseType: !1846, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1847, file: !318, line: 3323, baseType: !1846, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1847, file: !318, line: 3324, baseType: !695, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1842, file: !318, line: 3331, baseType: !1846, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !698, file: !318, line: 3402, baseType: !1854, size: 256)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !318, line: 1540, size: 256, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1854, file: !318, line: 1541, baseType: !734, size: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1854, file: !318, line: 1542, baseType: !1858, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !318, line: 1538, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !318, line: 1538, size: 192, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1860, file: !318, line: 1538, baseType: !1863, size: 192)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !318, line: 1537, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !318, line: 1537, size: 192, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1864, file: !318, line: 1537, baseType: !7, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1864, file: !318, line: 1537, baseType: !7, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1864, file: !318, line: 1537, baseType: !1869, size: 128, offset: 64)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 128, elements: !794)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !318, line: 1535, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !318, line: 1532, size: 128, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1871, file: !318, line: 1533, baseType: !695, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1871, file: !318, line: 1534, baseType: !695, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !698, file: !318, line: 3403, baseType: !1876, size: 512)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !318, line: 1938, size: 512, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1887, !1888, !1889}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1876, file: !318, line: 1939, baseType: !734, size: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1876, file: !318, line: 1940, baseType: !820, size: 32, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1876, file: !318, line: 1941, baseType: !541, size: 32, offset: 224)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1876, file: !318, line: 1946, baseType: !1882, size: 32, offset: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !318, line: 1942, size: 32, elements: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1882, file: !318, line: 1943, baseType: !559, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1882, file: !318, line: 1944, baseType: !566, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1882, file: !318, line: 1945, baseType: !317, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1876, file: !318, line: 1950, baseType: !1009, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1876, file: !318, line: 1951, baseType: !1009, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1876, file: !318, line: 1953, baseType: !1073, size: 64, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !698, file: !318, line: 3404, baseType: !1891, size: 1664)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !318, line: 3337, size: 1664, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1891, file: !318, line: 3338, baseType: !734, size: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1891, file: !318, line: 3341, baseType: !1895, size: 1472, offset: 192)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1896, line: 410, size: 1472, elements: !1897)
!1896 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1895, file: !1896, line: 412, baseType: !683, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1895, file: !1896, line: 413, baseType: !683, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1895, file: !1896, line: 414, baseType: !683, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1895, file: !1896, line: 415, baseType: !683, size: 32, offset: 96)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1895, file: !1896, line: 416, baseType: !683, size: 32, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1895, file: !1896, line: 417, baseType: !683, size: 32, offset: 160)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1895, file: !1896, line: 418, baseType: !682, size: 8, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1895, file: !1896, line: 419, baseType: !682, size: 8, offset: 200)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1895, file: !1896, line: 420, baseType: !1907, size: 8, offset: 208)
!1907 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1895, file: !1896, line: 421, baseType: !1907, size: 8, offset: 216)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1895, file: !1896, line: 422, baseType: !1907, size: 8, offset: 224)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1895, file: !1896, line: 423, baseType: !1907, size: 8, offset: 232)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1895, file: !1896, line: 424, baseType: !1907, size: 8, offset: 240)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1895, file: !1896, line: 425, baseType: !1907, size: 8, offset: 248)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1895, file: !1896, line: 426, baseType: !1907, size: 8, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1895, file: !1896, line: 427, baseType: !1907, size: 8, offset: 264)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1895, file: !1896, line: 428, baseType: !1907, size: 8, offset: 272)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1895, file: !1896, line: 429, baseType: !1907, size: 8, offset: 280)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1895, file: !1896, line: 430, baseType: !1907, size: 8, offset: 288)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1895, file: !1896, line: 431, baseType: !1907, size: 8, offset: 296)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1895, file: !1896, line: 432, baseType: !1907, size: 8, offset: 304)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1895, file: !1896, line: 433, baseType: !1907, size: 8, offset: 312)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1895, file: !1896, line: 434, baseType: !1907, size: 8, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1895, file: !1896, line: 435, baseType: !1907, size: 8, offset: 328)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1895, file: !1896, line: 436, baseType: !1907, size: 8, offset: 336)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1895, file: !1896, line: 437, baseType: !1907, size: 8, offset: 344)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1895, file: !1896, line: 438, baseType: !1907, size: 8, offset: 352)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1895, file: !1896, line: 439, baseType: !1907, size: 8, offset: 360)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1895, file: !1896, line: 440, baseType: !1907, size: 8, offset: 368)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1895, file: !1896, line: 441, baseType: !1907, size: 8, offset: 376)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1895, file: !1896, line: 442, baseType: !1907, size: 8, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1895, file: !1896, line: 443, baseType: !1907, size: 8, offset: 392)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1895, file: !1896, line: 444, baseType: !1907, size: 8, offset: 400)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1895, file: !1896, line: 445, baseType: !1907, size: 8, offset: 408)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1895, file: !1896, line: 446, baseType: !1907, size: 8, offset: 416)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1895, file: !1896, line: 447, baseType: !1907, size: 8, offset: 424)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1895, file: !1896, line: 448, baseType: !1907, size: 8, offset: 432)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1895, file: !1896, line: 449, baseType: !1907, size: 8, offset: 440)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1895, file: !1896, line: 450, baseType: !1907, size: 8, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1895, file: !1896, line: 451, baseType: !1907, size: 8, offset: 456)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1895, file: !1896, line: 452, baseType: !1907, size: 8, offset: 464)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1895, file: !1896, line: 453, baseType: !1907, size: 8, offset: 472)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1895, file: !1896, line: 454, baseType: !1907, size: 8, offset: 480)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1895, file: !1896, line: 455, baseType: !1907, size: 8, offset: 488)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1895, file: !1896, line: 456, baseType: !1907, size: 8, offset: 496)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1895, file: !1896, line: 457, baseType: !1907, size: 8, offset: 504)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1895, file: !1896, line: 458, baseType: !1907, size: 8, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1895, file: !1896, line: 459, baseType: !1907, size: 8, offset: 520)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1895, file: !1896, line: 460, baseType: !1907, size: 8, offset: 528)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1895, file: !1896, line: 461, baseType: !1907, size: 8, offset: 536)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1895, file: !1896, line: 462, baseType: !1907, size: 8, offset: 544)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1895, file: !1896, line: 463, baseType: !1907, size: 8, offset: 552)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1895, file: !1896, line: 464, baseType: !1907, size: 8, offset: 560)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1895, file: !1896, line: 465, baseType: !1907, size: 8, offset: 568)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1895, file: !1896, line: 466, baseType: !1907, size: 8, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1895, file: !1896, line: 467, baseType: !1907, size: 8, offset: 584)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1895, file: !1896, line: 468, baseType: !1907, size: 8, offset: 592)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1895, file: !1896, line: 469, baseType: !1907, size: 8, offset: 600)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1895, file: !1896, line: 470, baseType: !1907, size: 8, offset: 608)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1895, file: !1896, line: 471, baseType: !1907, size: 8, offset: 616)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1895, file: !1896, line: 472, baseType: !1907, size: 8, offset: 624)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1895, file: !1896, line: 473, baseType: !1907, size: 8, offset: 632)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1895, file: !1896, line: 474, baseType: !1907, size: 8, offset: 640)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1895, file: !1896, line: 475, baseType: !1907, size: 8, offset: 648)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1895, file: !1896, line: 476, baseType: !1907, size: 8, offset: 656)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1895, file: !1896, line: 477, baseType: !1907, size: 8, offset: 664)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1895, file: !1896, line: 478, baseType: !1907, size: 8, offset: 672)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1895, file: !1896, line: 479, baseType: !1907, size: 8, offset: 680)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1895, file: !1896, line: 480, baseType: !1907, size: 8, offset: 688)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1895, file: !1896, line: 481, baseType: !1907, size: 8, offset: 696)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1895, file: !1896, line: 482, baseType: !1907, size: 8, offset: 704)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1895, file: !1896, line: 483, baseType: !1907, size: 8, offset: 712)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1895, file: !1896, line: 484, baseType: !1907, size: 8, offset: 720)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1895, file: !1896, line: 485, baseType: !1907, size: 8, offset: 728)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1895, file: !1896, line: 486, baseType: !1907, size: 8, offset: 736)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1895, file: !1896, line: 487, baseType: !1907, size: 8, offset: 744)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1895, file: !1896, line: 488, baseType: !1907, size: 8, offset: 752)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1895, file: !1896, line: 489, baseType: !1907, size: 8, offset: 760)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1895, file: !1896, line: 490, baseType: !1907, size: 8, offset: 768)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1895, file: !1896, line: 491, baseType: !1907, size: 8, offset: 776)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1895, file: !1896, line: 492, baseType: !1907, size: 8, offset: 784)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1895, file: !1896, line: 493, baseType: !1907, size: 8, offset: 792)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1895, file: !1896, line: 494, baseType: !1907, size: 8, offset: 800)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1895, file: !1896, line: 495, baseType: !1907, size: 8, offset: 808)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1895, file: !1896, line: 496, baseType: !1907, size: 8, offset: 816)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1895, file: !1896, line: 497, baseType: !1907, size: 8, offset: 824)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1895, file: !1896, line: 498, baseType: !1907, size: 8, offset: 832)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1895, file: !1896, line: 499, baseType: !1907, size: 8, offset: 840)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1895, file: !1896, line: 500, baseType: !1907, size: 8, offset: 848)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1895, file: !1896, line: 501, baseType: !1907, size: 8, offset: 856)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1895, file: !1896, line: 502, baseType: !1907, size: 8, offset: 864)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1895, file: !1896, line: 503, baseType: !1907, size: 8, offset: 872)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1895, file: !1896, line: 504, baseType: !1907, size: 8, offset: 880)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1895, file: !1896, line: 505, baseType: !1907, size: 8, offset: 888)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1895, file: !1896, line: 506, baseType: !1907, size: 8, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1895, file: !1896, line: 507, baseType: !1907, size: 8, offset: 904)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1895, file: !1896, line: 508, baseType: !1907, size: 8, offset: 912)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1895, file: !1896, line: 509, baseType: !1907, size: 8, offset: 920)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1895, file: !1896, line: 510, baseType: !1907, size: 8, offset: 928)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1895, file: !1896, line: 511, baseType: !1907, size: 8, offset: 936)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1895, file: !1896, line: 512, baseType: !1907, size: 8, offset: 944)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1895, file: !1896, line: 513, baseType: !1907, size: 8, offset: 952)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1895, file: !1896, line: 514, baseType: !1907, size: 8, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1895, file: !1896, line: 515, baseType: !1907, size: 8, offset: 968)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1895, file: !1896, line: 516, baseType: !1907, size: 8, offset: 976)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1895, file: !1896, line: 517, baseType: !1907, size: 8, offset: 984)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1895, file: !1896, line: 518, baseType: !1907, size: 8, offset: 992)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1895, file: !1896, line: 519, baseType: !1907, size: 8, offset: 1000)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1895, file: !1896, line: 520, baseType: !1907, size: 8, offset: 1008)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1895, file: !1896, line: 521, baseType: !1907, size: 8, offset: 1016)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1895, file: !1896, line: 522, baseType: !1907, size: 8, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1895, file: !1896, line: 523, baseType: !1907, size: 8, offset: 1032)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1895, file: !1896, line: 524, baseType: !1907, size: 8, offset: 1040)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1895, file: !1896, line: 525, baseType: !1907, size: 8, offset: 1048)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1895, file: !1896, line: 526, baseType: !1907, size: 8, offset: 1056)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1895, file: !1896, line: 527, baseType: !1907, size: 8, offset: 1064)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1895, file: !1896, line: 528, baseType: !1907, size: 8, offset: 1072)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1895, file: !1896, line: 529, baseType: !1907, size: 8, offset: 1080)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1895, file: !1896, line: 530, baseType: !1907, size: 8, offset: 1088)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1895, file: !1896, line: 531, baseType: !1907, size: 8, offset: 1096)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1895, file: !1896, line: 532, baseType: !1907, size: 8, offset: 1104)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1895, file: !1896, line: 533, baseType: !1907, size: 8, offset: 1112)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1895, file: !1896, line: 534, baseType: !1907, size: 8, offset: 1120)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1895, file: !1896, line: 535, baseType: !1907, size: 8, offset: 1128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1895, file: !1896, line: 536, baseType: !1907, size: 8, offset: 1136)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1895, file: !1896, line: 537, baseType: !1907, size: 8, offset: 1144)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1895, file: !1896, line: 538, baseType: !1907, size: 8, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1895, file: !1896, line: 539, baseType: !1907, size: 8, offset: 1160)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1895, file: !1896, line: 540, baseType: !1907, size: 8, offset: 1168)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1895, file: !1896, line: 541, baseType: !1907, size: 8, offset: 1176)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1895, file: !1896, line: 542, baseType: !1907, size: 8, offset: 1184)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1895, file: !1896, line: 543, baseType: !1907, size: 8, offset: 1192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1895, file: !1896, line: 544, baseType: !1907, size: 8, offset: 1200)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1895, file: !1896, line: 545, baseType: !1907, size: 8, offset: 1208)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1895, file: !1896, line: 546, baseType: !1907, size: 8, offset: 1216)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1895, file: !1896, line: 547, baseType: !1907, size: 8, offset: 1224)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1895, file: !1896, line: 548, baseType: !1907, size: 8, offset: 1232)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1895, file: !1896, line: 549, baseType: !1907, size: 8, offset: 1240)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1895, file: !1896, line: 550, baseType: !1907, size: 8, offset: 1248)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1895, file: !1896, line: 551, baseType: !1907, size: 8, offset: 1256)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1895, file: !1896, line: 552, baseType: !1907, size: 8, offset: 1264)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1895, file: !1896, line: 553, baseType: !1907, size: 8, offset: 1272)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1895, file: !1896, line: 554, baseType: !1907, size: 8, offset: 1280)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1895, file: !1896, line: 555, baseType: !1907, size: 8, offset: 1288)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1895, file: !1896, line: 556, baseType: !1907, size: 8, offset: 1296)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1895, file: !1896, line: 557, baseType: !1907, size: 8, offset: 1304)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1895, file: !1896, line: 558, baseType: !1907, size: 8, offset: 1312)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1895, file: !1896, line: 559, baseType: !1907, size: 8, offset: 1320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1895, file: !1896, line: 560, baseType: !1907, size: 8, offset: 1328)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1895, file: !1896, line: 561, baseType: !1907, size: 8, offset: 1336)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1895, file: !1896, line: 562, baseType: !1907, size: 8, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1895, file: !1896, line: 563, baseType: !1907, size: 8, offset: 1352)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1895, file: !1896, line: 564, baseType: !1907, size: 8, offset: 1360)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1895, file: !1896, line: 565, baseType: !1907, size: 8, offset: 1368)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1895, file: !1896, line: 566, baseType: !1907, size: 8, offset: 1376)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1895, file: !1896, line: 567, baseType: !1907, size: 8, offset: 1384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1895, file: !1896, line: 568, baseType: !1907, size: 8, offset: 1392)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1895, file: !1896, line: 569, baseType: !1907, size: 8, offset: 1400)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1895, file: !1896, line: 570, baseType: !1907, size: 8, offset: 1408)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1895, file: !1896, line: 571, baseType: !1907, size: 8, offset: 1416)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1895, file: !1896, line: 572, baseType: !1907, size: 8, offset: 1424)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1895, file: !1896, line: 573, baseType: !1907, size: 8, offset: 1432)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1895, file: !1896, line: 574, baseType: !1907, size: 8, offset: 1440)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !698, file: !318, line: 3405, baseType: !2063, size: 384)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !318, line: 3352, size: 384, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2063, file: !318, line: 3353, baseType: !734, size: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2063, file: !318, line: 3356, baseType: !2067, size: 192, offset: 192)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1896, line: 578, size: 192, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2067, file: !1896, line: 580, baseType: !683, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2067, file: !1896, line: 581, baseType: !683, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2067, file: !1896, line: 582, baseType: !683, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2067, file: !1896, line: 583, baseType: !683, size: 32, offset: 96)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2067, file: !1896, line: 584, baseType: !682, size: 8, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2067, file: !1896, line: 585, baseType: !682, size: 8, offset: 136)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2067, file: !1896, line: 586, baseType: !682, size: 8, offset: 144)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2067, file: !1896, line: 587, baseType: !682, size: 8, offset: 152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2067, file: !1896, line: 588, baseType: !682, size: 8, offset: 160)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2067, file: !1896, line: 589, baseType: !682, size: 8, offset: 168)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2067, file: !1896, line: 590, baseType: !682, size: 8, offset: 176)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !692, file: !574, line: 183, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !574, line: 314, size: 768, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2095, !2096, !2097, !2098, !2100, !2101, !2102}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2082, file: !574, line: 316, baseType: !1231, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2082, file: !574, line: 317, baseType: !691, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2082, file: !574, line: 318, baseType: !691, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2082, file: !574, line: 319, baseType: !2081, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2082, file: !574, line: 320, baseType: !2081, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2082, file: !574, line: 321, baseType: !2081, size: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2082, file: !574, line: 322, baseType: !2081, size: 64, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2082, file: !574, line: 323, baseType: !1019, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2082, file: !574, line: 324, baseType: !687, size: 64, offset: 512)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2082, file: !574, line: 327, baseType: !2094, size: 32, offset: 576)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !574, line: 312, baseType: !573)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2082, file: !574, line: 330, baseType: !7, size: 32, offset: 608)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2082, file: !574, line: 334, baseType: !683, size: 32, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2082, file: !574, line: 336, baseType: !683, size: 32, offset: 672)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2082, file: !574, line: 338, baseType: !2099, size: 16, offset: 704)
!2099 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2082, file: !574, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2082, file: !574, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2082, file: !574, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !692, file: !574, line: 184, baseType: !2081, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !574, line: 185, baseType: !691, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !692, file: !574, line: 186, baseType: !691, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !692, file: !574, line: 188, baseType: !691, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !692, file: !574, line: 190, baseType: !691, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !692, file: !574, line: 192, baseType: !691, size: 64, offset: 448)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !692, file: !574, line: 194, baseType: !691, size: 64, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !692, file: !574, line: 196, baseType: !691, size: 64, offset: 576)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !692, file: !574, line: 197, baseType: !691, size: 64, offset: 640)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !692, file: !574, line: 198, baseType: !691, size: 64, offset: 704)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !692, file: !574, line: 199, baseType: !691, size: 64, offset: 768)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !692, file: !574, line: 202, baseType: !691, size: 64, offset: 832)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !692, file: !574, line: 204, baseType: !691, size: 64, offset: 896)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !692, file: !574, line: 207, baseType: !1538, size: 64, offset: 960)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !692, file: !574, line: 209, baseType: !687, size: 64, offset: 1024)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !692, file: !574, line: 214, baseType: !2119, size: 64, offset: 1088)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1496, line: 177, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1496, line: 177, size: 128, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2121, file: !1496, line: 177, baseType: !2124, size: 128)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1496, line: 176, baseType: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1496, line: 176, size: 128, elements: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2125, file: !1496, line: 176, baseType: !7, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2125, file: !1496, line: 176, baseType: !7, size: 32, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2125, file: !1496, line: 176, baseType: !2130, size: 64, offset: 64)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2131, size: 64, elements: !794)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1496, line: 174, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !6, line: 173, size: 1152, elements: !2134)
!2134 = !{!2135, !2159, !2163, !2186, !2187, !2191, !2196, !2197, !2201}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2133, file: !6, line: 175, baseType: !2136, size: 640)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2137)
!2137 = !{!2138, !2139, !2140, !2144, !2148, !2150, !2151, !2152, !2154, !2155, !2156, !2157, !2158}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2136, file: !6, line: 117, baseType: !5, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2136, file: !6, line: 121, baseType: !688, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2136, file: !6, line: 125, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!682}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2136, file: !6, line: 130, baseType: !2145, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!7}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2136, file: !6, line: 133, baseType: !2149, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2136, file: !6, line: 136, baseType: !2149, size: 64, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2136, file: !6, line: 139, baseType: !683, size: 32, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2136, file: !6, line: 143, baseType: !2153, size: 32, offset: 416)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2136, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2136, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2136, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2136, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2136, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2133, file: !6, line: 179, baseType: !2160, size: 64, offset: 640)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2133, file: !6, line: 182, baseType: !2164, size: 64, offset: 704)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2167}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !574, line: 276, size: 192, elements: !2169)
!2169 = !{!2170, !2171, !2185}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2168, file: !574, line: 278, baseType: !1538, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2168, file: !574, line: 279, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !574, line: 272, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !574, line: 272, size: 128, elements: !2175)
!2175 = !{!2176}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2174, file: !574, line: 272, baseType: !2177, size: 128)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !574, line: 270, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !574, line: 270, size: 128, elements: !2179)
!2179 = !{!2180, !2181, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2178, file: !574, line: 270, baseType: !7, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2178, file: !574, line: 270, baseType: !7, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2178, file: !574, line: 270, baseType: !2183, size: 64, offset: 64)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2184, size: 64, elements: !794)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !574, line: 268, baseType: !691)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2168, file: !574, line: 280, baseType: !687, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2133, file: !6, line: 187, baseType: !2160, size: 64, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2133, file: !6, line: 188, baseType: !2188, size: 64, offset: 832)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !691}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2133, file: !6, line: 191, baseType: !2192, size: 64, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !691, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2133, file: !6, line: 195, baseType: !7, size: 32, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2133, file: !6, line: 196, baseType: !2198, size: 64, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!7, !691}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2133, file: !6, line: 197, baseType: !2202, size: 64, offset: 1088)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !574, line: 358, size: 320, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2206, file: !574, line: 359, baseType: !695, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2206, file: !574, line: 361, baseType: !2205, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2206, file: !574, line: 363, baseType: !2205, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2206, file: !574, line: 366, baseType: !2205, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2206, file: !574, line: 368, baseType: !683, size: 32, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2206, file: !574, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2206, file: !574, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2206, file: !574, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2206, file: !574, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2206, file: !574, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2206, file: !574, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2206, file: !574, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !692, file: !574, line: 216, baseType: !2221, size: 320, offset: 1152)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !574, line: 88, size: 320, elements: !2222)
!2222 = !{!2223, !2258, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2221, file: !574, line: 90, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !667, line: 540, size: 512, elements: !2226)
!2226 = !{!2227, !2240, !2241, !2253, !2254, !2255, !2256, !2257}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !2225, file: !667, line: 543, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !667, line: 502, size: 960, elements: !2230)
!2230 = !{!2231, !2239}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !2229, file: !667, line: 505, baseType: !2232, size: 896)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2233, size: 896, elements: !2237)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !667, line: 473, size: 128, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !2233, file: !667, line: 476, baseType: !1054, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2233, file: !667, line: 479, baseType: !7, size: 32, offset: 64)
!2237 = !{!2238}
!2238 = !DISubrange(count: 7)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !2229, file: !667, line: 509, baseType: !695, size: 64, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !2225, file: !667, line: 547, baseType: !2228, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !2225, file: !667, line: 550, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !667, line: 470, baseType: !2243)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !667, line: 461, size: 128, elements: !2245)
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2244, file: !667, line: 464, baseType: !1625, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2244, file: !667, line: 467, baseType: !2248, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !574, line: 271, baseType: !2250)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !574, line: 271, size: 128, elements: !2251)
!2251 = !{!2252}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2250, file: !574, line: 271, baseType: !2177, size: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !2225, file: !667, line: 553, baseType: !1538, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !2225, file: !667, line: 556, baseType: !688, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !2225, file: !667, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !2225, file: !667, line: 562, baseType: !1538, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !2225, file: !667, line: 565, baseType: !1538, size: 64, offset: 448)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2221, file: !574, line: 92, baseType: !2259, size: 192, offset: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !574, line: 57, size: 192, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2259, file: !574, line: 60, baseType: !751, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2259, file: !574, line: 63, baseType: !683, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2259, file: !574, line: 65, baseType: !683, size: 32, offset: 96)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2259, file: !574, line: 67, baseType: !683, size: 32, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2259, file: !574, line: 69, baseType: !683, size: 32, offset: 160)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2221, file: !574, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2221, file: !574, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2221, file: !574, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2221, file: !574, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2221, file: !574, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2221, file: !574, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2221, file: !574, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2221, file: !574, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !692, file: !574, line: 217, baseType: !2275, size: 320, offset: 1472)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !574, line: 126, size: 320, elements: !2276)
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2275, file: !574, line: 128, baseType: !751, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2275, file: !574, line: 130, baseType: !751, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2275, file: !574, line: 134, baseType: !691, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2275, file: !574, line: 137, baseType: !683, size: 32, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2275, file: !574, line: 138, baseType: !683, size: 32, offset: 224)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2275, file: !574, line: 141, baseType: !683, size: 32, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2275, file: !574, line: 144, baseType: !682, size: 8, offset: 288)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !692, file: !574, line: 218, baseType: !2285, size: 32, offset: 1792)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !574, line: 150, size: 32, elements: !2286)
!2286 = !{!2287}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2285, file: !574, line: 151, baseType: !7, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !692, file: !574, line: 219, baseType: !2289, size: 192, offset: 1856)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !574, line: 171, size: 192, elements: !2290)
!2290 = !{!2291, !2312, !2313}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2289, file: !574, line: 173, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !574, line: 169, baseType: !2294)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !574, line: 169, size: 128, elements: !2295)
!2295 = !{!2296}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2294, file: !574, line: 169, baseType: !2297, size: 128)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !574, line: 168, baseType: !2298)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !574, line: 168, size: 128, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2298, file: !574, line: 168, baseType: !7, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2298, file: !574, line: 168, baseType: !7, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2298, file: !574, line: 168, baseType: !2303, size: 64, offset: 64)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2304, size: 64, elements: !794)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !574, line: 167, baseType: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !574, line: 156, size: 192, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2306, file: !574, line: 159, baseType: !695, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2306, file: !574, line: 161, baseType: !695, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2306, file: !574, line: 163, baseType: !682, size: 8, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2306, file: !574, line: 165, baseType: !682, size: 8, offset: 136)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2289, file: !574, line: 174, baseType: !1622, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2289, file: !574, line: 175, baseType: !1622, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !692, file: !574, line: 220, baseType: !2315, size: 256, offset: 2048)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !574, line: 74, size: 256, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2315, file: !574, line: 76, baseType: !751, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2315, file: !574, line: 77, baseType: !751, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2315, file: !574, line: 78, baseType: !695, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2315, file: !574, line: 79, baseType: !682, size: 8, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2315, file: !574, line: 80, baseType: !682, size: 8, offset: 200)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2315, file: !574, line: 82, baseType: !682, size: 8, offset: 208)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !574, line: 223, baseType: !1231, size: 64, offset: 2304)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !692, file: !574, line: 225, baseType: !683, size: 32, offset: 2368)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !692, file: !574, line: 227, baseType: !683, size: 32, offset: 2400)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !692, file: !574, line: 231, baseType: !683, size: 32, offset: 2432)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !692, file: !574, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !692, file: !574, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !692, file: !574, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !692, file: !574, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !692, file: !574, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !692, file: !574, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !692, file: !574, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !692, file: !574, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !692, file: !574, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !692, file: !574, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_dfs_info", file: !2339, line: 26, size: 256, elements: !2340)
!2339 = !DIFile(filename: "./ipa-utils.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dfn_number", scope: !2338, file: !2339, line: 27, baseType: !683, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "low_link", scope: !2338, file: !2339, line: 28, baseType: !683, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "new_node", scope: !2338, file: !2339, line: 29, baseType: !682, size: 8, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "on_stack", scope: !2338, file: !2339, line: 30, baseType: !682, size: 8, offset: 72)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "next_cycle", scope: !2338, file: !2339, line: 31, baseType: !691, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2338, file: !2339, line: 32, baseType: !687, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "funct_state_d", file: !3, line: 73, size: 96, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pure_const_state", scope: !2348, file: !3, line: 76, baseType: !596, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "state_previously_known", scope: !2348, file: !3, line: 78, baseType: !596, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "looping_previously_known", scope: !2348, file: !3, line: 79, baseType: !682, size: 8, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "looping", scope: !2348, file: !3, line: 87, baseType: !682, size: 8, offset: 72)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw", scope: !2348, file: !3, line: 89, baseType: !682, size: 8, offset: 80)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_funct_state_heap", file: !3, line: 101, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_funct_state_heap", file: !3, line: 101, size: 128, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2357, file: !3, line: 101, baseType: !2360, size: 128)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_funct_state_base", file: !3, line: 100, baseType: !2361)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_funct_state_base", file: !3, line: 100, size: 128, elements: !2362)
!2362 = !{!2363, !2364, !2365}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2361, file: !3, line: 100, baseType: !7, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2361, file: !3, line: 100, baseType: !7, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2361, file: !3, line: 100, baseType: !2366, size: 64, offset: 64)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2367, size: 64, elements: !794)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "funct_state", file: !3, line: 92, baseType: !2347)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !2372, line: 32, baseType: !2373)
!2372 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !2372, line: 32, size: 96, elements: !2374)
!2374 = !{!2375}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2373, file: !2372, line: 32, baseType: !2376, size: 96)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !2372, line: 31, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !2372, line: 31, size: 96, elements: !2378)
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2377, file: !2372, line: 31, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2377, file: !2372, line: 31, baseType: !7, size: 32, offset: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2377, file: !2372, line: 31, baseType: !2382, size: 32, offset: 64)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 32, elements: !794)
!2383 = !{!0, !2384, !2389, !2393, !2397, !2399, !2401, !2405}
!2384 = !DIGlobalVariableExpression(var: !2385, expr: !DIExpression())
!2385 = distinct !DIGlobalVariable(name: "pass_local_pure_const", scope: !2, file: !3, line: 1209, type: !2386, isLocal: false, isDefinition: true)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2387)
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2386, file: !6, line: 158, baseType: !2136, size: 640)
!2389 = !DIGlobalVariableExpression(var: !2390, expr: !DIExpression())
!2390 = distinct !DIGlobalVariable(name: "function_insertion_hook_holder", scope: !2, file: !3, line: 105, type: !2391, isLocal: true, isDefinition: true)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_hook_list", file: !574, line: 520, flags: DIFlagFwdDecl)
!2393 = !DIGlobalVariableExpression(var: !2394, expr: !DIExpression())
!2394 = distinct !DIGlobalVariable(name: "node_duplication_hook_holder", scope: !2, file: !3, line: 106, type: !2395, isLocal: true, isDefinition: true)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_2node_hook_list", file: !574, line: 522, flags: DIFlagFwdDecl)
!2397 = !DIGlobalVariableExpression(var: !2398, expr: !DIExpression())
!2398 = distinct !DIGlobalVariable(name: "node_removal_hook_holder", scope: !2, file: !3, line: 107, type: !2391, isLocal: true, isDefinition: true)
!2399 = !DIGlobalVariableExpression(var: !2400, expr: !DIExpression())
!2400 = distinct !DIGlobalVariable(name: "funct_state_vec", scope: !2, file: !3, line: 102, type: !2355, isLocal: true, isDefinition: true)
!2401 = !DIGlobalVariableExpression(var: !2402, expr: !DIExpression())
!2402 = distinct !DIGlobalVariable(name: "init_p", scope: !2403, file: !3, line: 643, type: !682, isLocal: true, isDefinition: true)
!2403 = distinct !DISubprogram(name: "register_hooks", scope: !3, file: !3, line: 641, type: !2161, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2404)
!2404 = !{}
!2405 = !DIGlobalVariableExpression(var: !2406, expr: !DIExpression())
!2406 = distinct !DIGlobalVariable(name: "visited_nodes", scope: !2, file: !3, line: 59, type: !2407, isLocal: true, isDefinition: true)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !318, line: 5199, flags: DIFlagFwdDecl)
!2409 = !DIGlobalVariableExpression(var: !2402, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2410 = !{i32 2, !"Dwarf Version", i32 4}
!2411 = !{i32 2, !"Debug Info Version", i32 3}
!2412 = !{i32 1, !"wchar_size", i32 4}
!2413 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2414 = distinct !DISubprogram(name: "vprintf", scope: !2415, file: !2415, line: 39, type: !2416, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2415 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!683, !2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !688)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2421)
!2421 = !{!2422, !2423, !2424, !2425}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2420, file: !3, baseType: !7, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2420, file: !3, baseType: !7, size: 32, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2420, file: !3, baseType: !687, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2420, file: !3, baseType: !687, size: 64, offset: 128)
!2426 = !{!2427, !2428}
!2427 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2414, file: !2415, line: 39, type: !2418)
!2428 = !DILocalVariable(name: "__arg", arg: 2, scope: !2414, file: !2415, line: 39, type: !2419)
!2429 = !DILocation(line: 0, scope: !2414)
!2430 = !DILocation(line: 41, column: 20, scope: !2414)
!2431 = !DILocation(line: 41, column: 10, scope: !2414)
!2432 = !DILocation(line: 41, column: 3, scope: !2414)
!2433 = distinct !DISubprogram(name: "getchar", scope: !2415, file: !2415, line: 47, type: !2434, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2404)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!683}
!2436 = !DILocation(line: 49, column: 16, scope: !2433)
!2437 = !DILocation(line: 49, column: 10, scope: !2433)
!2438 = !DILocation(line: 49, column: 3, scope: !2433)
!2439 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2415, file: !2415, line: 56, type: !2440, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2492)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!683, !2442}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2444, line: 7, baseType: !2445)
!2444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2446, line: 49, size: 1728, elements: !2447)
!2446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2463, !2465, !2466, !2467, !2470, !2471, !2472, !2473, !2476, !2478, !2481, !2484, !2485, !2486, !2487, !2488}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2445, file: !2446, line: 51, baseType: !683, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2445, file: !2446, line: 54, baseType: !685, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2445, file: !2446, line: 55, baseType: !685, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2445, file: !2446, line: 56, baseType: !685, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2445, file: !2446, line: 57, baseType: !685, size: 64, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2445, file: !2446, line: 58, baseType: !685, size: 64, offset: 320)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2445, file: !2446, line: 59, baseType: !685, size: 64, offset: 384)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2445, file: !2446, line: 60, baseType: !685, size: 64, offset: 448)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2445, file: !2446, line: 61, baseType: !685, size: 64, offset: 512)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2445, file: !2446, line: 64, baseType: !685, size: 64, offset: 576)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2445, file: !2446, line: 65, baseType: !685, size: 64, offset: 640)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2445, file: !2446, line: 66, baseType: !685, size: 64, offset: 704)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2445, file: !2446, line: 68, baseType: !2461, size: 64, offset: 768)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2446, line: 36, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2445, file: !2446, line: 70, baseType: !2464, size: 64, offset: 832)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2445, file: !2446, line: 72, baseType: !683, size: 32, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2445, file: !2446, line: 73, baseType: !683, size: 32, offset: 928)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2445, file: !2446, line: 74, baseType: !2468, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2469, line: 152, baseType: !751)
!2469 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2445, file: !2446, line: 77, baseType: !2099, size: 16, offset: 1024)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2445, file: !2446, line: 78, baseType: !1907, size: 8, offset: 1040)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2445, file: !2446, line: 79, baseType: !793, size: 8, offset: 1048)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2445, file: !2446, line: 81, baseType: !2474, size: 64, offset: 1088)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2446, line: 43, baseType: null)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2445, file: !2446, line: 89, baseType: !2477, size: 64, offset: 1152)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2469, line: 153, baseType: !751)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2445, file: !2446, line: 91, baseType: !2479, size: 64, offset: 1216)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2446, line: 37, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2445, file: !2446, line: 92, baseType: !2482, size: 64, offset: 1280)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2446, line: 38, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2445, file: !2446, line: 93, baseType: !2464, size: 64, offset: 1344)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2445, file: !2446, line: 94, baseType: !687, size: 64, offset: 1408)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2445, file: !2446, line: 95, baseType: !1165, size: 64, offset: 1472)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2445, file: !2446, line: 96, baseType: !683, size: 32, offset: 1536)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2445, file: !2446, line: 98, baseType: !2489, size: 160, offset: 1568)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 160, elements: !2490)
!2490 = !{!2491}
!2491 = !DISubrange(count: 20)
!2492 = !{!2493}
!2493 = !DILocalVariable(name: "__fp", arg: 1, scope: !2439, file: !2415, line: 56, type: !2442)
!2494 = !DILocation(line: 0, scope: !2439)
!2495 = !DILocation(line: 58, column: 10, scope: !2439)
!2496 = !DILocation(line: 58, column: 3, scope: !2439)
!2497 = distinct !DISubprogram(name: "getc_unlocked", scope: !2415, file: !2415, line: 66, type: !2440, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "__fp", arg: 1, scope: !2497, file: !2415, line: 66, type: !2442)
!2500 = !DILocation(line: 0, scope: !2497)
!2501 = !DILocation(line: 68, column: 10, scope: !2497)
!2502 = !DILocation(line: 68, column: 3, scope: !2497)
!2503 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2415, file: !2415, line: 73, type: !2434, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2404)
!2504 = !DILocation(line: 75, column: 10, scope: !2503)
!2505 = !DILocation(line: 75, column: 3, scope: !2503)
!2506 = distinct !DISubprogram(name: "putchar", scope: !2415, file: !2415, line: 82, type: !2507, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!683, !683}
!2509 = !{!2510}
!2510 = !DILocalVariable(name: "__c", arg: 1, scope: !2506, file: !2415, line: 82, type: !683)
!2511 = !DILocation(line: 0, scope: !2506)
!2512 = !DILocation(line: 84, column: 21, scope: !2506)
!2513 = !DILocation(line: 84, column: 10, scope: !2506)
!2514 = !DILocation(line: 84, column: 3, scope: !2506)
!2515 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2415, file: !2415, line: 91, type: !2516, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!683, !683, !2442}
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "__c", arg: 1, scope: !2515, file: !2415, line: 91, type: !683)
!2520 = !DILocalVariable(name: "__stream", arg: 2, scope: !2515, file: !2415, line: 91, type: !2442)
!2521 = !DILocation(line: 0, scope: !2515)
!2522 = !DILocation(line: 93, column: 10, scope: !2515)
!2523 = !DILocation(line: 93, column: 3, scope: !2515)
!2524 = distinct !DISubprogram(name: "putc_unlocked", scope: !2415, file: !2415, line: 101, type: !2516, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2525)
!2525 = !{!2526, !2527}
!2526 = !DILocalVariable(name: "__c", arg: 1, scope: !2524, file: !2415, line: 101, type: !683)
!2527 = !DILocalVariable(name: "__stream", arg: 2, scope: !2524, file: !2415, line: 101, type: !2442)
!2528 = !DILocation(line: 0, scope: !2524)
!2529 = !DILocation(line: 103, column: 10, scope: !2524)
!2530 = !DILocation(line: 103, column: 3, scope: !2524)
!2531 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2415, file: !2415, line: 108, type: !2507, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2532 = !{!2533}
!2533 = !DILocalVariable(name: "__c", arg: 1, scope: !2531, file: !2415, line: 108, type: !683)
!2534 = !DILocation(line: 0, scope: !2531)
!2535 = !DILocation(line: 110, column: 10, scope: !2531)
!2536 = !DILocation(line: 110, column: 3, scope: !2531)
!2537 = distinct !DISubprogram(name: "getline", scope: !2415, file: !2415, line: 118, type: !2538, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2540, !684, !2541, !2442}
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2469, line: 193, baseType: !751)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!2542 = !{!2543, !2544, !2545}
!2543 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2537, file: !2415, line: 118, type: !684)
!2544 = !DILocalVariable(name: "__n", arg: 2, scope: !2537, file: !2415, line: 118, type: !2541)
!2545 = !DILocalVariable(name: "__stream", arg: 3, scope: !2537, file: !2415, line: 118, type: !2442)
!2546 = !DILocation(line: 0, scope: !2537)
!2547 = !DILocation(line: 120, column: 10, scope: !2537)
!2548 = !DILocation(line: 120, column: 3, scope: !2537)
!2549 = distinct !DISubprogram(name: "feof_unlocked", scope: !2415, file: !2415, line: 128, type: !2440, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "__stream", arg: 1, scope: !2549, file: !2415, line: 128, type: !2442)
!2552 = !DILocation(line: 0, scope: !2549)
!2553 = !DILocation(line: 130, column: 10, scope: !2549)
!2554 = !DILocation(line: 130, column: 3, scope: !2549)
!2555 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2415, file: !2415, line: 135, type: !2440, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2556)
!2556 = !{!2557}
!2557 = !DILocalVariable(name: "__stream", arg: 1, scope: !2555, file: !2415, line: 135, type: !2442)
!2558 = !DILocation(line: 0, scope: !2555)
!2559 = !DILocation(line: 137, column: 10, scope: !2555)
!2560 = !DILocation(line: 137, column: 3, scope: !2555)
!2561 = distinct !DISubprogram(name: "tolower", scope: !2562, file: !2562, line: 207, type: !2507, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2563)
!2562 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2563 = !{!2564}
!2564 = !DILocalVariable(name: "__c", arg: 1, scope: !2561, file: !2562, line: 207, type: !683)
!2565 = !DILocation(line: 0, scope: !2561)
!2566 = !DILocation(line: 209, column: 22, scope: !2561)
!2567 = !DILocation(line: 209, column: 39, scope: !2561)
!2568 = !DILocation(line: 209, column: 38, scope: !2561)
!2569 = !DILocation(line: 209, column: 37, scope: !2561)
!2570 = !DILocation(line: 209, column: 10, scope: !2561)
!2571 = !DILocation(line: 209, column: 3, scope: !2561)
!2572 = distinct !DISubprogram(name: "toupper", scope: !2562, file: !2562, line: 213, type: !2507, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2573)
!2573 = !{!2574}
!2574 = !DILocalVariable(name: "__c", arg: 1, scope: !2572, file: !2562, line: 213, type: !683)
!2575 = !DILocation(line: 0, scope: !2572)
!2576 = !DILocation(line: 215, column: 22, scope: !2572)
!2577 = !DILocation(line: 215, column: 39, scope: !2572)
!2578 = !DILocation(line: 215, column: 38, scope: !2572)
!2579 = !DILocation(line: 215, column: 37, scope: !2572)
!2580 = !DILocation(line: 215, column: 10, scope: !2572)
!2581 = !DILocation(line: 215, column: 3, scope: !2572)
!2582 = distinct !DISubprogram(name: "atoi", scope: !2583, file: !2583, line: 361, type: !2584, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2583 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!683, !688}
!2586 = !{!2587}
!2587 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2582, file: !2583, line: 361, type: !688)
!2588 = !DILocation(line: 0, scope: !2582)
!2589 = !DILocation(line: 363, column: 16, scope: !2582)
!2590 = !DILocation(line: 363, column: 10, scope: !2582)
!2591 = !DILocation(line: 363, column: 3, scope: !2582)
!2592 = distinct !DISubprogram(name: "atol", scope: !2583, file: !2583, line: 366, type: !2593, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!751, !688}
!2595 = !{!2596}
!2596 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2592, file: !2583, line: 366, type: !688)
!2597 = !DILocation(line: 0, scope: !2592)
!2598 = !DILocation(line: 368, column: 10, scope: !2592)
!2599 = !DILocation(line: 368, column: 3, scope: !2592)
!2600 = distinct !DISubprogram(name: "atoll", scope: !2583, file: !2583, line: 373, type: !2601, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2604)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!2603, !688}
!2603 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2604 = !{!2605}
!2605 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2600, file: !2583, line: 373, type: !688)
!2606 = !DILocation(line: 0, scope: !2600)
!2607 = !DILocation(line: 375, column: 10, scope: !2600)
!2608 = !DILocation(line: 375, column: 3, scope: !2600)
!2609 = distinct !DISubprogram(name: "bsearch", scope: !2610, file: !2610, line: 20, type: !2611, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2614)
!2610 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!687, !1379, !1379, !1165, !1165, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2583, line: 808, baseType: !1551)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624}
!2615 = !DILocalVariable(name: "__key", arg: 1, scope: !2609, file: !2610, line: 20, type: !1379)
!2616 = !DILocalVariable(name: "__base", arg: 2, scope: !2609, file: !2610, line: 20, type: !1379)
!2617 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2609, file: !2610, line: 20, type: !1165)
!2618 = !DILocalVariable(name: "__size", arg: 4, scope: !2609, file: !2610, line: 20, type: !1165)
!2619 = !DILocalVariable(name: "__compar", arg: 5, scope: !2609, file: !2610, line: 21, type: !2613)
!2620 = !DILocalVariable(name: "__l", scope: !2609, file: !2610, line: 23, type: !1165)
!2621 = !DILocalVariable(name: "__u", scope: !2609, file: !2610, line: 23, type: !1165)
!2622 = !DILocalVariable(name: "__idx", scope: !2609, file: !2610, line: 23, type: !1165)
!2623 = !DILocalVariable(name: "__p", scope: !2609, file: !2610, line: 24, type: !1379)
!2624 = !DILocalVariable(name: "__comparison", scope: !2609, file: !2610, line: 25, type: !683)
!2625 = !DILocation(line: 0, scope: !2609)
!2626 = !DILocation(line: 29, column: 3, scope: !2609)
!2627 = !DILocation(line: 27, column: 7, scope: !2609)
!2628 = !DILocation(line: 29, column: 14, scope: !2609)
!2629 = !DILocation(line: 31, column: 20, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2609, file: !2610, line: 30, column: 5)
!2631 = !DILocation(line: 31, column: 27, scope: !2630)
!2632 = !DILocation(line: 32, column: 56, scope: !2630)
!2633 = !DILocation(line: 32, column: 47, scope: !2630)
!2634 = !DILocation(line: 33, column: 22, scope: !2630)
!2635 = !DILocation(line: 34, column: 24, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2630, file: !2610, line: 34, column: 11)
!2637 = !DILocation(line: 34, column: 11, scope: !2630)
!2638 = !DILocation(line: 36, column: 29, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !2610, line: 36, column: 16)
!2640 = !DILocation(line: 36, column: 16, scope: !2636)
!2641 = !DILocation(line: 37, column: 14, scope: !2639)
!2642 = distinct !{!2642, !2626, !2643}
!2643 = !DILocation(line: 40, column: 5, scope: !2609)
!2644 = !DILocation(line: 43, column: 1, scope: !2609)
!2645 = distinct !DISubprogram(name: "atof", scope: !2646, file: !2646, line: 25, type: !2647, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2650)
!2646 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!2649, !688}
!2649 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2650 = !{!2651}
!2651 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2645, file: !2646, line: 25, type: !688)
!2652 = !DILocation(line: 0, scope: !2645)
!2653 = !DILocation(line: 27, column: 10, scope: !2645)
!2654 = !DILocation(line: 27, column: 3, scope: !2645)
!2655 = distinct !DISubprogram(name: "strtoimax", scope: !2656, file: !2656, line: 324, type: !2657, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2663)
!2656 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!2659, !2418, !2662, !683}
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2660, line: 101, baseType: !2661)
!2660 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2469, line: 72, baseType: !751)
!2662 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !684)
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "nptr", arg: 1, scope: !2655, file: !2656, line: 324, type: !2418)
!2665 = !DILocalVariable(name: "endptr", arg: 2, scope: !2655, file: !2656, line: 324, type: !2662)
!2666 = !DILocalVariable(name: "base", arg: 3, scope: !2655, file: !2656, line: 324, type: !683)
!2667 = !DILocation(line: 0, scope: !2655)
!2668 = !DILocation(line: 327, column: 10, scope: !2655)
!2669 = !DILocation(line: 327, column: 3, scope: !2655)
!2670 = distinct !DISubprogram(name: "strtoumax", scope: !2656, file: !2656, line: 336, type: !2671, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2675)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!2673, !2418, !2662, !683}
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2660, line: 102, baseType: !2674)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2469, line: 73, baseType: !749)
!2675 = !{!2676, !2677, !2678}
!2676 = !DILocalVariable(name: "nptr", arg: 1, scope: !2670, file: !2656, line: 336, type: !2418)
!2677 = !DILocalVariable(name: "endptr", arg: 2, scope: !2670, file: !2656, line: 336, type: !2662)
!2678 = !DILocalVariable(name: "base", arg: 3, scope: !2670, file: !2656, line: 336, type: !683)
!2679 = !DILocation(line: 0, scope: !2670)
!2680 = !DILocation(line: 339, column: 10, scope: !2670)
!2681 = !DILocation(line: 339, column: 3, scope: !2670)
!2682 = distinct !DISubprogram(name: "wcstoimax", scope: !2656, file: !2656, line: 348, type: !2683, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2692)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!2659, !2685, !2689, !683}
!2685 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2686)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2656, line: 34, baseType: !683)
!2689 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2690)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2692 = !{!2693, !2694, !2695}
!2693 = !DILocalVariable(name: "nptr", arg: 1, scope: !2682, file: !2656, line: 348, type: !2685)
!2694 = !DILocalVariable(name: "endptr", arg: 2, scope: !2682, file: !2656, line: 348, type: !2689)
!2695 = !DILocalVariable(name: "base", arg: 3, scope: !2682, file: !2656, line: 348, type: !683)
!2696 = !DILocation(line: 0, scope: !2682)
!2697 = !DILocation(line: 351, column: 10, scope: !2682)
!2698 = !DILocation(line: 351, column: 3, scope: !2682)
!2699 = distinct !DISubprogram(name: "wcstoumax", scope: !2656, file: !2656, line: 362, type: !2700, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!2673, !2685, !2689, !683}
!2702 = !{!2703, !2704, !2705}
!2703 = !DILocalVariable(name: "nptr", arg: 1, scope: !2699, file: !2656, line: 362, type: !2685)
!2704 = !DILocalVariable(name: "endptr", arg: 2, scope: !2699, file: !2656, line: 362, type: !2689)
!2705 = !DILocalVariable(name: "base", arg: 3, scope: !2699, file: !2656, line: 362, type: !683)
!2706 = !DILocation(line: 0, scope: !2699)
!2707 = !DILocation(line: 365, column: 10, scope: !2699)
!2708 = !DILocation(line: 365, column: 3, scope: !2699)
!2709 = distinct !DISubprogram(name: "stat", scope: !2710, file: !2710, line: 453, type: !2711, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2748)
!2710 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!683, !688, !2713}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2715, line: 46, size: 1152, elements: !2716)
!2715 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2716 = !{!2717, !2719, !2721, !2723, !2725, !2727, !2729, !2730, !2731, !2732, !2734, !2736, !2744, !2745, !2746}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2714, file: !2715, line: 48, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2469, line: 145, baseType: !749)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2714, file: !2715, line: 53, baseType: !2720, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2469, line: 148, baseType: !749)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2714, file: !2715, line: 61, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2469, line: 151, baseType: !749)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2714, file: !2715, line: 62, baseType: !2724, size: 32, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2469, line: 150, baseType: !7)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2714, file: !2715, line: 64, baseType: !2726, size: 32, offset: 224)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2469, line: 146, baseType: !7)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2714, file: !2715, line: 65, baseType: !2728, size: 32, offset: 256)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2469, line: 147, baseType: !7)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2714, file: !2715, line: 67, baseType: !683, size: 32, offset: 288)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2714, file: !2715, line: 69, baseType: !2718, size: 64, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2714, file: !2715, line: 74, baseType: !2468, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2714, file: !2715, line: 78, baseType: !2733, size: 64, offset: 448)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2469, line: 174, baseType: !751)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2714, file: !2715, line: 80, baseType: !2735, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2469, line: 179, baseType: !751)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2714, file: !2715, line: 91, baseType: !2737, size: 128, offset: 576)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2738, line: 10, size: 128, elements: !2739)
!2738 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2739 = !{!2740, !2742}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2737, file: !2738, line: 12, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2469, line: 160, baseType: !751)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2737, file: !2738, line: 16, baseType: !2743, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2469, line: 196, baseType: !751)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2714, file: !2715, line: 92, baseType: !2737, size: 128, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2714, file: !2715, line: 93, baseType: !2737, size: 128, offset: 832)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2714, file: !2715, line: 106, baseType: !2747, size: 192, offset: 960)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2743, size: 192, elements: !769)
!2748 = !{!2749, !2750}
!2749 = !DILocalVariable(name: "__path", arg: 1, scope: !2709, file: !2710, line: 453, type: !688)
!2750 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2709, file: !2710, line: 453, type: !2713)
!2751 = !DILocation(line: 0, scope: !2709)
!2752 = !DILocation(line: 455, column: 10, scope: !2709)
!2753 = !DILocation(line: 455, column: 3, scope: !2709)
!2754 = distinct !DISubprogram(name: "lstat", scope: !2710, file: !2710, line: 460, type: !2711, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2755)
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "__path", arg: 1, scope: !2754, file: !2710, line: 460, type: !688)
!2757 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2754, file: !2710, line: 460, type: !2713)
!2758 = !DILocation(line: 0, scope: !2754)
!2759 = !DILocation(line: 462, column: 10, scope: !2754)
!2760 = !DILocation(line: 462, column: 3, scope: !2754)
!2761 = distinct !DISubprogram(name: "fstat", scope: !2710, file: !2710, line: 467, type: !2762, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!683, !683, !2713}
!2764 = !{!2765, !2766}
!2765 = !DILocalVariable(name: "__fd", arg: 1, scope: !2761, file: !2710, line: 467, type: !683)
!2766 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2761, file: !2710, line: 467, type: !2713)
!2767 = !DILocation(line: 0, scope: !2761)
!2768 = !DILocation(line: 469, column: 10, scope: !2761)
!2769 = !DILocation(line: 469, column: 3, scope: !2761)
!2770 = distinct !DISubprogram(name: "fstatat", scope: !2710, file: !2710, line: 474, type: !2771, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!683, !683, !688, !2713, !683}
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DILocalVariable(name: "__fd", arg: 1, scope: !2770, file: !2710, line: 474, type: !683)
!2775 = !DILocalVariable(name: "__filename", arg: 2, scope: !2770, file: !2710, line: 474, type: !688)
!2776 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2770, file: !2710, line: 474, type: !2713)
!2777 = !DILocalVariable(name: "__flag", arg: 4, scope: !2770, file: !2710, line: 474, type: !683)
!2778 = !DILocation(line: 0, scope: !2770)
!2779 = !DILocation(line: 477, column: 10, scope: !2770)
!2780 = !DILocation(line: 477, column: 3, scope: !2770)
!2781 = distinct !DISubprogram(name: "mknod", scope: !2710, file: !2710, line: 483, type: !2782, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!683, !688, !2724, !2718}
!2784 = !{!2785, !2786, !2787}
!2785 = !DILocalVariable(name: "__path", arg: 1, scope: !2781, file: !2710, line: 483, type: !688)
!2786 = !DILocalVariable(name: "__mode", arg: 2, scope: !2781, file: !2710, line: 483, type: !2724)
!2787 = !DILocalVariable(name: "__dev", arg: 3, scope: !2781, file: !2710, line: 483, type: !2718)
!2788 = !DILocation(line: 0, scope: !2781)
!2789 = !DILocation(line: 485, column: 10, scope: !2781)
!2790 = !DILocation(line: 485, column: 3, scope: !2781)
!2791 = distinct !DISubprogram(name: "mknodat", scope: !2710, file: !2710, line: 491, type: !2792, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!683, !683, !688, !2724, !2718}
!2794 = !{!2795, !2796, !2797, !2798}
!2795 = !DILocalVariable(name: "__fd", arg: 1, scope: !2791, file: !2710, line: 491, type: !683)
!2796 = !DILocalVariable(name: "__path", arg: 2, scope: !2791, file: !2710, line: 491, type: !688)
!2797 = !DILocalVariable(name: "__mode", arg: 3, scope: !2791, file: !2710, line: 491, type: !2724)
!2798 = !DILocalVariable(name: "__dev", arg: 4, scope: !2791, file: !2710, line: 491, type: !2718)
!2799 = !DILocation(line: 0, scope: !2791)
!2800 = !DILocation(line: 494, column: 10, scope: !2791)
!2801 = !DILocation(line: 494, column: 3, scope: !2791)
!2802 = distinct !DISubprogram(name: "stat64", scope: !2710, file: !2710, line: 502, type: !2803, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2825)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!683, !688, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2715, line: 119, size: 1152, elements: !2807)
!2807 = !{!2808, !2809, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2821, !2822, !2823, !2824}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2806, file: !2715, line: 121, baseType: !2718, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2806, file: !2715, line: 123, baseType: !2810, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2469, line: 149, baseType: !749)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2806, file: !2715, line: 124, baseType: !2722, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2806, file: !2715, line: 125, baseType: !2724, size: 32, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2806, file: !2715, line: 132, baseType: !2726, size: 32, offset: 224)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2806, file: !2715, line: 133, baseType: !2728, size: 32, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2806, file: !2715, line: 135, baseType: !683, size: 32, offset: 288)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2806, file: !2715, line: 136, baseType: !2718, size: 64, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2806, file: !2715, line: 137, baseType: !2468, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2806, file: !2715, line: 143, baseType: !2733, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2806, file: !2715, line: 144, baseType: !2820, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2469, line: 180, baseType: !751)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2806, file: !2715, line: 152, baseType: !2737, size: 128, offset: 576)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2806, file: !2715, line: 153, baseType: !2737, size: 128, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2806, file: !2715, line: 154, baseType: !2737, size: 128, offset: 832)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2806, file: !2715, line: 164, baseType: !2747, size: 192, offset: 960)
!2825 = !{!2826, !2827}
!2826 = !DILocalVariable(name: "__path", arg: 1, scope: !2802, file: !2710, line: 502, type: !688)
!2827 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2802, file: !2710, line: 502, type: !2805)
!2828 = !DILocation(line: 0, scope: !2802)
!2829 = !DILocation(line: 504, column: 10, scope: !2802)
!2830 = !DILocation(line: 504, column: 3, scope: !2802)
!2831 = distinct !DISubprogram(name: "lstat64", scope: !2710, file: !2710, line: 509, type: !2803, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "__path", arg: 1, scope: !2831, file: !2710, line: 509, type: !688)
!2834 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2831, file: !2710, line: 509, type: !2805)
!2835 = !DILocation(line: 0, scope: !2831)
!2836 = !DILocation(line: 511, column: 10, scope: !2831)
!2837 = !DILocation(line: 511, column: 3, scope: !2831)
!2838 = distinct !DISubprogram(name: "fstat64", scope: !2710, file: !2710, line: 516, type: !2839, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!683, !683, !2805}
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "__fd", arg: 1, scope: !2838, file: !2710, line: 516, type: !683)
!2843 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2838, file: !2710, line: 516, type: !2805)
!2844 = !DILocation(line: 0, scope: !2838)
!2845 = !DILocation(line: 518, column: 10, scope: !2838)
!2846 = !DILocation(line: 518, column: 3, scope: !2838)
!2847 = distinct !DISubprogram(name: "fstatat64", scope: !2710, file: !2710, line: 523, type: !2848, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!683, !683, !688, !2805, !683}
!2850 = !{!2851, !2852, !2853, !2854}
!2851 = !DILocalVariable(name: "__fd", arg: 1, scope: !2847, file: !2710, line: 523, type: !683)
!2852 = !DILocalVariable(name: "__filename", arg: 2, scope: !2847, file: !2710, line: 523, type: !688)
!2853 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2847, file: !2710, line: 523, type: !2805)
!2854 = !DILocalVariable(name: "__flag", arg: 4, scope: !2847, file: !2710, line: 523, type: !683)
!2855 = !DILocation(line: 0, scope: !2847)
!2856 = !DILocation(line: 526, column: 10, scope: !2847)
!2857 = !DILocation(line: 526, column: 3, scope: !2847)
!2858 = distinct !DISubprogram(name: "gate_pure_const", scope: !3, file: !3, line: 1071, type: !2142, scopeLine: 1072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2404)
!2859 = !DILocation(line: 1073, column: 11, scope: !2858)
!2860 = !DILocation(line: 1075, column: 4, scope: !2858)
!2861 = !DILocation(line: 1075, column: 9, scope: !2858)
!2862 = !DILocation(line: 1075, column: 20, scope: !2858)
!2863 = !DILocation(line: 1075, column: 23, scope: !2858)
!2864 = !DILocation(line: 1073, column: 3, scope: !2858)
!2865 = distinct !DISubprogram(name: "propagate", scope: !3, file: !3, line: 827, type: !2146, scopeLine: 828, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2877, !2878, !2879, !2881, !2882, !2886, !2889, !2891, !2893, !2894, !2895, !2899, !2901, !2902, !2906, !2909, !2911}
!2867 = !DILocalVariable(name: "node", scope: !2865, file: !3, line: 829, type: !691)
!2868 = !DILocalVariable(name: "w", scope: !2865, file: !3, line: 830, type: !691)
!2869 = !DILocalVariable(name: "order", scope: !2865, file: !3, line: 831, type: !690)
!2870 = !DILocalVariable(name: "order_pos", scope: !2865, file: !3, line: 833, type: !683)
!2871 = !DILocalVariable(name: "i", scope: !2865, file: !3, line: 834, type: !683)
!2872 = !DILocalVariable(name: "w_info", scope: !2865, file: !3, line: 835, type: !2337)
!2873 = !DILocalVariable(name: "pure_const_state", scope: !2874, file: !3, line: 853, type: !596)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 852, column: 5)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 851, column: 3)
!2876 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 851, column: 3)
!2877 = !DILocalVariable(name: "looping", scope: !2874, file: !3, line: 854, type: !682)
!2878 = !DILocalVariable(name: "count", scope: !2874, file: !3, line: 855, type: !683)
!2879 = !DILocalVariable(name: "e", scope: !2880, file: !3, line: 862, type: !2081)
!2880 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 861, column: 2)
!2881 = !DILocalVariable(name: "w_l", scope: !2880, file: !3, line: 863, type: !2367)
!2882 = !DILocalVariable(name: "y", scope: !2883, file: !3, line: 886, type: !691)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 885, column: 6)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 884, column: 4)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 884, column: 4)
!2886 = !DILocalVariable(name: "y_l", scope: !2887, file: !3, line: 890, type: !2367)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 889, column: 3)
!2888 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 888, column: 12)
!2889 = !DILocalVariable(name: "flags", scope: !2890, file: !3, line: 900, type: !683)
!2890 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 899, column: 10)
!2891 = !DILocalVariable(name: "w_l", scope: !2892, file: !3, line: 922, type: !2367)
!2892 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 921, column: 2)
!2893 = !DILocalVariable(name: "this_state", scope: !2892, file: !3, line: 923, type: !596)
!2894 = !DILocalVariable(name: "this_looping", scope: !2892, file: !3, line: 924, type: !682)
!2895 = !DILocalVariable(name: "can_throw", scope: !2896, file: !3, line: 989, type: !682)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 988, column: 5)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 987, column: 3)
!2898 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 987, column: 3)
!2899 = !DILocalVariable(name: "e", scope: !2900, file: !3, line: 996, type: !2081)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 995, column: 2)
!2901 = !DILocalVariable(name: "w_l", scope: !2900, file: !3, line: 997, type: !2367)
!2902 = !DILocalVariable(name: "y", scope: !2903, file: !3, line: 1008, type: !691)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 1007, column: 6)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 1006, column: 4)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 1006, column: 4)
!2906 = !DILocalVariable(name: "y_l", scope: !2907, file: !3, line: 1012, type: !2367)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1011, column: 3)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 1010, column: 12)
!2909 = !DILocalVariable(name: "w_l", scope: !2910, file: !3, line: 1032, type: !2367)
!2910 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 1031, column: 2)
!2911 = !DILocalVariable(name: "e", scope: !2912, file: !3, line: 1035, type: !2081)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 1034, column: 6)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 1033, column: 8)
!2914 = !DILocation(line: 832, column: 5, scope: !2865)
!2915 = !DILocation(line: 0, scope: !2865)
!2916 = !DILocation(line: 837, column: 42, scope: !2865)
!2917 = !DILocation(line: 837, column: 3, scope: !2865)
!2918 = !DILocation(line: 838, column: 40, scope: !2865)
!2919 = !DILocation(line: 838, column: 3, scope: !2865)
!2920 = !DILocation(line: 839, column: 36, scope: !2865)
!2921 = !DILocation(line: 839, column: 3, scope: !2865)
!2922 = !DILocation(line: 840, column: 15, scope: !2865)
!2923 = !DILocation(line: 841, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 841, column: 7)
!2925 = !DILocation(line: 841, column: 7, scope: !2865)
!2926 = !DILocation(line: 843, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 842, column: 5)
!2928 = !DILocation(line: 844, column: 29, scope: !2927)
!2929 = !DILocation(line: 844, column: 7, scope: !2927)
!2930 = !DILocation(line: 845, column: 5, scope: !2927)
!2931 = !DILocation(line: 851, column: 8, scope: !2876)
!2932 = !DILocation(line: 0, scope: !2876)
!2933 = !DILocation(line: 851, column: 17, scope: !2875)
!2934 = !DILocation(line: 851, column: 3, scope: !2876)
!2935 = !DILocation(line: 0, scope: !2874)
!2936 = !DILocation(line: 856, column: 14, scope: !2874)
!2937 = !DILocation(line: 860, column: 7, scope: !2874)
!2938 = !DILocation(line: 855, column: 11, scope: !2874)
!2939 = !DILocation(line: 859, column: 9, scope: !2874)
!2940 = !DILocation(line: 863, column: 22, scope: !2880)
!2941 = !DILocation(line: 0, scope: !2880)
!2942 = !DILocation(line: 864, column: 32, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 864, column: 8)
!2944 = !DILocation(line: 864, column: 25, scope: !2943)
!2945 = !DILocation(line: 864, column: 8, scope: !2880)
!2946 = !DILocation(line: 865, column: 6, scope: !2943)
!2947 = !DILocation(line: 867, column: 13, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 867, column: 8)
!2949 = !DILocation(line: 867, column: 8, scope: !2948)
!2950 = !DILocation(line: 867, column: 8, scope: !2880)
!2951 = !DILocation(line: 869, column: 8, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 869, column: 8)
!2953 = !DILocation(line: 869, column: 46, scope: !2952)
!2954 = !DILocation(line: 869, column: 8, scope: !2880)
!2955 = !DILocation(line: 871, column: 24, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 870, column: 6)
!2957 = !DILocation(line: 871, column: 16, scope: !2956)
!2958 = !DILocation(line: 872, column: 36, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 872, column: 12)
!2960 = !DILocation(line: 872, column: 29, scope: !2959)
!2961 = !DILocation(line: 872, column: 12, scope: !2956)
!2962 = !DILocation(line: 873, column: 10, scope: !2959)
!2963 = !DILocation(line: 876, column: 25, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 876, column: 8)
!2965 = !DILocation(line: 876, column: 8, scope: !2880)
!2966 = !DILocation(line: 879, column: 9, scope: !2880)
!2967 = !DILocation(line: 881, column: 14, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 881, column: 8)
!2969 = !DILocation(line: 881, column: 8, scope: !2880)
!2970 = !DILocation(line: 884, column: 16, scope: !2885)
!2971 = !DILocation(line: 884, column: 9, scope: !2885)
!2972 = !DILocation(line: 882, column: 14, scope: !2968)
!2973 = !DILocation(line: 0, scope: !2885)
!2974 = !DILocation(line: 884, column: 4, scope: !2885)
!2975 = !DILocation(line: 886, column: 35, scope: !2883)
!2976 = !DILocation(line: 0, scope: !2883)
!2977 = !DILocation(line: 888, column: 12, scope: !2888)
!2978 = !DILocation(line: 888, column: 50, scope: !2888)
!2979 = !DILocation(line: 888, column: 12, scope: !2883)
!2980 = !DILocation(line: 890, column: 23, scope: !2887)
!2981 = !DILocation(line: 0, scope: !2887)
!2982 = !DILocation(line: 891, column: 33, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 891, column: 9)
!2984 = !DILocation(line: 891, column: 26, scope: !2983)
!2985 = !DILocation(line: 891, column: 9, scope: !2887)
!2986 = !DILocation(line: 892, column: 7, scope: !2983)
!2987 = !DILocation(line: 893, column: 26, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 893, column: 9)
!2989 = !DILocation(line: 893, column: 9, scope: !2887)
!2990 = !DILocation(line: 895, column: 14, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 895, column: 9)
!2992 = !DILocation(line: 895, column: 9, scope: !2991)
!2993 = !DILocation(line: 895, column: 9, scope: !2887)
!2994 = !DILocation(line: 897, column: 3, scope: !2888)
!2995 = !DILocation(line: 900, column: 45, scope: !2890)
!2996 = !DILocation(line: 900, column: 17, scope: !2890)
!2997 = !DILocation(line: 0, scope: !2890)
!2998 = !DILocation(line: 902, column: 15, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 902, column: 9)
!3000 = !DILocation(line: 902, column: 9, scope: !2890)
!3001 = !DILocation(line: 904, column: 15, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 904, column: 9)
!3003 = !DILocation(line: 904, column: 9, scope: !2890)
!3004 = !DILocation(line: 906, column: 21, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 906, column: 14)
!3006 = !DILocation(line: 906, column: 53, scope: !3005)
!3007 = !DILocation(line: 906, column: 33, scope: !3005)
!3008 = !DILocation(line: 912, column: 6, scope: !2884)
!3009 = !DILocation(line: 892, column: 24, scope: !2983)
!3010 = !DILocation(line: 884, column: 35, scope: !2884)
!3011 = !DILocation(line: 884, column: 4, scope: !2884)
!3012 = distinct !{!3012, !2974, !3013}
!3013 = !DILocation(line: 912, column: 6, scope: !2885)
!3014 = !DILocation(line: 913, column: 40, scope: !2880)
!3015 = !DILocation(line: 914, column: 16, scope: !2880)
!3016 = !DILocation(line: 915, column: 2, scope: !2874)
!3017 = distinct !{!3017, !2937, !3016}
!3018 = !DILocation(line: 0, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 929, column: 8)
!3020 = !DILocation(line: 920, column: 7, scope: !2874)
!3021 = !DILocation(line: 922, column: 22, scope: !2892)
!3022 = !DILocation(line: 0, scope: !2892)
!3023 = !DILocation(line: 926, column: 13, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 926, column: 8)
!3025 = !DILocation(line: 926, column: 36, scope: !3024)
!3026 = !DILocation(line: 927, column: 8, scope: !3024)
!3027 = !DILocation(line: 927, column: 22, scope: !3024)
!3028 = !DILocation(line: 926, column: 8, scope: !2892)
!3029 = !DILocation(line: 928, column: 13, scope: !3024)
!3030 = !DILocation(line: 929, column: 25, scope: !3019)
!3031 = !DILocation(line: 931, column: 14, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 931, column: 8)
!3033 = !DILocation(line: 931, column: 9, scope: !3032)
!3034 = !DILocation(line: 931, column: 8, scope: !2892)
!3035 = !DILocation(line: 935, column: 9, scope: !2892)
!3036 = !DILocation(line: 935, column: 26, scope: !2892)
!3037 = !DILocation(line: 936, column: 9, scope: !2892)
!3038 = !DILocation(line: 936, column: 17, scope: !2892)
!3039 = !DILocation(line: 938, column: 4, scope: !2892)
!3040 = !DILocation(line: 950, column: 13, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 950, column: 12)
!3042 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 939, column: 6)
!3043 = !DILocation(line: 950, column: 38, scope: !3041)
!3044 = !DILocation(line: 950, column: 35, scope: !3041)
!3045 = !DILocation(line: 952, column: 5, scope: !3041)
!3046 = !DILocation(line: 953, column: 5, scope: !3041)
!3047 = !DILocation(line: 951, column: 3, scope: !3041)
!3048 = !DILocation(line: 954, column: 8, scope: !3042)
!3049 = !DILocation(line: 955, column: 8, scope: !3042)
!3050 = !DILocation(line: 956, column: 8, scope: !3042)
!3051 = !DILocation(line: 941, column: 13, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 941, column: 12)
!3053 = !DILocation(line: 941, column: 40, scope: !3052)
!3054 = !DILocation(line: 941, column: 37, scope: !3052)
!3055 = !DILocation(line: 943, column: 5, scope: !3052)
!3056 = !DILocation(line: 944, column: 5, scope: !3052)
!3057 = !DILocation(line: 942, column: 3, scope: !3052)
!3058 = !DILocation(line: 945, column: 8, scope: !3042)
!3059 = !DILocation(line: 946, column: 8, scope: !3042)
!3060 = !DILocation(line: 947, column: 8, scope: !3042)
!3061 = !DILocation(line: 961, column: 40, scope: !2892)
!3062 = !DILocation(line: 962, column: 16, scope: !2892)
!3063 = distinct !{!3063, !3020, !3064}
!3064 = !DILocation(line: 963, column: 2, scope: !2874)
!3065 = !DILocation(line: 851, column: 31, scope: !2875)
!3066 = !DILocation(line: 851, column: 3, scope: !2875)
!3067 = distinct !{!3067, !2934, !3068}
!3068 = !DILocation(line: 964, column: 5, scope: !2876)
!3069 = !DILocation(line: 967, column: 8, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 967, column: 3)
!3071 = !DILocation(line: 0, scope: !3070)
!3072 = !DILocation(line: 967, column: 3, scope: !3070)
!3073 = !DILocation(line: 970, column: 17, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 970, column: 11)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 968, column: 5)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 967, column: 3)
!3077 = !DILocation(line: 970, column: 11, scope: !3074)
!3078 = !DILocation(line: 970, column: 11, scope: !3075)
!3079 = !DILocation(line: 973, column: 4, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 971, column: 2)
!3081 = !DILocation(line: 974, column: 14, scope: !3080)
!3082 = !DILocation(line: 975, column: 2, scope: !3080)
!3083 = !DILocation(line: 967, column: 48, scope: !3076)
!3084 = !DILocation(line: 967, column: 3, scope: !3076)
!3085 = distinct !{!3085, !3072, !3086}
!3086 = !DILocation(line: 976, column: 5, scope: !3070)
!3087 = !DILocation(line: 977, column: 15, scope: !2865)
!3088 = !DILocation(line: 978, column: 7, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 978, column: 7)
!3090 = !DILocation(line: 978, column: 7, scope: !2865)
!3091 = !DILocation(line: 980, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 979, column: 5)
!3093 = !DILocation(line: 981, column: 29, scope: !3092)
!3094 = !DILocation(line: 981, column: 7, scope: !3092)
!3095 = !DILocation(line: 982, column: 5, scope: !3092)
!3096 = !DILocation(line: 987, column: 8, scope: !2898)
!3097 = !DILocation(line: 0, scope: !2898)
!3098 = !DILocation(line: 987, column: 17, scope: !2897)
!3099 = !DILocation(line: 987, column: 3, scope: !2898)
!3100 = !DILocation(line: 0, scope: !2896)
!3101 = !DILocation(line: 990, column: 14, scope: !2896)
!3102 = !DILocation(line: 994, column: 7, scope: !2896)
!3103 = !DILocation(line: 993, column: 9, scope: !2896)
!3104 = !DILocation(line: 997, column: 22, scope: !2900)
!3105 = !DILocation(line: 0, scope: !2900)
!3106 = !DILocation(line: 999, column: 13, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 999, column: 8)
!3108 = !DILocation(line: 999, column: 8, scope: !3107)
!3109 = !DILocation(line: 1000, column: 8, scope: !3107)
!3110 = !DILocation(line: 1000, column: 11, scope: !3107)
!3111 = !DILocation(line: 1000, column: 49, scope: !3107)
!3112 = !DILocation(line: 999, column: 8, scope: !2900)
!3113 = !DILocation(line: 1001, column: 6, scope: !3107)
!3114 = !DILocation(line: 1003, column: 8, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 1003, column: 8)
!3116 = !DILocation(line: 1003, column: 8, scope: !2900)
!3117 = !DILocation(line: 1006, column: 16, scope: !2905)
!3118 = !DILocation(line: 0, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1016, column: 9)
!3120 = !DILocation(line: 1006, column: 9, scope: !2905)
!3121 = !DILocation(line: 1001, column: 16, scope: !3107)
!3122 = !DILocation(line: 0, scope: !2905)
!3123 = !DILocation(line: 1006, column: 4, scope: !2905)
!3124 = !DILocation(line: 1008, column: 35, scope: !2903)
!3125 = !DILocation(line: 0, scope: !2903)
!3126 = !DILocation(line: 1010, column: 12, scope: !2908)
!3127 = !DILocation(line: 1010, column: 50, scope: !2908)
!3128 = !DILocation(line: 1010, column: 12, scope: !2903)
!3129 = !DILocation(line: 1012, column: 23, scope: !2907)
!3130 = !DILocation(line: 0, scope: !2907)
!3131 = !DILocation(line: 1014, column: 9, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1014, column: 9)
!3133 = !DILocation(line: 1014, column: 9, scope: !2907)
!3134 = !DILocation(line: 1016, column: 14, scope: !3119)
!3135 = !DILocation(line: 1016, column: 9, scope: !3119)
!3136 = !DILocation(line: 1016, column: 24, scope: !3119)
!3137 = !DILocation(line: 1016, column: 28, scope: !3119)
!3138 = !DILocation(line: 1017, column: 9, scope: !3119)
!3139 = !DILocation(line: 1017, column: 15, scope: !3119)
!3140 = !DILocation(line: 1016, column: 9, scope: !2907)
!3141 = !DILocation(line: 1020, column: 20, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1020, column: 17)
!3143 = !DILocation(line: 1020, column: 17, scope: !3142)
!3144 = !DILocation(line: 1020, column: 39, scope: !3142)
!3145 = !DILocation(line: 1020, column: 43, scope: !3142)
!3146 = !DILocation(line: 1020, column: 17, scope: !2908)
!3147 = !DILocation(line: 1022, column: 6, scope: !2904)
!3148 = !DILocation(line: 1006, column: 35, scope: !2904)
!3149 = !DILocation(line: 1006, column: 4, scope: !2904)
!3150 = distinct !{!3150, !3123, !3151}
!3151 = !DILocation(line: 1022, column: 6, scope: !2905)
!3152 = !DILocation(line: 1023, column: 40, scope: !2900)
!3153 = !DILocation(line: 1024, column: 16, scope: !2900)
!3154 = !DILocation(line: 1025, column: 2, scope: !2896)
!3155 = distinct !{!3155, !3102, !3154}
!3156 = !DILocation(line: 0, scope: !2913)
!3157 = !DILocation(line: 1030, column: 7, scope: !2896)
!3158 = !DILocation(line: 1032, column: 22, scope: !2910)
!3159 = !DILocation(line: 0, scope: !2910)
!3160 = !DILocation(line: 1033, column: 23, scope: !2913)
!3161 = !DILocation(line: 1033, column: 8, scope: !2910)
!3162 = !DILocation(line: 1043, column: 23, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 1043, column: 13)
!3164 = !DILocation(line: 1043, column: 13, scope: !2913)
!3165 = !DILocation(line: 1044, column: 6, scope: !3163)
!3166 = !DILocation(line: 1036, column: 8, scope: !2912)
!3167 = !DILocation(line: 1037, column: 20, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 1037, column: 8)
!3169 = !DILocation(line: 1037, column: 13, scope: !3168)
!3170 = !DILocation(line: 0, scope: !3168)
!3171 = !DILocation(line: 0, scope: !2912)
!3172 = !DILocation(line: 1037, column: 8, scope: !3168)
!3173 = !DILocation(line: 1038, column: 13, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 1037, column: 8)
!3175 = !DILocation(line: 1038, column: 32, scope: !3174)
!3176 = !DILocation(line: 1037, column: 39, scope: !3174)
!3177 = !DILocation(line: 1037, column: 8, scope: !3174)
!3178 = distinct !{!3178, !3172, !3179}
!3179 = !DILocation(line: 1038, column: 34, scope: !3168)
!3180 = !DILocation(line: 1039, column: 12, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 1039, column: 12)
!3182 = !DILocation(line: 1039, column: 12, scope: !2912)
!3183 = !DILocation(line: 1041, column: 5, scope: !3181)
!3184 = !DILocation(line: 1040, column: 3, scope: !3181)
!3185 = !DILocation(line: 1045, column: 40, scope: !2910)
!3186 = !DILocation(line: 1046, column: 16, scope: !2910)
!3187 = distinct !{!3187, !3157, !3188}
!3188 = !DILocation(line: 1047, column: 2, scope: !2896)
!3189 = !DILocation(line: 987, column: 31, scope: !2897)
!3190 = !DILocation(line: 1043, column: 27, scope: !3163)
!3191 = !DILocation(line: 1044, column: 11, scope: !3163)
!3192 = !DILocation(line: 1044, column: 21, scope: !3163)
!3193 = !DILocation(line: 987, column: 3, scope: !2897)
!3194 = distinct !{!3194, !3099, !3195}
!3195 = !DILocation(line: 1048, column: 5, scope: !2898)
!3196 = !DILocation(line: 1051, column: 8, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 1051, column: 3)
!3198 = !DILocation(line: 0, scope: !3197)
!3199 = !DILocation(line: 1051, column: 3, scope: !3197)
!3200 = !DILocation(line: 1054, column: 17, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1054, column: 11)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1052, column: 5)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1051, column: 3)
!3204 = !DILocation(line: 1054, column: 11, scope: !3201)
!3205 = !DILocation(line: 1054, column: 11, scope: !3202)
!3206 = !DILocation(line: 1057, column: 4, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1055, column: 2)
!3208 = !DILocation(line: 1058, column: 14, scope: !3207)
!3209 = !DILocation(line: 1059, column: 2, scope: !3207)
!3210 = !DILocation(line: 1060, column: 11, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1060, column: 11)
!3212 = !DILocation(line: 1060, column: 52, scope: !3211)
!3213 = !DILocation(line: 1060, column: 11, scope: !3202)
!3214 = !DILocation(line: 1061, column: 8, scope: !3211)
!3215 = !DILocation(line: 1061, column: 2, scope: !3211)
!3216 = !DILocation(line: 1051, column: 48, scope: !3203)
!3217 = !DILocation(line: 1051, column: 3, scope: !3203)
!3218 = distinct !{!3218, !3199, !3219}
!3219 = !DILocation(line: 1062, column: 5, scope: !3197)
!3220 = !DILocation(line: 1064, column: 3, scope: !2865)
!3221 = !DILocation(line: 1065, column: 3, scope: !2865)
!3222 = !DILocation(line: 1066, column: 3, scope: !2865)
!3223 = !DILocation(line: 1067, column: 3, scope: !2865)
!3224 = distinct !DISubprogram(name: "generate_summary", scope: !3, file: !3, line: 663, type: !2161, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3225)
!3225 = !{!3226}
!3226 = !DILocalVariable(name: "node", scope: !3224, file: !3, line: 665, type: !691)
!3227 = !DILocation(line: 667, column: 3, scope: !3224)
!3228 = !DILocation(line: 673, column: 19, scope: !3224)
!3229 = !DILocation(line: 673, column: 17, scope: !3224)
!3230 = !DILocation(line: 681, column: 8, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 681, column: 3)
!3232 = !DILocation(line: 0, scope: !3231)
!3233 = !DILocation(line: 0, scope: !3224)
!3234 = !DILocation(line: 681, column: 3, scope: !3231)
!3235 = !DILocation(line: 682, column: 9, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 682, column: 9)
!3237 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 681, column: 3)
!3238 = !DILocation(line: 682, column: 50, scope: !3236)
!3239 = !DILocation(line: 682, column: 9, scope: !3237)
!3240 = !DILocation(line: 683, column: 33, scope: !3236)
!3241 = !DILocation(line: 683, column: 7, scope: !3236)
!3242 = !DILocation(line: 681, column: 48, scope: !3237)
!3243 = !DILocation(line: 681, column: 3, scope: !3237)
!3244 = distinct !{!3244, !3234, !3245}
!3245 = !DILocation(line: 683, column: 62, scope: !3231)
!3246 = !DILocation(line: 685, column: 24, scope: !3224)
!3247 = !DILocation(line: 685, column: 3, scope: !3224)
!3248 = !DILocation(line: 686, column: 17, scope: !3224)
!3249 = !DILocation(line: 687, column: 1, scope: !3224)
!3250 = distinct !DISubprogram(name: "pure_const_write_summary", scope: !3, file: !3, line: 693, type: !3251, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3254)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !574, line: 283, baseType: !2167)
!3254 = !{!3255, !3256, !3257, !3294, !3295, !3301, !3326, !3327, !3328}
!3255 = !DILocalVariable(name: "set", arg: 1, scope: !3250, file: !3, line: 693, type: !3253)
!3256 = !DILocalVariable(name: "node", scope: !3250, file: !3, line: 695, type: !691)
!3257 = !DILocalVariable(name: "ob", scope: !3250, file: !3, line: 696, type: !3258)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_output_block", file: !667, line: 614, size: 192, elements: !3260)
!3260 = !{!3261, !3262, !3280}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !3259, file: !667, line: 616, baseType: !666, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "decl_state", scope: !3259, file: !667, line: 617, baseType: !3263, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_out_decl_state", file: !667, line: 517, size: 1472, elements: !3265)
!3265 = !{!3266, !3278, !3279}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3264, file: !667, line: 521, baseType: !3267, size: 1344)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 1344, elements: !2237)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_encoder", file: !667, line: 493, size: 192, elements: !3269)
!3269 = !{!3270, !3271, !3272}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "tree_hash_table", scope: !3268, file: !667, line: 495, baseType: !1538, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !3268, file: !667, line: 496, baseType: !7, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !3268, file: !667, line: 497, baseType: !3273, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !318, line: 184, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !318, line: 184, size: 128, elements: !3276)
!3276 = !{!3277}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3275, file: !318, line: 184, baseType: !1604, size: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !3264, file: !667, line: 524, baseType: !2242, size: 64, offset: 1344)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !3264, file: !667, line: 528, baseType: !695, size: 64, offset: 1408)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "main_stream", scope: !3259, file: !667, line: 620, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_output_stream", file: !667, line: 577, size: 320, elements: !3283)
!3283 = !{!3284, !3289, !3290, !3291, !3292, !3293}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "first_block", scope: !3282, file: !667, line: 580, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_char_ptr_base", file: !667, line: 568, size: 64, elements: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3286, file: !667, line: 570, baseType: !685, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "current_block", scope: !3282, file: !667, line: 583, baseType: !3285, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "current_pointer", scope: !3282, file: !667, line: 586, baseType: !685, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "left_in_block", scope: !3282, file: !667, line: 589, baseType: !7, size: 32, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !3282, file: !667, line: 592, baseType: !7, size: 32, offset: 224)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !3282, file: !667, line: 595, baseType: !7, size: 32, offset: 256)
!3294 = !DILocalVariable(name: "count", scope: !3250, file: !3, line: 698, type: !7)
!3295 = !DILocalVariable(name: "csi", scope: !3250, file: !3, line: 699, type: !3296)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set_iterator", file: !574, line: 305, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 301, size: 128, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3297, file: !574, line: 303, baseType: !3253, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3297, file: !574, line: 304, baseType: !7, size: 32, offset: 64)
!3301 = !DILocalVariable(name: "bp", scope: !3302, file: !3, line: 716, type: !3307)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 715, column: 2)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 714, column: 11)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 712, column: 5)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 711, column: 3)
!3306 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 711, column: 3)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitpack_d", file: !667, line: 156, size: 192, elements: !3309)
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "num_bits", scope: !3308, file: !667, line: 159, baseType: !1165, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused_bit", scope: !3308, file: !667, line: 165, baseType: !1165, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !3308, file: !667, line: 168, baseType: !3313, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitpack_word_t_heap", file: !667, line: 154, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitpack_word_t_heap", file: !667, line: 154, size: 128, elements: !3316)
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3315, file: !667, line: 154, baseType: !3318, size: 128)
!3318 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitpack_word_t_base", file: !667, line: 153, baseType: !3319)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitpack_word_t_base", file: !667, line: 153, size: 128, elements: !3320)
!3320 = !{!3321, !3322, !3323}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3319, file: !667, line: 153, baseType: !7, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3319, file: !667, line: 153, baseType: !7, size: 32, offset: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3319, file: !667, line: 153, baseType: !3324, size: 64, offset: 64)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3325, size: 64, elements: !794)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitpack_word_t", file: !667, line: 152, baseType: !749)
!3326 = !DILocalVariable(name: "fs", scope: !3302, file: !3, line: 717, type: !2367)
!3327 = !DILocalVariable(name: "node_ref", scope: !3302, file: !3, line: 718, type: !683)
!3328 = !DILocalVariable(name: "encoder", scope: !3302, file: !3, line: 719, type: !2242)
!3329 = !DILocation(line: 0, scope: !3250)
!3330 = !DILocation(line: 697, column: 7, scope: !3250)
!3331 = !DILocation(line: 699, column: 3, scope: !3250)
!3332 = !DILocation(line: 701, column: 14, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 701, column: 3)
!3334 = !DILocation(line: 0, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 701, column: 3)
!3336 = !DILocation(line: 701, column: 8, scope: !3333)
!3337 = !DILocation(line: 701, column: 32, scope: !3335)
!3338 = !DILocation(line: 701, column: 31, scope: !3335)
!3339 = !DILocation(line: 701, column: 3, scope: !3333)
!3340 = !DILocation(line: 703, column: 14, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 702, column: 5)
!3342 = !DILocation(line: 704, column: 17, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 704, column: 11)
!3344 = !DILocation(line: 704, column: 11, scope: !3343)
!3345 = !DILocation(line: 704, column: 26, scope: !3343)
!3346 = !DILocation(line: 704, column: 29, scope: !3343)
!3347 = !DILocation(line: 704, column: 55, scope: !3343)
!3348 = !DILocation(line: 704, column: 11, scope: !3341)
!3349 = !DILocation(line: 701, column: 49, scope: !3335)
!3350 = !DILocation(line: 701, column: 3, scope: !3335)
!3351 = distinct !{!3351, !3339, !3352}
!3352 = !DILocation(line: 706, column: 5, scope: !3333)
!3353 = !DILocation(line: 708, column: 34, scope: !3250)
!3354 = !DILocation(line: 708, column: 47, scope: !3250)
!3355 = !DILocation(line: 708, column: 3, scope: !3250)
!3356 = !DILocation(line: 711, column: 14, scope: !3306)
!3357 = !DILocation(line: 0, scope: !3302)
!3358 = !DILocation(line: 711, column: 8, scope: !3306)
!3359 = !DILocation(line: 711, column: 32, scope: !3305)
!3360 = !DILocation(line: 711, column: 31, scope: !3305)
!3361 = !DILocation(line: 711, column: 3, scope: !3306)
!3362 = !DILocation(line: 713, column: 14, scope: !3304)
!3363 = !DILocation(line: 714, column: 17, scope: !3303)
!3364 = !DILocation(line: 714, column: 11, scope: !3303)
!3365 = !DILocation(line: 714, column: 26, scope: !3303)
!3366 = !DILocation(line: 714, column: 29, scope: !3303)
!3367 = !DILocation(line: 714, column: 55, scope: !3303)
!3368 = !DILocation(line: 714, column: 11, scope: !3304)
!3369 = !DILocation(line: 721, column: 9, scope: !3302)
!3370 = !DILocation(line: 723, column: 18, scope: !3302)
!3371 = !DILocation(line: 723, column: 30, scope: !3302)
!3372 = !DILocation(line: 724, column: 15, scope: !3302)
!3373 = !DILocation(line: 725, column: 35, scope: !3302)
!3374 = !DILocation(line: 725, column: 48, scope: !3302)
!3375 = !DILocation(line: 725, column: 4, scope: !3302)
!3376 = !DILocation(line: 729, column: 9, scope: !3302)
!3377 = !DILocation(line: 730, column: 27, scope: !3302)
!3378 = !DILocation(line: 730, column: 23, scope: !3302)
!3379 = !DILocation(line: 730, column: 4, scope: !3302)
!3380 = !DILocation(line: 731, column: 27, scope: !3302)
!3381 = !DILocation(line: 731, column: 23, scope: !3302)
!3382 = !DILocation(line: 731, column: 4, scope: !3302)
!3383 = !DILocation(line: 732, column: 27, scope: !3302)
!3384 = !DILocation(line: 732, column: 23, scope: !3302)
!3385 = !DILocation(line: 732, column: 4, scope: !3302)
!3386 = !DILocation(line: 733, column: 27, scope: !3302)
!3387 = !DILocation(line: 733, column: 23, scope: !3302)
!3388 = !DILocation(line: 733, column: 4, scope: !3302)
!3389 = !DILocation(line: 734, column: 27, scope: !3302)
!3390 = !DILocation(line: 734, column: 23, scope: !3302)
!3391 = !DILocation(line: 734, column: 4, scope: !3302)
!3392 = !DILocation(line: 735, column: 28, scope: !3302)
!3393 = !DILocation(line: 735, column: 4, scope: !3302)
!3394 = !DILocation(line: 736, column: 4, scope: !3302)
!3395 = !DILocation(line: 737, column: 2, scope: !3302)
!3396 = !DILocation(line: 711, column: 49, scope: !3305)
!3397 = !DILocation(line: 711, column: 3, scope: !3305)
!3398 = distinct !{!3398, !3361, !3399}
!3399 = !DILocation(line: 738, column: 5, scope: !3306)
!3400 = !DILocation(line: 740, column: 3, scope: !3250)
!3401 = !DILocation(line: 741, column: 1, scope: !3250)
!3402 = distinct !DISubprogram(name: "pure_const_read_summary", scope: !3, file: !3, line: 747, type: !2161, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3403)
!3403 = !{!3404, !3406, !3407, !3408, !3410, !3411, !3418, !3421, !3422, !3426, !3427, !3428, !3429}
!3404 = !DILocalVariable(name: "file_data_vec", scope: !3402, file: !3, line: 749, type: !3405)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!3406 = !DILocalVariable(name: "file_data", scope: !3402, file: !3, line: 750, type: !2224)
!3407 = !DILocalVariable(name: "j", scope: !3402, file: !3, line: 751, type: !7)
!3408 = !DILocalVariable(name: "data", scope: !3409, file: !3, line: 756, type: !688)
!3409 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 755, column: 5)
!3410 = !DILocalVariable(name: "len", scope: !3409, file: !3, line: 757, type: !1165)
!3411 = !DILocalVariable(name: "ib", scope: !3409, file: !3, line: 758, type: !3412)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_input_block", file: !667, line: 363, size: 128, elements: !3414)
!3414 = !{!3415, !3416, !3417}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3413, file: !667, line: 365, baseType: !688, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3413, file: !667, line: 366, baseType: !7, size: 32, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3413, file: !667, line: 367, baseType: !7, size: 32, offset: 96)
!3418 = !DILocalVariable(name: "i", scope: !3419, file: !3, line: 764, type: !7)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 763, column: 2)
!3420 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 762, column: 11)
!3421 = !DILocalVariable(name: "count", scope: !3419, file: !3, line: 765, type: !7)
!3422 = !DILocalVariable(name: "index", scope: !3423, file: !3, line: 769, type: !7)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 768, column: 6)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 767, column: 4)
!3425 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 767, column: 4)
!3426 = !DILocalVariable(name: "node", scope: !3423, file: !3, line: 770, type: !691)
!3427 = !DILocalVariable(name: "bp", scope: !3423, file: !3, line: 771, type: !3307)
!3428 = !DILocalVariable(name: "fs", scope: !3423, file: !3, line: 772, type: !2367)
!3429 = !DILocalVariable(name: "encoder", scope: !3423, file: !3, line: 773, type: !2242)
!3430 = !DILocation(line: 749, column: 47, scope: !3402)
!3431 = !DILocation(line: 0, scope: !3402)
!3432 = !DILocation(line: 753, column: 3, scope: !3402)
!3433 = !DILocation(line: 0, scope: !3409)
!3434 = !DILocation(line: 754, column: 3, scope: !3402)
!3435 = !DILocation(line: 754, column: 38, scope: !3402)
!3436 = !DILocation(line: 754, column: 23, scope: !3402)
!3437 = !DILocation(line: 756, column: 7, scope: !3409)
!3438 = !DILocation(line: 757, column: 7, scope: !3409)
!3439 = !DILocation(line: 759, column: 4, scope: !3409)
!3440 = !DILocation(line: 762, column: 11, scope: !3420)
!3441 = !DILocation(line: 762, column: 11, scope: !3409)
!3442 = !DILocation(line: 765, column: 25, scope: !3419)
!3443 = !DILocation(line: 0, scope: !3419)
!3444 = !DILocation(line: 0, scope: !3423)
!3445 = !DILocation(line: 767, column: 9, scope: !3425)
!3446 = !DILocation(line: 0, scope: !3425)
!3447 = !DILocation(line: 767, column: 18, scope: !3424)
!3448 = !DILocation(line: 767, column: 4, scope: !3425)
!3449 = !DILocation(line: 775, column: 13, scope: !3423)
!3450 = !DILocation(line: 776, column: 16, scope: !3423)
!3451 = !DILocation(line: 777, column: 29, scope: !3423)
!3452 = !DILocation(line: 778, column: 15, scope: !3423)
!3453 = !DILocation(line: 779, column: 8, scope: !3423)
!3454 = !DILocation(line: 784, column: 13, scope: !3423)
!3455 = !DILocation(line: 786, column: 32, scope: !3423)
!3456 = !DILocation(line: 786, column: 6, scope: !3423)
!3457 = !DILocation(line: 785, column: 12, scope: !3423)
!3458 = !DILocation(line: 786, column: 4, scope: !3423)
!3459 = !DILocation(line: 788, column: 32, scope: !3423)
!3460 = !DILocation(line: 788, column: 6, scope: !3423)
!3461 = !DILocation(line: 787, column: 12, scope: !3423)
!3462 = !DILocation(line: 788, column: 4, scope: !3423)
!3463 = !DILocation(line: 789, column: 39, scope: !3423)
!3464 = !DILocation(line: 789, column: 12, scope: !3423)
!3465 = !DILocation(line: 789, column: 37, scope: !3423)
!3466 = !DILocation(line: 790, column: 22, scope: !3423)
!3467 = !DILocation(line: 790, column: 12, scope: !3423)
!3468 = !DILocation(line: 790, column: 20, scope: !3423)
!3469 = !DILocation(line: 791, column: 24, scope: !3423)
!3470 = !DILocation(line: 791, column: 12, scope: !3423)
!3471 = !DILocation(line: 791, column: 22, scope: !3423)
!3472 = !DILocation(line: 792, column: 8, scope: !3423)
!3473 = !DILocation(line: 767, column: 28, scope: !3424)
!3474 = !DILocation(line: 767, column: 4, scope: !3424)
!3475 = distinct !{!3475, !3448, !3476}
!3476 = !DILocation(line: 793, column: 6, scope: !3425)
!3477 = !DILocation(line: 797, column: 12, scope: !3419)
!3478 = !DILocation(line: 797, column: 18, scope: !3419)
!3479 = !DILocation(line: 795, column: 4, scope: !3419)
!3480 = !DILocation(line: 798, column: 2, scope: !3419)
!3481 = !DILocation(line: 799, column: 5, scope: !3402)
!3482 = distinct !{!3482, !3434, !3481}
!3483 = !DILocation(line: 800, column: 1, scope: !3402)
!3484 = distinct !DISubprogram(name: "local_pure_const", scope: !3, file: !3, line: 1110, type: !2146, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3485)
!3485 = !{!3486, !3487, !3488, !3489}
!3486 = !DILocalVariable(name: "changed", scope: !3484, file: !3, line: 1112, type: !682)
!3487 = !DILocalVariable(name: "l", scope: !3484, file: !3, line: 1113, type: !2367)
!3488 = !DILocalVariable(name: "node", scope: !3484, file: !3, line: 1114, type: !691)
!3489 = !DILocalVariable(name: "e", scope: !3490, file: !3, line: 1190, type: !2081)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 1189, column: 5)
!3491 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1188, column: 7)
!3492 = !DILocation(line: 0, scope: !3484)
!3493 = !DILocation(line: 1119, column: 7, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1119, column: 7)
!3495 = !DILocation(line: 1119, column: 7, scope: !3484)
!3496 = !DILocation(line: 1121, column: 11, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1121, column: 11)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1120, column: 5)
!3499 = !DILocation(line: 1121, column: 11, scope: !3498)
!3500 = !DILocation(line: 1122, column: 9, scope: !3497)
!3501 = !DILocation(line: 1125, column: 23, scope: !3484)
!3502 = !DILocation(line: 1125, column: 10, scope: !3484)
!3503 = !DILocation(line: 1126, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1126, column: 7)
!3505 = !DILocation(line: 1126, column: 48, scope: !3504)
!3506 = !DILocation(line: 1126, column: 7, scope: !3484)
!3507 = !DILocation(line: 1128, column: 11, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 1128, column: 11)
!3509 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1127, column: 5)
!3510 = !DILocation(line: 1128, column: 11, scope: !3509)
!3511 = !DILocation(line: 1129, column: 9, scope: !3508)
!3512 = !DILocation(line: 1133, column: 7, scope: !3484)
!3513 = !DILocation(line: 1135, column: 14, scope: !3484)
!3514 = !DILocation(line: 1135, column: 3, scope: !3484)
!3515 = !DILocation(line: 1138, column: 12, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1138, column: 11)
!3517 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1136, column: 5)
!3518 = !DILocation(line: 1138, column: 11, scope: !3517)
!3519 = !DILocation(line: 1140, column: 4, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1139, column: 2)
!3521 = !DILocation(line: 1141, column: 52, scope: !3520)
!3522 = !DILocation(line: 1141, column: 4, scope: !3520)
!3523 = !DILocation(line: 1143, column: 8, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 1143, column: 8)
!3525 = !DILocation(line: 1143, column: 8, scope: !3520)
!3526 = !DILocation(line: 1145, column: 11, scope: !3524)
!3527 = !DILocation(line: 1145, column: 8, scope: !3524)
!3528 = !DILocation(line: 1146, column: 19, scope: !3524)
!3529 = !DILocation(line: 1146, column: 40, scope: !3524)
!3530 = !DILocation(line: 1146, column: 8, scope: !3524)
!3531 = !DILocation(line: 1144, column: 6, scope: !3524)
!3532 = !DILocation(line: 1149, column: 16, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1149, column: 16)
!3534 = !DILocation(line: 1150, column: 9, scope: !3533)
!3535 = !DILocation(line: 1150, column: 16, scope: !3533)
!3536 = !DILocation(line: 1150, column: 13, scope: !3533)
!3537 = !DILocation(line: 1149, column: 16, scope: !3516)
!3538 = !DILocation(line: 1152, column: 4, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1151, column: 2)
!3540 = !DILocation(line: 1154, column: 8, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1154, column: 8)
!3542 = !DILocation(line: 1154, column: 8, scope: !3539)
!3543 = !DILocation(line: 1156, column: 19, scope: !3541)
!3544 = !DILocation(line: 1156, column: 40, scope: !3541)
!3545 = !DILocation(line: 1156, column: 8, scope: !3541)
!3546 = !DILocation(line: 1155, column: 6, scope: !3541)
!3547 = !DILocation(line: 1162, column: 12, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1162, column: 11)
!3549 = !DILocation(line: 1162, column: 11, scope: !3517)
!3550 = !DILocation(line: 1164, column: 4, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 1163, column: 2)
!3552 = !DILocation(line: 1165, column: 52, scope: !3551)
!3553 = !DILocation(line: 1165, column: 4, scope: !3551)
!3554 = !DILocation(line: 1167, column: 8, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 1167, column: 8)
!3556 = !DILocation(line: 1167, column: 8, scope: !3551)
!3557 = !DILocation(line: 1169, column: 11, scope: !3555)
!3558 = !DILocation(line: 1169, column: 8, scope: !3555)
!3559 = !DILocation(line: 1170, column: 19, scope: !3555)
!3560 = !DILocation(line: 1170, column: 40, scope: !3555)
!3561 = !DILocation(line: 1170, column: 8, scope: !3555)
!3562 = !DILocation(line: 1168, column: 6, scope: !3555)
!3563 = !DILocation(line: 1173, column: 16, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 1173, column: 16)
!3565 = !DILocation(line: 1174, column: 9, scope: !3564)
!3566 = !DILocation(line: 1174, column: 16, scope: !3564)
!3567 = !DILocation(line: 1174, column: 13, scope: !3564)
!3568 = !DILocation(line: 1173, column: 16, scope: !3548)
!3569 = !DILocation(line: 1176, column: 4, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1175, column: 2)
!3571 = !DILocation(line: 1178, column: 8, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1178, column: 8)
!3573 = !DILocation(line: 1178, column: 8, scope: !3570)
!3574 = !DILocation(line: 1180, column: 19, scope: !3572)
!3575 = !DILocation(line: 1180, column: 40, scope: !3572)
!3576 = !DILocation(line: 1180, column: 8, scope: !3572)
!3577 = !DILocation(line: 1179, column: 6, scope: !3572)
!3578 = !DILocation(line: 1112, column: 8, scope: !3484)
!3579 = !DILocation(line: 1188, column: 11, scope: !3491)
!3580 = !DILocation(line: 1188, column: 8, scope: !3491)
!3581 = !DILocation(line: 1188, column: 21, scope: !3491)
!3582 = !DILocation(line: 1188, column: 25, scope: !3491)
!3583 = !DILocation(line: 1188, column: 7, scope: !3484)
!3584 = !DILocation(line: 1192, column: 7, scope: !3490)
!3585 = !DILocation(line: 1193, column: 22, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 1193, column: 7)
!3587 = !DILocation(line: 1193, column: 12, scope: !3586)
!3588 = !DILocation(line: 0, scope: !3586)
!3589 = !DILocation(line: 0, scope: !3490)
!3590 = !DILocation(line: 1193, column: 7, scope: !3586)
!3591 = !DILocation(line: 1194, column: 5, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1193, column: 7)
!3593 = !DILocation(line: 1194, column: 24, scope: !3592)
!3594 = !DILocation(line: 1193, column: 41, scope: !3592)
!3595 = !DILocation(line: 1193, column: 7, scope: !3592)
!3596 = distinct !{!3596, !3590, !3597}
!3597 = !DILocation(line: 1194, column: 26, scope: !3586)
!3598 = !DILocation(line: 1196, column: 11, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 1196, column: 11)
!3600 = !DILocation(line: 1196, column: 11, scope: !3490)
!3601 = !DILocation(line: 1198, column: 15, scope: !3599)
!3602 = !DILocation(line: 1198, column: 36, scope: !3599)
!3603 = !DILocation(line: 1198, column: 4, scope: !3599)
!3604 = !DILocation(line: 1197, column: 2, scope: !3599)
!3605 = !DILocation(line: 1201, column: 7, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1201, column: 7)
!3607 = !DILocation(line: 1201, column: 7, scope: !3484)
!3608 = !DILocation(line: 1202, column: 11, scope: !3606)
!3609 = !DILocation(line: 1202, column: 5, scope: !3606)
!3610 = !DILocation(line: 1203, column: 7, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1203, column: 7)
!3612 = !DILocation(line: 1203, column: 7, scope: !3484)
!3613 = !DILocation(line: 1204, column: 12, scope: !3611)
!3614 = !DILocation(line: 1204, column: 5, scope: !3611)
!3615 = !DILocation(line: 1207, column: 1, scope: !3484)
!3616 = distinct !DISubprogram(name: "get_function_state", scope: !3, file: !3, line: 121, type: !3617, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!2367, !691}
!3619 = !{!3620}
!3620 = !DILocalVariable(name: "node", arg: 1, scope: !3616, file: !3, line: 121, type: !691)
!3621 = !DILocation(line: 0, scope: !3616)
!3622 = !DILocation(line: 123, column: 8, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 123, column: 7)
!3624 = !DILocation(line: 124, column: 7, scope: !3623)
!3625 = !DILocation(line: 124, column: 10, scope: !3623)
!3626 = !DILocation(line: 124, column: 75, scope: !3623)
!3627 = !DILocation(line: 124, column: 52, scope: !3623)
!3628 = !DILocation(line: 123, column: 7, scope: !3616)
!3629 = !DILocation(line: 126, column: 10, scope: !3616)
!3630 = !DILocation(line: 126, column: 3, scope: !3616)
!3631 = !DILocation(line: 127, column: 1, scope: !3616)
!3632 = distinct !DISubprogram(name: "self_recursive_p", scope: !3, file: !3, line: 812, type: !3633, scopeLine: 813, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!682, !691}
!3635 = !{!3636, !3637}
!3636 = !DILocalVariable(name: "node", arg: 1, scope: !3632, file: !3, line: 812, type: !691)
!3637 = !DILocalVariable(name: "e", scope: !3632, file: !3, line: 814, type: !2081)
!3638 = !DILocation(line: 0, scope: !3632)
!3639 = !DILocation(line: 815, column: 18, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 815, column: 3)
!3641 = !DILocation(line: 815, column: 8, scope: !3640)
!3642 = !DILocation(line: 0, scope: !3640)
!3643 = !DILocation(line: 815, column: 3, scope: !3640)
!3644 = !DILocation(line: 816, column: 12, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 816, column: 9)
!3646 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 815, column: 3)
!3647 = !DILocation(line: 816, column: 19, scope: !3645)
!3648 = !DILocation(line: 816, column: 9, scope: !3646)
!3649 = !DILocation(line: 815, column: 37, scope: !3646)
!3650 = !DILocation(line: 815, column: 3, scope: !3646)
!3651 = distinct !{!3651, !3643, !3652}
!3652 = !DILocation(line: 817, column: 14, scope: !3640)
!3653 = !DILocation(line: 819, column: 1, scope: !3632)
!3654 = distinct !DISubprogram(name: "ignore_edge", scope: !3, file: !3, line: 804, type: !3655, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!682, !2081}
!3657 = !{!3658}
!3658 = !DILocalVariable(name: "e", arg: 1, scope: !3654, file: !3, line: 804, type: !2081)
!3659 = !DILocation(line: 0, scope: !3654)
!3660 = !DILocation(line: 806, column: 15, scope: !3654)
!3661 = !DILocation(line: 806, column: 10, scope: !3654)
!3662 = !DILocation(line: 806, column: 3, scope: !3654)
!3663 = distinct !DISubprogram(name: "VEC_funct_state_heap_free", scope: !3, file: !3, line: 101, type: !3664, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3667)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "vec_", arg: 1, scope: !3663, file: !3, line: 101, type: !3666)
!3669 = !DILocation(line: 0, scope: !3663)
!3670 = !DILocation(line: 101, column: 1, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 101, column: 1)
!3672 = !DILocation(line: 101, column: 1, scope: !3663)
!3673 = distinct !DISubprogram(name: "finish_state", scope: !3, file: !3, line: 112, type: !2161, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2404)
!3674 = !DILocation(line: 114, column: 9, scope: !3673)
!3675 = !DILocation(line: 114, column: 3, scope: !3673)
!3676 = !DILocation(line: 115, column: 1, scope: !3673)
!3677 = distinct !DISubprogram(name: "VEC_funct_state_base_length", scope: !3, file: !3, line: 100, type: !3678, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3682)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!7, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!3682 = !{!3683}
!3683 = !DILocalVariable(name: "vec_", arg: 1, scope: !3677, file: !3, line: 100, type: !3680)
!3684 = !DILocation(line: 0, scope: !3677)
!3685 = !DILocation(line: 100, column: 1, scope: !3677)
!3686 = distinct !DISubprogram(name: "VEC_funct_state_base_index", scope: !3, file: !3, line: 100, type: !3687, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!2367, !3680, !7}
!3689 = !{!3690, !3691}
!3690 = !DILocalVariable(name: "vec_", arg: 1, scope: !3686, file: !3, line: 100, type: !3680)
!3691 = !DILocalVariable(name: "ix_", arg: 2, scope: !3686, file: !3, line: 100, type: !7)
!3692 = !DILocation(line: 0, scope: !3686)
!3693 = !DILocation(line: 100, column: 1, scope: !3686)
!3694 = !DILocation(line: 645, column: 7, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 645, column: 7)
!3696 = !DILocation(line: 645, column: 7, scope: !2403)
!3697 = !DILocation(line: 648, column: 10, scope: !2403)
!3698 = !DILocation(line: 651, column: 7, scope: !2403)
!3699 = !DILocation(line: 650, column: 28, scope: !2403)
!3700 = !DILocation(line: 653, column: 7, scope: !2403)
!3701 = !DILocation(line: 652, column: 32, scope: !2403)
!3702 = !DILocation(line: 655, column: 7, scope: !2403)
!3703 = !DILocation(line: 654, column: 34, scope: !2403)
!3704 = !DILocation(line: 656, column: 1, scope: !2403)
!3705 = distinct !DISubprogram(name: "set_function_state", scope: !3, file: !3, line: 132, type: !3706, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !691, !2367}
!3708 = !{!3709, !3710}
!3709 = !DILocalVariable(name: "node", arg: 1, scope: !3705, file: !3, line: 132, type: !691)
!3710 = !DILocalVariable(name: "s", arg: 2, scope: !3705, file: !3, line: 132, type: !2367)
!3711 = !DILocation(line: 0, scope: !3705)
!3712 = !DILocation(line: 134, column: 8, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 134, column: 7)
!3714 = !DILocation(line: 135, column: 7, scope: !3713)
!3715 = !DILocation(line: 0, scope: !3713)
!3716 = !DILocation(line: 136, column: 6, scope: !3713)
!3717 = !DILocation(line: 135, column: 10, scope: !3713)
!3718 = !DILocation(line: 135, column: 75, scope: !3713)
!3719 = !DILocation(line: 135, column: 52, scope: !3713)
!3720 = !DILocation(line: 134, column: 7, scope: !3705)
!3721 = !DILocation(line: 137, column: 3, scope: !3705)
!3722 = !DILocation(line: 138, column: 1, scope: !3705)
!3723 = distinct !DISubprogram(name: "analyze_function", scope: !3, file: !3, line: 483, type: !3724, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!2367, !691, !682}
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3733, !3743, !3754, !3766, !3767}
!3727 = !DILocalVariable(name: "fn", arg: 1, scope: !3723, file: !3, line: 483, type: !691)
!3728 = !DILocalVariable(name: "ipa", arg: 2, scope: !3723, file: !3, line: 483, type: !682)
!3729 = !DILocalVariable(name: "decl", scope: !3723, file: !3, line: 485, type: !695)
!3730 = !DILocalVariable(name: "old_decl", scope: !3723, file: !3, line: 486, type: !695)
!3731 = !DILocalVariable(name: "l", scope: !3723, file: !3, line: 487, type: !2367)
!3732 = !DILocalVariable(name: "this_block", scope: !3723, file: !3, line: 488, type: !1506)
!3733 = !DILocalVariable(name: "gsi", scope: !3734, file: !3, line: 508, type: !3737)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 507, column: 5)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 506, column: 3)
!3736 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 506, column: 3)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !602, line: 265, baseType: !3738)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 254, size: 192, elements: !3739)
!3739 = !{!3740, !3741, !3742}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3738, file: !602, line: 257, baseType: !1014, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3738, file: !602, line: 263, baseType: !1009, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3738, file: !602, line: 264, baseType: !1506, size: 64, offset: 128)
!3743 = !DILocalVariable(name: "wi", scope: !3734, file: !3, line: 509, type: !3744)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "walk_stmt_info", file: !602, line: 4652, size: 448, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !3744, file: !602, line: 4655, baseType: !3737, size: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3744, file: !602, line: 4659, baseType: !687, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "pset", scope: !3744, file: !602, line: 4664, baseType: !2407, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "val_only", scope: !3744, file: !602, line: 4678, baseType: !682, size: 8, offset: 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "is_lhs", scope: !3744, file: !602, line: 4681, baseType: !682, size: 8, offset: 328)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3744, file: !602, line: 4685, baseType: !682, size: 8, offset: 336)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "want_locations", scope: !3744, file: !602, line: 4688, baseType: !682, size: 8, offset: 344)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !3744, file: !602, line: 4694, baseType: !695, size: 64, offset: 384)
!3754 = !DILocalVariable(name: "li", scope: !3755, file: !3, line: 545, type: !3761)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 544, column: 6)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 537, column: 8)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 529, column: 9)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 528, column: 11)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 524, column: 5)
!3760 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 523, column: 7)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !513, line: 515, baseType: !3762)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 508, size: 128, elements: !3763)
!3763 = !{!3764, !3765}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !3762, file: !513, line: 511, baseType: !2370, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3762, file: !513, line: 514, baseType: !7, size: 32, offset: 64)
!3766 = !DILocalVariable(name: "loop", scope: !3755, file: !3, line: 546, type: !1235)
!3767 = !DILabel(scope: !3723, name: "end", file: !3, line: 522)
!3768 = !DILocation(line: 0, scope: !3723)
!3769 = !DILocation(line: 485, column: 19, scope: !3723)
!3770 = !DILocation(line: 486, column: 19, scope: !3723)
!3771 = !DILocation(line: 490, column: 7, scope: !3723)
!3772 = !DILocation(line: 491, column: 6, scope: !3723)
!3773 = !DILocation(line: 491, column: 23, scope: !3723)
!3774 = !DILocation(line: 492, column: 6, scope: !3723)
!3775 = !DILocation(line: 492, column: 29, scope: !3723)
!3776 = !DILocation(line: 493, column: 6, scope: !3723)
!3777 = !DILocation(line: 493, column: 31, scope: !3723)
!3778 = !DILocation(line: 494, column: 6, scope: !3723)
!3779 = !DILocation(line: 494, column: 14, scope: !3723)
!3780 = !DILocation(line: 495, column: 6, scope: !3723)
!3781 = !DILocation(line: 495, column: 16, scope: !3723)
!3782 = !DILocation(line: 497, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 497, column: 7)
!3784 = !DILocation(line: 497, column: 7, scope: !3723)
!3785 = !DILocation(line: 500, column: 9, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !3, line: 498, column: 5)
!3787 = !DILocation(line: 499, column: 7, scope: !3786)
!3788 = !DILocation(line: 501, column: 5, scope: !3786)
!3789 = !DILocation(line: 503, column: 14, scope: !3723)
!3790 = !DILocation(line: 503, column: 3, scope: !3723)
!3791 = !DILocation(line: 504, column: 25, scope: !3723)
!3792 = !DILocation(line: 506, column: 3, scope: !3736)
!3793 = !DILocation(line: 0, scope: !3734)
!3794 = !DILocation(line: 0, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 512, column: 7)
!3796 = !DILocation(line: 506, column: 3, scope: !3735)
!3797 = !DILocation(line: 0, scope: !3736)
!3798 = !DILocation(line: 508, column: 7, scope: !3734)
!3799 = !DILocation(line: 509, column: 7, scope: !3734)
!3800 = !DILocation(line: 511, column: 7, scope: !3734)
!3801 = !DILocation(line: 512, column: 18, scope: !3795)
!3802 = !DILocation(line: 512, column: 12, scope: !3795)
!3803 = !DILocation(line: 513, column: 6, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 512, column: 7)
!3805 = !DILocation(line: 513, column: 5, scope: !3804)
!3806 = !DILocation(line: 512, column: 7, scope: !3795)
!3807 = !DILocation(line: 516, column: 4, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 515, column: 2)
!3809 = !DILocation(line: 517, column: 11, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 517, column: 8)
!3811 = !DILocation(line: 517, column: 28, scope: !3810)
!3812 = !DILocation(line: 517, column: 43, scope: !3810)
!3813 = !DILocation(line: 517, column: 49, scope: !3810)
!3814 = !DILocation(line: 517, column: 46, scope: !3810)
!3815 = !DILocation(line: 517, column: 57, scope: !3810)
!3816 = !DILocation(line: 517, column: 63, scope: !3810)
!3817 = !DILocation(line: 517, column: 60, scope: !3810)
!3818 = !DILocation(line: 517, column: 8, scope: !3808)
!3819 = !DILocation(line: 514, column: 5, scope: !3804)
!3820 = !DILocation(line: 512, column: 7, scope: !3804)
!3821 = distinct !{!3821, !3806, !3822}
!3822 = !DILocation(line: 519, column: 2, scope: !3795)
!3823 = !DILocation(line: 520, column: 5, scope: !3735)
!3824 = !DILocation(line: 0, scope: !3735)
!3825 = distinct !{!3825, !3792, !3826}
!3826 = !DILocation(line: 520, column: 5, scope: !3736)
!3827 = !DILocation(line: 522, column: 1, scope: !3723)
!3828 = !DILocation(line: 523, column: 10, scope: !3760)
!3829 = !DILocation(line: 523, column: 27, scope: !3760)
!3830 = !DILocation(line: 523, column: 7, scope: !3723)
!3831 = !DILocation(line: 528, column: 11, scope: !3758)
!3832 = !DILocation(line: 528, column: 11, scope: !3759)
!3833 = !DILocation(line: 533, column: 4, scope: !3757)
!3834 = !DILocation(line: 535, column: 8, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 535, column: 8)
!3836 = !DILocation(line: 535, column: 18, scope: !3835)
!3837 = !DILocation(line: 535, column: 22, scope: !3835)
!3838 = !DILocation(line: 535, column: 33, scope: !3835)
!3839 = !DILocation(line: 535, column: 8, scope: !3757)
!3840 = !DILocation(line: 536, column: 6, scope: !3835)
!3841 = !DILocation(line: 537, column: 8, scope: !3756)
!3842 = !DILocation(line: 537, column: 8, scope: !3757)
!3843 = !DILocation(line: 539, column: 12, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 539, column: 12)
!3845 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 538, column: 6)
!3846 = !DILocation(line: 539, column: 12, scope: !3845)
!3847 = !DILocation(line: 540, column: 10, scope: !3844)
!3848 = !DILocation(line: 541, column: 19, scope: !3845)
!3849 = !DILocation(line: 542, column: 6, scope: !3845)
!3850 = !DILocation(line: 545, column: 8, scope: !3755)
!3851 = !DILocation(line: 546, column: 8, scope: !3755)
!3852 = !DILocation(line: 547, column: 8, scope: !3755)
!3853 = !DILocation(line: 0, scope: !3755)
!3854 = !DILocation(line: 548, column: 8, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 548, column: 8)
!3856 = !DILocation(line: 548, column: 8, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 548, column: 8)
!3858 = !DILocation(line: 549, column: 8, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 549, column: 7)
!3860 = !DILocation(line: 549, column: 7, scope: !3857)
!3861 = !DILocation(line: 551, column: 11, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 551, column: 11)
!3863 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 550, column: 5)
!3864 = !DILocation(line: 551, column: 11, scope: !3863)
!3865 = !DILocation(line: 552, column: 74, scope: !3862)
!3866 = !DILocation(line: 552, column: 80, scope: !3862)
!3867 = !DILocation(line: 552, column: 9, scope: !3862)
!3868 = !DILocation(line: 553, column: 18, scope: !3863)
!3869 = !DILocation(line: 554, column: 7, scope: !3863)
!3870 = distinct !{!3870, !3854, !3871}
!3871 = !DILocation(line: 555, column: 5, scope: !3855)
!3872 = !DILocation(line: 556, column: 8, scope: !3755)
!3873 = !DILocation(line: 557, column: 6, scope: !3756)
!3874 = !DILocation(line: 558, column: 11, scope: !3757)
!3875 = !DILocation(line: 559, column: 2, scope: !3757)
!3876 = !DILocation(line: 562, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 562, column: 7)
!3878 = !DILocation(line: 562, column: 7, scope: !3723)
!3879 = !DILocation(line: 564, column: 27, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 563, column: 5)
!3881 = !DILocation(line: 565, column: 33, scope: !3880)
!3882 = !DILocation(line: 566, column: 12, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 566, column: 11)
!3884 = !DILocation(line: 566, column: 11, scope: !3880)
!3885 = !DILocation(line: 567, column: 20, scope: !3883)
!3886 = !DILocation(line: 567, column: 57, scope: !3883)
!3887 = !DILocation(line: 567, column: 9, scope: !3883)
!3888 = !DILocation(line: 569, column: 7, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 569, column: 7)
!3890 = !DILocation(line: 569, column: 7, scope: !3723)
!3891 = !DILocation(line: 571, column: 14, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 571, column: 11)
!3893 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 570, column: 5)
!3894 = !DILocation(line: 571, column: 31, scope: !3892)
!3895 = !DILocation(line: 571, column: 11, scope: !3893)
!3896 = !DILocation(line: 572, column: 29, scope: !3892)
!3897 = !DILocation(line: 572, column: 9, scope: !3892)
!3898 = !DILocation(line: 573, column: 33, scope: !3893)
!3899 = !DILocation(line: 574, column: 12, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 574, column: 11)
!3901 = !DILocation(line: 574, column: 11, scope: !3893)
!3902 = !DILocation(line: 575, column: 20, scope: !3900)
!3903 = !DILocation(line: 575, column: 57, scope: !3900)
!3904 = !DILocation(line: 575, column: 9, scope: !3900)
!3905 = !DILocation(line: 577, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 577, column: 7)
!3907 = !DILocation(line: 577, column: 7, scope: !3723)
!3908 = !DILocation(line: 578, column: 18, scope: !3906)
!3909 = !DILocation(line: 578, column: 5, scope: !3906)
!3910 = !DILocation(line: 580, column: 3, scope: !3723)
!3911 = !DILocation(line: 581, column: 25, scope: !3723)
!3912 = !DILocation(line: 582, column: 7, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 582, column: 7)
!3914 = !DILocation(line: 582, column: 7, scope: !3723)
!3915 = !DILocation(line: 584, column: 14, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 584, column: 11)
!3917 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 583, column: 5)
!3918 = !DILocation(line: 584, column: 11, scope: !3916)
!3919 = !DILocation(line: 584, column: 11, scope: !3917)
!3920 = !DILocation(line: 585, column: 9, scope: !3916)
!3921 = !DILocation(line: 586, column: 14, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 586, column: 11)
!3923 = !DILocation(line: 586, column: 11, scope: !3922)
!3924 = !DILocation(line: 586, column: 11, scope: !3917)
!3925 = !DILocation(line: 587, column: 18, scope: !3922)
!3926 = !DILocation(line: 587, column: 9, scope: !3922)
!3927 = !DILocation(line: 588, column: 14, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 588, column: 11)
!3929 = !DILocation(line: 588, column: 31, scope: !3928)
!3930 = !DILocation(line: 588, column: 11, scope: !3917)
!3931 = !DILocation(line: 589, column: 18, scope: !3928)
!3932 = !DILocation(line: 589, column: 9, scope: !3928)
!3933 = !DILocation(line: 590, column: 14, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 590, column: 11)
!3935 = !DILocation(line: 590, column: 31, scope: !3934)
!3936 = !DILocation(line: 590, column: 11, scope: !3917)
!3937 = !DILocation(line: 591, column: 18, scope: !3934)
!3938 = !DILocation(line: 591, column: 9, scope: !3934)
!3939 = !DILocation(line: 594, column: 1, scope: !3723)
!3940 = distinct !DISubprogram(name: "remove_node_data", scope: !3, file: !3, line: 630, type: !3941, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !691, !687}
!3943 = !{!3944, !3945}
!3944 = !DILocalVariable(name: "node", arg: 1, scope: !3940, file: !3, line: 630, type: !691)
!3945 = !DILocalVariable(name: "data", arg: 2, scope: !3940, file: !3, line: 630, type: !687)
!3946 = !DILocation(line: 0, scope: !3940)
!3947 = !DILocation(line: 632, column: 7, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 632, column: 7)
!3949 = !DILocation(line: 632, column: 7, scope: !3940)
!3950 = !DILocation(line: 634, column: 13, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 633, column: 5)
!3952 = !DILocation(line: 634, column: 7, scope: !3951)
!3953 = !DILocation(line: 635, column: 7, scope: !3951)
!3954 = !DILocation(line: 636, column: 5, scope: !3951)
!3955 = !DILocation(line: 637, column: 1, scope: !3940)
!3956 = distinct !DISubprogram(name: "duplicate_node_data", scope: !3, file: !3, line: 615, type: !3957, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !691, !691, !687}
!3959 = !{!3960, !3961, !3962, !3963}
!3960 = !DILocalVariable(name: "src", arg: 1, scope: !3956, file: !3, line: 615, type: !691)
!3961 = !DILocalVariable(name: "dst", arg: 2, scope: !3956, file: !3, line: 615, type: !691)
!3962 = !DILocalVariable(name: "data", arg: 3, scope: !3956, file: !3, line: 616, type: !687)
!3963 = !DILocalVariable(name: "l", scope: !3964, file: !3, line: 620, type: !2367)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 619, column: 5)
!3965 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 618, column: 7)
!3966 = !DILocation(line: 0, scope: !3956)
!3967 = !DILocation(line: 618, column: 7, scope: !3965)
!3968 = !DILocation(line: 618, column: 7, scope: !3956)
!3969 = !DILocation(line: 620, column: 23, scope: !3964)
!3970 = !DILocation(line: 0, scope: !3964)
!3971 = !DILocation(line: 621, column: 7, scope: !3964)
!3972 = !DILocation(line: 622, column: 18, scope: !3964)
!3973 = !DILocation(line: 622, column: 7, scope: !3964)
!3974 = !DILocation(line: 623, column: 7, scope: !3964)
!3975 = !DILocation(line: 624, column: 5, scope: !3964)
!3976 = !DILocation(line: 625, column: 1, scope: !3956)
!3977 = distinct !DISubprogram(name: "add_new_function", scope: !3, file: !3, line: 598, type: !3941, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3978)
!3978 = !{!3979, !3980}
!3979 = !DILocalVariable(name: "node", arg: 1, scope: !3977, file: !3, line: 598, type: !691)
!3980 = !DILocalVariable(name: "data", arg: 2, scope: !3977, file: !3, line: 598, type: !687)
!3981 = !DILocation(line: 0, scope: !3977)
!3982 = !DILocation(line: 600, column: 6, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 600, column: 6)
!3984 = !DILocation(line: 600, column: 47, scope: !3983)
!3985 = !DILocation(line: 600, column: 6, scope: !3977)
!3986 = !DILocation(line: 606, column: 19, scope: !3977)
!3987 = !DILocation(line: 606, column: 17, scope: !3977)
!3988 = !DILocation(line: 607, column: 29, scope: !3977)
!3989 = !DILocation(line: 607, column: 3, scope: !3977)
!3990 = !DILocation(line: 608, column: 24, scope: !3977)
!3991 = !DILocation(line: 608, column: 3, scope: !3977)
!3992 = !DILocation(line: 609, column: 17, scope: !3977)
!3993 = !DILocation(line: 610, column: 1, scope: !3977)
!3994 = distinct !DISubprogram(name: "VEC_funct_state_heap_safe_grow_cleared", scope: !3, file: !3, line: 101, type: !3995, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3666, !683}
!3997 = !{!3998, !3999, !4000}
!3998 = !DILocalVariable(name: "vec_", arg: 1, scope: !3994, file: !3, line: 101, type: !3666)
!3999 = !DILocalVariable(name: "size_", arg: 2, scope: !3994, file: !3, line: 101, type: !683)
!4000 = !DILocalVariable(name: "oldsize", scope: !3994, file: !3, line: 101, type: !683)
!4001 = !DILocation(line: 0, scope: !3994)
!4002 = !DILocation(line: 101, column: 1, scope: !3994)
!4003 = distinct !DISubprogram(name: "VEC_funct_state_base_replace", scope: !3, file: !3, line: 100, type: !4004, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4007)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!2367, !4006, !7, !2367}
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!4007 = !{!4008, !4009, !4010, !4011}
!4008 = !DILocalVariable(name: "vec_", arg: 1, scope: !4003, file: !3, line: 100, type: !4006)
!4009 = !DILocalVariable(name: "ix_", arg: 2, scope: !4003, file: !3, line: 100, type: !7)
!4010 = !DILocalVariable(name: "obj_", arg: 3, scope: !4003, file: !3, line: 100, type: !2367)
!4011 = !DILocalVariable(name: "old_obj_", scope: !4003, file: !3, line: 100, type: !2367)
!4012 = !DILocation(line: 0, scope: !4003)
!4013 = !DILocation(line: 100, column: 1, scope: !4003)
!4014 = distinct !DISubprogram(name: "VEC_funct_state_heap_safe_grow", scope: !3, file: !3, line: 101, type: !3995, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4015)
!4015 = !{!4016, !4017}
!4016 = !DILocalVariable(name: "vec_", arg: 1, scope: !4014, file: !3, line: 101, type: !3666)
!4017 = !DILocalVariable(name: "size_", arg: 2, scope: !4014, file: !3, line: 101, type: !683)
!4018 = !DILocation(line: 0, scope: !4014)
!4019 = !DILocation(line: 101, column: 1, scope: !4014)
!4020 = distinct !DISubprogram(name: "VEC_funct_state_base_address", scope: !3, file: !3, line: 100, type: !4021, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4024)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!4023, !4006}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "vec_", arg: 1, scope: !4020, file: !3, line: 100, type: !4006)
!4026 = !DILocation(line: 0, scope: !4020)
!4027 = !DILocation(line: 100, column: 1, scope: !4020)
!4028 = distinct !DISubprogram(name: "VEC_funct_state_heap_reserve_exact", scope: !3, file: !3, line: 101, type: !4029, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!683, !3666, !683}
!4031 = !{!4032, !4033, !4034}
!4032 = !DILocalVariable(name: "vec_", arg: 1, scope: !4028, file: !3, line: 101, type: !3666)
!4033 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4028, file: !3, line: 101, type: !683)
!4034 = !DILocalVariable(name: "extend", scope: !4028, file: !3, line: 101, type: !683)
!4035 = !DILocation(line: 0, scope: !4028)
!4036 = !DILocation(line: 101, column: 1, scope: !4028)
!4037 = !DILocation(line: 101, column: 1, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 101, column: 1)
!4039 = distinct !DISubprogram(name: "VEC_funct_state_base_space", scope: !3, file: !3, line: 100, type: !4040, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!683, !4006, !683}
!4042 = !{!4043, !4044}
!4043 = !DILocalVariable(name: "vec_", arg: 1, scope: !4039, file: !3, line: 100, type: !4006)
!4044 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4039, file: !3, line: 100, type: !683)
!4045 = !DILocation(line: 0, scope: !4039)
!4046 = !DILocation(line: 100, column: 1, scope: !4039)
!4047 = distinct !DISubprogram(name: "gsi_start_bb", scope: !602, file: !602, line: 4418, type: !4048, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!3737, !1506}
!4050 = !{!4051, !4052, !4053}
!4051 = !DILocalVariable(name: "bb", arg: 1, scope: !4047, file: !602, line: 4418, type: !1506)
!4052 = !DILocalVariable(name: "i", scope: !4047, file: !602, line: 4420, type: !3737)
!4053 = !DILocalVariable(name: "seq", scope: !4047, file: !602, line: 4421, type: !1009)
!4054 = !DILocation(line: 0, scope: !4047)
!4055 = !DILocation(line: 4420, column: 24, scope: !4047)
!4056 = !DILocation(line: 4423, column: 9, scope: !4047)
!4057 = !DILocation(line: 4424, column: 11, scope: !4047)
!4058 = !DILocation(line: 4424, column: 5, scope: !4047)
!4059 = !DILocation(line: 4424, column: 9, scope: !4047)
!4060 = !DILocation(line: 4425, column: 5, scope: !4047)
!4061 = !DILocation(line: 4425, column: 9, scope: !4047)
!4062 = !DILocation(line: 4426, column: 5, scope: !4047)
!4063 = !DILocation(line: 4426, column: 8, scope: !4047)
!4064 = !DILocation(line: 4429, column: 1, scope: !4047)
!4065 = distinct !DISubprogram(name: "gsi_end_p", scope: !602, file: !602, line: 4467, type: !4066, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!682, !3737}
!4068 = !{!4069}
!4069 = !DILocalVariable(name: "i", arg: 1, scope: !4065, file: !602, line: 4467, type: !3737)
!4070 = !DILocation(line: 4467, column: 33, scope: !4065)
!4071 = !DILocation(line: 4469, column: 12, scope: !4065)
!4072 = !DILocation(line: 4469, column: 16, scope: !4065)
!4073 = !DILocation(line: 4469, column: 10, scope: !4065)
!4074 = !DILocation(line: 4469, column: 3, scope: !4065)
!4075 = distinct !DISubprogram(name: "check_stmt", scope: !3, file: !3, line: 405, type: !4076, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4079)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !4078, !2367, !682}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!4079 = !{!4080, !4081, !4082, !4083, !4084, !4085}
!4080 = !DILocalVariable(name: "gsip", arg: 1, scope: !4075, file: !3, line: 405, type: !4078)
!4081 = !DILocalVariable(name: "local", arg: 2, scope: !4075, file: !3, line: 405, type: !2367)
!4082 = !DILocalVariable(name: "ipa", arg: 3, scope: !4075, file: !3, line: 405, type: !682)
!4083 = !DILocalVariable(name: "stmt", scope: !4075, file: !3, line: 407, type: !1019)
!4084 = !DILocalVariable(name: "i", scope: !4075, file: !3, line: 408, type: !7)
!4085 = !DILocalVariable(name: "op", scope: !4086, file: !3, line: 455, type: !695)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 454, column: 2)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 453, column: 7)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 453, column: 7)
!4089 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 439, column: 5)
!4090 = !DILocation(line: 0, scope: !4075)
!4091 = !DILocation(line: 407, column: 17, scope: !4075)
!4092 = !DILocation(line: 410, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 410, column: 7)
!4094 = !DILocation(line: 410, column: 7, scope: !4075)
!4095 = !DILocation(line: 413, column: 7, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 413, column: 7)
!4097 = !DILocation(line: 413, column: 7, scope: !4075)
!4098 = !DILocation(line: 415, column: 7, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 414, column: 5)
!4100 = !DILocation(line: 416, column: 26, scope: !4099)
!4101 = !DILocation(line: 416, column: 7, scope: !4099)
!4102 = !DILocation(line: 417, column: 5, scope: !4099)
!4103 = !DILocation(line: 420, column: 35, scope: !4075)
!4104 = !DILocation(line: 420, column: 3, scope: !4075)
!4105 = !DILocation(line: 422, column: 7, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 422, column: 7)
!4107 = !DILocation(line: 422, column: 26, scope: !4106)
!4108 = !DILocation(line: 423, column: 7, scope: !4106)
!4109 = !DILocation(line: 423, column: 10, scope: !4106)
!4110 = !DILocation(line: 422, column: 7, scope: !4075)
!4111 = !DILocation(line: 425, column: 11, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 425, column: 11)
!4113 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 424, column: 5)
!4114 = !DILocation(line: 425, column: 11, scope: !4113)
!4115 = !DILocation(line: 427, column: 8, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 427, column: 8)
!4117 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 426, column: 2)
!4118 = !DILocation(line: 427, column: 8, scope: !4117)
!4119 = !DILocation(line: 428, column: 6, scope: !4116)
!4120 = !DILocation(line: 429, column: 11, scope: !4117)
!4121 = !DILocation(line: 429, column: 19, scope: !4117)
!4122 = !DILocation(line: 430, column: 2, scope: !4117)
!4123 = !DILocation(line: 431, column: 11, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 431, column: 11)
!4125 = !DILocation(line: 431, column: 11, scope: !4113)
!4126 = !DILocation(line: 433, column: 8, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 433, column: 8)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 432, column: 2)
!4129 = !DILocation(line: 433, column: 8, scope: !4128)
!4130 = !DILocation(line: 434, column: 6, scope: !4127)
!4131 = !DILocation(line: 435, column: 11, scope: !4128)
!4132 = !DILocation(line: 435, column: 21, scope: !4128)
!4133 = !DILocation(line: 436, column: 2, scope: !4128)
!4134 = !DILocation(line: 438, column: 11, scope: !4075)
!4135 = !DILocation(line: 438, column: 3, scope: !4075)
!4136 = !DILocation(line: 0, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 457, column: 6)
!4138 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 456, column: 8)
!4139 = !DILocation(line: 453, column: 7, scope: !4088)
!4140 = !DILocation(line: 441, column: 7, scope: !4089)
!4141 = !DILocation(line: 442, column: 7, scope: !4089)
!4142 = !DILocation(line: 444, column: 11, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 444, column: 11)
!4144 = !DILocation(line: 444, column: 11, scope: !4089)
!4145 = !DILocation(line: 447, column: 15, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 447, column: 15)
!4147 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 446, column: 2)
!4148 = !DILocation(line: 447, column: 15, scope: !4147)
!4149 = !DILocation(line: 448, column: 13, scope: !4146)
!4150 = !DILocation(line: 449, column: 11, scope: !4147)
!4151 = !DILocation(line: 449, column: 28, scope: !4147)
!4152 = !DILocation(line: 450, column: 2, scope: !4147)
!4153 = !DILocation(line: 0, scope: !4088)
!4154 = !DILocation(line: 453, column: 23, scope: !4087)
!4155 = !DILocation(line: 453, column: 21, scope: !4087)
!4156 = !DILocation(line: 455, column: 14, scope: !4086)
!4157 = !DILocation(line: 0, scope: !4086)
!4158 = !DILocation(line: 456, column: 25, scope: !4138)
!4159 = !DILocation(line: 456, column: 42, scope: !4138)
!4160 = !DILocation(line: 456, column: 8, scope: !4138)
!4161 = !DILocation(line: 456, column: 68, scope: !4138)
!4162 = !DILocation(line: 456, column: 8, scope: !4086)
!4163 = !DILocation(line: 458, column: 19, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 458, column: 19)
!4165 = !DILocation(line: 458, column: 19, scope: !4137)
!4166 = !DILocation(line: 459, column: 17, scope: !4164)
!4167 = !DILocation(line: 461, column: 32, scope: !4137)
!4168 = !DILocation(line: 462, column: 6, scope: !4137)
!4169 = !DILocation(line: 453, column: 53, scope: !4087)
!4170 = !DILocation(line: 453, column: 7, scope: !4087)
!4171 = distinct !{!4171, !4139, !4172}
!4172 = !DILocation(line: 463, column: 2, scope: !4088)
!4173 = !DILocation(line: 464, column: 11, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 464, column: 11)
!4175 = !DILocation(line: 464, column: 11, scope: !4089)
!4176 = !DILocation(line: 466, column: 8, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 466, column: 8)
!4178 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 465, column: 2)
!4179 = !DILocation(line: 466, column: 8, scope: !4178)
!4180 = !DILocation(line: 467, column: 6, scope: !4177)
!4181 = !DILocation(line: 469, column: 28, scope: !4178)
!4182 = !DILocation(line: 470, column: 18, scope: !4178)
!4183 = !DILocation(line: 470, column: 26, scope: !4178)
!4184 = !DILocation(line: 471, column: 2, scope: !4178)
!4185 = !DILocation(line: 476, column: 1, scope: !4075)
!4186 = distinct !DISubprogram(name: "gsi_next", scope: !602, file: !602, line: 4485, type: !4187, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !4078}
!4189 = !{!4190}
!4190 = !DILocalVariable(name: "i", arg: 1, scope: !4186, file: !602, line: 4485, type: !4078)
!4191 = !DILocation(line: 0, scope: !4186)
!4192 = !DILocation(line: 4487, column: 15, scope: !4186)
!4193 = !DILocation(line: 4487, column: 20, scope: !4186)
!4194 = !DILocation(line: 4487, column: 10, scope: !4186)
!4195 = !DILocation(line: 4488, column: 1, scope: !4186)
!4196 = distinct !DISubprogram(name: "fel_init", scope: !513, file: !513, line: 535, type: !4197, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4201)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !4199, !4200, !7}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207}
!4202 = !DILocalVariable(name: "li", arg: 1, scope: !4196, file: !513, line: 535, type: !4199)
!4203 = !DILocalVariable(name: "loop", arg: 2, scope: !4196, file: !513, line: 535, type: !4200)
!4204 = !DILocalVariable(name: "flags", arg: 3, scope: !4196, file: !513, line: 535, type: !7)
!4205 = !DILocalVariable(name: "aloop", scope: !4196, file: !513, line: 537, type: !1235)
!4206 = !DILocalVariable(name: "i", scope: !4196, file: !513, line: 538, type: !7)
!4207 = !DILocalVariable(name: "mn", scope: !4196, file: !513, line: 539, type: !683)
!4208 = !DILocation(line: 0, scope: !4196)
!4209 = !DILocation(line: 541, column: 7, scope: !4196)
!4210 = !DILocation(line: 541, column: 11, scope: !4196)
!4211 = !DILocation(line: 542, column: 8, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4196, file: !513, line: 542, column: 7)
!4213 = !DILocation(line: 542, column: 7, scope: !4196)
!4214 = !DILocation(line: 544, column: 11, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4212, file: !513, line: 543, column: 5)
!4216 = !DILocation(line: 544, column: 20, scope: !4215)
!4217 = !DILocation(line: 545, column: 13, scope: !4215)
!4218 = !DILocation(line: 546, column: 7, scope: !4215)
!4219 = !DILocation(line: 549, column: 18, scope: !4196)
!4220 = !DILocation(line: 549, column: 7, scope: !4196)
!4221 = !DILocation(line: 549, column: 16, scope: !4196)
!4222 = !DILocation(line: 0, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !513, line: 560, column: 12)
!4224 = distinct !DILexicalBlock(scope: !4196, file: !513, line: 552, column: 7)
!4225 = !DILocation(line: 590, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4223, file: !513, line: 587, column: 5)
!4227 = !DILocation(line: 592, column: 8, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !513, line: 592, column: 8)
!4229 = distinct !DILexicalBlock(scope: !4226, file: !513, line: 591, column: 2)
!4230 = !DILocation(line: 592, column: 15, scope: !4228)
!4231 = !DILocation(line: 592, column: 19, scope: !4228)
!4232 = !DILocation(line: 592, column: 8, scope: !4229)
!4233 = !DILocation(line: 593, column: 6, scope: !4228)
!4234 = !DILocation(line: 595, column: 15, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4229, file: !513, line: 595, column: 8)
!4236 = !DILocation(line: 595, column: 21, scope: !4235)
!4237 = !DILocation(line: 595, column: 8, scope: !4229)
!4238 = !DILocation(line: 599, column: 8, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4235, file: !513, line: 598, column: 6)
!4240 = !DILocation(line: 596, column: 21, scope: !4235)
!4241 = !DILocation(line: 596, column: 6, scope: !4235)
!4242 = !DILocation(line: 599, column: 15, scope: !4239)
!4243 = !DILocation(line: 599, column: 21, scope: !4239)
!4244 = !DILocation(line: 599, column: 29, scope: !4239)
!4245 = !DILocation(line: 599, column: 39, scope: !4239)
!4246 = !DILocation(line: 599, column: 44, scope: !4239)
!4247 = !DILocation(line: 0, scope: !4239)
!4248 = !DILocation(line: 600, column: 11, scope: !4239)
!4249 = distinct !{!4249, !4238, !4250}
!4250 = !DILocation(line: 600, column: 28, scope: !4239)
!4251 = !DILocation(line: 601, column: 18, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4239, file: !513, line: 601, column: 12)
!4253 = !DILocation(line: 601, column: 12, scope: !4239)
!4254 = !DILocation(line: 603, column: 23, scope: !4239)
!4255 = distinct !{!4255, !4225, !4256}
!4256 = !DILocation(line: 605, column: 2, scope: !4226)
!4257 = !DILocation(line: 608, column: 3, scope: !4196)
!4258 = !DILocation(line: 609, column: 1, scope: !4196)
!4259 = distinct !DISubprogram(name: "fel_next", scope: !513, file: !513, line: 518, type: !4260, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !4199, !4200}
!4262 = !{!4263, !4264, !4265}
!4263 = !DILocalVariable(name: "li", arg: 1, scope: !4259, file: !513, line: 518, type: !4199)
!4264 = !DILocalVariable(name: "loop", arg: 2, scope: !4259, file: !513, line: 518, type: !4200)
!4265 = !DILocalVariable(name: "anum", scope: !4259, file: !513, line: 520, type: !683)
!4266 = !DILocation(line: 0, scope: !4259)
!4267 = !DILocation(line: 520, column: 3, scope: !4259)
!4268 = !DILocation(line: 522, column: 3, scope: !4259)
!4269 = !DILocation(line: 522, column: 10, scope: !4259)
!4270 = !DILocation(line: 524, column: 14, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4259, file: !513, line: 523, column: 5)
!4272 = !DILocation(line: 525, column: 25, scope: !4271)
!4273 = !DILocation(line: 525, column: 15, scope: !4271)
!4274 = !DILocation(line: 525, column: 13, scope: !4271)
!4275 = !DILocation(line: 526, column: 11, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4271, file: !513, line: 526, column: 11)
!4277 = !DILocation(line: 526, column: 11, scope: !4271)
!4278 = distinct !{!4278, !4268, !4279}
!4279 = !DILocation(line: 528, column: 5, scope: !4259)
!4280 = !DILocation(line: 530, column: 3, scope: !4259)
!4281 = !DILocation(line: 531, column: 9, scope: !4259)
!4282 = !DILocation(line: 532, column: 1, scope: !4259)
!4283 = distinct !DISubprogram(name: "bb_seq", scope: !602, file: !602, line: 237, type: !4284, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4289)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!1009, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !696, line: 112, baseType: !4287)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!4289 = !{!4290}
!4290 = !DILocalVariable(name: "bb", arg: 1, scope: !4283, file: !602, line: 237, type: !4286)
!4291 = !DILocation(line: 0, scope: !4283)
!4292 = !DILocation(line: 239, column: 17, scope: !4283)
!4293 = !DILocation(line: 239, column: 23, scope: !4283)
!4294 = !DILocation(line: 239, column: 33, scope: !4283)
!4295 = !DILocation(line: 239, column: 43, scope: !4283)
!4296 = !DILocation(line: 239, column: 36, scope: !4283)
!4297 = !DILocation(line: 239, column: 10, scope: !4283)
!4298 = !DILocation(line: 239, column: 68, scope: !4283)
!4299 = !DILocation(line: 239, column: 3, scope: !4283)
!4300 = distinct !DISubprogram(name: "gimple_seq_first", scope: !602, file: !602, line: 159, type: !4301, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4306)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!1014, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !696, line: 67, baseType: !4304)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!4306 = !{!4307}
!4307 = !DILocalVariable(name: "s", arg: 1, scope: !4300, file: !602, line: 159, type: !4303)
!4308 = !DILocation(line: 0, scope: !4300)
!4309 = !DILocation(line: 161, column: 10, scope: !4300)
!4310 = !DILocation(line: 161, column: 17, scope: !4300)
!4311 = !DILocation(line: 161, column: 3, scope: !4300)
!4312 = distinct !DISubprogram(name: "gsi_stmt", scope: !602, file: !602, line: 4501, type: !4313, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!1019, !3737}
!4315 = !{!4316}
!4316 = !DILocalVariable(name: "i", arg: 1, scope: !4312, file: !602, line: 4501, type: !3737)
!4317 = !DILocation(line: 4501, column: 32, scope: !4312)
!4318 = !DILocation(line: 4503, column: 12, scope: !4312)
!4319 = !DILocation(line: 4503, column: 17, scope: !4312)
!4320 = !DILocation(line: 4503, column: 3, scope: !4312)
!4321 = distinct !DISubprogram(name: "is_gimple_debug", scope: !602, file: !602, line: 3249, type: !4322, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4325)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!682, !4324}
!4324 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !696, line: 60, baseType: !2368)
!4325 = !{!4326}
!4326 = !DILocalVariable(name: "gs", arg: 1, scope: !4321, file: !602, line: 3249, type: !4324)
!4327 = !DILocation(line: 0, scope: !4321)
!4328 = !DILocation(line: 3251, column: 10, scope: !4321)
!4329 = !DILocation(line: 3251, column: 27, scope: !4321)
!4330 = !DILocation(line: 3251, column: 3, scope: !4321)
!4331 = distinct !DISubprogram(name: "check_load", scope: !3, file: !3, line: 381, type: !4332, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4334)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!682, !1019, !695, !687}
!4334 = !{!4335, !4336, !4337}
!4335 = !DILocalVariable(name: "stmt", arg: 1, scope: !4331, file: !3, line: 381, type: !1019)
!4336 = !DILocalVariable(name: "op", arg: 2, scope: !4331, file: !3, line: 381, type: !695)
!4337 = !DILocalVariable(name: "data", arg: 3, scope: !4331, file: !3, line: 381, type: !687)
!4338 = !DILocation(line: 0, scope: !4331)
!4339 = !DILocation(line: 383, column: 7, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 383, column: 7)
!4341 = !DILocation(line: 0, scope: !4340)
!4342 = !DILocation(line: 383, column: 7, scope: !4331)
!4343 = !DILocation(line: 384, column: 5, scope: !4340)
!4344 = !DILocation(line: 386, column: 5, scope: !4340)
!4345 = !DILocation(line: 387, column: 3, scope: !4331)
!4346 = distinct !DISubprogram(name: "check_store", scope: !3, file: !3, line: 393, type: !4332, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4347)
!4347 = !{!4348, !4349, !4350}
!4348 = !DILocalVariable(name: "stmt", arg: 1, scope: !4346, file: !3, line: 393, type: !1019)
!4349 = !DILocalVariable(name: "op", arg: 2, scope: !4346, file: !3, line: 393, type: !695)
!4350 = !DILocalVariable(name: "data", arg: 3, scope: !4346, file: !3, line: 393, type: !687)
!4351 = !DILocation(line: 0, scope: !4346)
!4352 = !DILocation(line: 395, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 395, column: 7)
!4354 = !DILocation(line: 0, scope: !4353)
!4355 = !DILocation(line: 395, column: 7, scope: !4346)
!4356 = !DILocation(line: 396, column: 5, scope: !4353)
!4357 = !DILocation(line: 398, column: 5, scope: !4353)
!4358 = !DILocation(line: 399, column: 3, scope: !4346)
!4359 = distinct !DISubprogram(name: "gimple_code", scope: !602, file: !602, line: 1052, type: !4360, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!601, !4324}
!4362 = !{!4363}
!4363 = !DILocalVariable(name: "g", arg: 1, scope: !4359, file: !602, line: 1052, type: !4324)
!4364 = !DILocation(line: 0, scope: !4359)
!4365 = !DILocation(line: 1054, column: 20, scope: !4359)
!4366 = !DILocation(line: 1054, column: 3, scope: !4359)
!4367 = distinct !DISubprogram(name: "check_call", scope: !3, file: !3, line: 259, type: !4368, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4370)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !2367, !1019, !682}
!4370 = !{!4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4371 = !DILocalVariable(name: "local", arg: 1, scope: !4367, file: !3, line: 259, type: !2367)
!4372 = !DILocalVariable(name: "call", arg: 2, scope: !4367, file: !3, line: 259, type: !1019)
!4373 = !DILocalVariable(name: "ipa", arg: 3, scope: !4367, file: !3, line: 259, type: !682)
!4374 = !DILocalVariable(name: "flags", scope: !4367, file: !3, line: 261, type: !683)
!4375 = !DILocalVariable(name: "callee_t", scope: !4367, file: !3, line: 262, type: !695)
!4376 = !DILocalVariable(name: "possibly_throws", scope: !4367, file: !3, line: 263, type: !682)
!4377 = !DILocalVariable(name: "possibly_throws_externally", scope: !4367, file: !3, line: 264, type: !682)
!4378 = !DILocalVariable(name: "i", scope: !4379, file: !3, line: 269, type: !7)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 268, column: 5)
!4380 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 267, column: 7)
!4381 = !DILocation(line: 0, scope: !4367)
!4382 = !DILocation(line: 261, column: 15, scope: !4367)
!4383 = !DILocation(line: 262, column: 19, scope: !4367)
!4384 = !DILocation(line: 263, column: 26, scope: !4367)
!4385 = !DILocation(line: 264, column: 38, scope: !4367)
!4386 = !DILocation(line: 265, column: 12, scope: !4367)
!4387 = !DILocation(line: 265, column: 15, scope: !4367)
!4388 = !DILocation(line: 267, column: 7, scope: !4367)
!4389 = !DILocation(line: 0, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 275, column: 8)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 274, column: 10)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 273, column: 4)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 271, column: 13)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 270, column: 7)
!4395 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 270, column: 7)
!4396 = !DILocation(line: 0, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 281, column: 8)
!4398 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 280, column: 10)
!4399 = !DILocation(line: 270, column: 7, scope: !4395)
!4400 = !DILocation(line: 0, scope: !4395)
!4401 = !DILocation(line: 0, scope: !4379)
!4402 = !DILocation(line: 270, column: 23, scope: !4394)
!4403 = !DILocation(line: 270, column: 21, scope: !4394)
!4404 = !DILocation(line: 271, column: 13, scope: !4393)
!4405 = !DILocation(line: 272, column: 6, scope: !4393)
!4406 = !DILocation(line: 272, column: 29, scope: !4393)
!4407 = !DILocation(line: 272, column: 9, scope: !4393)
!4408 = !DILocation(line: 271, column: 13, scope: !4394)
!4409 = !DILocation(line: 274, column: 29, scope: !4391)
!4410 = !DILocation(line: 274, column: 26, scope: !4391)
!4411 = !DILocation(line: 276, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 276, column: 7)
!4413 = !DILocation(line: 276, column: 7, scope: !4390)
!4414 = !DILocation(line: 277, column: 5, scope: !4412)
!4415 = !DILocation(line: 278, column: 18, scope: !4390)
!4416 = !DILocation(line: 279, column: 8, scope: !4390)
!4417 = !DILocation(line: 280, column: 10, scope: !4392)
!4418 = !DILocation(line: 282, column: 7, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 282, column: 7)
!4420 = !DILocation(line: 282, column: 7, scope: !4397)
!4421 = !DILocation(line: 283, column: 5, scope: !4419)
!4422 = !DILocation(line: 284, column: 20, scope: !4397)
!4423 = !DILocation(line: 285, column: 8, scope: !4397)
!4424 = !DILocation(line: 270, column: 47, scope: !4394)
!4425 = !DILocation(line: 270, column: 7, scope: !4394)
!4426 = distinct !{!4426, !4399, !4427}
!4427 = !DILocation(line: 286, column: 4, scope: !4395)
!4428 = !DILocation(line: 299, column: 7, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 299, column: 7)
!4430 = !DILocation(line: 299, column: 7, scope: !4367)
!4431 = !DILocation(line: 303, column: 11, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 303, column: 11)
!4433 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 300, column: 5)
!4434 = !DILocation(line: 303, column: 11, scope: !4433)
!4435 = !DILocation(line: 305, column: 8, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 305, column: 8)
!4437 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 304, column: 2)
!4438 = !DILocation(line: 305, column: 8, scope: !4437)
!4439 = !DILocation(line: 306, column: 6, scope: !4436)
!4440 = !DILocation(line: 307, column: 18, scope: !4437)
!4441 = !DILocation(line: 307, column: 26, scope: !4437)
!4442 = !DILocation(line: 308, column: 11, scope: !4437)
!4443 = !DILocation(line: 308, column: 28, scope: !4437)
!4444 = !DILocation(line: 309, column: 2, scope: !4437)
!4445 = !DILocation(line: 311, column: 11, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 311, column: 11)
!4447 = !DILocation(line: 311, column: 42, scope: !4446)
!4448 = !DILocation(line: 311, column: 11, scope: !4433)
!4449 = !DILocation(line: 312, column: 10, scope: !4446)
!4450 = !DILocation(line: 312, column: 2, scope: !4446)
!4451 = !DILocation(line: 316, column: 10, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 316, column: 10)
!4453 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 313, column: 4)
!4454 = !DILocation(line: 316, column: 10, scope: !4453)
!4455 = !DILocation(line: 317, column: 8, scope: !4452)
!4456 = !DILocation(line: 318, column: 13, scope: !4453)
!4457 = !DILocation(line: 318, column: 30, scope: !4453)
!4458 = !DILocation(line: 319, column: 20, scope: !4453)
!4459 = !DILocation(line: 319, column: 28, scope: !4453)
!4460 = !DILocation(line: 320, column: 6, scope: !4453)
!4461 = !DILocation(line: 327, column: 8, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 327, column: 7)
!4463 = !DILocation(line: 327, column: 27, scope: !4462)
!4464 = !DILocation(line: 327, column: 24, scope: !4462)
!4465 = !DILocation(line: 327, column: 12, scope: !4462)
!4466 = !DILocation(line: 328, column: 12, scope: !4462)
!4467 = !DILocation(line: 328, column: 20, scope: !4462)
!4468 = !DILocation(line: 328, column: 5, scope: !4462)
!4469 = !DILocation(line: 333, column: 13, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 333, column: 12)
!4471 = !DILocation(line: 333, column: 21, scope: !4470)
!4472 = !DILocation(line: 333, column: 17, scope: !4470)
!4473 = !DILocation(line: 335, column: 11, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 335, column: 11)
!4475 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 334, column: 5)
!4476 = !DILocation(line: 335, column: 30, scope: !4474)
!4477 = !DILocation(line: 335, column: 27, scope: !4474)
!4478 = !DILocation(line: 337, column: 8, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 337, column: 8)
!4480 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 336, column: 9)
!4481 = !DILocation(line: 337, column: 8, scope: !4480)
!4482 = !DILocation(line: 338, column: 6, scope: !4479)
!4483 = !DILocation(line: 339, column: 18, scope: !4480)
!4484 = !DILocation(line: 339, column: 26, scope: !4480)
!4485 = !DILocation(line: 340, column: 2, scope: !4480)
!4486 = !DILocation(line: 341, column: 11, scope: !4475)
!4487 = !DILocation(line: 343, column: 8, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 343, column: 8)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 342, column: 9)
!4490 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 341, column: 11)
!4491 = !DILocation(line: 343, column: 8, scope: !4489)
!4492 = !DILocation(line: 346, column: 16, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 344, column: 6)
!4494 = !DILocation(line: 345, column: 8, scope: !4493)
!4495 = !DILocation(line: 347, column: 12, scope: !4493)
!4496 = !DILocation(line: 348, column: 12, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 347, column: 12)
!4498 = !DILocation(line: 349, column: 5, scope: !4497)
!4499 = !DILocation(line: 348, column: 3, scope: !4497)
!4500 = !DILocation(line: 351, column: 18, scope: !4489)
!4501 = !DILocation(line: 351, column: 28, scope: !4489)
!4502 = !DILocation(line: 352, column: 2, scope: !4489)
!4503 = !DILocation(line: 353, column: 17, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 353, column: 11)
!4505 = !DILocation(line: 353, column: 11, scope: !4475)
!4506 = !DILocation(line: 355, column: 24, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 355, column: 15)
!4508 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 354, column: 2)
!4509 = !DILocation(line: 355, column: 27, scope: !4507)
!4510 = !DILocation(line: 355, column: 15, scope: !4508)
!4511 = !DILocation(line: 356, column: 20, scope: !4507)
!4512 = !DILocation(line: 356, column: 28, scope: !4507)
!4513 = !DILocation(line: 356, column: 13, scope: !4507)
!4514 = !DILocation(line: 358, column: 22, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 358, column: 16)
!4516 = !DILocation(line: 358, column: 16, scope: !4504)
!4517 = !DILocation(line: 360, column: 24, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 360, column: 15)
!4519 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 359, column: 2)
!4520 = !DILocation(line: 360, column: 27, scope: !4518)
!4521 = !DILocation(line: 360, column: 15, scope: !4519)
!4522 = !DILocation(line: 361, column: 20, scope: !4518)
!4523 = !DILocation(line: 361, column: 28, scope: !4518)
!4524 = !DILocation(line: 361, column: 13, scope: !4518)
!4525 = !DILocation(line: 362, column: 8, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 362, column: 8)
!4527 = !DILocation(line: 362, column: 8, scope: !4519)
!4528 = !DILocation(line: 363, column: 6, scope: !4526)
!4529 = !DILocation(line: 364, column: 15, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 364, column: 8)
!4531 = !DILocation(line: 364, column: 32, scope: !4530)
!4532 = !DILocation(line: 364, column: 8, scope: !4519)
!4533 = !DILocation(line: 365, column: 30, scope: !4530)
!4534 = !DILocation(line: 365, column: 6, scope: !4530)
!4535 = !DILocation(line: 369, column: 8, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 369, column: 8)
!4537 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 368, column: 2)
!4538 = !DILocation(line: 369, column: 8, scope: !4537)
!4539 = !DILocation(line: 370, column: 6, scope: !4536)
!4540 = !DILocation(line: 371, column: 11, scope: !4537)
!4541 = !DILocation(line: 371, column: 28, scope: !4537)
!4542 = !DILocation(line: 372, column: 18, scope: !4537)
!4543 = !DILocation(line: 372, column: 26, scope: !4537)
!4544 = !DILocation(line: 376, column: 1, scope: !4367)
!4545 = distinct !DISubprogram(name: "gimple_label_label", scope: !602, file: !602, line: 2444, type: !4546, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!695, !4324}
!4548 = !{!4549}
!4549 = !DILocalVariable(name: "gs", arg: 1, scope: !4545, file: !602, line: 2444, type: !4324)
!4550 = !DILocation(line: 0, scope: !4545)
!4551 = !DILocation(line: 2447, column: 10, scope: !4545)
!4552 = !DILocation(line: 2447, column: 3, scope: !4545)
!4553 = distinct !DISubprogram(name: "gimple_asm_nclobbers", scope: !602, file: !602, line: 2601, type: !4554, scopeLine: 2602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4556)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!7, !4324}
!4556 = !{!4557}
!4557 = !DILocalVariable(name: "gs", arg: 1, scope: !4553, file: !602, line: 2601, type: !4324)
!4558 = !DILocation(line: 0, scope: !4553)
!4559 = !DILocation(line: 2604, column: 14, scope: !4553)
!4560 = !DILocation(line: 2604, column: 25, scope: !4553)
!4561 = !DILocation(line: 2604, column: 10, scope: !4553)
!4562 = !DILocation(line: 2604, column: 3, scope: !4553)
!4563 = distinct !DISubprogram(name: "gimple_asm_clobber_op", scope: !602, file: !602, line: 2685, type: !4564, scopeLine: 2686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!695, !4324, !7}
!4566 = !{!4567, !4568}
!4567 = !DILocalVariable(name: "gs", arg: 1, scope: !4563, file: !602, line: 2685, type: !4324)
!4568 = !DILocalVariable(name: "index", arg: 2, scope: !4563, file: !602, line: 2685, type: !7)
!4569 = !DILocation(line: 0, scope: !4563)
!4570 = !DILocation(line: 2688, column: 3, scope: !4563)
!4571 = !DILocation(line: 2689, column: 48, scope: !4563)
!4572 = !DILocation(line: 2689, column: 33, scope: !4563)
!4573 = !DILocation(line: 2689, column: 31, scope: !4563)
!4574 = !DILocation(line: 2689, column: 68, scope: !4563)
!4575 = !DILocation(line: 2689, column: 53, scope: !4563)
!4576 = !DILocation(line: 2689, column: 51, scope: !4563)
!4577 = !DILocation(line: 2689, column: 10, scope: !4563)
!4578 = !DILocation(line: 2689, column: 3, scope: !4563)
!4579 = distinct !DISubprogram(name: "gimple_asm_volatile_p", scope: !602, file: !602, line: 2739, type: !4322, scopeLine: 2740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4580)
!4580 = !{!4581}
!4581 = !DILocalVariable(name: "gs", arg: 1, scope: !4579, file: !602, line: 2739, type: !4324)
!4582 = !DILocation(line: 0, scope: !4579)
!4583 = !DILocation(line: 2742, column: 22, scope: !4579)
!4584 = !DILocation(line: 2742, column: 10, scope: !4579)
!4585 = !DILocation(line: 2742, column: 3, scope: !4579)
!4586 = distinct !DISubprogram(name: "check_decl", scope: !3, file: !3, line: 144, type: !4587, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4589)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !2367, !695, !682}
!4589 = !{!4590, !4591, !4592}
!4590 = !DILocalVariable(name: "local", arg: 1, scope: !4586, file: !3, line: 144, type: !2367)
!4591 = !DILocalVariable(name: "t", arg: 2, scope: !4586, file: !3, line: 145, type: !695)
!4592 = !DILocalVariable(name: "checking_write", arg: 3, scope: !4586, file: !3, line: 145, type: !682)
!4593 = !DILocation(line: 0, scope: !4586)
!4594 = !DILocation(line: 149, column: 7, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 149, column: 7)
!4596 = !DILocation(line: 149, column: 7, scope: !4586)
!4597 = !DILocation(line: 151, column: 14, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 150, column: 5)
!4599 = !DILocation(line: 151, column: 31, scope: !4598)
!4600 = !DILocation(line: 152, column: 11, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 152, column: 11)
!4602 = !DILocation(line: 152, column: 11, scope: !4598)
!4603 = !DILocation(line: 153, column: 9, scope: !4601)
!4604 = !DILocation(line: 158, column: 8, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 158, column: 7)
!4606 = !DILocation(line: 158, column: 24, scope: !4605)
!4607 = !DILocation(line: 0, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 163, column: 7)
!4609 = !DILocation(line: 163, column: 7, scope: !4608)
!4610 = !DILocation(line: 158, column: 28, scope: !4605)
!4611 = !DILocation(line: 158, column: 7, scope: !4586)
!4612 = !DILocation(line: 163, column: 7, scope: !4586)
!4613 = !DILocation(line: 165, column: 14, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 164, column: 5)
!4615 = !DILocation(line: 165, column: 31, scope: !4614)
!4616 = !DILocation(line: 166, column: 11, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 166, column: 11)
!4618 = !DILocation(line: 166, column: 11, scope: !4614)
!4619 = !DILocation(line: 167, column: 9, scope: !4617)
!4620 = !DILocation(line: 174, column: 7, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 174, column: 7)
!4622 = !DILocation(line: 174, column: 7, scope: !4586)
!4623 = !DILocation(line: 176, column: 14, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 175, column: 5)
!4625 = !DILocation(line: 176, column: 31, scope: !4624)
!4626 = !DILocation(line: 177, column: 11, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 177, column: 11)
!4628 = !DILocation(line: 177, column: 11, scope: !4624)
!4629 = !DILocation(line: 178, column: 9, scope: !4627)
!4630 = !DILocation(line: 182, column: 7, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 182, column: 7)
!4632 = !DILocation(line: 182, column: 25, scope: !4631)
!4633 = !DILocation(line: 182, column: 28, scope: !4631)
!4634 = !DILocation(line: 182, column: 7, scope: !4586)
!4635 = !DILocation(line: 185, column: 11, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 185, column: 11)
!4637 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 183, column: 5)
!4638 = !DILocation(line: 185, column: 29, scope: !4636)
!4639 = !DILocation(line: 185, column: 33, scope: !4636)
!4640 = !DILocation(line: 185, column: 11, scope: !4637)
!4641 = !DILocation(line: 189, column: 15, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 189, column: 15)
!4643 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 188, column: 2)
!4644 = !DILocation(line: 189, column: 15, scope: !4643)
!4645 = !DILocation(line: 190, column: 13, scope: !4642)
!4646 = !DILocation(line: 192, column: 15, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 192, column: 8)
!4648 = !DILocation(line: 192, column: 32, scope: !4647)
!4649 = !DILocation(line: 192, column: 8, scope: !4643)
!4650 = !DILocation(line: 193, column: 30, scope: !4647)
!4651 = !DILocation(line: 193, column: 6, scope: !4647)
!4652 = !DILocation(line: 200, column: 11, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 200, column: 11)
!4654 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 197, column: 5)
!4655 = !DILocation(line: 200, column: 11, scope: !4654)
!4656 = !DILocation(line: 203, column: 11, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 203, column: 11)
!4658 = !DILocation(line: 203, column: 11, scope: !4654)
!4659 = !DILocation(line: 204, column: 2, scope: !4657)
!4660 = !DILocation(line: 206, column: 18, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 206, column: 11)
!4662 = !DILocation(line: 206, column: 35, scope: !4661)
!4663 = !DILocation(line: 206, column: 11, scope: !4654)
!4664 = !DILocation(line: 207, column: 26, scope: !4661)
!4665 = !DILocation(line: 207, column: 2, scope: !4661)
!4666 = !DILocation(line: 209, column: 1, scope: !4586)
!4667 = distinct !DISubprogram(name: "check_op", scope: !3, file: !3, line: 216, type: !4587, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4668)
!4668 = !{!4669, !4670, !4671}
!4669 = !DILocalVariable(name: "local", arg: 1, scope: !4667, file: !3, line: 216, type: !2367)
!4670 = !DILocalVariable(name: "t", arg: 2, scope: !4667, file: !3, line: 216, type: !695)
!4671 = !DILocalVariable(name: "checking_write", arg: 3, scope: !4667, file: !3, line: 216, type: !682)
!4672 = !DILocation(line: 0, scope: !4667)
!4673 = !DILocation(line: 218, column: 7, scope: !4667)
!4674 = !DILocation(line: 219, column: 9, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 219, column: 7)
!4676 = !DILocation(line: 219, column: 12, scope: !4675)
!4677 = !DILocation(line: 219, column: 7, scope: !4667)
!4678 = !DILocation(line: 221, column: 14, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 220, column: 5)
!4680 = !DILocation(line: 221, column: 31, scope: !4679)
!4681 = !DILocation(line: 222, column: 11, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 222, column: 11)
!4683 = !DILocation(line: 222, column: 11, scope: !4679)
!4684 = !DILocation(line: 223, column: 2, scope: !4682)
!4685 = !DILocation(line: 227, column: 10, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 226, column: 12)
!4687 = !DILocation(line: 228, column: 5, scope: !4686)
!4688 = !DILocation(line: 228, column: 8, scope: !4686)
!4689 = !DILocation(line: 228, column: 40, scope: !4686)
!4690 = !DILocation(line: 229, column: 5, scope: !4686)
!4691 = !DILocation(line: 229, column: 9, scope: !4686)
!4692 = !DILocation(line: 226, column: 12, scope: !4675)
!4693 = !DILocation(line: 231, column: 11, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 231, column: 11)
!4695 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 230, column: 5)
!4696 = !DILocation(line: 231, column: 11, scope: !4695)
!4697 = !DILocation(line: 232, column: 2, scope: !4694)
!4698 = !DILocation(line: 235, column: 12, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 235, column: 12)
!4700 = !DILocation(line: 235, column: 12, scope: !4686)
!4701 = !DILocation(line: 237, column: 14, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 236, column: 5)
!4703 = !DILocation(line: 237, column: 31, scope: !4702)
!4704 = !DILocation(line: 238, column: 11, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 238, column: 11)
!4706 = !DILocation(line: 238, column: 11, scope: !4702)
!4707 = !DILocation(line: 239, column: 2, scope: !4705)
!4708 = !DILocation(line: 244, column: 11, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 244, column: 11)
!4710 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 243, column: 5)
!4711 = !DILocation(line: 244, column: 11, scope: !4710)
!4712 = !DILocation(line: 245, column: 2, scope: !4709)
!4713 = !DILocation(line: 246, column: 18, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 246, column: 11)
!4715 = !DILocation(line: 246, column: 35, scope: !4714)
!4716 = !DILocation(line: 246, column: 11, scope: !4710)
!4717 = !DILocation(line: 247, column: 26, scope: !4714)
!4718 = !DILocation(line: 247, column: 2, scope: !4714)
!4719 = !DILocation(line: 249, column: 1, scope: !4667)
!4720 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !602, file: !602, line: 1954, type: !4546, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4721)
!4721 = !{!4722, !4723}
!4722 = !DILocalVariable(name: "gs", arg: 1, scope: !4720, file: !602, line: 1954, type: !4324)
!4723 = !DILocalVariable(name: "addr", scope: !4720, file: !602, line: 1956, type: !695)
!4724 = !DILocation(line: 0, scope: !4720)
!4725 = !DILocation(line: 1956, column: 15, scope: !4720)
!4726 = !DILocation(line: 1957, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4720, file: !602, line: 1957, column: 7)
!4728 = !DILocation(line: 1957, column: 24, scope: !4727)
!4729 = !DILocation(line: 1957, column: 7, scope: !4720)
!4730 = !DILocation(line: 1958, column: 12, scope: !4727)
!4731 = !DILocation(line: 1958, column: 5, scope: !4727)
!4732 = !DILocation(line: 1960, column: 1, scope: !4720)
!4733 = distinct !DISubprogram(name: "gimple_num_ops", scope: !602, file: !602, line: 1596, type: !4554, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4734)
!4734 = !{!4735}
!4735 = !DILocalVariable(name: "gs", arg: 1, scope: !4733, file: !602, line: 1596, type: !4324)
!4736 = !DILocation(line: 0, scope: !4733)
!4737 = !DILocation(line: 1598, column: 21, scope: !4733)
!4738 = !DILocation(line: 1598, column: 3, scope: !4733)
!4739 = distinct !DISubprogram(name: "gimple_op", scope: !602, file: !602, line: 1631, type: !4564, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4740)
!4740 = !{!4741, !4742}
!4741 = !DILocalVariable(name: "gs", arg: 1, scope: !4739, file: !602, line: 1631, type: !4324)
!4742 = !DILocalVariable(name: "i", arg: 2, scope: !4739, file: !602, line: 1631, type: !7)
!4743 = !DILocation(line: 0, scope: !4739)
!4744 = !DILocation(line: 1633, column: 7, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4739, file: !602, line: 1633, column: 7)
!4746 = !DILocation(line: 1633, column: 7, scope: !4739)
!4747 = !DILocation(line: 1638, column: 14, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !602, line: 1634, column: 5)
!4749 = !DILocation(line: 1638, column: 7, scope: !4748)
!4750 = !DILocation(line: 0, scope: !4745)
!4751 = !DILocation(line: 1642, column: 1, scope: !4739)
!4752 = distinct !DISubprogram(name: "gimple_call_fn", scope: !602, file: !602, line: 1911, type: !4546, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4753)
!4753 = !{!4754}
!4754 = !DILocalVariable(name: "gs", arg: 1, scope: !4752, file: !602, line: 1911, type: !4324)
!4755 = !DILocation(line: 0, scope: !4752)
!4756 = !DILocation(line: 1914, column: 10, scope: !4752)
!4757 = !DILocation(line: 1914, column: 3, scope: !4752)
!4758 = distinct !DISubprogram(name: "gimple_has_ops", scope: !602, file: !602, line: 1274, type: !4322, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4759)
!4759 = !{!4760}
!4760 = !DILocalVariable(name: "g", arg: 1, scope: !4758, file: !602, line: 1274, type: !4324)
!4761 = !DILocation(line: 0, scope: !4758)
!4762 = !DILocation(line: 1276, column: 10, scope: !4758)
!4763 = !DILocation(line: 1276, column: 26, scope: !4758)
!4764 = !DILocation(line: 1276, column: 41, scope: !4758)
!4765 = !DILocation(line: 1276, column: 44, scope: !4758)
!4766 = !DILocation(line: 1276, column: 60, scope: !4758)
!4767 = !DILocation(line: 1276, column: 3, scope: !4758)
!4768 = distinct !DISubprogram(name: "gimple_ops", scope: !602, file: !602, line: 1614, type: !4769, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4771)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!1054, !1019}
!4771 = !{!4772, !4773}
!4772 = !DILocalVariable(name: "gs", arg: 1, scope: !4768, file: !602, line: 1614, type: !1019)
!4773 = !DILocalVariable(name: "off", scope: !4768, file: !602, line: 1616, type: !1165)
!4774 = !DILocation(line: 0, scope: !4768)
!4775 = !DILocation(line: 1621, column: 28, scope: !4768)
!4776 = !DILocation(line: 1621, column: 9, scope: !4768)
!4777 = !DILocation(line: 1622, column: 3, scope: !4768)
!4778 = !DILocation(line: 1624, column: 20, scope: !4768)
!4779 = !DILocation(line: 1624, column: 32, scope: !4768)
!4780 = !DILocation(line: 1624, column: 10, scope: !4768)
!4781 = !DILocation(line: 1624, column: 3, scope: !4768)
!4782 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !602, file: !602, line: 1073, type: !4783, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4785)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!640, !1019}
!4785 = !{!4786}
!4786 = !DILocalVariable(name: "gs", arg: 1, scope: !4782, file: !602, line: 1073, type: !1019)
!4787 = !DILocation(line: 0, scope: !4782)
!4788 = !DILocation(line: 1075, column: 24, scope: !4782)
!4789 = !DILocation(line: 1075, column: 10, scope: !4782)
!4790 = !DILocation(line: 1075, column: 3, scope: !4782)
!4791 = distinct !DISubprogram(name: "gss_for_code", scope: !602, file: !602, line: 1061, type: !4792, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4794)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!640, !601}
!4794 = !{!4795}
!4795 = !DILocalVariable(name: "code", arg: 1, scope: !4791, file: !602, line: 1061, type: !601)
!4796 = !DILocation(line: 0, scope: !4791)
!4797 = !DILocation(line: 1066, column: 10, scope: !4791)
!4798 = !DILocation(line: 1066, column: 3, scope: !4791)
!4799 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !2372, file: !2372, line: 32, type: !4800, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!2370, !683}
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4799, file: !2372, line: 32, type: !683)
!4804 = !DILocation(line: 0, scope: !4799)
!4805 = !DILocation(line: 32, column: 1, scope: !4799)
!4806 = distinct !DISubprogram(name: "number_of_loops", scope: !513, file: !513, line: 459, type: !2146, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2404)
!4807 = !DILocation(line: 461, column: 8, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4806, file: !513, line: 461, column: 7)
!4809 = !DILocation(line: 461, column: 7, scope: !4806)
!4810 = !DILocation(line: 464, column: 10, scope: !4806)
!4811 = !DILocation(line: 464, column: 3, scope: !4806)
!4812 = !DILocation(line: 0, scope: !4806)
!4813 = !DILocation(line: 465, column: 1, scope: !4806)
!4814 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !513, file: !513, line: 85, type: !4815, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!683, !4817, !7, !4200}
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!4819 = !{!4820, !4821, !4822}
!4820 = !DILocalVariable(name: "vec_", arg: 1, scope: !4814, file: !513, line: 85, type: !4817)
!4821 = !DILocalVariable(name: "ix_", arg: 2, scope: !4814, file: !513, line: 85, type: !7)
!4822 = !DILocalVariable(name: "ptr", arg: 3, scope: !4814, file: !513, line: 85, type: !4200)
!4823 = !DILocation(line: 0, scope: !4814)
!4824 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !2372, file: !2372, line: 31, type: !4825, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4829)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!4827, !4828, !683}
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!4829 = !{!4830, !4831, !4832}
!4830 = !DILocalVariable(name: "vec_", arg: 1, scope: !4824, file: !2372, line: 31, type: !4828)
!4831 = !DILocalVariable(name: "obj_", arg: 2, scope: !4824, file: !2372, line: 31, type: !683)
!4832 = !DILocalVariable(name: "slot_", scope: !4824, file: !2372, line: 31, type: !4827)
!4833 = !DILocation(line: 0, scope: !4824)
!4834 = !DILocation(line: 31, column: 1, scope: !4824)
!4835 = distinct !DISubprogram(name: "loop_outer", scope: !513, file: !513, line: 434, type: !4836, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4840)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!1235, !4838}
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!4840 = !{!4841, !4842}
!4841 = !DILocalVariable(name: "loop", arg: 1, scope: !4835, file: !513, line: 434, type: !4838)
!4842 = !DILocalVariable(name: "n", scope: !4835, file: !513, line: 436, type: !7)
!4843 = !DILocation(line: 0, scope: !4835)
!4844 = !DILocation(line: 436, column: 16, scope: !4835)
!4845 = !DILocation(line: 438, column: 9, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4835, file: !513, line: 438, column: 7)
!4847 = !DILocation(line: 438, column: 7, scope: !4835)
!4848 = !DILocation(line: 441, column: 10, scope: !4835)
!4849 = !DILocation(line: 441, column: 3, scope: !4835)
!4850 = !DILocation(line: 442, column: 1, scope: !4835)
!4851 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !513, file: !513, line: 85, type: !4852, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4854)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!7, !4817}
!4854 = !{!4855}
!4855 = !DILocalVariable(name: "vec_", arg: 1, scope: !4851, file: !513, line: 85, type: !4817)
!4856 = !DILocation(line: 0, scope: !4851)
!4857 = !DILocation(line: 85, column: 1, scope: !4851)
!4858 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !513, file: !513, line: 85, type: !4859, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4861)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!1262, !4817, !7}
!4861 = !{!4862, !4863}
!4862 = !DILocalVariable(name: "vec_", arg: 1, scope: !4858, file: !513, line: 85, type: !4817)
!4863 = !DILocalVariable(name: "ix_", arg: 2, scope: !4858, file: !513, line: 85, type: !7)
!4864 = !DILocation(line: 0, scope: !4858)
!4865 = !DILocation(line: 85, column: 1, scope: !4858)
!4866 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !2372, file: !2372, line: 31, type: !4867, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4871)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!683, !4869, !7, !4827}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2376)
!4871 = !{!4872, !4873, !4874}
!4872 = !DILocalVariable(name: "vec_", arg: 1, scope: !4866, file: !2372, line: 31, type: !4869)
!4873 = !DILocalVariable(name: "ix_", arg: 2, scope: !4866, file: !2372, line: 31, type: !7)
!4874 = !DILocalVariable(name: "ptr", arg: 3, scope: !4866, file: !2372, line: 31, type: !4827)
!4875 = !DILocation(line: 0, scope: !4866)
!4876 = !DILocation(line: 31, column: 1, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4866, file: !2372, line: 31, column: 1)
!4878 = !DILocation(line: 31, column: 1, scope: !4866)
!4879 = !DILocation(line: 31, column: 1, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4877, file: !2372, line: 31, column: 1)
!4881 = !DILocation(line: 31, column: 1, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4877, file: !2372, line: 31, column: 1)
!4883 = !DILocation(line: 0, scope: !4877)
!4884 = distinct !DISubprogram(name: "get_loop", scope: !513, file: !513, line: 417, type: !4885, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4887)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!1235, !7}
!4887 = !{!4888}
!4888 = !DILocalVariable(name: "num", arg: 1, scope: !4884, file: !513, line: 417, type: !7)
!4889 = !DILocation(line: 0, scope: !4884)
!4890 = !DILocation(line: 419, column: 10, scope: !4884)
!4891 = !DILocation(line: 419, column: 3, scope: !4884)
!4892 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !2372, file: !2372, line: 32, type: !4893, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4896)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !4895}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!4896 = !{!4897}
!4897 = !DILocalVariable(name: "vec_", arg: 1, scope: !4892, file: !2372, line: 32, type: !4895)
!4898 = !DILocation(line: 0, scope: !4892)
!4899 = !DILocation(line: 32, column: 1, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4892, file: !2372, line: 32, column: 1)
!4901 = !DILocation(line: 32, column: 1, scope: !4892)
!4902 = distinct !DISubprogram(name: "csi_start", scope: !574, file: !574, line: 668, type: !4903, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4905)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!3296, !3253}
!4905 = !{!4906, !4907}
!4906 = !DILocalVariable(name: "set", arg: 1, scope: !4902, file: !574, line: 668, type: !3253)
!4907 = !DILocalVariable(name: "csi", scope: !4902, file: !574, line: 670, type: !3296)
!4908 = !DILocation(line: 0, scope: !4902)
!4909 = !DILocation(line: 672, column: 7, scope: !4902)
!4910 = !DILocation(line: 672, column: 11, scope: !4902)
!4911 = !DILocation(line: 673, column: 7, scope: !4902)
!4912 = !DILocation(line: 673, column: 13, scope: !4902)
!4913 = !DILocation(line: 674, column: 3, scope: !4902)
!4914 = distinct !DISubprogram(name: "csi_end_p", scope: !574, file: !574, line: 647, type: !4915, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4917)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!682, !3296}
!4917 = !{!4918}
!4918 = !DILocalVariable(name: "csi", arg: 1, scope: !4914, file: !574, line: 647, type: !3296)
!4919 = !DILocation(line: 649, column: 23, scope: !4914)
!4920 = !DILocation(line: 649, column: 20, scope: !4914)
!4921 = !DILocation(line: 649, column: 10, scope: !4914)
!4922 = !DILocation(line: 649, column: 3, scope: !4914)
!4923 = distinct !DISubprogram(name: "csi_node", scope: !574, file: !574, line: 661, type: !4924, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4926)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!691, !3296}
!4926 = !{!4927}
!4927 = !DILocalVariable(name: "csi", arg: 1, scope: !4923, file: !574, line: 661, type: !3296)
!4928 = !DILocation(line: 663, column: 10, scope: !4923)
!4929 = !DILocation(line: 663, column: 3, scope: !4923)
!4930 = distinct !DISubprogram(name: "csi_next", scope: !574, file: !574, line: 654, type: !4931, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4934)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{null, !4933}
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!4934 = !{!4935}
!4935 = !DILocalVariable(name: "csi", arg: 1, scope: !4930, file: !574, line: 654, type: !4933)
!4936 = !DILocation(line: 0, scope: !4930)
!4937 = !DILocation(line: 656, column: 8, scope: !4930)
!4938 = !DILocation(line: 656, column: 13, scope: !4930)
!4939 = !DILocation(line: 657, column: 1, scope: !4930)
!4940 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_length", scope: !574, file: !574, line: 270, type: !4941, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4945)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!7, !4943}
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!4945 = !{!4946}
!4946 = !DILocalVariable(name: "vec_", arg: 1, scope: !4940, file: !574, line: 270, type: !4943)
!4947 = !DILocation(line: 0, scope: !4940)
!4948 = !DILocation(line: 270, column: 1, scope: !4940)
!4949 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_index", scope: !574, file: !574, line: 270, type: !4950, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4952)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!2184, !4943, !7}
!4952 = !{!4953, !4954}
!4953 = !DILocalVariable(name: "vec_", arg: 1, scope: !4949, file: !574, line: 270, type: !4943)
!4954 = !DILocalVariable(name: "ix_", arg: 2, scope: !4949, file: !574, line: 270, type: !7)
!4955 = !DILocation(line: 0, scope: !4949)
!4956 = !DILocation(line: 270, column: 1, scope: !4949)
