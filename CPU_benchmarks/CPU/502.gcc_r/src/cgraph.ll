; ModuleID = 'cgraph.bc'
source_filename = "cgraph.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cgraph_edge_hook_list = type { void (%struct.cgraph_edge*, i8*)*, i8*, %struct.cgraph_edge_hook_list* }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
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
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
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
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.cgraph_node_hook_list = type { void (%struct.cgraph_node*, i8*)*, i8*, %struct.cgraph_node_hook_list* }
%struct.cgraph_2edge_hook_list = type { void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)*, i8*, %struct.cgraph_2edge_hook_list* }
%struct.cgraph_2node_hook_list = type { void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)*, i8*, %struct.cgraph_2node_hook_list* }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
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
%struct.cgraph_asm_node = type { %struct.cgraph_asm_node*, %union.tree_node*, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type opaque
%struct.spec_info_def = type opaque
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.addr_space = type { i32 (i8)*, i32 (i8)*, i8 (i32, i8)*, i8 (i32, %struct.rtx_def*, i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, i8 (i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %union.tree_node*, %union.tree_node*)* }
%struct.stdarg_info = type opaque
%struct.calls = type { i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)*, i8 (%union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, i32)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, %struct.rtx_def* ()*, void (%struct.ix86_args*, i32, %union.tree_node*, i32*, i32)*, i8 (%struct.ix86_args*)*, i8 (%struct.ix86_args*)*, i8 (%union.tree_node*)*, i8 (i32, %union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i32 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i8* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, i8 ()*, %struct.rtx_def* (%union.tree_node*, i8)*, void (%struct.rtx_def*, %union.tree_node*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.secondary_reload_info = type { i32, i32, %struct.secondary_reload_info*, i32 }
%struct.c = type { i32 (i8)* }
%struct.cxx = type { %union.tree_node* ()*, i8 ()*, %union.tree_node* (%union.tree_node*)*, i8 ()*, i32 (%union.tree_node*, i32)*, i8 ()*, i8 ()*, void (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void (%union.tree_node*)* }
%struct.emutls = type { i8*, i8*, i8*, i8*, i8*, i8*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i8, i8 }
%struct.target_option_hooks = type { i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)*, void (%struct.cl_target_option*)*, void (%struct.cl_target_option*)*, void (%struct._IO_FILE*, i32, %struct.cl_target_option*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)* }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_cgraph_edge_p_heap = type { %struct.VEC_cgraph_edge_p_base }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x %struct.cgraph_edge*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cgraph_global_info_ready = dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@cgraph_state = dso_local local_unnamed_addr global i32 0, align 4, !dbg !2534
@cgraph_function_flags_ready = dso_local local_unnamed_addr global i8 0, align 1, !dbg !2536
@first_cgraph_edge_removal_hook = common dso_local local_unnamed_addr global %struct.cgraph_edge_hook_list* null, align 8, !dbg !2597
@first_cgraph_node_removal_hook = common dso_local local_unnamed_addr global %struct.cgraph_node_hook_list* null, align 8, !dbg !2599
@first_cgraph_function_insertion_hook = common dso_local local_unnamed_addr global %struct.cgraph_node_hook_list* null, align 8, !dbg !2605
@first_cgraph_edge_duplicated_hook = common dso_local local_unnamed_addr global %struct.cgraph_2edge_hook_list* null, align 8, !dbg !2601
@first_cgraph_node_duplicated_hook = common dso_local local_unnamed_addr global %struct.cgraph_2node_hook_list* null, align 8, !dbg !2603
@.str = private unnamed_addr constant [9 x i8] c"cgraph.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_hash = internal global %struct.htab* null, align 8, !dbg !2573
@assembler_name_hash = internal global %struct.htab* null, align 8, !dbg !2575
@cgraph_nodes = common dso_local local_unnamed_addr global %struct.cgraph_node* null, align 8, !dbg !2577
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8
@free_edges = internal global %struct.cgraph_edge* null, align 8, !dbg !2609
@cgraph_edge_max_uid = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2587
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@free_nodes = internal global %struct.cgraph_node* null, align 8, !dbg !2607
@cgraph_n_nodes = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2583
@cgraph_nodes_queue = common dso_local local_unnamed_addr global %struct.cgraph_node* null, align 8, !dbg !2579
@cgraph_inline_failed_string.cif_string_table = internal unnamed_addr constant [19 x i8*] [i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i32 0, i32 0)], align 16, !dbg !2538
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"function not considered for inlining\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"function body not available\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"redefined extern inline functions are not considered for inlining\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"function not inlinable\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"function not inline candidate\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"--param large-function-growth limit reached\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"--param large-stack-frame-growth limit reached\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"--param max-inline-insns-single limit reached\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"--param max-inline-insns-auto limit reached\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"--param inline-unit-growth limit reached\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"recursive inlining\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"call is unlikely and code size would grow\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"function not declared inline and code size would grow\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"optimizing for size and code size would grow\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"target specific option mismatch\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"mismatched arguments\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"originally indirect function call not considered for inlining\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"not_available\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"overwritable\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@cgraph_availability_names = dso_local local_unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)], align 16, !dbg !2548
@.str.25 = private unnamed_addr constant [10 x i8] c"%s/%i(%i)\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c" @\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c" (inline copy in %s/%i)\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c" (clone of %s/%i)\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c" availability:%s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" executed %ldx\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c" %i time, %i benefit\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c" (%i after inlining)\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c" %i size, %i benefit\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c" %i bytes stack usage\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c" %i bytes after inlining\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c" nested in: %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" needed\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c" address_taken\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" reachable\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" body\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c" process\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c" local\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c" externally_visible\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c" finalized\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c" always_inline\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c" inlinable\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c" redefined_extern_inline\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c" asm_written\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"\0A  called by: \00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"%s/%i \00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"(%ldx) \00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"(%.2f per call) \00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"(inlined) \00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"(indirect) \00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"(can throw external) \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"\0A  calls: \00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"(nested in %i loops) \00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"  aliases & thunks:\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c" %s/%i\00", align 1
@.str.61 = private unnamed_addr constant [68 x i8] c" (thunk of %s fixed ofset %i virtual value %i has virtual offset %i\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c")\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [13 x i8] c"callgraph:\0A\0A\00", align 1
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.64 = private unnamed_addr constant [46 x i8] c"%D renamed after being referenced in assembly\00", align 1
@cgraph_order = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2595
@cgraph_asm_nodes = common dso_local local_unnamed_addr global %struct.cgraph_asm_node* null, align 8, !dbg !2591
@cgraph_asm_last_node = internal global %struct.cgraph_asm_node* null, align 8, !dbg !2593
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@cgraph_new_nodes = common dso_local local_unnamed_addr global %struct.cgraph_node* null, align 8, !dbg !2581
@pass_early_local_passes = external dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass, align 8
@gt_ggc_r_gt_cgraph_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.cgraph_edge** @free_edges to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_cgraph_edge, void (i8*)* @gt_pch_nx_cgraph_edge }, %struct.ggc_root_tab { i8* bitcast (%struct.cgraph_node** @free_nodes to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_cgraph_node, void (i8*)* @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { i8* bitcast (%struct.cgraph_asm_node** @cgraph_asm_last_node to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_cgraph_asm_node, void (i8*)* @gt_pch_nx_cgraph_asm_node }, %struct.ggc_root_tab { i8* bitcast (%struct.htab** @assembler_name_hash to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_m_P11cgraph_node4htab, void (i8*)* @gt_pch_n_P11cgraph_node4htab }, %struct.ggc_root_tab { i8* bitcast (%struct.htab** @cgraph_hash to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_m_P11cgraph_node4htab, void (i8*)* @gt_pch_n_P11cgraph_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !2554
@clone_fn_id_num = internal global i32 0, align 4, !dbg !2611
@gt_pch_rs_gt_cgraph_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (i32* @clone_fn_id_num to i8*), i64 1, i64 4, void (i8*)* null, void (i8*)* null }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !2570
@cgraph_max_uid = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2585
@cgraph_max_pid = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2589
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.65 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.66 = private unnamed_addr constant [7 x i8] c"_clone\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2617 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2631, metadata !DIExpression()), !dbg !2632
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2633
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2634
  ret i32 %call, !dbg !2635
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2636 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2640
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2641
  ret i32 %call, !dbg !2642
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2643 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2697, metadata !DIExpression()), !dbg !2698
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2699
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2699
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2699
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2699
  %cmp = icmp uge i8* %0, %1, !dbg !2699
  %conv1 = zext i1 %cmp to i64, !dbg !2699
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2699
  %tobool = icmp eq i64 %expval, 0, !dbg !2699
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2699

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2699
  br label %cond.end, !dbg !2699

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2699
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2699
  %2 = load i8, i8* %0, align 1, !dbg !2699
  %conv3 = zext i8 %2 to i32, !dbg !2699
  br label %cond.end, !dbg !2699

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2699
  ret i32 %cond, !dbg !2700
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2701 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2703, metadata !DIExpression()), !dbg !2704
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2705
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2705
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2705
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2705
  %cmp = icmp uge i8* %0, %1, !dbg !2705
  %conv1 = zext i1 %cmp to i64, !dbg !2705
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2705
  %tobool = icmp eq i64 %expval, 0, !dbg !2705
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2705

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2705
  br label %cond.end, !dbg !2705

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2705
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2705
  %2 = load i8, i8* %0, align 1, !dbg !2705
  %conv3 = zext i8 %2 to i32, !dbg !2705
  br label %cond.end, !dbg !2705

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2705
  ret i32 %cond, !dbg !2706
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2707 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2708
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2708
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2708
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2708
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2708
  %cmp = icmp uge i8* %1, %2, !dbg !2708
  %conv1 = zext i1 %cmp to i64, !dbg !2708
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2708
  %tobool = icmp eq i64 %expval, 0, !dbg !2708
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2708

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2708
  br label %cond.end, !dbg !2708

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2708
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2708
  %3 = load i8, i8* %1, align 1, !dbg !2708
  %conv3 = zext i8 %3 to i32, !dbg !2708
  br label %cond.end, !dbg !2708

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2708
  ret i32 %cond, !dbg !2709
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2710 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2714, metadata !DIExpression()), !dbg !2715
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2716
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2717
  ret i32 %call, !dbg !2718
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2719 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2724, metadata !DIExpression()), !dbg !2725
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2726
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2726
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2726
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2726
  %cmp = icmp uge i8* %0, %1, !dbg !2726
  %conv1 = zext i1 %cmp to i64, !dbg !2726
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2726
  %tobool = icmp eq i64 %expval, 0, !dbg !2726
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2726

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2726
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2726
  br label %cond.end, !dbg !2726

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2726
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2726
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2726
  store i8 %conv2, i8* %0, align 1, !dbg !2726
  %conv6 = and i32 %__c, 255, !dbg !2726
  br label %cond.end, !dbg !2726

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2726
  ret i32 %cond, !dbg !2727
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2728 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2731, metadata !DIExpression()), !dbg !2732
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2733
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2733
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2733
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2733
  %cmp = icmp uge i8* %0, %1, !dbg !2733
  %conv1 = zext i1 %cmp to i64, !dbg !2733
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2733
  %tobool = icmp eq i64 %expval, 0, !dbg !2733
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2733

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2733
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2733
  br label %cond.end, !dbg !2733

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2733
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2733
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2733
  store i8 %conv2, i8* %0, align 1, !dbg !2733
  %conv6 = and i32 %__c, 255, !dbg !2733
  br label %cond.end, !dbg !2733

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2733
  ret i32 %cond, !dbg !2734
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2735 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2737, metadata !DIExpression()), !dbg !2738
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2739
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2739
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2739
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2739
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2739
  %cmp = icmp uge i8* %1, %2, !dbg !2739
  %conv1 = zext i1 %cmp to i64, !dbg !2739
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2739
  %tobool = icmp eq i64 %expval, 0, !dbg !2739
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2739

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2739
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2739
  br label %cond.end, !dbg !2739

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2739
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2739
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2739
  store i8 %conv4, i8* %1, align 1, !dbg !2739
  %conv6 = and i32 %__c, 255, !dbg !2739
  br label %cond.end, !dbg !2739

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2739
  ret i32 %cond, !dbg !2740
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2741 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2748, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2749, metadata !DIExpression()), !dbg !2750
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2751
  ret i64 %call, !dbg !2752
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2753 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2755, metadata !DIExpression()), !dbg !2756
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2757
  %0 = load i32, i32* %_flags, align 8, !dbg !2757
  %and = lshr i32 %0, 4, !dbg !2757
  %and.lobit = and i32 %and, 1, !dbg !2757
  ret i32 %and.lobit, !dbg !2758
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2759 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2761, metadata !DIExpression()), !dbg !2762
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2763
  %0 = load i32, i32* %_flags, align 8, !dbg !2763
  %and = lshr i32 %0, 5, !dbg !2763
  %and.lobit = and i32 %and, 1, !dbg !2763
  ret i32 %and.lobit, !dbg !2764
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2765 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2768, metadata !DIExpression()), !dbg !2769
  %__c.off = add i32 %__c, 128, !dbg !2770
  %0 = icmp ult i32 %__c.off, 384, !dbg !2770
  br i1 %0, label %cond.true, label %cond.end, !dbg !2770

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2771
  %1 = load i32*, i32** %call, align 8, !dbg !2772
  %idxprom = sext i32 %__c to i64, !dbg !2773
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2773
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2773
  br label %cond.end, !dbg !2774

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2774
  ret i32 %cond, !dbg !2775
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2776 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2778, metadata !DIExpression()), !dbg !2779
  %__c.off = add i32 %__c, 128, !dbg !2780
  %0 = icmp ult i32 %__c.off, 384, !dbg !2780
  br i1 %0, label %cond.true, label %cond.end, !dbg !2780

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2781
  %1 = load i32*, i32** %call, align 8, !dbg !2782
  %idxprom = sext i32 %__c to i64, !dbg !2783
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2783
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2783
  br label %cond.end, !dbg !2784

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2784
  ret i32 %cond, !dbg !2785
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2791, metadata !DIExpression()), !dbg !2792
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2793
  %conv = trunc i64 %call to i32, !dbg !2794
  ret i32 %conv, !dbg !2795
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2796 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2800, metadata !DIExpression()), !dbg !2801
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2802
  ret i64 %call, !dbg !2803
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2804 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2809, metadata !DIExpression()), !dbg !2810
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2811
  ret i64 %call, !dbg !2812
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2813 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2819, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2820, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2822, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2823, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 0, metadata !2824, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2825, metadata !DIExpression()), !dbg !2829
  br label %while.cond, !dbg !2830

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2831
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2829
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2824, metadata !DIExpression()), !dbg !2829
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2832
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2830

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2833
  %div = lshr i64 %add, 1, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %div, metadata !2826, metadata !DIExpression()), !dbg !2829
  %mul = mul i64 %div, %__size, !dbg !2836
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2827, metadata !DIExpression()), !dbg !2829
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %call, metadata !2828, metadata !DIExpression()), !dbg !2829
  %cmp1 = icmp slt i32 %call, 0, !dbg !2839
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2841

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2842
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2844

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2824, metadata !DIExpression()), !dbg !2829
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2829
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2829
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2824, metadata !DIExpression()), !dbg !2829
  br label %while.cond, !dbg !2830, !llvm.loop !2846

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2829
  ret i8* %retval.0, !dbg !2848
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2849 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2854, metadata !DIExpression()), !dbg !2855
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2856
  ret double %call, !dbg !2857
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 %base, metadata !2869, metadata !DIExpression()), !dbg !2870
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2871
  ret i64 %call, !dbg !2872
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2873 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2879, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 %base, metadata !2881, metadata !DIExpression()), !dbg !2882
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2883
  ret i64 %call, !dbg !2884
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2885 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i32 %base, metadata !2898, metadata !DIExpression()), !dbg !2899
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2900
  ret i64 %call, !dbg !2901
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2906, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2907, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 %base, metadata !2908, metadata !DIExpression()), !dbg !2909
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2910
  ret i64 %call, !dbg !2911
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2953, metadata !DIExpression()), !dbg !2954
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2955
  ret i32 %call, !dbg !2956
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2957 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2960, metadata !DIExpression()), !dbg !2961
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2962
  ret i32 %call, !dbg !2963
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2964 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2968, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2969, metadata !DIExpression()), !dbg !2970
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2971
  ret i32 %call, !dbg !2972
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2973 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2977, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2980, metadata !DIExpression()), !dbg !2981
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2982
  ret i32 %call, !dbg !2983
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2984 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2990, metadata !DIExpression()), !dbg !2991
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2990, metadata !DIExpression(DW_OP_deref)), !dbg !2991
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2992
  ret i32 %call, !dbg !2993
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2994 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2998, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2999, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3001, metadata !DIExpression()), !dbg !3002
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3001, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3003
  ret i32 %call, !dbg !3004
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3005 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3030, metadata !DIExpression()), !dbg !3031
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3032
  ret i32 %call, !dbg !3033
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3034 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3037, metadata !DIExpression()), !dbg !3038
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3039
  ret i32 %call, !dbg !3040
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3041 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3046, metadata !DIExpression()), !dbg !3047
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !3048
  ret i32 %call, !dbg !3049
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3050 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3054, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3055, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3057, metadata !DIExpression()), !dbg !3058
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !3059
  ret i32 %call, !dbg !3060
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_edge_hook_list* @cgraph_add_edge_removal_hook(void (%struct.cgraph_edge*, i8*)* %hook, i8* %data) local_unnamed_addr #4 !dbg !3061 {
entry:
  call void @llvm.dbg.value(metadata void (%struct.cgraph_edge*, i8*)* %hook, metadata !3065, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %data, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** @first_cgraph_edge_removal_hook, metadata !3068, metadata !DIExpression()), !dbg !3070
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list* %3, metadata !3067, metadata !DIExpression()), !dbg !3070
  %hook2 = bitcast i8* %call to void (%struct.cgraph_edge*, i8*)**, !dbg !3072
  store void (%struct.cgraph_edge*, i8*)* %hook, void (%struct.cgraph_edge*, i8*)** %hook2, align 8, !dbg !3073
  %data3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3074
  %0 = bitcast i8* %data3 to i8**, !dbg !3074
  store i8* %data, i8** %0, align 8, !dbg !3075
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3076
  %1 = bitcast i8* %next to %struct.cgraph_edge_hook_list**, !dbg !3076
  store %struct.cgraph_edge_hook_list* null, %struct.cgraph_edge_hook_list** %1, align 8, !dbg !3077
  br label %while.cond, !dbg !3078

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_edge_hook_list** [ @first_cgraph_edge_removal_hook, %entry ], [ %next4, %while.body ], !dbg !3070
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0, metadata !3068, metadata !DIExpression()), !dbg !3070
  %2 = load %struct.cgraph_edge_hook_list*, %struct.cgraph_edge_hook_list** %ptr.0, align 8, !dbg !3079
  %tobool = icmp eq %struct.cgraph_edge_hook_list* %2, null, !dbg !3078
  br i1 %tobool, label %while.end, label %while.body, !dbg !3078

while.body:                                       ; preds = %while.cond
  %next4 = getelementptr inbounds %struct.cgraph_edge_hook_list, %struct.cgraph_edge_hook_list* %2, i64 0, i32 2, !dbg !3080
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %next4, metadata !3068, metadata !DIExpression()), !dbg !3070
  br label %while.cond, !dbg !3078, !llvm.loop !3081

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_edge_hook_list** [ %ptr.0, %while.cond ], !dbg !3070
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3070
  %3 = bitcast i8* %call to %struct.cgraph_edge_hook_list*, !dbg !3082
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3070
  %4 = bitcast %struct.cgraph_edge_hook_list** %ptr.0.lcssa to i8**, !dbg !3083
  store i8* %call, i8** %4, align 8, !dbg !3083
  ret %struct.cgraph_edge_hook_list* %3, !dbg !3084
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_edge_removal_hook(%struct.cgraph_edge_hook_list* %entry1) local_unnamed_addr #4 !dbg !3085 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list* %entry1, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** @first_cgraph_edge_removal_hook, metadata !3090, metadata !DIExpression()), !dbg !3091
  br label %while.cond, !dbg !3092

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_edge_hook_list** [ @first_cgraph_edge_removal_hook, %entry ], [ %next, %while.body ], !dbg !3091
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0, metadata !3090, metadata !DIExpression()), !dbg !3091
  %0 = load %struct.cgraph_edge_hook_list*, %struct.cgraph_edge_hook_list** %ptr.0, align 8, !dbg !3093
  %cmp = icmp eq %struct.cgraph_edge_hook_list* %0, %entry1, !dbg !3094
  br i1 %cmp, label %while.end, label %while.body, !dbg !3092

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.cgraph_edge_hook_list, %struct.cgraph_edge_hook_list* %0, i64 0, i32 2, !dbg !3095
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %next, metadata !3090, metadata !DIExpression()), !dbg !3091
  br label %while.cond, !dbg !3092, !llvm.loop !3096

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_edge_hook_list** [ %ptr.0, %while.cond ], !dbg !3091
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0.lcssa, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0.lcssa, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list** %ptr.0.lcssa, metadata !3090, metadata !DIExpression()), !dbg !3091
  %next2 = getelementptr inbounds %struct.cgraph_edge_hook_list, %struct.cgraph_edge_hook_list* %entry1, i64 0, i32 2, !dbg !3097
  %1 = bitcast %struct.cgraph_edge_hook_list** %next2 to i64*, !dbg !3097
  %2 = load i64, i64* %1, align 8, !dbg !3097
  %3 = bitcast %struct.cgraph_edge_hook_list** %ptr.0.lcssa to i64*, !dbg !3098
  store i64 %2, i64* %3, align 8, !dbg !3098
  %4 = bitcast %struct.cgraph_edge_hook_list* %entry1 to i8*, !dbg !3099
  tail call void @free(i8* %4) #6, !dbg !3100
  ret void, !dbg !3101
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node_hook_list* @cgraph_add_node_removal_hook(void (%struct.cgraph_node*, i8*)* %hook, i8* %data) local_unnamed_addr #4 !dbg !3102 {
entry:
  call void @llvm.dbg.value(metadata void (%struct.cgraph_node*, i8*)* %hook, metadata !3106, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8* %data, metadata !3107, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** @first_cgraph_node_removal_hook, metadata !3109, metadata !DIExpression()), !dbg !3111
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !3112
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list* %3, metadata !3108, metadata !DIExpression()), !dbg !3111
  %hook2 = bitcast i8* %call to void (%struct.cgraph_node*, i8*)**, !dbg !3113
  store void (%struct.cgraph_node*, i8*)* %hook, void (%struct.cgraph_node*, i8*)** %hook2, align 8, !dbg !3114
  %data3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3115
  %0 = bitcast i8* %data3 to i8**, !dbg !3115
  store i8* %data, i8** %0, align 8, !dbg !3116
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3117
  %1 = bitcast i8* %next to %struct.cgraph_node_hook_list**, !dbg !3117
  store %struct.cgraph_node_hook_list* null, %struct.cgraph_node_hook_list** %1, align 8, !dbg !3118
  br label %while.cond, !dbg !3119

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_node_hook_list** [ @first_cgraph_node_removal_hook, %entry ], [ %next4, %while.body ], !dbg !3111
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0, metadata !3109, metadata !DIExpression()), !dbg !3111
  %2 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** %ptr.0, align 8, !dbg !3120
  %tobool = icmp eq %struct.cgraph_node_hook_list* %2, null, !dbg !3119
  br i1 %tobool, label %while.end, label %while.body, !dbg !3119

while.body:                                       ; preds = %while.cond
  %next4 = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %2, i64 0, i32 2, !dbg !3121
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %next4, metadata !3109, metadata !DIExpression()), !dbg !3111
  br label %while.cond, !dbg !3119, !llvm.loop !3122

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_node_hook_list** [ %ptr.0, %while.cond ], !dbg !3111
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3109, metadata !DIExpression()), !dbg !3111
  %3 = bitcast i8* %call to %struct.cgraph_node_hook_list*, !dbg !3123
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3109, metadata !DIExpression()), !dbg !3111
  %4 = bitcast %struct.cgraph_node_hook_list** %ptr.0.lcssa to i8**, !dbg !3124
  store i8* %call, i8** %4, align 8, !dbg !3124
  ret %struct.cgraph_node_hook_list* %3, !dbg !3125
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_node_removal_hook(%struct.cgraph_node_hook_list* %entry1) local_unnamed_addr #4 !dbg !3126 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list* %entry1, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** @first_cgraph_node_removal_hook, metadata !3131, metadata !DIExpression()), !dbg !3132
  br label %while.cond, !dbg !3133

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_node_hook_list** [ @first_cgraph_node_removal_hook, %entry ], [ %next, %while.body ], !dbg !3132
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0, metadata !3131, metadata !DIExpression()), !dbg !3132
  %0 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** %ptr.0, align 8, !dbg !3134
  %cmp = icmp eq %struct.cgraph_node_hook_list* %0, %entry1, !dbg !3135
  br i1 %cmp, label %while.end, label %while.body, !dbg !3133

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %0, i64 0, i32 2, !dbg !3136
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %next, metadata !3131, metadata !DIExpression()), !dbg !3132
  br label %while.cond, !dbg !3133, !llvm.loop !3137

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_node_hook_list** [ %ptr.0, %while.cond ], !dbg !3132
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3132
  %next2 = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1, i64 0, i32 2, !dbg !3138
  %1 = bitcast %struct.cgraph_node_hook_list** %next2 to i64*, !dbg !3138
  %2 = load i64, i64* %1, align 8, !dbg !3138
  %3 = bitcast %struct.cgraph_node_hook_list** %ptr.0.lcssa to i64*, !dbg !3139
  store i64 %2, i64* %3, align 8, !dbg !3139
  %4 = bitcast %struct.cgraph_node_hook_list* %entry1 to i8*, !dbg !3140
  tail call void @free(i8* %4) #6, !dbg !3141
  ret void, !dbg !3142
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)* %hook, i8* %data) local_unnamed_addr #4 !dbg !3143 {
entry:
  call void @llvm.dbg.value(metadata void (%struct.cgraph_node*, i8*)* %hook, metadata !3145, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %data, metadata !3146, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** @first_cgraph_function_insertion_hook, metadata !3148, metadata !DIExpression()), !dbg !3149
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !3150
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list* %3, metadata !3147, metadata !DIExpression()), !dbg !3149
  %hook2 = bitcast i8* %call to void (%struct.cgraph_node*, i8*)**, !dbg !3151
  store void (%struct.cgraph_node*, i8*)* %hook, void (%struct.cgraph_node*, i8*)** %hook2, align 8, !dbg !3152
  %data3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3153
  %0 = bitcast i8* %data3 to i8**, !dbg !3153
  store i8* %data, i8** %0, align 8, !dbg !3154
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3155
  %1 = bitcast i8* %next to %struct.cgraph_node_hook_list**, !dbg !3155
  store %struct.cgraph_node_hook_list* null, %struct.cgraph_node_hook_list** %1, align 8, !dbg !3156
  br label %while.cond, !dbg !3157

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_node_hook_list** [ @first_cgraph_function_insertion_hook, %entry ], [ %next4, %while.body ], !dbg !3149
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0, metadata !3148, metadata !DIExpression()), !dbg !3149
  %2 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** %ptr.0, align 8, !dbg !3158
  %tobool = icmp eq %struct.cgraph_node_hook_list* %2, null, !dbg !3157
  br i1 %tobool, label %while.end, label %while.body, !dbg !3157

while.body:                                       ; preds = %while.cond
  %next4 = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %2, i64 0, i32 2, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %next4, metadata !3148, metadata !DIExpression()), !dbg !3149
  br label %while.cond, !dbg !3157, !llvm.loop !3160

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_node_hook_list** [ %ptr.0, %while.cond ], !dbg !3149
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3148, metadata !DIExpression()), !dbg !3149
  %3 = bitcast i8* %call to %struct.cgraph_node_hook_list*, !dbg !3161
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3148, metadata !DIExpression()), !dbg !3149
  %4 = bitcast %struct.cgraph_node_hook_list** %ptr.0.lcssa to i8**, !dbg !3162
  store i8* %call, i8** %4, align 8, !dbg !3162
  ret %struct.cgraph_node_hook_list* %3, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_function_insertion_hook(%struct.cgraph_node_hook_list* %entry1) local_unnamed_addr #4 !dbg !3164 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list* %entry1, metadata !3166, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** @first_cgraph_function_insertion_hook, metadata !3167, metadata !DIExpression()), !dbg !3168
  br label %while.cond, !dbg !3169

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_node_hook_list** [ @first_cgraph_function_insertion_hook, %entry ], [ %next, %while.body ], !dbg !3168
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0, metadata !3167, metadata !DIExpression()), !dbg !3168
  %0 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** %ptr.0, align 8, !dbg !3170
  %cmp = icmp eq %struct.cgraph_node_hook_list* %0, %entry1, !dbg !3171
  br i1 %cmp, label %while.end, label %while.body, !dbg !3169

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %0, i64 0, i32 2, !dbg !3172
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %next, metadata !3167, metadata !DIExpression()), !dbg !3168
  br label %while.cond, !dbg !3169, !llvm.loop !3173

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_node_hook_list** [ %ptr.0, %while.cond ], !dbg !3168
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list** %ptr.0.lcssa, metadata !3167, metadata !DIExpression()), !dbg !3168
  %next2 = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1, i64 0, i32 2, !dbg !3174
  %1 = bitcast %struct.cgraph_node_hook_list** %next2 to i64*, !dbg !3174
  %2 = load i64, i64* %1, align 8, !dbg !3174
  %3 = bitcast %struct.cgraph_node_hook_list** %ptr.0.lcssa to i64*, !dbg !3175
  store i64 %2, i64* %3, align 8, !dbg !3175
  %4 = bitcast %struct.cgraph_node_hook_list* %entry1 to i8*, !dbg !3176
  tail call void @free(i8* %4) #6, !dbg !3177
  ret void, !dbg !3178
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_call_function_insertion_hooks(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !3179 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3181, metadata !DIExpression()), !dbg !3183
  br label %while.cond, !dbg !3184

while.cond:                                       ; preds = %while.body, %entry
  %entry1.0.in = phi %struct.cgraph_node_hook_list** [ @first_cgraph_function_insertion_hook, %entry ], [ %next, %while.body ]
  %entry1.0 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** %entry1.0.in, align 8, !dbg !3183
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list* %entry1.0, metadata !3182, metadata !DIExpression()), !dbg !3183
  %tobool = icmp eq %struct.cgraph_node_hook_list* %entry1.0, null, !dbg !3184
  br i1 %tobool, label %while.end, label %while.body, !dbg !3184

while.body:                                       ; preds = %while.cond
  %hook = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1.0, i64 0, i32 0, !dbg !3185
  %0 = load void (%struct.cgraph_node*, i8*)*, void (%struct.cgraph_node*, i8*)** %hook, align 8, !dbg !3185
  %data = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1.0, i64 0, i32 1, !dbg !3187
  %1 = load i8*, i8** %data, align 8, !dbg !3187
  tail call void %0(%struct.cgraph_node* %node, i8* %1) #6, !dbg !3188
  %next = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1.0, i64 0, i32 2, !dbg !3189
  br label %while.cond, !dbg !3184, !llvm.loop !3190

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3192
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_2edge_hook_list* @cgraph_add_edge_duplication_hook(void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)* %hook, i8* %data) local_unnamed_addr #4 !dbg !3193 {
entry:
  call void @llvm.dbg.value(metadata void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)* %hook, metadata !3197, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* %data, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** @first_cgraph_edge_duplicated_hook, metadata !3200, metadata !DIExpression()), !dbg !3202
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list* %3, metadata !3199, metadata !DIExpression()), !dbg !3202
  %hook2 = bitcast i8* %call to void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)**, !dbg !3204
  store void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)* %hook, void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)** %hook2, align 8, !dbg !3205
  %data3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3206
  %0 = bitcast i8* %data3 to i8**, !dbg !3206
  store i8* %data, i8** %0, align 8, !dbg !3207
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3208
  %1 = bitcast i8* %next to %struct.cgraph_2edge_hook_list**, !dbg !3208
  store %struct.cgraph_2edge_hook_list* null, %struct.cgraph_2edge_hook_list** %1, align 8, !dbg !3209
  br label %while.cond, !dbg !3210

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_2edge_hook_list** [ @first_cgraph_edge_duplicated_hook, %entry ], [ %next4, %while.body ], !dbg !3202
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0, metadata !3200, metadata !DIExpression()), !dbg !3202
  %2 = load %struct.cgraph_2edge_hook_list*, %struct.cgraph_2edge_hook_list** %ptr.0, align 8, !dbg !3211
  %tobool = icmp eq %struct.cgraph_2edge_hook_list* %2, null, !dbg !3210
  br i1 %tobool, label %while.end, label %while.body, !dbg !3210

while.body:                                       ; preds = %while.cond
  %next4 = getelementptr inbounds %struct.cgraph_2edge_hook_list, %struct.cgraph_2edge_hook_list* %2, i64 0, i32 2, !dbg !3212
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %next4, metadata !3200, metadata !DIExpression()), !dbg !3202
  br label %while.cond, !dbg !3210, !llvm.loop !3213

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_2edge_hook_list** [ %ptr.0, %while.cond ], !dbg !3202
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0.lcssa, metadata !3200, metadata !DIExpression()), !dbg !3202
  %3 = bitcast i8* %call to %struct.cgraph_2edge_hook_list*, !dbg !3214
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0.lcssa, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0.lcssa, metadata !3200, metadata !DIExpression()), !dbg !3202
  %4 = bitcast %struct.cgraph_2edge_hook_list** %ptr.0.lcssa to i8**, !dbg !3215
  store i8* %call, i8** %4, align 8, !dbg !3215
  ret %struct.cgraph_2edge_hook_list* %3, !dbg !3216
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_edge_duplication_hook(%struct.cgraph_2edge_hook_list* %entry1) local_unnamed_addr #4 !dbg !3217 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list* %entry1, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** @first_cgraph_edge_duplicated_hook, metadata !3222, metadata !DIExpression()), !dbg !3223
  br label %while.cond, !dbg !3224

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_2edge_hook_list** [ @first_cgraph_edge_duplicated_hook, %entry ], [ %next, %while.body ], !dbg !3223
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0, metadata !3222, metadata !DIExpression()), !dbg !3223
  %0 = load %struct.cgraph_2edge_hook_list*, %struct.cgraph_2edge_hook_list** %ptr.0, align 8, !dbg !3225
  %cmp = icmp eq %struct.cgraph_2edge_hook_list* %0, %entry1, !dbg !3226
  br i1 %cmp, label %while.end, label %while.body, !dbg !3224

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.cgraph_2edge_hook_list, %struct.cgraph_2edge_hook_list* %0, i64 0, i32 2, !dbg !3227
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %next, metadata !3222, metadata !DIExpression()), !dbg !3223
  br label %while.cond, !dbg !3224, !llvm.loop !3228

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_2edge_hook_list** [ %ptr.0, %while.cond ], !dbg !3223
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0.lcssa, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0.lcssa, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list** %ptr.0.lcssa, metadata !3222, metadata !DIExpression()), !dbg !3223
  %next2 = getelementptr inbounds %struct.cgraph_2edge_hook_list, %struct.cgraph_2edge_hook_list* %entry1, i64 0, i32 2, !dbg !3229
  %1 = bitcast %struct.cgraph_2edge_hook_list** %next2 to i64*, !dbg !3229
  %2 = load i64, i64* %1, align 8, !dbg !3229
  %3 = bitcast %struct.cgraph_2edge_hook_list** %ptr.0.lcssa to i64*, !dbg !3230
  store i64 %2, i64* %3, align 8, !dbg !3230
  %4 = bitcast %struct.cgraph_2edge_hook_list* %entry1 to i8*, !dbg !3231
  tail call void @free(i8* %4) #6, !dbg !3232
  ret void, !dbg !3233
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_2node_hook_list* @cgraph_add_node_duplication_hook(void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)* %hook, i8* %data) local_unnamed_addr #4 !dbg !3234 {
entry:
  call void @llvm.dbg.value(metadata void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)* %hook, metadata !3238, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8* %data, metadata !3239, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** @first_cgraph_node_duplicated_hook, metadata !3241, metadata !DIExpression()), !dbg !3243
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list* %3, metadata !3240, metadata !DIExpression()), !dbg !3243
  %hook2 = bitcast i8* %call to void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)**, !dbg !3245
  store void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)* %hook, void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)** %hook2, align 8, !dbg !3246
  %data3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3247
  %0 = bitcast i8* %data3 to i8**, !dbg !3247
  store i8* %data, i8** %0, align 8, !dbg !3248
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3249
  %1 = bitcast i8* %next to %struct.cgraph_2node_hook_list**, !dbg !3249
  store %struct.cgraph_2node_hook_list* null, %struct.cgraph_2node_hook_list** %1, align 8, !dbg !3250
  br label %while.cond, !dbg !3251

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_2node_hook_list** [ @first_cgraph_node_duplicated_hook, %entry ], [ %next4, %while.body ], !dbg !3243
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0, metadata !3241, metadata !DIExpression()), !dbg !3243
  %2 = load %struct.cgraph_2node_hook_list*, %struct.cgraph_2node_hook_list** %ptr.0, align 8, !dbg !3252
  %tobool = icmp eq %struct.cgraph_2node_hook_list* %2, null, !dbg !3251
  br i1 %tobool, label %while.end, label %while.body, !dbg !3251

while.body:                                       ; preds = %while.cond
  %next4 = getelementptr inbounds %struct.cgraph_2node_hook_list, %struct.cgraph_2node_hook_list* %2, i64 0, i32 2, !dbg !3253
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %next4, metadata !3241, metadata !DIExpression()), !dbg !3243
  br label %while.cond, !dbg !3251, !llvm.loop !3254

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_2node_hook_list** [ %ptr.0, %while.cond ], !dbg !3243
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0.lcssa, metadata !3241, metadata !DIExpression()), !dbg !3243
  %3 = bitcast i8* %call to %struct.cgraph_2node_hook_list*, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0.lcssa, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0.lcssa, metadata !3241, metadata !DIExpression()), !dbg !3243
  %4 = bitcast %struct.cgraph_2node_hook_list** %ptr.0.lcssa to i8**, !dbg !3256
  store i8* %call, i8** %4, align 8, !dbg !3256
  ret %struct.cgraph_2node_hook_list* %3, !dbg !3257
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_node_duplication_hook(%struct.cgraph_2node_hook_list* %entry1) local_unnamed_addr #4 !dbg !3258 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list* %entry1, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** @first_cgraph_node_duplicated_hook, metadata !3263, metadata !DIExpression()), !dbg !3264
  br label %while.cond, !dbg !3265

while.cond:                                       ; preds = %while.body, %entry
  %ptr.0 = phi %struct.cgraph_2node_hook_list** [ @first_cgraph_node_duplicated_hook, %entry ], [ %next, %while.body ], !dbg !3264
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0, metadata !3263, metadata !DIExpression()), !dbg !3264
  %0 = load %struct.cgraph_2node_hook_list*, %struct.cgraph_2node_hook_list** %ptr.0, align 8, !dbg !3266
  %cmp = icmp eq %struct.cgraph_2node_hook_list* %0, %entry1, !dbg !3267
  br i1 %cmp, label %while.end, label %while.body, !dbg !3265

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.cgraph_2node_hook_list, %struct.cgraph_2node_hook_list* %0, i64 0, i32 2, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %next, metadata !3263, metadata !DIExpression()), !dbg !3264
  br label %while.cond, !dbg !3265, !llvm.loop !3269

while.end:                                        ; preds = %while.cond
  %ptr.0.lcssa = phi %struct.cgraph_2node_hook_list** [ %ptr.0, %while.cond ], !dbg !3264
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0.lcssa, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0.lcssa, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list** %ptr.0.lcssa, metadata !3263, metadata !DIExpression()), !dbg !3264
  %next2 = getelementptr inbounds %struct.cgraph_2node_hook_list, %struct.cgraph_2node_hook_list* %entry1, i64 0, i32 2, !dbg !3270
  %1 = bitcast %struct.cgraph_2node_hook_list** %next2 to i64*, !dbg !3270
  %2 = load i64, i64* %1, align 8, !dbg !3270
  %3 = bitcast %struct.cgraph_2node_hook_list** %ptr.0.lcssa to i64*, !dbg !3271
  store i64 %2, i64* %3, align 8, !dbg !3271
  %4 = bitcast %struct.cgraph_2node_hook_list* %entry1 to i8*, !dbg !3272
  tail call void @free(i8* %4) #6, !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !3275 {
entry:
  %key = alloca %struct.cgraph_node, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3279, metadata !DIExpression()), !dbg !3287
  %0 = bitcast %struct.cgraph_node* %key to i8*, !dbg !3288
  call void @llvm.lifetime.start.p0i8(i64 312, i8* nonnull %0) #7, !dbg !3288
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3289
  %bf.load = load i64, i64* %1, align 8, !dbg !3289
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3289
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !3289
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3289

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 468, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3289
  br label %cond.end, !dbg !3289

cond.end:                                         ; preds = %entry, %cond.true
  %2 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !3290
  %tobool = icmp eq %struct.htab* %2, null, !dbg !3290
  br i1 %tobool, label %if.then, label %if.end, !dbg !3292

if.then:                                          ; preds = %cond.end
  %call = tail call %struct.htab* @htab_create_alloc(i64 10, i32 (i8*)* nonnull @hash_node, i32 (i8*, i8*)* nonnull @eq_node, void (i8*)* null, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !3293
  store %struct.htab* %call, %struct.htab** @cgraph_hash, align 8, !dbg !3294
  br label %if.end, !dbg !3295

if.end:                                           ; preds = %cond.end, %if.then
  %3 = phi %struct.htab* [ %2, %cond.end ], [ %call, %if.then ], !dbg !3296
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %key, i64 0, i32 0, !dbg !3297
  store %union.tree_node* %decl, %union.tree_node** %decl1, align 8, !dbg !3298
  %call2 = call i8** @htab_find_slot(%struct.htab* %3, i8* nonnull %0, i32 1) #6, !dbg !3299
  %4 = bitcast i8** %call2 to %struct.cgraph_node**, !dbg !3300
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %4, metadata !3282, metadata !DIExpression()), !dbg !3287
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8, !dbg !3301
  %tobool3 = icmp eq %struct.cgraph_node* %5, null, !dbg !3301
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !3303

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %5, metadata !3281, metadata !DIExpression()), !dbg !3287
  %same_body_alias = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i64 0, i32 27, !dbg !3304
  %bf.load5 = load i16, i16* %same_body_alias, align 4, !dbg !3304
  %bf.clear6 = and i16 %bf.load5, 512, !dbg !3304
  %tobool8 = icmp eq i16 %bf.clear6, 0, !dbg !3307
  br i1 %tobool8, label %cleanup, label %if.then9, !dbg !3308

if.then9:                                         ; preds = %if.then4
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i64 0, i32 13, !dbg !3309
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !3309
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %6, metadata !3281, metadata !DIExpression()), !dbg !3287
  br label %cleanup, !dbg !3310

if.end11:                                         ; preds = %if.end
  %call12 = call fastcc %struct.cgraph_node* @cgraph_create_node() #8, !dbg !3311
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call12, metadata !3281, metadata !DIExpression()), !dbg !3287
  %decl13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 0, !dbg !3312
  store %union.tree_node* %decl, %union.tree_node** %decl13, align 8, !dbg !3313
  store %struct.cgraph_node* %call12, %struct.cgraph_node** %4, align 8, !dbg !3314
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3315
  %7 = load %union.tree_node*, %union.tree_node** %context, align 8, !dbg !3315
  %tobool14 = icmp eq %union.tree_node* %7, null, !dbg !3315
  br i1 %tobool14, label %if.end29, label %land.lhs.true, !dbg !3317

land.lhs.true:                                    ; preds = %if.end11
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3317
  %bf.load18 = load i64, i64* %8, align 8, !dbg !3318
  %bf.cast202 = and i64 %bf.load18, 65535, !dbg !3319
  %cmp21 = icmp eq i64 %bf.cast202, 29, !dbg !3319
  br i1 %cmp21, label %if.then22, label %if.end29, !dbg !3320

if.then22:                                        ; preds = %land.lhs.true
  %call25 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %7) #8, !dbg !3321
  %origin = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 5, !dbg !3323
  store %struct.cgraph_node* %call25, %struct.cgraph_node** %origin, align 8, !dbg !3324
  %nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call25, i64 0, i32 6, !dbg !3325
  %9 = bitcast %struct.cgraph_node** %nested to i64*, !dbg !3325
  %10 = load i64, i64* %9, align 8, !dbg !3325
  %next_nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 7, !dbg !3326
  %11 = bitcast %struct.cgraph_node** %next_nested to i64*, !dbg !3327
  store i64 %10, i64* %11, align 8, !dbg !3327
  store %struct.cgraph_node* %call12, %struct.cgraph_node** %nested, align 8, !dbg !3328
  br label %if.end29, !dbg !3329

if.end29:                                         ; preds = %if.end11, %if.then22, %land.lhs.true
  %12 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3330
  %tobool30 = icmp eq %struct.htab* %12, null, !dbg !3330
  br i1 %tobool30, label %cleanup, label %if.then31, !dbg !3331

if.then31:                                        ; preds = %if.end29
  %call32 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !3332
  call void @llvm.dbg.value(metadata %union.tree_node* %call32, metadata !3286, metadata !DIExpression()), !dbg !3333
  %13 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3334
  %14 = bitcast %union.tree_node* %call32 to i8*, !dbg !3335
  %call33 = call i32 @decl_assembler_name_hash(%union.tree_node* %call32) #6, !dbg !3336
  %call34 = call i8** @htab_find_slot_with_hash(%struct.htab* %13, i8* %14, i32 %call33, i32 1) #6, !dbg !3337
  call void @llvm.dbg.value(metadata i8** %call34, metadata !3283, metadata !DIExpression()), !dbg !3333
  %15 = load i8*, i8** %call34, align 8, !dbg !3338
  %cmp35 = icmp eq i8* %15, null, !dbg !3340
  br i1 %cmp35, label %if.then36, label %cleanup, !dbg !3341

if.then36:                                        ; preds = %if.then31
  %16 = bitcast i8** %call34 to %struct.cgraph_node**, !dbg !3342
  store %struct.cgraph_node* %call12, %struct.cgraph_node** %16, align 8, !dbg !3342
  br label %cleanup, !dbg !3343

cleanup:                                          ; preds = %if.then4, %if.end29, %if.then36, %if.then31, %if.then9
  %retval.0 = phi %struct.cgraph_node* [ %6, %if.then9 ], [ %5, %if.then4 ], [ %call12, %if.then31 ], [ %call12, %if.then36 ], [ %call12, %if.end29 ], !dbg !3287
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %0) #7, !dbg !3344
  ret %struct.cgraph_node* %retval.0, !dbg !3344
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create_alloc(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8* (i64, i64)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_node(i8* %p) #4 !dbg !3345 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %p, metadata !3348, metadata !DIExpression()), !dbg !3349
  %0 = bitcast i8* %p to %struct.tree_decl_minimal**, !dbg !3350
  %1 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %0, align 8, !dbg !3350
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %1, i64 0, i32 2, !dbg !3350
  %2 = load i32, i32* %uid, align 4, !dbg !3350
  ret i32 %2, !dbg !3351
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_node(i8* %p1, i8* %p2) #4 !dbg !3352 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3357, metadata !DIExpression()), !dbg !3358
  %0 = bitcast i8* %p1 to %struct.tree_decl_minimal**, !dbg !3359
  %1 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %0, align 8, !dbg !3359
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %1, i64 0, i32 2, !dbg !3359
  %2 = load i32, i32* %uid, align 4, !dbg !3359
  %3 = bitcast i8* %p2 to %struct.tree_decl_minimal**, !dbg !3360
  %4 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %3, align 8, !dbg !3360
  %uid3 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %4, i64 0, i32 2, !dbg !3360
  %5 = load i32, i32* %uid3, align 4, !dbg !3360
  %cmp = icmp eq i32 %2, %5, !dbg !3361
  %conv = zext i1 %cmp to i32, !dbg !3361
  ret i32 %conv, !dbg !3362
}

declare dso_local i8* @ggc_calloc(i64, i64) #1

declare dso_local void @ggc_free(i8*) #1

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cgraph_node* @cgraph_create_node() unnamed_addr #4 !dbg !3363 {
entry:
  %call = tail call fastcc %struct.cgraph_node* @cgraph_allocate_node() #8, !dbg !3368
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !3367, metadata !DIExpression()), !dbg !3369
  %0 = load i64, i64* bitcast (%struct.cgraph_node** @cgraph_nodes to i64*), align 8, !dbg !3370
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 3, !dbg !3371
  %1 = bitcast %struct.cgraph_node** %next to i64*, !dbg !3372
  store i64 %0, i64* %1, align 8, !dbg !3372
  %pid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 26, !dbg !3373
  store i32 -1, i32* %pid, align 8, !dbg !3374
  %2 = load i32, i32* @cgraph_order, align 4, !dbg !3375
  %inc = add nsw i32 %2, 1, !dbg !3375
  store i32 %inc, i32* @cgraph_order, align 4, !dbg !3375
  %order = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 25, !dbg !3376
  store i32 %2, i32* %order, align 4, !dbg !3377
  %tobool = icmp eq i64 %0, 0, !dbg !3378
  br i1 %tobool, label %if.end, label %if.then, !dbg !3380

if.then:                                          ; preds = %entry
  %3 = inttoptr i64 %0 to %struct.cgraph_node*, !dbg !3378
  %previous = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %3, i64 0, i32 4, !dbg !3381
  store %struct.cgraph_node* %call, %struct.cgraph_node** %previous, align 8, !dbg !3382
  br label %if.end, !dbg !3383

if.end:                                           ; preds = %entry, %if.then
  %previous1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 4, !dbg !3384
  store %struct.cgraph_node* null, %struct.cgraph_node** %previous1, align 8, !dbg !3385
  %estimated_growth = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 19, i32 5, !dbg !3386
  store i32 -2147483648, i32* %estimated_growth, align 8, !dbg !3387
  store %struct.cgraph_node* %call, %struct.cgraph_node** @cgraph_nodes, align 8, !dbg !3388
  %4 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !3389
  %inc2 = add nsw i32 %4, 1, !dbg !3389
  store i32 %inc2, i32* @cgraph_n_nodes, align 4, !dbg !3389
  ret %struct.cgraph_node* %call, !dbg !3390
}

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #1

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @decl_assembler_name_hash(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_same_body_alias(%union.tree_node* %alias, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !3391 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %alias, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3396, metadata !DIExpression()), !dbg !3397
  %call = tail call fastcc %struct.cgraph_node* @cgraph_same_body_alias_1(%union.tree_node* %alias, %union.tree_node* %decl) #8, !dbg !3398
  %cmp = icmp ne %struct.cgraph_node* %call, null, !dbg !3399
  %conv1 = zext i1 %cmp to i8, !dbg !3398
  ret i8 %conv1, !dbg !3400
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cgraph_node* @cgraph_same_body_alias_1(%union.tree_node* %alias, %union.tree_node* %decl) unnamed_addr #4 !dbg !3401 {
entry:
  %key = alloca %struct.cgraph_node, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %alias, metadata !3405, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3406, metadata !DIExpression()), !dbg !3411
  %0 = bitcast %struct.cgraph_node* %key to i8*, !dbg !3412
  call void @llvm.lifetime.start.p0i8(i64 312, i8* nonnull %0) #7, !dbg !3412
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3413
  %bf.load = load i64, i64* %1, align 8, !dbg !3413
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3413
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !3413
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3413

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 519, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3413
  br label %cond.end, !dbg !3413

cond.end:                                         ; preds = %entry, %cond.true
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %alias, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3414
  %bf.load2 = load i64, i64* %2, align 8, !dbg !3414
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !3414
  %cmp5 = icmp eq i64 %bf.cast42, 29, !dbg !3414
  br i1 %cmp5, label %cond.end8, label %cond.true6, !dbg !3414

cond.true6:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 520, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3414
  br label %cond.end8, !dbg !3414

cond.end8:                                        ; preds = %cond.end, %cond.true6
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) #8, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !3409, metadata !DIExpression()), !dbg !3411
  %decl10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %key, i64 0, i32 0, !dbg !3416
  store %union.tree_node* %alias, %union.tree_node** %decl10, align 8, !dbg !3417
  %3 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !3418
  %call11 = call i8** @htab_find_slot(%struct.htab* %3, i8* nonnull %0, i32 1) #6, !dbg !3419
  %4 = bitcast i8** %call11 to %struct.cgraph_node**, !dbg !3420
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %4, metadata !3410, metadata !DIExpression()), !dbg !3411
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8, !dbg !3421
  %tobool = icmp eq %struct.cgraph_node* %5, null, !dbg !3421
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3423

if.end:                                           ; preds = %cond.end8
  %call12 = call fastcc %struct.cgraph_node* @cgraph_allocate_node() #8, !dbg !3424
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call12, metadata !3408, metadata !DIExpression()), !dbg !3411
  %decl13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 0, !dbg !3425
  store %union.tree_node* %alias, %union.tree_node** %decl13, align 8, !dbg !3426
  %same_body_alias = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 27, !dbg !3427
  %bf.load14 = load i16, i16* %same_body_alias, align 4, !dbg !3428
  %bf.set = or i16 %bf.load14, 512, !dbg !3428
  store i16 %bf.set, i16* %same_body_alias, align 4, !dbg !3428
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 13, !dbg !3429
  store %struct.cgraph_node* %call, %struct.cgraph_node** %same_body, align 8, !dbg !3430
  %previous = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 4, !dbg !3431
  store %struct.cgraph_node* null, %struct.cgraph_node** %previous, align 8, !dbg !3432
  %same_body16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 13, !dbg !3433
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body16, align 8, !dbg !3433
  %tobool17 = icmp eq %struct.cgraph_node* %6, null, !dbg !3435
  br i1 %tobool17, label %if.end.if.end21_crit_edge, label %if.then18, !dbg !3436

if.end.if.end21_crit_edge:                        ; preds = %if.end
  %7 = ptrtoint %struct.cgraph_node* %6 to i64, !dbg !3436
  br label %if.end21, !dbg !3436

if.then18:                                        ; preds = %if.end
  %previous20 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i64 0, i32 4, !dbg !3437
  store %struct.cgraph_node* %call12, %struct.cgraph_node** %previous20, align 8, !dbg !3438
  %.phi.trans.insert = bitcast %struct.cgraph_node** %same_body16 to i64*, !dbg !3411
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3439
  br label %if.end21, !dbg !3440

if.end21:                                         ; preds = %if.end.if.end21_crit_edge, %if.then18
  %8 = phi i64 [ %7, %if.end.if.end21_crit_edge ], [ %.pre, %if.then18 ], !dbg !3439
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 3, !dbg !3441
  %9 = bitcast %struct.cgraph_node** %next to i64*, !dbg !3442
  store i64 %8, i64* %9, align 8, !dbg !3442
  %alias23 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call12, i64 0, i32 22, i32 2, !dbg !3443
  store %union.tree_node* %decl, %union.tree_node** %alias23, align 8, !dbg !3444
  store %struct.cgraph_node* %call12, %struct.cgraph_node** %same_body16, align 8, !dbg !3445
  store %struct.cgraph_node* %call12, %struct.cgraph_node** %4, align 8, !dbg !3446
  br label %cleanup, !dbg !3447

cleanup:                                          ; preds = %cond.end8, %if.end21
  %retval.0 = phi %struct.cgraph_node* [ %call12, %if.end21 ], [ null, %cond.end8 ], !dbg !3411
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %0) #7, !dbg !3448
  ret %struct.cgraph_node* %retval.0, !dbg !3448
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_add_thunk(%union.tree_node* %alias, %union.tree_node* %decl, i8 zeroext %this_adjusting, i64 %fixed_offset, i64 %virtual_value, %union.tree_node* %virtual_offset, %union.tree_node* %real_alias) local_unnamed_addr #4 !dbg !3449 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %alias, metadata !3453, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3454, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8 %this_adjusting, metadata !3455, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %fixed_offset, metadata !3456, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %virtual_value, metadata !3457, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %union.tree_node* %virtual_offset, metadata !3458, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %union.tree_node* %real_alias, metadata !3459, metadata !DIExpression()), !dbg !3461
  %call = tail call %struct.cgraph_node* @cgraph_get_node(%union.tree_node* %alias) #8, !dbg !3462
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !3460, metadata !DIExpression()), !dbg !3461
  %tobool = icmp eq %struct.cgraph_node* %call, null, !dbg !3463
  br i1 %tobool, label %if.end, label %if.then, !dbg !3465

if.then:                                          ; preds = %entry
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 18, i32 2, !dbg !3466
  %bf.load = load i8, i8* %finalized, align 8, !dbg !3466
  %bf.clear = and i8 %bf.load, 4, !dbg !3466
  %tobool1 = icmp eq i8 %bf.clear, 0, !dbg !3466
  br i1 %tobool1, label %cond.true, label %cond.end, !dbg !3466

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3466
  br label %cond.end, !dbg !3466

cond.end:                                         ; preds = %if.then, %cond.true
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 13, !dbg !3468
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !3468
  %tobool2 = icmp eq %struct.cgraph_node* %0, null, !dbg !3468
  br i1 %tobool2, label %cond.end5, label %cond.true3, !dbg !3468

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 573, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3468
  br label %cond.end5, !dbg !3468

cond.end5:                                        ; preds = %cond.end, %cond.true3
  tail call void @cgraph_remove_node(%struct.cgraph_node* nonnull %call) #8, !dbg !3469
  br label %if.end, !dbg !3470

if.end:                                           ; preds = %entry, %cond.end5
  %call7 = tail call fastcc %struct.cgraph_node* @cgraph_same_body_alias_1(%union.tree_node* %alias, %union.tree_node* %decl) #8, !dbg !3471
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call7, metadata !3460, metadata !DIExpression()), !dbg !3461
  %tobool8 = icmp eq %struct.cgraph_node* %call7, null, !dbg !3472
  br i1 %tobool8, label %cond.true9, label %cond.end11, !dbg !3472

cond.true9:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 578, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3472
  br label %cond.end11, !dbg !3472

cond.end11:                                       ; preds = %if.end, %cond.true9
  %fixed_offset13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 22, i32 0, !dbg !3473
  store i64 %fixed_offset, i64* %fixed_offset13, align 8, !dbg !3474
  %this_adjusting15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 22, i32 3, !dbg !3475
  store i8 %this_adjusting, i8* %this_adjusting15, align 8, !dbg !3476
  %virtual_value17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 22, i32 1, !dbg !3477
  store i64 %virtual_value, i64* %virtual_value17, align 8, !dbg !3478
  %cmp = icmp ne %union.tree_node* %virtual_offset, null, !dbg !3479
  %conv18 = zext i1 %cmp to i8, !dbg !3480
  %virtual_offset_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 22, i32 4, !dbg !3481
  store i8 %conv18, i8* %virtual_offset_p, align 1, !dbg !3482
  %alias21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 22, i32 2, !dbg !3483
  store %union.tree_node* %real_alias, %union.tree_node** %alias21, align 8, !dbg !3484
  %thunk_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 22, i32 5, !dbg !3485
  store i8 1, i8* %thunk_p, align 2, !dbg !3486
  ret void, !dbg !3487
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @cgraph_get_node(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !3488 {
entry:
  %key = alloca %struct.cgraph_node, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3490, metadata !DIExpression()), !dbg !3494
  %0 = bitcast %struct.cgraph_node* %key to i8*, !dbg !3495
  call void @llvm.lifetime.start.p0i8(i64 312, i8* nonnull %0) #7, !dbg !3495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* null, metadata !3492, metadata !DIExpression()), !dbg !3494
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3496
  %bf.load = load i64, i64* %1, align 8, !dbg !3496
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3496
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !3496
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3496

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 599, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3496
  br label %cond.end, !dbg !3496

cond.end:                                         ; preds = %entry, %cond.true
  %2 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !3497
  %tobool = icmp eq %struct.htab* %2, null, !dbg !3497
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3499

if.end:                                           ; preds = %cond.end
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %key, i64 0, i32 0, !dbg !3500
  store %union.tree_node* %decl, %union.tree_node** %decl1, align 8, !dbg !3501
  %call = call i8** @htab_find_slot(%struct.htab* nonnull %2, i8* nonnull %0, i32 0) #6, !dbg !3502
  call void @llvm.dbg.value(metadata i8** %call, metadata !3493, metadata !DIExpression()), !dbg !3494
  %tobool2 = icmp eq i8** %call, null, !dbg !3503
  br i1 %tobool2, label %cleanup, label %land.lhs.true, !dbg !3505

land.lhs.true:                                    ; preds = %if.end
  %3 = bitcast i8** %call to %struct.cgraph_node**, !dbg !3506
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %3, metadata !3493, metadata !DIExpression()), !dbg !3494
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8, !dbg !3507
  %tobool3 = icmp eq %struct.cgraph_node* %4, null, !dbg !3507
  br i1 %tobool3, label %cleanup, label %if.then4, !dbg !3508

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %4, metadata !3492, metadata !DIExpression()), !dbg !3494
  %same_body_alias = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i64 0, i32 27, !dbg !3509
  %bf.load5 = load i16, i16* %same_body_alias, align 4, !dbg !3509
  %bf.clear6 = and i16 %bf.load5, 512, !dbg !3509
  %tobool8 = icmp eq i16 %bf.clear6, 0, !dbg !3512
  br i1 %tobool8, label %cleanup, label %if.then9, !dbg !3513

if.then9:                                         ; preds = %if.then4
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i64 0, i32 13, !dbg !3514
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !3514
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %5, metadata !3492, metadata !DIExpression()), !dbg !3494
  br label %cleanup, !dbg !3515

cleanup:                                          ; preds = %if.then4, %land.lhs.true, %if.end, %cond.end, %if.then9
  %retval.0 = phi %struct.cgraph_node* [ null, %cond.end ], [ null, %land.lhs.true ], [ null, %if.end ], [ %5, %if.then9 ], [ %4, %if.then4 ], !dbg !3494
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %0) #7, !dbg !3516
  ret %struct.cgraph_node* %retval.0, !dbg !3516
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_node(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !3517 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3519, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 0, metadata !3521, metadata !DIExpression()), !dbg !3547
  %uid1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3548
  %0 = load i32, i32* %uid1, align 8, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %0, metadata !3523, metadata !DIExpression()), !dbg !3547
  tail call fastcc void @cgraph_call_node_removal_hooks(%struct.cgraph_node* %node) #8, !dbg !3549
  tail call fastcc void @cgraph_node_remove_callers(%struct.cgraph_node* %node) #8, !dbg !3550
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* %node) #8, !dbg !3551
  %ipa_transforms_to_apply = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 17, !dbg !3552
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(%struct.VEC_ipa_opt_pass_heap** nonnull %ipa_transforms_to_apply) #8, !dbg !3552
  %reachable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3553
  %bf.load = load i16, i16* %reachable, align 4, !dbg !3554
  %bf.clear3 = and i16 %bf.load, -10, !dbg !3555
  store i16 %bf.clear3, i16* %reachable, align 4, !dbg !3555
  %nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 6, !dbg !3556
  br label %for.cond, !dbg !3558

for.cond:                                         ; preds = %for.body, %entry
  %n.0.in = phi %struct.cgraph_node** [ %nested, %entry ], [ %next_nested, %for.body ]
  %n.0 = load %struct.cgraph_node*, %struct.cgraph_node** %n.0.in, align 8, !dbg !3559
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0, metadata !3522, metadata !DIExpression()), !dbg !3547
  %tobool = icmp eq %struct.cgraph_node* %n.0, null, !dbg !3560
  br i1 %tobool, label %for.end, label %for.body, !dbg !3560

for.body:                                         ; preds = %for.cond
  %origin = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 5, !dbg !3561
  store %struct.cgraph_node* null, %struct.cgraph_node** %origin, align 8, !dbg !3563
  %next_nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 7, !dbg !3564
  br label %for.cond, !dbg !3565, !llvm.loop !3566

for.end:                                          ; preds = %for.cond
  store %struct.cgraph_node* null, %struct.cgraph_node** %nested, align 8, !dbg !3568
  %origin5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 5, !dbg !3569
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %origin5, align 8, !dbg !3569
  %tobool6 = icmp eq %struct.cgraph_node* %1, null, !dbg !3570
  br i1 %tobool6, label %if.end, label %if.then, !dbg !3571

if.then:                                          ; preds = %for.end
  %nested8 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 6, !dbg !3572
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %nested8, metadata !3524, metadata !DIExpression()), !dbg !3573
  br label %while.cond, !dbg !3574

while.cond:                                       ; preds = %while.body, %if.then
  %node2.0 = phi %struct.cgraph_node** [ %nested8, %if.then ], [ %next_nested9, %while.body ], !dbg !3573
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0, metadata !3524, metadata !DIExpression()), !dbg !3573
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %node2.0, align 8, !dbg !3575
  %cmp = icmp eq %struct.cgraph_node* %2, %node, !dbg !3576
  br i1 %cmp, label %while.end, label %while.body, !dbg !3574

while.body:                                       ; preds = %while.cond
  %next_nested9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 7, !dbg !3577
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %next_nested9, metadata !3524, metadata !DIExpression()), !dbg !3573
  br label %while.cond, !dbg !3574, !llvm.loop !3578

while.end:                                        ; preds = %while.cond
  %node2.0.lcssa = phi %struct.cgraph_node** [ %node2.0, %while.cond ], !dbg !3573
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3573
  %next_nested10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 7, !dbg !3579
  %3 = bitcast %struct.cgraph_node** %next_nested10 to i64*, !dbg !3579
  %4 = load i64, i64* %3, align 8, !dbg !3579
  %5 = bitcast %struct.cgraph_node** %node2.0.lcssa to i64*, !dbg !3580
  store i64 %4, i64* %5, align 8, !dbg !3580
  br label %if.end, !dbg !3581

if.end:                                           ; preds = %for.end, %while.end
  %previous = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 4, !dbg !3582
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %previous, align 8, !dbg !3582
  %tobool11 = icmp eq %struct.cgraph_node* %6, null, !dbg !3584
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 3, !dbg !3585
  %7 = bitcast %struct.cgraph_node** %next to i64*, !dbg !3585
  %8 = load i64, i64* %7, align 8, !dbg !3585
  %9 = inttoptr i64 %8 to %struct.cgraph_node*, !dbg !3586
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !3586

if.then12:                                        ; preds = %if.end
  %next14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i64 0, i32 3, !dbg !3587
  %10 = bitcast %struct.cgraph_node** %next14 to i64*, !dbg !3588
  store i64 %8, i64* %10, align 8, !dbg !3588
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next, align 8, !dbg !3589
  br label %if.end16, !dbg !3591

if.else:                                          ; preds = %if.end
  store i64 %8, i64* bitcast (%struct.cgraph_node** @cgraph_nodes to i64*), align 8, !dbg !3592
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %11 = phi %struct.cgraph_node* [ %9, %if.else ], [ %.pre, %if.then12 ]
  %12 = phi %struct.cgraph_node* [ %9, %if.else ], [ %.pre, %if.then12 ], !dbg !3589
  %tobool18 = icmp eq %struct.cgraph_node* %12, null, !dbg !3593
  br i1 %tobool18, label %if.end23, label %if.then19, !dbg !3594

if.then19:                                        ; preds = %if.end16
  %13 = bitcast %struct.cgraph_node** %previous to i64*, !dbg !3595
  %14 = load i64, i64* %13, align 8, !dbg !3595
  %previous22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %11, i64 0, i32 4, !dbg !3596
  %15 = bitcast %struct.cgraph_node** %previous22 to i64*, !dbg !3597
  store i64 %14, i64* %15, align 8, !dbg !3597
  br label %if.end23, !dbg !3598

if.end23:                                         ; preds = %if.end16, %if.then19
  store %struct.cgraph_node* null, %struct.cgraph_node** %next, align 8, !dbg !3599
  store %struct.cgraph_node* null, %struct.cgraph_node** %previous, align 8, !dbg !3600
  %16 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !3601
  %17 = bitcast %struct.cgraph_node* %node to i8*, !dbg !3602
  %call = tail call i8** @htab_find_slot(%struct.htab* %16, i8* %17, i32 0) #6, !dbg !3603
  call void @llvm.dbg.value(metadata i8** %call, metadata !3520, metadata !DIExpression()), !dbg !3547
  %18 = load i8*, i8** %call, align 8, !dbg !3604
  %cmp26 = icmp eq i8* %18, %17, !dbg !3605
  br i1 %cmp26, label %if.then27, label %if.end111, !dbg !3606

if.then27:                                        ; preds = %if.end23
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 11, !dbg !3607
  %decl30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3609
  br label %for.cond28, !dbg !3611

for.cond28:                                       ; preds = %for.inc33, %if.then27
  %next_inline_clone.0.in = phi %struct.cgraph_node** [ %clones, %if.then27 ], [ %next_sibling_clone, %for.inc33 ]
  %next_inline_clone.0 = load %struct.cgraph_node*, %struct.cgraph_node** %next_inline_clone.0.in, align 8, !dbg !3612
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next_inline_clone.0, metadata !3527, metadata !DIExpression()), !dbg !3613
  %cond = icmp eq %struct.cgraph_node* %next_inline_clone.0, null, !dbg !3614
  br i1 %cond, label %if.else109.loopexit, label %land.rhs, !dbg !3614

land.rhs:                                         ; preds = %for.cond28
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0, i64 0, i32 0, !dbg !3615
  %19 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3615
  %20 = load %union.tree_node*, %union.tree_node** %decl30, align 8, !dbg !3616
  %cmp31 = icmp eq %union.tree_node* %19, %20, !dbg !3617
  br i1 %cmp31, label %for.end34, label %for.inc33, !dbg !3618

for.inc33:                                        ; preds = %land.rhs
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0, i64 0, i32 9, !dbg !3619
  br label %for.cond28, !dbg !3620, !llvm.loop !3621

for.end34:                                        ; preds = %land.rhs
  %next_inline_clone.0.lcssa18 = phi %struct.cgraph_node* [ %next_inline_clone.0, %land.rhs ], !dbg !3612
  %21 = bitcast i8** %call to %struct.cgraph_node**, !dbg !3623
  store %struct.cgraph_node* %next_inline_clone.0.lcssa18, %struct.cgraph_node** %21, align 8, !dbg !3623
  %next_sibling_clone38 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0.lcssa18, i64 0, i32 9, !dbg !3624
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone38, align 8, !dbg !3624
  %tobool39 = icmp eq %struct.cgraph_node* %22, null, !dbg !3626
  br i1 %tobool39, label %if.end43, label %if.then40, !dbg !3627

if.then40:                                        ; preds = %for.end34
  %prev_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0.lcssa18, i64 0, i32 10, !dbg !3628
  %23 = bitcast %struct.cgraph_node** %prev_sibling_clone to i64*, !dbg !3628
  %24 = load i64, i64* %23, align 8, !dbg !3628
  %prev_sibling_clone42 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %22, i64 0, i32 10, !dbg !3629
  %25 = bitcast %struct.cgraph_node** %prev_sibling_clone42 to i64*, !dbg !3630
  store i64 %24, i64* %25, align 8, !dbg !3630
  br label %if.end43, !dbg !3631

if.end43:                                         ; preds = %for.end34, %if.then40
  %prev_sibling_clone44 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0.lcssa18, i64 0, i32 10, !dbg !3632
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone44, align 8, !dbg !3632
  %tobool45 = icmp eq %struct.cgraph_node* %26, null, !dbg !3634
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !3635
  br i1 %tobool45, label %if.else52, label %if.then46, !dbg !3636

if.then46:                                        ; preds = %if.end43
  %cmp48 = icmp eq %struct.cgraph_node* %27, %next_inline_clone.0.lcssa18, !dbg !3637
  br i1 %cmp48, label %cond.true, label %cond.end, !dbg !3637

cond.true:                                        ; preds = %if.then46
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1349, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3637
  %.pre9 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone44, align 8, !dbg !3639
  br label %cond.end, !dbg !3637

cond.end:                                         ; preds = %if.then46, %cond.true
  %28 = phi %struct.cgraph_node* [ %26, %if.then46 ], [ %.pre9, %cond.true ], !dbg !3639
  %29 = bitcast %struct.cgraph_node** %next_sibling_clone38 to i64*, !dbg !3640
  %30 = load i64, i64* %29, align 8, !dbg !3640
  %next_sibling_clone51 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %28, i64 0, i32 9, !dbg !3641
  %31 = bitcast %struct.cgraph_node** %next_sibling_clone51 to i64*, !dbg !3642
  store i64 %30, i64* %31, align 8, !dbg !3642
  %.pre10 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !3643
  br label %if.end61, !dbg !3644

if.else52:                                        ; preds = %if.end43
  %cmp54 = icmp eq %struct.cgraph_node* %27, %next_inline_clone.0.lcssa18, !dbg !3645
  br i1 %cmp54, label %cond.end57, label %cond.true55, !dbg !3645

cond.true55:                                      ; preds = %if.else52
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1355, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3645
  br label %cond.end57, !dbg !3645

cond.end57:                                       ; preds = %if.else52, %cond.true55
  %32 = bitcast %struct.cgraph_node** %next_sibling_clone38 to i64*, !dbg !3647
  %33 = load i64, i64* %32, align 8, !dbg !3647
  %34 = bitcast %struct.cgraph_node** %clones to i64*, !dbg !3648
  store i64 %33, i64* %34, align 8, !dbg !3648
  %35 = inttoptr i64 %33 to %struct.cgraph_node*
  br label %if.end61

if.end61:                                         ; preds = %cond.end57, %cond.end
  %36 = phi %struct.cgraph_node* [ %35, %cond.end57 ], [ %.pre10, %cond.end ], !dbg !3643
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %36, metadata !3533, metadata !DIExpression()), !dbg !3649
  store %struct.cgraph_node* null, %struct.cgraph_node** %clones, align 8, !dbg !3650
  %clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0.lcssa18, i64 0, i32 21, !dbg !3651
  %clone64 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 21, !dbg !3652
  %37 = bitcast %struct.cgraph_clone_info* %clone to i8*, !dbg !3652
  %38 = bitcast %struct.cgraph_clone_info* %clone64 to i8*, !dbg !3652
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %37, i8* nonnull align 8 %38, i64 24, i1 false), !dbg !3652
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 12, !dbg !3653
  %39 = bitcast %struct.cgraph_node** %clone_of to i64*, !dbg !3653
  %40 = load i64, i64* %39, align 8, !dbg !3653
  %clone_of65 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0.lcssa18, i64 0, i32 12, !dbg !3654
  %41 = bitcast %struct.cgraph_node** %clone_of65 to i64*, !dbg !3655
  store i64 %40, i64* %41, align 8, !dbg !3655
  store %struct.cgraph_node* null, %struct.cgraph_node** %prev_sibling_clone44, align 8, !dbg !3656
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_sibling_clone38, align 8, !dbg !3657
  %42 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3658
  %tobool69 = icmp eq %struct.cgraph_node* %42, null, !dbg !3660
  br i1 %tobool69, label %if.end84, label %if.then70, !dbg !3661

if.then70:                                        ; preds = %if.end61
  %clones72 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %42, i64 0, i32 11, !dbg !3662
  %43 = load %struct.cgraph_node*, %struct.cgraph_node** %clones72, align 8, !dbg !3662
  %tobool73 = icmp eq %struct.cgraph_node* %43, null, !dbg !3665
  br i1 %tobool73, label %if.end78, label %if.then74, !dbg !3666

if.then74:                                        ; preds = %if.then70
  %prev_sibling_clone77 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %43, i64 0, i32 10, !dbg !3667
  store %struct.cgraph_node* %next_inline_clone.0.lcssa18, %struct.cgraph_node** %prev_sibling_clone77, align 8, !dbg !3668
  %.pre11 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3669
  br label %if.end78, !dbg !3670

if.end78:                                         ; preds = %if.then70, %if.then74
  %44 = phi %struct.cgraph_node* [ %42, %if.then70 ], [ %.pre11, %if.then74 ], !dbg !3669
  %clones80 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i64 0, i32 11, !dbg !3671
  %45 = bitcast %struct.cgraph_node** %clones80 to i64*, !dbg !3671
  %46 = load i64, i64* %45, align 8, !dbg !3671
  %47 = bitcast %struct.cgraph_node** %next_sibling_clone38 to i64*, !dbg !3672
  store i64 %46, i64* %47, align 8, !dbg !3672
  %48 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3673
  %clones83 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %48, i64 0, i32 11, !dbg !3674
  store %struct.cgraph_node* %next_inline_clone.0.lcssa18, %struct.cgraph_node** %clones83, align 8, !dbg !3675
  br label %if.end84, !dbg !3676

if.end84:                                         ; preds = %if.end61, %if.end78
  %tobool85 = icmp eq %struct.cgraph_node* %36, null, !dbg !3677
  br i1 %tobool85, label %if.end102, label %if.then86, !dbg !3679

if.then86:                                        ; preds = %if.end84
  %clones87 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next_inline_clone.0.lcssa18, i64 0, i32 11, !dbg !3680
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %clones87, align 8, !dbg !3680
  %tobool88 = icmp eq %struct.cgraph_node* %49, null, !dbg !3683
  br i1 %tobool88, label %if.then89, label %if.else91, !dbg !3684

if.then89:                                        ; preds = %if.then86
  store %struct.cgraph_node* %36, %struct.cgraph_node** %clones87, align 8, !dbg !3685
  br label %if.end102, !dbg !3686

if.else91:                                        ; preds = %if.then86
  br label %while.cond93, !dbg !3687

while.cond93:                                     ; preds = %while.body96, %if.else91
  %n37.0 = phi %struct.cgraph_node* [ %49, %if.else91 ], [ %50, %while.body96 ], !dbg !3689
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n37.0, metadata !3530, metadata !DIExpression()), !dbg !3649
  %next_sibling_clone94 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n37.0, i64 0, i32 9, !dbg !3690
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone94, align 8, !dbg !3690
  %tobool95 = icmp eq %struct.cgraph_node* %50, null, !dbg !3687
  br i1 %tobool95, label %while.end98, label %while.body96, !dbg !3687

while.body96:                                     ; preds = %while.cond93
  br label %while.cond93, !dbg !3687, !llvm.loop !3691

while.end98:                                      ; preds = %while.cond93
  %n37.0.lcssa = phi %struct.cgraph_node* [ %n37.0, %while.cond93 ], !dbg !3689
  %next_sibling_clone94.lcssa = phi %struct.cgraph_node** [ %next_sibling_clone94, %while.cond93 ], !dbg !3690
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n37.0.lcssa, metadata !3530, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n37.0.lcssa, metadata !3530, metadata !DIExpression()), !dbg !3649
  store %struct.cgraph_node* %36, %struct.cgraph_node** %next_sibling_clone94.lcssa, align 8, !dbg !3693
  %prev_sibling_clone100 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i64 0, i32 10, !dbg !3694
  store %struct.cgraph_node* %n37.0.lcssa, %struct.cgraph_node** %prev_sibling_clone100, align 8, !dbg !3695
  br label %if.end102

if.end102:                                        ; preds = %if.end84, %if.then89, %while.end98
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %36, metadata !3530, metadata !DIExpression()), !dbg !3649
  br label %while.cond103, !dbg !3696

while.cond103:                                    ; preds = %while.body105, %if.end102
  %n37.1 = phi %struct.cgraph_node* [ %36, %if.end102 ], [ %51, %while.body105 ], !dbg !3649
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n37.1, metadata !3530, metadata !DIExpression()), !dbg !3649
  %tobool104 = icmp eq %struct.cgraph_node* %n37.1, null, !dbg !3696
  br i1 %tobool104, label %if.end111.loopexit, label %while.body105, !dbg !3696

while.body105:                                    ; preds = %while.cond103
  %clone_of106 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n37.1, i64 0, i32 12, !dbg !3697
  store %struct.cgraph_node* %next_inline_clone.0.lcssa18, %struct.cgraph_node** %clone_of106, align 8, !dbg !3699
  %next_sibling_clone107 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n37.1, i64 0, i32 9, !dbg !3700
  %51 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone107, align 8, !dbg !3700
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %51, metadata !3530, metadata !DIExpression()), !dbg !3649
  br label %while.cond103, !dbg !3696, !llvm.loop !3701

if.else109.loopexit:                              ; preds = %for.cond28
  %52 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !3703
  tail call void @htab_clear_slot(%struct.htab* %52, i8** %call) #6, !dbg !3705
  call void @llvm.dbg.value(metadata i8 1, metadata !3521, metadata !DIExpression()), !dbg !3547
  br label %if.end111

if.end111.loopexit:                               ; preds = %while.cond103
  br label %if.end111, !dbg !3706

if.end111:                                        ; preds = %if.end111.loopexit, %if.else109.loopexit, %if.end23
  %kill_body.1 = phi i8 [ 0, %if.end23 ], [ 1, %if.else109.loopexit ], [ 0, %if.end111.loopexit ], !dbg !3708
  call void @llvm.dbg.value(metadata i8 %kill_body.1, metadata !3521, metadata !DIExpression()), !dbg !3547
  %prev_sibling_clone112 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 10, !dbg !3706
  %53 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone112, align 8, !dbg !3706
  %tobool113 = icmp eq %struct.cgraph_node* %53, null, !dbg !3709
  br i1 %tobool113, label %if.else118, label %if.then114, !dbg !3710

if.then114:                                       ; preds = %if.end111
  %next_sibling_clone115 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 9, !dbg !3711
  %54 = bitcast %struct.cgraph_node** %next_sibling_clone115 to i64*, !dbg !3711
  %55 = load i64, i64* %54, align 8, !dbg !3711
  %next_sibling_clone117 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %53, i64 0, i32 9, !dbg !3712
  %56 = bitcast %struct.cgraph_node** %next_sibling_clone117 to i64*, !dbg !3713
  store i64 %55, i64* %56, align 8, !dbg !3713
  br label %if.end126, !dbg !3714

if.else118:                                       ; preds = %if.end111
  %clone_of119 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 12, !dbg !3715
  %57 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of119, align 8, !dbg !3715
  %tobool120 = icmp eq %struct.cgraph_node* %57, null, !dbg !3717
  br i1 %tobool120, label %if.end126, label %if.then121, !dbg !3718

if.then121:                                       ; preds = %if.else118
  %next_sibling_clone122 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 9, !dbg !3719
  %58 = bitcast %struct.cgraph_node** %next_sibling_clone122 to i64*, !dbg !3719
  %59 = load i64, i64* %58, align 8, !dbg !3719
  %clones124 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %57, i64 0, i32 11, !dbg !3720
  %60 = bitcast %struct.cgraph_node** %clones124 to i64*, !dbg !3721
  store i64 %59, i64* %60, align 8, !dbg !3721
  br label %if.end126, !dbg !3722

if.end126:                                        ; preds = %if.else118, %if.then121, %if.then114
  %next_sibling_clone127 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 9, !dbg !3723
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone127, align 8, !dbg !3723
  %tobool128 = icmp eq %struct.cgraph_node* %61, null, !dbg !3725
  br i1 %tobool128, label %if.end133, label %if.then129, !dbg !3726

if.then129:                                       ; preds = %if.end126
  %62 = bitcast %struct.cgraph_node** %prev_sibling_clone112 to i64*, !dbg !3727
  %63 = load i64, i64* %62, align 8, !dbg !3727
  %prev_sibling_clone132 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %61, i64 0, i32 10, !dbg !3728
  %64 = bitcast %struct.cgraph_node** %prev_sibling_clone132 to i64*, !dbg !3729
  store i64 %63, i64* %64, align 8, !dbg !3729
  br label %if.end133, !dbg !3730

if.end133:                                        ; preds = %if.end126, %if.then129
  %clones134 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 11, !dbg !3731
  %65 = load %struct.cgraph_node*, %struct.cgraph_node** %clones134, align 8, !dbg !3731
  %tobool135 = icmp eq %struct.cgraph_node* %65, null, !dbg !3732
  br i1 %tobool135, label %if.end180, label %if.then136, !dbg !3733

if.then136:                                       ; preds = %if.end133
  %clone_of139 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 12, !dbg !3734
  %66 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of139, align 8, !dbg !3734
  %tobool140 = icmp eq %struct.cgraph_node* %66, null, !dbg !3736
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %65, metadata !3534, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %65, metadata !3534, metadata !DIExpression()), !dbg !3737
  br i1 %tobool140, label %for.cond170.preheader, label %for.cond143.preheader, !dbg !3738

for.cond143.preheader:                            ; preds = %if.then136
  %67 = ptrtoint %struct.cgraph_node* %66 to i64, !dbg !3738
  %68 = bitcast %struct.cgraph_node** %clone_of139 to i64*, !dbg !3739
  br label %for.cond143, !dbg !3741

for.cond170.preheader:                            ; preds = %if.then136
  br label %for.cond170, !dbg !3743

for.cond143:                                      ; preds = %for.cond143.preheader, %for.inc149
  %69 = phi i64 [ %.pre13, %for.inc149 ], [ %67, %for.cond143.preheader ], !dbg !3739
  %n137.0 = phi %struct.cgraph_node* [ %70, %for.inc149 ], [ %65, %for.cond143.preheader ], !dbg !3746
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n137.0, metadata !3534, metadata !DIExpression()), !dbg !3737
  %next_sibling_clone144 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n137.0, i64 0, i32 9, !dbg !3747
  %70 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone144, align 8, !dbg !3747
  %tobool145 = icmp eq %struct.cgraph_node* %70, null, !dbg !3741
  %clone_of148 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n137.0, i64 0, i32 12, !dbg !3739
  %71 = bitcast %struct.cgraph_node** %clone_of148 to i64*, !dbg !3739
  store i64 %69, i64* %71, align 8, !dbg !3739
  br i1 %tobool145, label %for.end151, label %for.inc149, !dbg !3741

for.inc149:                                       ; preds = %for.cond143
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %70, metadata !3534, metadata !DIExpression()), !dbg !3737
  %.pre13 = load i64, i64* %68, align 8, !dbg !3739
  br label %for.cond143, !dbg !3749, !llvm.loop !3750

for.end151:                                       ; preds = %for.cond143
  %n137.0.lcssa = phi %struct.cgraph_node* [ %n137.0, %for.cond143 ], !dbg !3746
  %next_sibling_clone144.lcssa = phi %struct.cgraph_node** [ %next_sibling_clone144, %for.cond143 ], !dbg !3747
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n137.0.lcssa, metadata !3534, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n137.0.lcssa, metadata !3534, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n137.0.lcssa, metadata !3534, metadata !DIExpression()), !dbg !3737
  %72 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of139, align 8, !dbg !3752
  %clones155 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %72, i64 0, i32 11, !dbg !3753
  %73 = bitcast %struct.cgraph_node** %clones155 to i64*, !dbg !3753
  %74 = load i64, i64* %73, align 8, !dbg !3753
  %75 = bitcast %struct.cgraph_node** %next_sibling_clone144.lcssa to i64*, !dbg !3754
  store i64 %74, i64* %75, align 8, !dbg !3754
  %76 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of139, align 8, !dbg !3755
  %clones158 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %76, i64 0, i32 11, !dbg !3757
  %77 = load %struct.cgraph_node*, %struct.cgraph_node** %clones158, align 8, !dbg !3757
  %tobool159 = icmp eq %struct.cgraph_node* %77, null, !dbg !3758
  br i1 %tobool159, label %if.end164, label %if.then160, !dbg !3759

if.then160:                                       ; preds = %for.end151
  %prev_sibling_clone163 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %77, i64 0, i32 10, !dbg !3760
  store %struct.cgraph_node* %n137.0.lcssa, %struct.cgraph_node** %prev_sibling_clone163, align 8, !dbg !3761
  %.pre14 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of139, align 8, !dbg !3762
  br label %if.end164, !dbg !3763

if.end164:                                        ; preds = %for.end151, %if.then160
  %78 = phi %struct.cgraph_node* [ %76, %for.end151 ], [ %.pre14, %if.then160 ], !dbg !3762
  %79 = bitcast %struct.cgraph_node** %clones134 to i64*, !dbg !3764
  %80 = load i64, i64* %79, align 8, !dbg !3764
  %clones167 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %78, i64 0, i32 11, !dbg !3765
  %81 = bitcast %struct.cgraph_node** %clones167 to i64*, !dbg !3766
  store i64 %80, i64* %81, align 8, !dbg !3766
  br label %if.end180, !dbg !3767

for.cond170:                                      ; preds = %for.cond170.preheader, %for.body172
  %n137.1 = phi %struct.cgraph_node* [ %82, %for.body172 ], [ %65, %for.cond170.preheader ], !dbg !3768
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n137.1, metadata !3534, metadata !DIExpression()), !dbg !3737
  %tobool171 = icmp eq %struct.cgraph_node* %n137.1, null, !dbg !3743
  br i1 %tobool171, label %if.end180.loopexit, label %for.body172, !dbg !3743

for.body172:                                      ; preds = %for.cond170
  %next_sibling_clone173 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n137.1, i64 0, i32 9, !dbg !3769
  %82 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone173, align 8, !dbg !3769
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %82, metadata !3537, metadata !DIExpression()), !dbg !3737
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_sibling_clone173, align 8, !dbg !3772
  %prev_sibling_clone175 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n137.1, i64 0, i32 10, !dbg !3773
  store %struct.cgraph_node* null, %struct.cgraph_node** %prev_sibling_clone175, align 8, !dbg !3774
  %clone_of176 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n137.1, i64 0, i32 12, !dbg !3775
  store %struct.cgraph_node* null, %struct.cgraph_node** %clone_of176, align 8, !dbg !3776
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %82, metadata !3534, metadata !DIExpression()), !dbg !3737
  br label %for.cond170, !dbg !3777, !llvm.loop !3778

if.end180.loopexit:                               ; preds = %for.cond170
  br label %if.end180, !dbg !3780

if.end180:                                        ; preds = %if.end180.loopexit, %if.end133, %if.end164
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !3547
  br label %while.cond181, !dbg !3780

while.cond181:                                    ; preds = %while.body183, %if.end180
  %83 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !3781
  %tobool182 = icmp eq %struct.cgraph_node* %83, null, !dbg !3780
  br i1 %tobool182, label %while.end185, label %while.body183, !dbg !3780

while.body183:                                    ; preds = %while.cond181
  tail call void @cgraph_remove_same_body_alias(%struct.cgraph_node* nonnull %83) #8, !dbg !3782
  br label %while.cond181, !dbg !3780, !llvm.loop !3783

while.end185:                                     ; preds = %while.cond181
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 14, !dbg !3785
  %84 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3785
  %tobool186 = icmp eq %struct.cgraph_node* %84, null, !dbg !3786
  %85 = ptrtoint %struct.cgraph_node* %84 to i64, !dbg !3787
  br i1 %tobool186, label %if.end205, label %if.then187, !dbg !3787

if.then187:                                       ; preds = %while.end185
  br label %for.cond189, !dbg !3788

for.cond189:                                      ; preds = %for.inc193, %if.then187
  %prev.0 = phi %struct.cgraph_node* [ %84, %if.then187 ], [ %86, %for.inc193 ], !dbg !3790
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %prev.0, metadata !3538, metadata !DIExpression()), !dbg !3791
  %same_comdat_group190 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %prev.0, i64 0, i32 14, !dbg !3792
  %86 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group190, align 8, !dbg !3792
  %cmp191 = icmp eq %struct.cgraph_node* %86, %node, !dbg !3794
  br i1 %cmp191, label %for.end195, label %for.inc193, !dbg !3795

for.inc193:                                       ; preds = %for.cond189
  br label %for.cond189, !dbg !3796, !llvm.loop !3797

for.end195:                                       ; preds = %for.cond189
  %prev.0.lcssa = phi %struct.cgraph_node* [ %prev.0, %for.cond189 ], !dbg !3790
  %same_comdat_group190.lcssa = phi %struct.cgraph_node** [ %same_comdat_group190, %for.cond189 ], !dbg !3792
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %prev.0.lcssa, metadata !3538, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %prev.0.lcssa, metadata !3538, metadata !DIExpression()), !dbg !3791
  %cmp197 = icmp eq %struct.cgraph_node* %84, %prev.0.lcssa, !dbg !3799
  br i1 %cmp197, label %if.then198, label %if.else200, !dbg !3801

if.then198:                                       ; preds = %for.end195
  %same_comdat_group199 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %84, i64 0, i32 14, !dbg !3802
  store %struct.cgraph_node* null, %struct.cgraph_node** %same_comdat_group199, align 8, !dbg !3803
  br label %if.end203, !dbg !3804

if.else200:                                       ; preds = %for.end195
  %87 = bitcast %struct.cgraph_node** %same_comdat_group190.lcssa to i64*, !dbg !3805
  store i64 %85, i64* %87, align 8, !dbg !3805
  br label %if.end203

if.end203:                                        ; preds = %if.else200, %if.then198
  store %struct.cgraph_node* null, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3806
  br label %if.end205, !dbg !3807

if.end205:                                        ; preds = %while.end185, %if.end203
  %tobool206 = icmp eq i8 %kill_body.1, 0, !dbg !3808
  br i1 %tobool206, label %land.lhs.true, label %if.end232, !dbg !3809

land.lhs.true:                                    ; preds = %if.end205
  %88 = load i8*, i8** %call, align 8, !dbg !3810
  %tobool207 = icmp eq i8* %88, null, !dbg !3810
  br i1 %tobool207, label %if.end232, label %if.then208, !dbg !3811

if.then208:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8* %88, metadata !3541, metadata !DIExpression()), !dbg !3812
  %clones210 = getelementptr inbounds i8, i8* %88, i64 88, !dbg !3813
  %89 = bitcast i8* %clones210 to %struct.cgraph_node**, !dbg !3813
  %90 = load %struct.cgraph_node*, %struct.cgraph_node** %89, align 8, !dbg !3813
  %tobool211 = icmp eq %struct.cgraph_node* %90, null, !dbg !3815
  br i1 %tobool211, label %land.lhs.true212, label %if.end232, !dbg !3816

land.lhs.true212:                                 ; preds = %if.then208
  %clone_of213 = getelementptr inbounds i8, i8* %88, i64 96, !dbg !3817
  %91 = bitcast i8* %clone_of213 to %struct.cgraph_node**, !dbg !3817
  %92 = load %struct.cgraph_node*, %struct.cgraph_node** %91, align 8, !dbg !3817
  %tobool214 = icmp eq %struct.cgraph_node* %92, null, !dbg !3818
  br i1 %tobool214, label %land.lhs.true215, label %if.end232, !dbg !3819

land.lhs.true215:                                 ; preds = %land.lhs.true212
  %inlined_to = getelementptr inbounds i8, i8* %88, i64 200, !dbg !3820
  %93 = bitcast i8* %inlined_to to %struct.cgraph_node**, !dbg !3820
  %94 = load %struct.cgraph_node*, %struct.cgraph_node** %93, align 8, !dbg !3820
  %tobool216 = icmp eq %struct.cgraph_node* %94, null, !dbg !3821
  br i1 %tobool216, label %land.lhs.true217, label %if.end232, !dbg !3822

land.lhs.true217:                                 ; preds = %land.lhs.true215
  %95 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !3823
  %tobool218 = icmp eq i8 %95, 0, !dbg !3823
  br i1 %tobool218, label %if.end232, label %land.lhs.true219, !dbg !3824

land.lhs.true219:                                 ; preds = %land.lhs.true217
  %96 = bitcast i8* %88 to i64**, !dbg !3825
  %97 = load i64*, i64** %96, align 8, !dbg !3825
  %bf.load221 = load i64, i64* %97, align 8, !dbg !3825
  %bf.cast1 = and i64 %bf.load221, 4194304, !dbg !3825
  %tobool223 = icmp eq i64 %bf.cast1, 0, !dbg !3825
  br i1 %tobool223, label %lor.lhs.false, label %if.then230, !dbg !3826

lor.lhs.false:                                    ; preds = %land.lhs.true219
  %decl_flag_1 = getelementptr inbounds i64, i64* %97, i64 7, !dbg !3827
  %bf.load225 = load i64, i64* %decl_flag_1, align 8, !dbg !3827
  %bf.cast2282 = and i64 %bf.load225, 33554432, !dbg !3827
  %tobool229 = icmp eq i64 %bf.cast2282, 0, !dbg !3827
  br i1 %tobool229, label %if.end232, label %if.then230, !dbg !3828

if.then230:                                       ; preds = %lor.lhs.false, %land.lhs.true219
  call void @llvm.dbg.value(metadata i8 1, metadata !3521, metadata !DIExpression()), !dbg !3547
  br label %if.end232, !dbg !3829

if.end232:                                        ; preds = %lor.lhs.false, %land.lhs.true217, %land.lhs.true215, %land.lhs.true212, %if.then208, %land.lhs.true, %if.end205, %if.then230
  %kill_body.3 = phi i8 [ %kill_body.1, %if.end205 ], [ 0, %land.lhs.true ], [ 0, %if.then208 ], [ 0, %land.lhs.true212 ], [ 0, %land.lhs.true215 ], [ 1, %if.then230 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true217 ], !dbg !3708
  call void @llvm.dbg.value(metadata i8 %kill_body.3, metadata !3521, metadata !DIExpression()), !dbg !3547
  %98 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3830
  %tobool233 = icmp eq %struct.htab* %98, null, !dbg !3830
  br i1 %tobool233, label %if.end245, label %if.then234, !dbg !3831

if.then234:                                       ; preds = %if.end232
  %decl235 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3832
  %99 = load %union.tree_node*, %union.tree_node** %decl235, align 8, !dbg !3832
  %call236 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %99) #6, !dbg !3832
  call void @llvm.dbg.value(metadata %union.tree_node* %call236, metadata !3544, metadata !DIExpression()), !dbg !3833
  %100 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3834
  %101 = bitcast %union.tree_node* %call236 to i8*, !dbg !3835
  %call237 = tail call i32 @decl_assembler_name_hash(%union.tree_node* %call236) #6, !dbg !3836
  %call238 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %100, i8* %101, i32 %call237, i32 0) #6, !dbg !3837
  call void @llvm.dbg.value(metadata i8** %call238, metadata !3520, metadata !DIExpression()), !dbg !3547
  %tobool239 = icmp eq i8** %call238, null, !dbg !3838
  br i1 %tobool239, label %if.end245, label %land.lhs.true240, !dbg !3840

land.lhs.true240:                                 ; preds = %if.then234
  %102 = load i8*, i8** %call238, align 8, !dbg !3841
  %cmp241 = icmp eq i8* %102, %17, !dbg !3842
  br i1 %cmp241, label %if.then243, label %if.end245, !dbg !3843

if.then243:                                       ; preds = %land.lhs.true240
  %103 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3844
  tail call void @htab_clear_slot(%struct.htab* %103, i8** nonnull %call238) #6, !dbg !3845
  br label %if.end245, !dbg !3845

if.end245:                                        ; preds = %if.then234, %if.end232, %land.lhs.true240, %if.then243
  %tobool246 = icmp eq i8 %kill_body.3, 0, !dbg !3846
  br i1 %tobool246, label %if.end248, label %if.then247, !dbg !3848

if.then247:                                       ; preds = %if.end245
  tail call void @cgraph_release_function_body(%struct.cgraph_node* %node) #8, !dbg !3849
  br label %if.end248, !dbg !3849

if.end248:                                        ; preds = %if.end245, %if.then247
  %decl249 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3850
  store %union.tree_node* null, %union.tree_node** %decl249, align 8, !dbg !3851
  %call_site_hash = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 15, !dbg !3852
  %104 = load %struct.htab*, %struct.htab** %call_site_hash, align 8, !dbg !3852
  %tobool250 = icmp eq %struct.htab* %104, null, !dbg !3854
  br i1 %tobool250, label %if.end254, label %if.then251, !dbg !3855

if.then251:                                       ; preds = %if.end248
  tail call void @htab_delete(%struct.htab* nonnull %104) #6, !dbg !3856
  store %struct.htab* null, %struct.htab** %call_site_hash, align 8, !dbg !3858
  br label %if.end254, !dbg !3859

if.end254:                                        ; preds = %if.end248, %if.then251
  %105 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !3860
  %dec = add nsw i32 %105, -1, !dbg !3860
  store i32 %dec, i32* @cgraph_n_nodes, align 4, !dbg !3860
  %call255 = tail call i8* @memset(i8* %17, i32 0, i64 312) #6, !dbg !3861
  store i32 %0, i32* %uid1, align 8, !dbg !3862
  %106 = load i64, i64* bitcast (%struct.cgraph_node** @free_nodes to i64*), align 8, !dbg !3863
  store i64 %106, i64* %7, align 8, !dbg !3864
  store %struct.cgraph_node* %node, %struct.cgraph_node** @free_nodes, align 8, !dbg !3865
  ret void, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_insert_node_to_hashtable(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !3867 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3869, metadata !DIExpression()), !dbg !3871
  %0 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !3872
  %1 = bitcast %struct.cgraph_node* %node to i8*, !dbg !3873
  %call = tail call i8** @htab_find_slot(%struct.htab* %0, i8* %1, i32 1) #6, !dbg !3874
  %2 = bitcast i8** %call to %struct.cgraph_node**, !dbg !3875
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %2, metadata !3870, metadata !DIExpression()), !dbg !3871
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8, !dbg !3876
  %tobool = icmp eq %struct.cgraph_node* %3, null, !dbg !3876
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3876

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 627, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3876
  br label %cond.end, !dbg !3876

cond.end:                                         ; preds = %entry, %cond.true
  store %struct.cgraph_node* %node, %struct.cgraph_node** %2, align 8, !dbg !3877
  ret void, !dbg !3878
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @cgraph_node_for_asm(%union.tree_node* %asmname) local_unnamed_addr #4 !dbg !3879 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %asmname, metadata !3881, metadata !DIExpression()), !dbg !3898
  %0 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3899
  %tobool = icmp eq %struct.htab* %0, null, !dbg !3899
  br i1 %tobool, label %if.then, label %if.end27, !dbg !3900

if.then:                                          ; preds = %entry
  %call = tail call %struct.htab* @htab_create_alloc(i64 10, i32 (i8*)* nonnull @hash_node_by_assembler_name, i32 (i8*, i8*)* nonnull @eq_assembler_name, void (i8*)* null, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !3901
  store %struct.htab* %call, %struct.htab** @assembler_name_hash, align 8, !dbg !3902
  br label %for.cond, !dbg !3903

for.cond:                                         ; preds = %for.inc24, %if.then
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.then ], [ %next25, %for.inc24 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3904
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3882, metadata !DIExpression()), !dbg !3898
  %tobool1 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3905
  br i1 %tobool1, label %if.end27.loopexit, label %for.body, !dbg !3905

for.body:                                         ; preds = %for.cond
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 2, !dbg !3906
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3906
  %tobool2 = icmp eq %struct.cgraph_node* %1, null, !dbg !3907
  br i1 %tobool2, label %if.then3, label %for.inc24, !dbg !3908

if.then3:                                         ; preds = %for.body
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 0, !dbg !3909
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3909
  %call4 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %2) #6, !dbg !3909
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3884, metadata !DIExpression()), !dbg !3910
  %3 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3911
  %4 = bitcast %union.tree_node* %call4 to i8*, !dbg !3912
  %call5 = tail call i32 @decl_assembler_name_hash(%union.tree_node* %call4) #6, !dbg !3913
  %call6 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %3, i8* %4, i32 %call5, i32 1) #6, !dbg !3914
  call void @llvm.dbg.value(metadata i8** %call6, metadata !3883, metadata !DIExpression()), !dbg !3898
  %5 = load i8*, i8** %call6, align 8, !dbg !3915
  %tobool7 = icmp eq i8* %5, null, !dbg !3915
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3917

if.then8:                                         ; preds = %if.then3
  %6 = bitcast i8** %call6 to %struct.cgraph_node**, !dbg !3918
  store %struct.cgraph_node* %node.0, %struct.cgraph_node** %6, align 8, !dbg !3918
  br label %if.end, !dbg !3919

if.end:                                           ; preds = %if.then3, %if.then8
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 13, !dbg !3920
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !3920
  %tobool9 = icmp eq %struct.cgraph_node* %7, null, !dbg !3921
  br i1 %tobool9, label %for.inc24, label %if.then10, !dbg !3922

if.then10:                                        ; preds = %if.end
  br label %for.cond12, !dbg !3923

for.cond12:                                       ; preds = %for.inc, %if.then10
  %alias.0 = phi %struct.cgraph_node* [ %7, %if.then10 ], [ %alias.0.pre, %for.inc ], !dbg !3924
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !3891, metadata !DIExpression()), !dbg !3925
  %tobool13 = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !3926
  br i1 %tobool13, label %for.inc24.loopexit, label %for.body14, !dbg !3926

for.body14:                                       ; preds = %for.cond12
  %decl15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 0, !dbg !3927
  %8 = load %union.tree_node*, %union.tree_node** %decl15, align 8, !dbg !3927
  %call16 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %8) #6, !dbg !3927
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !3884, metadata !DIExpression()), !dbg !3910
  %call17 = tail call i32 @decl_assembler_name_hash(%union.tree_node* %call16) #6, !dbg !3928
  call void @llvm.dbg.value(metadata i32 %call17, metadata !3894, metadata !DIExpression()), !dbg !3929
  %9 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3930
  %10 = bitcast %union.tree_node* %call16 to i8*, !dbg !3931
  %call18 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %9, i8* %10, i32 %call17, i32 1) #6, !dbg !3932
  call void @llvm.dbg.value(metadata i8** %call18, metadata !3883, metadata !DIExpression()), !dbg !3898
  %11 = load i8*, i8** %call18, align 8, !dbg !3933
  %tobool19 = icmp eq i8* %11, null, !dbg !3933
  br i1 %tobool19, label %if.then20, label %for.inc, !dbg !3935

if.then20:                                        ; preds = %for.body14
  %12 = bitcast i8** %call18 to %struct.cgraph_node**, !dbg !3936
  store %struct.cgraph_node* %alias.0, %struct.cgraph_node** %12, align 8, !dbg !3936
  br label %for.inc, !dbg !3937

for.inc:                                          ; preds = %for.body14, %if.then20
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !3938
  %alias.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next, align 8, !dbg !3924
  br label %for.cond12, !dbg !3939, !llvm.loop !3940

for.inc24.loopexit:                               ; preds = %for.cond12
  br label %for.inc24, !dbg !3942

for.inc24:                                        ; preds = %for.inc24.loopexit, %if.end, %for.body
  %next25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3942
  br label %for.cond, !dbg !3943, !llvm.loop !3944

if.end27.loopexit:                                ; preds = %for.cond
  %.pre = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !3946
  br label %if.end27, !dbg !3946

if.end27:                                         ; preds = %if.end27.loopexit, %entry
  %13 = phi %struct.htab* [ %.pre, %if.end27.loopexit ], [ %0, %entry ], !dbg !3946
  %14 = bitcast %union.tree_node* %asmname to i8*, !dbg !3947
  %call28 = tail call i32 @decl_assembler_name_hash(%union.tree_node* %asmname) #6, !dbg !3948
  %call29 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %13, i8* %14, i32 %call28, i32 0) #6, !dbg !3949
  call void @llvm.dbg.value(metadata i8** %call29, metadata !3883, metadata !DIExpression()), !dbg !3898
  %tobool30 = icmp eq i8** %call29, null, !dbg !3950
  br i1 %tobool30, label %cleanup, label %if.then31, !dbg !3952

if.then31:                                        ; preds = %if.end27
  %15 = bitcast i8** %call29 to %struct.cgraph_node**, !dbg !3953
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %15, align 8, !dbg !3953
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %16, metadata !3882, metadata !DIExpression()), !dbg !3898
  %same_body_alias = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i64 0, i32 27, !dbg !3955
  %bf.load = load i16, i16* %same_body_alias, align 4, !dbg !3955
  %bf.clear = and i16 %bf.load, 512, !dbg !3955
  %tobool32 = icmp eq i16 %bf.clear, 0, !dbg !3957
  br i1 %tobool32, label %cleanup, label %if.then33, !dbg !3958

if.then33:                                        ; preds = %if.then31
  %same_body34 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i64 0, i32 13, !dbg !3959
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body34, align 8, !dbg !3959
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %17, metadata !3882, metadata !DIExpression()), !dbg !3898
  br label %cleanup, !dbg !3960

cleanup:                                          ; preds = %if.then31, %if.end27, %if.then33
  %retval.0 = phi %struct.cgraph_node* [ %17, %if.then33 ], [ %16, %if.then31 ], [ null, %if.end27 ], !dbg !3898
  ret %struct.cgraph_node* %retval.0, !dbg !3961
}

; Function Attrs: nounwind uwtable
define internal i32 @hash_node_by_assembler_name(i8* %p) #4 !dbg !3962 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !3964, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i8* %p, metadata !3965, metadata !DIExpression()), !dbg !3966
  %decl = bitcast i8* %p to %union.tree_node**, !dbg !3967
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3967
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %0) #6, !dbg !3967
  %call1 = tail call i32 @decl_assembler_name_hash(%union.tree_node* %call) #6, !dbg !3968
  ret i32 %call1, !dbg !3969
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_assembler_name(i8* %p1, i8* %p2) #4 !dbg !3970 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3972, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3973, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3974, metadata !DIExpression()), !dbg !3976
  %0 = bitcast i8* %p2 to %union.tree_node*, !dbg !3977
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3975, metadata !DIExpression()), !dbg !3976
  %decl = bitcast i8* %p1 to %union.tree_node**, !dbg !3978
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3978
  %call = tail call zeroext i8 @decl_assembler_name_equal(%union.tree_node* %1, %union.tree_node* %0) #6, !dbg !3979
  %conv = zext i8 %call to i32, !dbg !3980
  ret i32 %conv, !dbg !3981
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %node, %union.gimple_statement_d* %call_stmt) local_unnamed_addr #4 !dbg !3982 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3986, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call_stmt, metadata !3987, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 0, metadata !3990, metadata !DIExpression()), !dbg !3997
  %call_site_hash = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 15, !dbg !3998
  %0 = load %struct.htab*, %struct.htab** %call_site_hash, align 8, !dbg !3998
  %tobool = icmp eq %struct.htab* %0, null, !dbg !4000
  br i1 %tobool, label %if.end, label %if.then, !dbg !4001

if.then:                                          ; preds = %entry
  %1 = bitcast %union.gimple_statement_d* %call_stmt to i8*, !dbg !4002
  %2 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4003
  %call = tail call i32 %2(i8* %1) #6, !dbg !4003
  %call2 = tail call i8* @htab_find_with_hash(%struct.htab* nonnull %0, i8* %1, i32 %call) #6, !dbg !4004
  %3 = bitcast i8* %call2 to %struct.cgraph_edge*, !dbg !4005
  br label %cleanup, !dbg !4006

if.end:                                           ; preds = %entry
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !4007
  br label %for.cond, !dbg !4009

for.cond:                                         ; preds = %if.end6, %if.end
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.end ], [ %next_callee, %if.end6 ]
  %n.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end6 ], !dbg !3997
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3990, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3988, metadata !DIExpression()), !dbg !3997
  %tobool3 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4011
  br i1 %tobool3, label %for.end, label %for.body, !dbg !4011

for.body:                                         ; preds = %for.cond
  %call_stmt4 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 7, !dbg !4012
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt4, align 8, !dbg !4012
  %cmp = icmp eq %union.gimple_statement_d* %4, %call_stmt, !dbg !4016
  br i1 %cmp, label %for.end, label %if.end6, !dbg !4017

if.end6:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %n.0, 1, !dbg !4018
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3990, metadata !DIExpression()), !dbg !3997
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !4019
  br label %for.cond, !dbg !4020, !llvm.loop !4021

for.end:                                          ; preds = %for.cond, %for.body
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], [ %n.0, %for.body ], !dbg !3997
  %e.0.lcssa = phi %struct.cgraph_edge* [ %e.0, %for.cond ], [ %e.0, %for.body ], !dbg !4010
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3990, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3990, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3990, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3990, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3990, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3990, metadata !DIExpression()), !dbg !3997
  %cmp7 = icmp ugt i32 %n.0.lcssa, 100, !dbg !4023
  br i1 %cmp7, label %if.then8, label %cleanup, !dbg !4024

if.then8:                                         ; preds = %for.end
  %call9 = tail call %struct.htab* @htab_create_alloc(i64 120, i32 (i8*)* nonnull @edge_hash, i32 (i8*, i8*)* nonnull @edge_eq, void (i8*)* null, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !4025
  store %struct.htab* %call9, %struct.htab** %call_site_hash, align 8, !dbg !4026
  br label %for.cond12, !dbg !4027

for.cond12:                                       ; preds = %cond.end, %if.then8
  %e2.0.in = phi %struct.cgraph_edge** [ %callees, %if.then8 ], [ %next_callee22, %cond.end ]
  %e2.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e2.0.in, align 8, !dbg !4028
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e2.0, metadata !3989, metadata !DIExpression()), !dbg !3997
  %tobool13 = icmp eq %struct.cgraph_edge* %e2.0, null, !dbg !4029
  br i1 %tobool13, label %cleanup.loopexit, label %for.body14, !dbg !4029

for.body14:                                       ; preds = %for.cond12
  %5 = load %struct.htab*, %struct.htab** %call_site_hash, align 8, !dbg !4030
  %call_stmt16 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e2.0, i64 0, i32 7, !dbg !4031
  %6 = bitcast %union.gimple_statement_d** %call_stmt16 to i8**, !dbg !4031
  %7 = load i8*, i8** %6, align 8, !dbg !4031
  %8 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4032
  %call18 = tail call i32 %8(i8* %7) #6, !dbg !4032
  %call19 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %5, i8* %7, i32 %call18, i32 1) #6, !dbg !4033
  call void @llvm.dbg.value(metadata i8** %call19, metadata !3991, metadata !DIExpression()), !dbg !4034
  %9 = load i8*, i8** %call19, align 8, !dbg !4035
  %tobool20 = icmp eq i8* %9, null, !dbg !4035
  br i1 %tobool20, label %cond.end, label %cond.true, !dbg !4035

cond.true:                                        ; preds = %for.body14
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 762, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4035
  br label %cond.end, !dbg !4035

cond.end:                                         ; preds = %for.body14, %cond.true
  %10 = bitcast i8** %call19 to %struct.cgraph_edge**, !dbg !4036
  store %struct.cgraph_edge* %e2.0, %struct.cgraph_edge** %10, align 8, !dbg !4036
  %next_callee22 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e2.0, i64 0, i32 6, !dbg !4037
  br label %for.cond12, !dbg !4038, !llvm.loop !4039

cleanup.loopexit:                                 ; preds = %for.cond12
  br label %cleanup, !dbg !4041

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %if.then
  %retval.0 = phi %struct.cgraph_edge* [ %3, %if.then ], [ %e.0.lcssa, %for.end ], [ %e.0.lcssa, %cleanup.loopexit ], !dbg !3997
  ret %struct.cgraph_edge* %retval.0, !dbg !4041
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @edge_hash(i8* %x) #4 !dbg !4042 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !4044, metadata !DIExpression()), !dbg !4045
  %0 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4046
  %call_stmt = getelementptr inbounds i8, i8* %x, i64 56, !dbg !4047
  %1 = bitcast i8* %call_stmt to i8**, !dbg !4047
  %2 = load i8*, i8** %1, align 8, !dbg !4047
  %call = tail call i32 %0(i8* %2) #6, !dbg !4046
  ret i32 %call, !dbg !4048
}

; Function Attrs: nounwind uwtable
define internal i32 @edge_eq(i8* %x, i8* %y) #4 !dbg !4049 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !4051, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i8* %y, metadata !4052, metadata !DIExpression()), !dbg !4053
  %call_stmt = getelementptr inbounds i8, i8* %x, i64 56, !dbg !4054
  %0 = bitcast i8* %call_stmt to %union.gimple_statement_d**, !dbg !4054
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !4054
  %2 = bitcast i8* %y to %union.gimple_statement_d*, !dbg !4055
  %cmp = icmp eq %union.gimple_statement_d* %1, %2, !dbg !4056
  %conv = zext i1 %cmp to i32, !dbg !4056
  ret i32 %conv, !dbg !4057
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_set_call_stmt(%struct.cgraph_edge* %e, %union.gimple_statement_d* %new_stmt) local_unnamed_addr #4 !dbg !4058 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4062, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %new_stmt, metadata !4063, metadata !DIExpression()), !dbg !4067
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !4068
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4068
  %call_site_hash = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 15, !dbg !4070
  %1 = load %struct.htab*, %struct.htab** %call_site_hash, align 8, !dbg !4070
  %tobool = icmp eq %struct.htab* %1, null, !dbg !4071
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then, !dbg !4072

entry.if.end_crit_edge:                           ; preds = %entry
  %2 = bitcast %struct.cgraph_node* %0 to %struct.tree_function_decl**, !dbg !4072
  br label %if.end, !dbg !4072

if.then:                                          ; preds = %entry
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 7, !dbg !4073
  %3 = bitcast %union.gimple_statement_d** %call_stmt to i8**, !dbg !4073
  %4 = load i8*, i8** %3, align 8, !dbg !4073
  %5 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4075
  %call = tail call i32 %5(i8* %4) #6, !dbg !4075
  tail call void @htab_remove_elt_with_hash(%struct.htab* nonnull %1, i8* %4, i32 %call) #6, !dbg !4076
  %.phi.trans.insert = bitcast %struct.cgraph_node** %caller to %struct.tree_function_decl***, !dbg !4067
  %.pre = load %struct.tree_function_decl**, %struct.tree_function_decl*** %.phi.trans.insert, align 8, !dbg !4077
  br label %if.end, !dbg !4078

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %6 = phi %struct.tree_function_decl** [ %2, %entry.if.end_crit_edge ], [ %.pre, %if.then ], !dbg !4077
  %call_stmt4 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 7, !dbg !4079
  store %union.gimple_statement_d* %new_stmt, %union.gimple_statement_d** %call_stmt4, align 8, !dbg !4080
  %7 = load %struct.tree_function_decl*, %struct.tree_function_decl** %6, align 8, !dbg !4077
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %7, i64 0, i32 1, !dbg !4077
  %8 = load %struct.function*, %struct.function** %f, align 8, !dbg !4077
  tail call void @push_cfun(%struct.function* %8) #6, !dbg !4081
  %call6 = tail call zeroext i8 @stmt_can_throw_external(%union.gimple_statement_d* %new_stmt) #6, !dbg !4082
  %can_throw_external = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 14, !dbg !4083
  %bf.load = load i8, i8* %can_throw_external, align 2, !dbg !4084
  %bf.value = shl i8 %call6, 2, !dbg !4084
  %bf.shl = and i8 %bf.value, 4, !dbg !4084
  %bf.clear = and i8 %bf.load, -5, !dbg !4084
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !4084
  store i8 %bf.set, i8* %can_throw_external, align 2, !dbg !4084
  tail call void @pop_cfun() #6, !dbg !4085
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4086
  %call_site_hash8 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i64 0, i32 15, !dbg !4087
  %10 = load %struct.htab*, %struct.htab** %call_site_hash8, align 8, !dbg !4087
  %tobool9 = icmp eq %struct.htab* %10, null, !dbg !4088
  br i1 %tobool9, label %if.end18, label %if.then10, !dbg !4089

if.then10:                                        ; preds = %if.end
  %11 = bitcast %union.gimple_statement_d** %call_stmt4 to i8**, !dbg !4090
  %12 = load i8*, i8** %11, align 8, !dbg !4090
  %13 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4091
  %call15 = tail call i32 %13(i8* %12) #6, !dbg !4091
  %call16 = tail call i8** @htab_find_slot_with_hash(%struct.htab* nonnull %10, i8* %12, i32 %call15, i32 1) #6, !dbg !4092
  call void @llvm.dbg.value(metadata i8** %call16, metadata !4064, metadata !DIExpression()), !dbg !4093
  %14 = load i8*, i8** %call16, align 8, !dbg !4094
  %tobool17 = icmp eq i8* %14, null, !dbg !4094
  br i1 %tobool17, label %cond.end, label %cond.true, !dbg !4094

cond.true:                                        ; preds = %if.then10
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 793, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4094
  br label %cond.end, !dbg !4094

cond.end:                                         ; preds = %if.then10, %cond.true
  %15 = bitcast i8** %call16 to %struct.cgraph_edge**, !dbg !4095
  store %struct.cgraph_edge* %e, %struct.cgraph_edge** %15, align 8, !dbg !4095
  br label %if.end18, !dbg !4096

if.end18:                                         ; preds = %if.end, %cond.end
  ret void, !dbg !4097
}

declare dso_local void @htab_remove_elt_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #1

declare dso_local zeroext i8 @stmt_can_throw_external(%union.gimple_statement_d*) local_unnamed_addr #1

declare dso_local void @pop_cfun() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_set_call_stmt_including_clones(%struct.cgraph_node* %orig, %union.gimple_statement_d* %old_stmt, %union.gimple_statement_d* %new_stmt) local_unnamed_addr #4 !dbg !4098 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %orig, metadata !4102, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %old_stmt, metadata !4103, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %new_stmt, metadata !4104, metadata !DIExpression()), !dbg !4110
  %call = tail call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %orig, %union.gimple_statement_d* %old_stmt) #8, !dbg !4111
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call, metadata !4106, metadata !DIExpression()), !dbg !4110
  %tobool = icmp eq %struct.cgraph_edge* %call, null, !dbg !4112
  br i1 %tobool, label %if.end, label %if.then, !dbg !4114

if.then:                                          ; preds = %entry
  tail call void @cgraph_set_call_stmt(%struct.cgraph_edge* nonnull %call, %union.gimple_statement_d* %new_stmt) #8, !dbg !4115
  br label %if.end, !dbg !4115

if.end:                                           ; preds = %entry, %if.then
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %orig, i64 0, i32 11, !dbg !4116
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !4116
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !4105, metadata !DIExpression()), !dbg !4110
  %tobool1 = icmp eq %struct.cgraph_node* %0, null, !dbg !4117
  br i1 %tobool1, label %if.end28, label %while.cond.preheader, !dbg !4118

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !4119

while.cond:                                       ; preds = %while.cond.preheader, %if.end26
  %node.0 = phi %struct.cgraph_node* [ %node.4, %if.end26 ], [ %0, %while.cond.preheader ], !dbg !4110
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4105, metadata !DIExpression()), !dbg !4110
  %cmp = icmp eq %struct.cgraph_node* %node.0, %orig, !dbg !4120
  br i1 %cmp, label %if.end28.loopexit, label %while.body, !dbg !4119

while.body:                                       ; preds = %while.cond
  %call4 = tail call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %node.0, %union.gimple_statement_d* %old_stmt) #8, !dbg !4121
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call4, metadata !4107, metadata !DIExpression()), !dbg !4122
  %tobool5 = icmp eq %struct.cgraph_edge* %call4, null, !dbg !4123
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4125

if.then6:                                         ; preds = %while.body
  tail call void @cgraph_set_call_stmt(%struct.cgraph_edge* nonnull %call4, %union.gimple_statement_d* %new_stmt) #8, !dbg !4126
  br label %if.end7, !dbg !4126

if.end7:                                          ; preds = %while.body, %if.then6
  %clones8 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 11, !dbg !4127
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %clones8, align 8, !dbg !4127
  %tobool9 = icmp eq %struct.cgraph_node* %1, null, !dbg !4129
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !4130

if.then10:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !4105, metadata !DIExpression()), !dbg !4110
  br label %if.end26, !dbg !4131

if.else:                                          ; preds = %if.end7
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 9, !dbg !4132
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone, align 8, !dbg !4132
  %tobool12 = icmp eq %struct.cgraph_node* %2, null, !dbg !4134
  br i1 %tobool12, label %while.cond16.preheader, label %if.then13, !dbg !4135

while.cond16.preheader:                           ; preds = %if.else
  br label %while.cond16, !dbg !4136

if.then13:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %2, metadata !4105, metadata !DIExpression()), !dbg !4110
  br label %if.end26, !dbg !4138

while.cond16:                                     ; preds = %while.cond16.preheader, %while.body20
  %node.1 = phi %struct.cgraph_node* [ %4, %while.body20 ], [ %node.0, %while.cond16.preheader ], !dbg !4110
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !4105, metadata !DIExpression()), !dbg !4110
  %cmp17 = icmp eq %struct.cgraph_node* %node.1, %orig, !dbg !4139
  br i1 %cmp17, label %while.end, label %land.rhs, !dbg !4140

land.rhs:                                         ; preds = %while.cond16
  %next_sibling_clone18 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 9, !dbg !4141
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone18, align 8, !dbg !4141
  %tobool19 = icmp eq %struct.cgraph_node* %3, null, !dbg !4142
  br i1 %tobool19, label %while.body20, label %while.end, !dbg !4136

while.body20:                                     ; preds = %land.rhs
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 12, !dbg !4143
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4143
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %4, metadata !4105, metadata !DIExpression()), !dbg !4110
  br label %while.cond16, !dbg !4136, !llvm.loop !4144

while.end:                                        ; preds = %while.cond16, %land.rhs
  %node.1.lcssa = phi %struct.cgraph_node* [ %node.1, %while.cond16 ], [ %node.1, %land.rhs ], !dbg !4110
  %cmp17.lcssa = phi i1 [ %cmp17, %while.cond16 ], [ %cmp17, %land.rhs ], !dbg !4139
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4110
  br i1 %cmp17.lcssa, label %if.end26, label %if.then22, !dbg !4145

if.then22:                                        ; preds = %while.end
  %next_sibling_clone23 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1.lcssa, i64 0, i32 9, !dbg !4146
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone23, align 8, !dbg !4146
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %5, metadata !4105, metadata !DIExpression()), !dbg !4110
  br label %if.end26, !dbg !4148

if.end26:                                         ; preds = %while.end, %if.then13, %if.then22, %if.then10
  %node.4 = phi %struct.cgraph_node* [ %1, %if.then10 ], [ %2, %if.then13 ], [ %5, %if.then22 ], [ %orig, %while.end ], !dbg !4149
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.4, metadata !4105, metadata !DIExpression()), !dbg !4110
  br label %while.cond, !dbg !4119, !llvm.loop !4150

if.end28.loopexit:                                ; preds = %while.cond
  br label %if.end28, !dbg !4152

if.end28:                                         ; preds = %if.end28.loopexit, %if.end
  ret void, !dbg !4152
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_create_edge_including_clones(%struct.cgraph_node* %orig, %struct.cgraph_node* %callee, %union.gimple_statement_d* %old_stmt, %union.gimple_statement_d* %stmt, i64 %count, i32 %freq, i32 %loop_depth, i32 %reason) local_unnamed_addr #4 !dbg !4153 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %orig, metadata !4157, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %callee, metadata !4158, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %old_stmt, metadata !4159, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4160, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %count, metadata !4161, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i32 %freq, metadata !4162, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i32 %loop_depth, metadata !4163, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i32 %reason, metadata !4164, metadata !DIExpression()), !dbg !4170
  %call = tail call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %orig, %union.gimple_statement_d* %stmt) #8, !dbg !4171
  %tobool = icmp eq %struct.cgraph_edge* %call, null, !dbg !4171
  br i1 %tobool, label %if.then, label %if.end, !dbg !4173

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %orig, %struct.cgraph_node* %callee, %union.gimple_statement_d* %stmt, i64 %count, i32 %freq, i32 %loop_depth) #8, !dbg !4174
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call1, metadata !4166, metadata !DIExpression()), !dbg !4170
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call1, i64 0, i32 9, !dbg !4176
  store i32 %reason, i32* %inline_failed, align 8, !dbg !4177
  br label %if.end, !dbg !4178

if.end:                                           ; preds = %entry, %if.then
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %orig, i64 0, i32 11, !dbg !4179
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !4165, metadata !DIExpression()), !dbg !4170
  %tobool2 = icmp eq %struct.cgraph_node* %0, null, !dbg !4180
  br i1 %tobool2, label %if.end36, label %while.cond.preheader, !dbg !4181

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !4182

while.cond:                                       ; preds = %while.cond.preheader, %if.end34
  %node.0 = phi %struct.cgraph_node* [ %node.4, %if.end34 ], [ %0, %while.cond.preheader ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4165, metadata !DIExpression()), !dbg !4170
  %cmp = icmp eq %struct.cgraph_node* %node.0, %orig, !dbg !4183
  br i1 %cmp, label %if.end36.loopexit, label %while.body, !dbg !4182

while.body:                                       ; preds = %while.cond
  %call5 = tail call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %node.0, %union.gimple_statement_d* %old_stmt) #8, !dbg !4184
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call5, metadata !4167, metadata !DIExpression()), !dbg !4185
  %tobool6 = icmp eq %struct.cgraph_edge* %call5, null, !dbg !4186
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !4188

if.then7:                                         ; preds = %while.body
  tail call void @cgraph_set_call_stmt(%struct.cgraph_edge* nonnull %call5, %union.gimple_statement_d* %stmt) #8, !dbg !4189
  br label %if.end14, !dbg !4189

if.else:                                          ; preds = %while.body
  %call8 = tail call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %node.0, %union.gimple_statement_d* %stmt) #8, !dbg !4190
  %tobool9 = icmp eq %struct.cgraph_edge* %call8, null, !dbg !4190
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !4192

if.then10:                                        ; preds = %if.else
  %call11 = tail call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %node.0, %struct.cgraph_node* %callee, %union.gimple_statement_d* %stmt, i64 %count, i32 %freq, i32 %loop_depth) #8, !dbg !4193
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call11, metadata !4167, metadata !DIExpression()), !dbg !4185
  %inline_failed12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call11, i64 0, i32 9, !dbg !4195
  store i32 %reason, i32* %inline_failed12, align 8, !dbg !4196
  br label %if.end14, !dbg !4197

if.end14:                                         ; preds = %if.else, %if.then10, %if.then7
  %clones15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 11, !dbg !4198
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %clones15, align 8, !dbg !4198
  %tobool16 = icmp eq %struct.cgraph_node* %1, null, !dbg !4200
  br i1 %tobool16, label %if.else19, label %if.then17, !dbg !4201

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !4165, metadata !DIExpression()), !dbg !4170
  br label %if.end34, !dbg !4202

if.else19:                                        ; preds = %if.end14
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 9, !dbg !4203
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone, align 8, !dbg !4203
  %tobool20 = icmp eq %struct.cgraph_node* %2, null, !dbg !4205
  br i1 %tobool20, label %while.cond24.preheader, label %if.then21, !dbg !4206

while.cond24.preheader:                           ; preds = %if.else19
  br label %while.cond24, !dbg !4207

if.then21:                                        ; preds = %if.else19
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %2, metadata !4165, metadata !DIExpression()), !dbg !4170
  br label %if.end34, !dbg !4209

while.cond24:                                     ; preds = %while.cond24.preheader, %while.body28
  %node.1 = phi %struct.cgraph_node* [ %4, %while.body28 ], [ %node.0, %while.cond24.preheader ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !4165, metadata !DIExpression()), !dbg !4170
  %cmp25 = icmp eq %struct.cgraph_node* %node.1, %orig, !dbg !4210
  br i1 %cmp25, label %while.end, label %land.rhs, !dbg !4211

land.rhs:                                         ; preds = %while.cond24
  %next_sibling_clone26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 9, !dbg !4212
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone26, align 8, !dbg !4212
  %tobool27 = icmp eq %struct.cgraph_node* %3, null, !dbg !4213
  br i1 %tobool27, label %while.body28, label %while.end, !dbg !4207

while.body28:                                     ; preds = %land.rhs
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 12, !dbg !4214
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4214
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %4, metadata !4165, metadata !DIExpression()), !dbg !4170
  br label %while.cond24, !dbg !4207, !llvm.loop !4215

while.end:                                        ; preds = %while.cond24, %land.rhs
  %node.1.lcssa = phi %struct.cgraph_node* [ %node.1, %while.cond24 ], [ %node.1, %land.rhs ], !dbg !4170
  %cmp25.lcssa = phi i1 [ %cmp25, %while.cond24 ], [ %cmp25, %land.rhs ], !dbg !4210
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4165, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4165, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4165, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4165, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4165, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4165, metadata !DIExpression()), !dbg !4170
  br i1 %cmp25.lcssa, label %if.end34, label %if.then30, !dbg !4216

if.then30:                                        ; preds = %while.end
  %next_sibling_clone31 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1.lcssa, i64 0, i32 9, !dbg !4217
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone31, align 8, !dbg !4217
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %5, metadata !4165, metadata !DIExpression()), !dbg !4170
  br label %if.end34, !dbg !4219

if.end34:                                         ; preds = %while.end, %if.then21, %if.then30, %if.then17
  %node.4 = phi %struct.cgraph_node* [ %1, %if.then17 ], [ %2, %if.then21 ], [ %5, %if.then30 ], [ %orig, %while.end ], !dbg !4220
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.4, metadata !4165, metadata !DIExpression()), !dbg !4170
  br label %while.cond, !dbg !4182, !llvm.loop !4221

if.end36.loopexit:                                ; preds = %while.cond
  br label %if.end36, !dbg !4223

if.end36:                                         ; preds = %if.end36.loopexit, %if.end
  ret void, !dbg !4223
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %caller, %struct.cgraph_node* %callee, %union.gimple_statement_d* %call_stmt, i64 %count, i32 %freq, i32 %nest) local_unnamed_addr #4 !dbg !4224 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %caller, metadata !4228, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %callee, metadata !4229, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call_stmt, metadata !4230, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i64 %count, metadata !4231, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 %freq, metadata !4232, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 %nest, metadata !4233, metadata !DIExpression()), !dbg !4238
  %tobool = icmp eq %union.gimple_statement_d* %call_stmt, null, !dbg !4239
  br i1 %tobool, label %if.end, label %if.then, !dbg !4241

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* nonnull %call_stmt) #8, !dbg !4242
  %tobool1 = icmp eq i8 %call, 0, !dbg !4242
  br i1 %tobool1, label %cond.true, label %if.end, !dbg !4242

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 928, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4242
  br label %if.end, !dbg !4242

if.end:                                           ; preds = %if.then, %entry, %cond.true
  %0 = load %struct.cgraph_edge*, %struct.cgraph_edge** @free_edges, align 8, !dbg !4244
  %tobool2 = icmp eq %struct.cgraph_edge* %0, null, !dbg !4244
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !4246

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %0, metadata !4234, metadata !DIExpression()), !dbg !4238
  %prev_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %0, i64 0, i32 3, !dbg !4247
  %1 = bitcast %struct.cgraph_edge** %prev_caller to i64*, !dbg !4247
  %2 = load i64, i64* %1, align 8, !dbg !4247
  store i64 %2, i64* bitcast (%struct.cgraph_edge** @free_edges to i64*), align 8, !dbg !4249
  br label %if.end5, !dbg !4250

if.else:                                          ; preds = %if.end
  %call4 = tail call i8* @ggc_alloc_stat(i64 96) #6, !dbg !4251
  %3 = bitcast i8* %call4 to %struct.cgraph_edge*, !dbg !4251
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %3, metadata !4234, metadata !DIExpression()), !dbg !4238
  %4 = load i32, i32* @cgraph_edge_max_uid, align 4, !dbg !4253
  %inc = add nsw i32 %4, 1, !dbg !4253
  store i32 %inc, i32* @cgraph_edge_max_uid, align 4, !dbg !4253
  %uid = getelementptr inbounds i8, i8* %call4, i64 84, !dbg !4254
  %5 = bitcast i8* %uid to i32*, !dbg !4254
  store i32 %4, i32* %5, align 4, !dbg !4255
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %edge.0 = phi %struct.cgraph_edge* [ %0, %if.then3 ], [ %3, %if.else ], !dbg !4256
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0, metadata !4234, metadata !DIExpression()), !dbg !4238
  %aux = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 8, !dbg !4257
  store i8* null, i8** %aux, align 8, !dbg !4258
  %caller6 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 1, !dbg !4259
  store %struct.cgraph_node* %caller, %struct.cgraph_node** %caller6, align 8, !dbg !4260
  %callee7 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 2, !dbg !4261
  store %struct.cgraph_node* %callee, %struct.cgraph_node** %callee7, align 8, !dbg !4262
  %call_stmt8 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 7, !dbg !4263
  store %union.gimple_statement_d* %call_stmt, %union.gimple_statement_d** %call_stmt8, align 8, !dbg !4264
  %6 = bitcast %struct.cgraph_node* %caller to %struct.tree_function_decl**, !dbg !4265
  %7 = load %struct.tree_function_decl*, %struct.tree_function_decl** %6, align 8, !dbg !4265
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %7, i64 0, i32 1, !dbg !4265
  %8 = load %struct.function*, %struct.function** %f, align 8, !dbg !4265
  tail call void @push_cfun(%struct.function* %8) #6, !dbg !4266
  br i1 %tobool, label %cond.end13, label %cond.true10, !dbg !4267

cond.true10:                                      ; preds = %if.end5
  %call11 = tail call zeroext i8 @stmt_can_throw_external(%union.gimple_statement_d* nonnull %call_stmt) #6, !dbg !4268
  %phitmp = shl i8 %call11, 2, !dbg !4267
  %phitmp1 = and i8 %phitmp, 4, !dbg !4267
  br label %cond.end13, !dbg !4267

cond.end13:                                       ; preds = %if.end5, %cond.true10
  %cond14 = phi i8 [ %phitmp1, %cond.true10 ], [ 0, %if.end5 ]
  %can_throw_external = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 14, !dbg !4269
  %bf.load = load i8, i8* %can_throw_external, align 2, !dbg !4270
  %bf.clear = and i8 %bf.load, -5, !dbg !4270
  %bf.set = or i8 %bf.clear, %cond14, !dbg !4270
  store i8 %bf.set, i8* %can_throw_external, align 2, !dbg !4270
  tail call void @pop_cfun() #6, !dbg !4271
  %prev_caller15 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 3, !dbg !4272
  store %struct.cgraph_edge* null, %struct.cgraph_edge** %prev_caller15, align 8, !dbg !4273
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %callee, i64 0, i32 2, !dbg !4274
  %9 = bitcast %struct.cgraph_edge** %callers to i64*, !dbg !4274
  %10 = load i64, i64* %9, align 8, !dbg !4274
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 4, !dbg !4275
  %11 = bitcast %struct.cgraph_edge** %next_caller to i64*, !dbg !4276
  store i64 %10, i64* %11, align 8, !dbg !4276
  %12 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !4277
  %tobool17 = icmp eq %struct.cgraph_edge* %12, null, !dbg !4279
  br i1 %tobool17, label %if.end21, label %if.then18, !dbg !4280

if.then18:                                        ; preds = %cond.end13
  %prev_caller20 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %12, i64 0, i32 3, !dbg !4281
  store %struct.cgraph_edge* %edge.0, %struct.cgraph_edge** %prev_caller20, align 8, !dbg !4282
  br label %if.end21, !dbg !4283

if.end21:                                         ; preds = %cond.end13, %if.then18
  %prev_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 5, !dbg !4284
  store %struct.cgraph_edge* null, %struct.cgraph_edge** %prev_callee, align 8, !dbg !4285
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %caller, i64 0, i32 1, !dbg !4286
  %13 = bitcast %struct.cgraph_edge** %callees to i64*, !dbg !4286
  %14 = load i64, i64* %13, align 8, !dbg !4286
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 6, !dbg !4287
  %15 = bitcast %struct.cgraph_edge** %next_callee to i64*, !dbg !4288
  store i64 %14, i64* %15, align 8, !dbg !4288
  %16 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callees, align 8, !dbg !4289
  %tobool23 = icmp eq %struct.cgraph_edge* %16, null, !dbg !4291
  br i1 %tobool23, label %if.end27, label %if.then24, !dbg !4292

if.then24:                                        ; preds = %if.end21
  %prev_callee26 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %16, i64 0, i32 5, !dbg !4293
  store %struct.cgraph_edge* %edge.0, %struct.cgraph_edge** %prev_callee26, align 8, !dbg !4294
  br label %if.end27, !dbg !4295

if.end27:                                         ; preds = %if.end21, %if.then24
  store %struct.cgraph_edge* %edge.0, %struct.cgraph_edge** %callees, align 8, !dbg !4296
  store %struct.cgraph_edge* %edge.0, %struct.cgraph_edge** %callers, align 8, !dbg !4297
  %count30 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 0, !dbg !4298
  store i64 %count, i64* %count30, align 8, !dbg !4299
  %cmp = icmp sgt i64 %count, -1, !dbg !4300
  br i1 %cmp, label %cond.end34, label %cond.true32, !dbg !4300

cond.true32:                                      ; preds = %if.end27
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 962, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4300
  br label %cond.end34, !dbg !4300

cond.end34:                                       ; preds = %if.end27, %cond.true32
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 11, !dbg !4301
  store i32 %freq, i32* %frequency, align 8, !dbg !4302
  %cmp36 = icmp sgt i32 %freq, -1, !dbg !4303
  br i1 %cmp36, label %cond.end40, label %cond.true38, !dbg !4303

cond.true38:                                      ; preds = %cond.end34
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 964, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4303
  br label %cond.end40, !dbg !4303

cond.end40:                                       ; preds = %cond.end34, %cond.true38
  %cmp42 = icmp slt i32 %freq, 100001, !dbg !4304
  br i1 %cmp42, label %cond.end46, label %cond.true44, !dbg !4304

cond.true44:                                      ; preds = %cond.end40
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 965, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4304
  br label %cond.end46, !dbg !4304

cond.end46:                                       ; preds = %cond.end40, %cond.true44
  %conv48 = trunc i32 %nest to i16, !dbg !4305
  %loop_nest = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 13, !dbg !4306
  store i16 %conv48, i16* %loop_nest, align 8, !dbg !4307
  %bf.load49 = load i8, i8* %can_throw_external, align 2, !dbg !4308
  %bf.clear50 = and i8 %bf.load49, -2, !dbg !4308
  store i8 %bf.clear50, i8* %can_throw_external, align 2, !dbg !4308
  br i1 %tobool, label %cond.end56, label %cond.true52, !dbg !4309

cond.true52:                                      ; preds = %cond.end46
  %call53 = tail call fastcc zeroext i8 @gimple_call_cannot_inline_p(%union.gimple_statement_d* nonnull %call_stmt) #8, !dbg !4310
  %phitmp3 = shl i8 %call53, 1, !dbg !4309
  %phitmp4 = and i8 %phitmp3, 2, !dbg !4309
  %bf.load58.pre = load i8, i8* %can_throw_external, align 2, !dbg !4311
  br label %cond.end56, !dbg !4309

cond.end56:                                       ; preds = %cond.end46, %cond.true52
  %bf.load58 = phi i8 [ %bf.load58.pre, %cond.true52 ], [ %bf.clear50, %cond.end46 ], !dbg !4311
  %cond57 = phi i8 [ %phitmp4, %cond.true52 ], [ 0, %cond.end46 ]
  %bf.clear61 = and i8 %bf.load58, -3, !dbg !4311
  %bf.set62 = or i8 %bf.clear61, %cond57, !dbg !4311
  store i8 %bf.set62, i8* %can_throw_external, align 2, !dbg !4311
  br i1 %tobool, label %if.end77, label %land.lhs.true, !dbg !4312

land.lhs.true:                                    ; preds = %cond.end56
  %call_site_hash = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %caller, i64 0, i32 15, !dbg !4313
  %17 = load %struct.htab*, %struct.htab** %call_site_hash, align 8, !dbg !4313
  %tobool65 = icmp eq %struct.htab* %17, null, !dbg !4314
  br i1 %tobool65, label %if.end77, label %if.then66, !dbg !4315

if.then66:                                        ; preds = %land.lhs.true
  %18 = bitcast %union.gimple_statement_d** %call_stmt8 to i8**, !dbg !4316
  %19 = load i8*, i8** %18, align 8, !dbg !4316
  %20 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4317
  %call70 = tail call i32 %20(i8* %19) #6, !dbg !4317
  %call71 = tail call i8** @htab_find_slot_with_hash(%struct.htab* nonnull %17, i8* %19, i32 %call70, i32 1) #6, !dbg !4318
  call void @llvm.dbg.value(metadata i8** %call71, metadata !4235, metadata !DIExpression()), !dbg !4319
  %21 = load i8*, i8** %call71, align 8, !dbg !4320
  %tobool72 = icmp eq i8* %21, null, !dbg !4320
  br i1 %tobool72, label %cond.end75, label %cond.true73, !dbg !4320

cond.true73:                                      ; preds = %if.then66
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 978, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4320
  br label %cond.end75, !dbg !4320

cond.end75:                                       ; preds = %if.then66, %cond.true73
  %22 = bitcast i8** %call71 to %struct.cgraph_edge**, !dbg !4321
  store %struct.cgraph_edge* %edge.0, %struct.cgraph_edge** %22, align 8, !dbg !4321
  br label %if.end77, !dbg !4322

if.end77:                                         ; preds = %land.lhs.true, %cond.end56, %cond.end75
  tail call fastcc void @initialize_inline_failed(%struct.cgraph_edge* %edge.0) #8, !dbg !4323
  ret %struct.cgraph_edge* %edge.0, !dbg !4324
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4325 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4330, metadata !DIExpression()), !dbg !4331
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4332
  %cmp = icmp eq i32 %call, 8, !dbg !4333
  %conv1 = zext i1 %cmp to i8, !dbg !4332
  ret i8 %conv1, !dbg !4334
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_call_cannot_inline_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !4335 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4339, metadata !DIExpression()), !dbg !4340
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !4341
  %bf.load = load i32, i32* %0, align 8, !dbg !4341
  %and = lshr i32 %bf.load, 16, !dbg !4342
  %1 = trunc i32 %and to i8, !dbg !4342
  %2 = and i8 %1, 1, !dbg !4342
  ret i8 %2, !dbg !4343
}

; Function Attrs: nounwind uwtable
define internal fastcc void @initialize_inline_failed(%struct.cgraph_edge* %e) unnamed_addr #4 !dbg !4344 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4348, metadata !DIExpression()), !dbg !4350
  %callee1 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !4351
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee1, align 8, !dbg !4351
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !4349, metadata !DIExpression()), !dbg !4350
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 27, !dbg !4352
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4352
  %bf.clear = and i16 %bf.load, 32, !dbg !4352
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !4354
  br i1 %tobool, label %if.then, label %if.else, !dbg !4355

if.then:                                          ; preds = %entry
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4356
  store i32 3, i32* %inline_failed, align 8, !dbg !4357
  br label %if.end28, !dbg !4358

if.else:                                          ; preds = %entry
  %redefined_extern_inline = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 18, i32 2, !dbg !4359
  %bf.load2 = load i8, i8* %redefined_extern_inline, align 8, !dbg !4359
  %bf.clear4 = and i8 %bf.load2, 32, !dbg !4359
  %tobool6 = icmp eq i8 %bf.clear4, 0, !dbg !4361
  br i1 %tobool6, label %if.else9, label %if.then7, !dbg !4362

if.then7:                                         ; preds = %if.else
  %inline_failed8 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4363
  store i32 4, i32* %inline_failed8, align 8, !dbg !4364
  br label %if.end28, !dbg !4365

if.else9:                                         ; preds = %if.else
  %bf.clear13 = and i8 %bf.load2, 8, !dbg !4366
  %tobool15 = icmp eq i8 %bf.clear13, 0, !dbg !4368
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !4369

if.then16:                                        ; preds = %if.else9
  %inline_failed17 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4370
  store i32 5, i32* %inline_failed17, align 8, !dbg !4371
  br label %if.end28, !dbg !4372

if.else18:                                        ; preds = %if.else9
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 7, !dbg !4373
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4373
  %tobool19 = icmp eq %union.gimple_statement_d* %1, null, !dbg !4375
  br i1 %tobool19, label %if.else24, label %land.lhs.true, !dbg !4376

land.lhs.true:                                    ; preds = %if.else18
  %call = tail call fastcc zeroext i8 @gimple_call_cannot_inline_p(%union.gimple_statement_d* nonnull %1) #8, !dbg !4377
  %tobool21 = icmp eq i8 %call, 0, !dbg !4377
  br i1 %tobool21, label %if.else24, label %if.then22, !dbg !4378

if.then22:                                        ; preds = %land.lhs.true
  %inline_failed23 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4379
  store i32 17, i32* %inline_failed23, align 8, !dbg !4380
  br label %if.end28, !dbg !4381

if.else24:                                        ; preds = %land.lhs.true, %if.else18
  %inline_failed25 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4382
  store i32 2, i32* %inline_failed25, align 8, !dbg !4383
  br label %if.end28

if.end28:                                         ; preds = %if.then7, %if.then22, %if.else24, %if.then16, %if.then
  ret void, !dbg !4384
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_edge(%struct.cgraph_edge* %e) local_unnamed_addr #4 !dbg !4385 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4387, metadata !DIExpression()), !dbg !4388
  tail call fastcc void @cgraph_call_edge_removal_hooks(%struct.cgraph_edge* %e) #8, !dbg !4389
  tail call fastcc void @cgraph_edge_remove_callee(%struct.cgraph_edge* %e) #8, !dbg !4390
  tail call fastcc void @cgraph_edge_remove_caller(%struct.cgraph_edge* %e) #8, !dbg !4391
  tail call fastcc void @cgraph_free_edge(%struct.cgraph_edge* %e) #8, !dbg !4392
  ret void, !dbg !4393
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_call_edge_removal_hooks(%struct.cgraph_edge* %e) unnamed_addr #4 !dbg !4394 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4396, metadata !DIExpression()), !dbg !4398
  br label %while.cond, !dbg !4399

while.cond:                                       ; preds = %while.body, %entry
  %entry1.0.in = phi %struct.cgraph_edge_hook_list** [ @first_cgraph_edge_removal_hook, %entry ], [ %next, %while.body ]
  %entry1.0 = load %struct.cgraph_edge_hook_list*, %struct.cgraph_edge_hook_list** %entry1.0.in, align 8, !dbg !4398
  call void @llvm.dbg.value(metadata %struct.cgraph_edge_hook_list* %entry1.0, metadata !4397, metadata !DIExpression()), !dbg !4398
  %tobool = icmp eq %struct.cgraph_edge_hook_list* %entry1.0, null, !dbg !4399
  br i1 %tobool, label %while.end, label %while.body, !dbg !4399

while.body:                                       ; preds = %while.cond
  %hook = getelementptr inbounds %struct.cgraph_edge_hook_list, %struct.cgraph_edge_hook_list* %entry1.0, i64 0, i32 0, !dbg !4400
  %0 = load void (%struct.cgraph_edge*, i8*)*, void (%struct.cgraph_edge*, i8*)** %hook, align 8, !dbg !4400
  %data = getelementptr inbounds %struct.cgraph_edge_hook_list, %struct.cgraph_edge_hook_list* %entry1.0, i64 0, i32 1, !dbg !4402
  %1 = load i8*, i8** %data, align 8, !dbg !4402
  tail call void %0(%struct.cgraph_edge* %e, i8* %1) #6, !dbg !4403
  %next = getelementptr inbounds %struct.cgraph_edge_hook_list, %struct.cgraph_edge_hook_list* %entry1.0, i64 0, i32 2, !dbg !4404
  br label %while.cond, !dbg !4399, !llvm.loop !4405

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4407
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @cgraph_edge_remove_callee(%struct.cgraph_edge* %e) unnamed_addr #0 !dbg !4408 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4410, metadata !DIExpression()), !dbg !4411
  %prev_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 3, !dbg !4412
  %0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %prev_caller, align 8, !dbg !4412
  %tobool = icmp eq %struct.cgraph_edge* %0, null, !dbg !4414
  br i1 %tobool, label %if.end, label %if.then, !dbg !4415

if.then:                                          ; preds = %entry
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 4, !dbg !4416
  %1 = bitcast %struct.cgraph_edge** %next_caller to i64*, !dbg !4416
  %2 = load i64, i64* %1, align 8, !dbg !4416
  %next_caller2 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %0, i64 0, i32 4, !dbg !4417
  %3 = bitcast %struct.cgraph_edge** %next_caller2 to i64*, !dbg !4418
  store i64 %2, i64* %3, align 8, !dbg !4418
  br label %if.end, !dbg !4419

if.end:                                           ; preds = %entry, %if.then
  %next_caller3 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 4, !dbg !4420
  %4 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller3, align 8, !dbg !4420
  %tobool4 = icmp eq %struct.cgraph_edge* %4, null, !dbg !4422
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !4423

if.then5:                                         ; preds = %if.end
  %5 = bitcast %struct.cgraph_edge** %prev_caller to i64*, !dbg !4424
  %6 = load i64, i64* %5, align 8, !dbg !4424
  %prev_caller8 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %4, i64 0, i32 3, !dbg !4425
  %7 = bitcast %struct.cgraph_edge** %prev_caller8 to i64*, !dbg !4426
  store i64 %6, i64* %7, align 8, !dbg !4426
  br label %if.end9, !dbg !4427

if.end9:                                          ; preds = %if.end, %if.then5
  %8 = load %struct.cgraph_edge*, %struct.cgraph_edge** %prev_caller, align 8, !dbg !4428
  %tobool11 = icmp eq %struct.cgraph_edge* %8, null, !dbg !4430
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4431

if.then12:                                        ; preds = %if.end9
  %9 = bitcast %struct.cgraph_edge** %next_caller3 to i64*, !dbg !4432
  %10 = load i64, i64* %9, align 8, !dbg !4432
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !4433
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4433
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %11, i64 0, i32 2, !dbg !4434
  %12 = bitcast %struct.cgraph_edge** %callers to i64*, !dbg !4435
  store i64 %10, i64* %12, align 8, !dbg !4435
  br label %if.end14, !dbg !4436

if.end14:                                         ; preds = %if.end9, %if.then12
  ret void, !dbg !4437
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @cgraph_edge_remove_caller(%struct.cgraph_edge* %e) unnamed_addr #0 !dbg !4438 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4440, metadata !DIExpression()), !dbg !4441
  %prev_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 5, !dbg !4442
  %0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %prev_callee, align 8, !dbg !4442
  %tobool = icmp eq %struct.cgraph_edge* %0, null, !dbg !4444
  br i1 %tobool, label %if.end, label %if.then, !dbg !4445

if.then:                                          ; preds = %entry
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 6, !dbg !4446
  %1 = bitcast %struct.cgraph_edge** %next_callee to i64*, !dbg !4446
  %2 = load i64, i64* %1, align 8, !dbg !4446
  %next_callee2 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %0, i64 0, i32 6, !dbg !4447
  %3 = bitcast %struct.cgraph_edge** %next_callee2 to i64*, !dbg !4448
  store i64 %2, i64* %3, align 8, !dbg !4448
  br label %if.end, !dbg !4449

if.end:                                           ; preds = %entry, %if.then
  %next_callee3 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 6, !dbg !4450
  %4 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_callee3, align 8, !dbg !4450
  %tobool4 = icmp eq %struct.cgraph_edge* %4, null, !dbg !4452
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !4453

if.then5:                                         ; preds = %if.end
  %5 = bitcast %struct.cgraph_edge** %prev_callee to i64*, !dbg !4454
  %6 = load i64, i64* %5, align 8, !dbg !4454
  %prev_callee8 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %4, i64 0, i32 5, !dbg !4455
  %7 = bitcast %struct.cgraph_edge** %prev_callee8 to i64*, !dbg !4456
  store i64 %6, i64* %7, align 8, !dbg !4456
  br label %if.end9, !dbg !4457

if.end9:                                          ; preds = %if.end, %if.then5
  %8 = load %struct.cgraph_edge*, %struct.cgraph_edge** %prev_callee, align 8, !dbg !4458
  %tobool11 = icmp eq %struct.cgraph_edge* %8, null, !dbg !4460
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4461

if.then12:                                        ; preds = %if.end9
  %9 = bitcast %struct.cgraph_edge** %next_callee3 to i64*, !dbg !4462
  %10 = load i64, i64* %9, align 8, !dbg !4462
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !4463
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4463
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %11, i64 0, i32 1, !dbg !4464
  %12 = bitcast %struct.cgraph_edge** %callees to i64*, !dbg !4465
  store i64 %10, i64* %12, align 8, !dbg !4465
  br label %if.end14, !dbg !4466

if.end14:                                         ; preds = %if.end9, %if.then12
  %caller15 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !4467
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %caller15, align 8, !dbg !4467
  %call_site_hash = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 15, !dbg !4469
  %14 = load %struct.htab*, %struct.htab** %call_site_hash, align 8, !dbg !4469
  %tobool16 = icmp eq %struct.htab* %14, null, !dbg !4470
  br i1 %tobool16, label %if.end21, label %if.then17, !dbg !4471

if.then17:                                        ; preds = %if.end14
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 7, !dbg !4472
  %15 = bitcast %union.gimple_statement_d** %call_stmt to i8**, !dbg !4472
  %16 = load i8*, i8** %15, align 8, !dbg !4472
  %17 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4473
  %call = tail call i32 %17(i8* %16) #6, !dbg !4473
  tail call void @htab_remove_elt_with_hash(%struct.htab* nonnull %14, i8* %16, i32 %call) #6, !dbg !4474
  br label %if.end21, !dbg !4474

if.end21:                                         ; preds = %if.end14, %if.then17
  ret void, !dbg !4475
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_free_edge(%struct.cgraph_edge* %e) unnamed_addr #4 !dbg !4476 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4478, metadata !DIExpression()), !dbg !4480
  %uid1 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 12, !dbg !4481
  %0 = load i32, i32* %uid1, align 4, !dbg !4481
  call void @llvm.dbg.value(metadata i32 %0, metadata !4479, metadata !DIExpression()), !dbg !4480
  %1 = bitcast %struct.cgraph_edge* %e to i8*, !dbg !4482
  %call = tail call i8* @memset(i8* %1, i32 0, i64 96) #6, !dbg !4483
  store i32 %0, i32* %uid1, align 4, !dbg !4484
  %2 = load i64, i64* bitcast (%struct.cgraph_edge** @free_edges to i64*), align 8, !dbg !4485
  %prev_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 3, !dbg !4486
  %3 = bitcast %struct.cgraph_edge** %prev_caller to i64*, !dbg !4487
  store i64 %2, i64* %3, align 8, !dbg !4487
  store %struct.cgraph_edge* %e, %struct.cgraph_edge** @free_edges, align 8, !dbg !4488
  ret void, !dbg !4489
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_redirect_edge_callee(%struct.cgraph_edge* %e, %struct.cgraph_node* %n) local_unnamed_addr #4 !dbg !4490 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4494, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n, metadata !4495, metadata !DIExpression()), !dbg !4496
  tail call fastcc void @cgraph_edge_remove_callee(%struct.cgraph_edge* %e) #8, !dbg !4497
  %prev_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 3, !dbg !4498
  store %struct.cgraph_edge* null, %struct.cgraph_edge** %prev_caller, align 8, !dbg !4499
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 2, !dbg !4500
  %0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !4500
  %tobool = icmp eq %struct.cgraph_edge* %0, null, !dbg !4502
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then, !dbg !4503

entry.if.end_crit_edge:                           ; preds = %entry
  %1 = ptrtoint %struct.cgraph_edge* %0 to i64, !dbg !4503
  br label %if.end, !dbg !4503

if.then:                                          ; preds = %entry
  %prev_caller2 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %0, i64 0, i32 3, !dbg !4504
  store %struct.cgraph_edge* %e, %struct.cgraph_edge** %prev_caller2, align 8, !dbg !4505
  %.phi.trans.insert = bitcast %struct.cgraph_edge** %callers to i64*, !dbg !4496
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !4506
  br label %if.end, !dbg !4507

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi i64 [ %1, %entry.if.end_crit_edge ], [ %.pre, %if.then ], !dbg !4506
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 4, !dbg !4508
  %3 = bitcast %struct.cgraph_edge** %next_caller to i64*, !dbg !4509
  store i64 %2, i64* %3, align 8, !dbg !4509
  store %struct.cgraph_edge* %e, %struct.cgraph_edge** %callers, align 8, !dbg !4510
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !4511
  store %struct.cgraph_node* %n, %struct.cgraph_node** %callee, align 8, !dbg !4512
  ret void, !dbg !4513
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_update_edges_for_call_stmt(%union.gimple_statement_d* %old_stmt, %union.tree_node* %old_decl, %union.gimple_statement_d* %new_stmt) local_unnamed_addr #4 !dbg !4514 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %old_stmt, metadata !4518, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %union.tree_node* %old_decl, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %new_stmt, metadata !4520, metadata !DIExpression()), !dbg !4523
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4524
  %decl = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 6, !dbg !4525
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4525
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %1) #8, !dbg !4526
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !4521, metadata !DIExpression()), !dbg !4523
  tail call fastcc void @cgraph_update_edges_for_call_stmt_node(%struct.cgraph_node* %call, %union.gimple_statement_d* %old_stmt, %union.tree_node* %old_decl, %union.gimple_statement_d* %new_stmt) #8, !dbg !4527
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 11, !dbg !4528
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !4528
  %tobool = icmp eq %struct.cgraph_node* %2, null, !dbg !4530
  br i1 %tobool, label %if.end18, label %if.then, !dbg !4531

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %2, metadata !4522, metadata !DIExpression()), !dbg !4523
  br label %for.cond, !dbg !4532

for.cond:                                         ; preds = %if.end17, %if.then
  %node.0 = phi %struct.cgraph_node* [ %2, %if.then ], [ %node.4, %if.end17 ], !dbg !4534
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4522, metadata !DIExpression()), !dbg !4523
  %cmp = icmp eq %struct.cgraph_node* %node.0, %call, !dbg !4535
  br i1 %cmp, label %if.end18.loopexit, label %for.body, !dbg !4537

for.body:                                         ; preds = %for.cond
  tail call fastcc void @cgraph_update_edges_for_call_stmt_node(%struct.cgraph_node* %node.0, %union.gimple_statement_d* %old_stmt, %union.tree_node* %old_decl, %union.gimple_statement_d* %new_stmt) #8, !dbg !4538
  %clones2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 11, !dbg !4540
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %clones2, align 8, !dbg !4540
  %tobool3 = icmp eq %struct.cgraph_node* %3, null, !dbg !4542
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !4543

if.then4:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %3, metadata !4522, metadata !DIExpression()), !dbg !4523
  br label %if.end17, !dbg !4544

if.else:                                          ; preds = %for.body
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 9, !dbg !4545
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone, align 8, !dbg !4545
  %tobool6 = icmp eq %struct.cgraph_node* %4, null, !dbg !4547
  br i1 %tobool6, label %while.cond.preheader, label %if.then7, !dbg !4548

while.cond.preheader:                             ; preds = %if.else
  br label %while.cond, !dbg !4549

if.then7:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %4, metadata !4522, metadata !DIExpression()), !dbg !4523
  br label %if.end17, !dbg !4551

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %node.1 = phi %struct.cgraph_node* [ %6, %while.body ], [ %node.0, %while.cond.preheader ], !dbg !4534
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !4522, metadata !DIExpression()), !dbg !4523
  %cmp10 = icmp eq %struct.cgraph_node* %node.1, %call, !dbg !4552
  br i1 %cmp10, label %while.end, label %land.rhs, !dbg !4553

land.rhs:                                         ; preds = %while.cond
  %next_sibling_clone11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 9, !dbg !4554
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone11, align 8, !dbg !4554
  %tobool12 = icmp eq %struct.cgraph_node* %5, null, !dbg !4555
  br i1 %tobool12, label %while.body, label %while.end, !dbg !4549

while.body:                                       ; preds = %land.rhs
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 12, !dbg !4556
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %6, metadata !4522, metadata !DIExpression()), !dbg !4523
  br label %while.cond, !dbg !4549, !llvm.loop !4557

while.end:                                        ; preds = %while.cond, %land.rhs
  %node.1.lcssa = phi %struct.cgraph_node* [ %node.1, %while.cond ], [ %node.1, %land.rhs ], !dbg !4534
  %cmp10.lcssa = phi i1 [ %cmp10, %while.cond ], [ %cmp10, %land.rhs ], !dbg !4552
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  br i1 %cmp10.lcssa, label %if.end17, label %if.then14, !dbg !4558

if.then14:                                        ; preds = %while.end
  %next_sibling_clone15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1.lcssa, i64 0, i32 9, !dbg !4559
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone15, align 8, !dbg !4559
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %7, metadata !4522, metadata !DIExpression()), !dbg !4523
  br label %if.end17, !dbg !4561

if.end17:                                         ; preds = %while.end, %if.then7, %if.then14, %if.then4
  %node.4 = phi %struct.cgraph_node* [ %3, %if.then4 ], [ %4, %if.then7 ], [ %7, %if.then14 ], [ %call, %while.end ], !dbg !4562
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.4, metadata !4522, metadata !DIExpression()), !dbg !4523
  br label %for.cond, !dbg !4563, !llvm.loop !4564

if.end18.loopexit:                                ; preds = %for.cond
  br label %if.end18, !dbg !4566

if.end18:                                         ; preds = %if.end18.loopexit, %entry
  ret void, !dbg !4566
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_update_edges_for_call_stmt_node(%struct.cgraph_node* %node, %union.gimple_statement_d* %old_stmt, %union.tree_node* %old_call, %union.gimple_statement_d* %new_stmt) unnamed_addr #4 !dbg !4567 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4571, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %old_stmt, metadata !4572, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata %union.tree_node* %old_call, metadata !4573, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %new_stmt, metadata !4574, metadata !DIExpression()), !dbg !4586
  %call = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %new_stmt) #8, !dbg !4587
  %tobool = icmp eq i8 %call, 0, !dbg !4588
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4588

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %new_stmt) #8, !dbg !4589
  br label %cond.end, !dbg !4588

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %union.tree_node* [ %call1, %cond.true ], [ null, %entry ], !dbg !4588
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !4575, metadata !DIExpression()), !dbg !4586
  %tobool2 = icmp ne %union.tree_node* %cond, null, !dbg !4590
  %tobool3 = icmp ne %union.tree_node* %old_call, null, !dbg !4592
  %or.cond = or i1 %tobool2, %tobool3, !dbg !4593
  br i1 %or.cond, label %if.end, label %cleanup.cont46, !dbg !4593

if.end:                                           ; preds = %cond.end
  %cmp = icmp eq %union.tree_node* %cond, %old_call, !dbg !4594
  br i1 %cmp, label %if.else37, label %if.then5, !dbg !4595

if.then5:                                         ; preds = %if.end
  %call6 = tail call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %node, %union.gimple_statement_d* %old_stmt) #8, !dbg !4596
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call6, metadata !4576, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* null, metadata !4579, metadata !DIExpression()), !dbg !4597
  %tobool7 = icmp eq %struct.cgraph_edge* %call6, null, !dbg !4598
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !4599

if.then8:                                         ; preds = %if.then5
  %tobool9 = icmp eq %union.tree_node* %cond, null, !dbg !4600
  br i1 %tobool9, label %if.end14, label %land.lhs.true10, !dbg !4603

land.lhs.true10:                                  ; preds = %if.then8
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call6, i64 0, i32 2, !dbg !4604
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4604
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 0, !dbg !4605
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4605
  %cmp11 = icmp eq %union.tree_node* %1, %cond, !dbg !4606
  br i1 %cmp11, label %cleanup, label %if.end14, !dbg !4607

if.end14:                                         ; preds = %if.then8, %land.lhs.true10
  %count15 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call6, i64 0, i32 0, !dbg !4608
  %2 = load i64, i64* %count15, align 8, !dbg !4608
  call void @llvm.dbg.value(metadata i64 %2, metadata !4580, metadata !DIExpression()), !dbg !4597
  %frequency16 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call6, i64 0, i32 11, !dbg !4609
  %3 = load i32, i32* %frequency16, align 8, !dbg !4609
  call void @llvm.dbg.value(metadata i32 %3, metadata !4581, metadata !DIExpression()), !dbg !4597
  %loop_nest17 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call6, i64 0, i32 13, !dbg !4610
  %4 = load i16, i16* %loop_nest17, align 8, !dbg !4610
  %conv18 = zext i16 %4 to i32, !dbg !4611
  call void @llvm.dbg.value(metadata i32 %conv18, metadata !4582, metadata !DIExpression()), !dbg !4597
  tail call void @cgraph_remove_edge(%struct.cgraph_edge* nonnull %call6) #8, !dbg !4612
  br label %if.end22, !dbg !4613

if.else:                                          ; preds = %if.then5
  %call19 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %new_stmt) #8, !dbg !4614
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call19, metadata !4583, metadata !DIExpression()), !dbg !4615
  %count20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call19, i64 0, i32 8, !dbg !4616
  %5 = load i64, i64* %count20, align 8, !dbg !4616
  call void @llvm.dbg.value(metadata i64 %5, metadata !4580, metadata !DIExpression()), !dbg !4597
  %6 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4617
  %call21 = tail call i32 @compute_call_stmt_bb_frequency(%union.tree_node* %6, %struct.basic_block_def* %call19) #6, !dbg !4618
  call void @llvm.dbg.value(metadata i32 %call21, metadata !4581, metadata !DIExpression()), !dbg !4597
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call19, i64 0, i32 10, !dbg !4619
  %7 = load i32, i32* %loop_depth, align 4, !dbg !4619
  call void @llvm.dbg.value(metadata i32 %7, metadata !4582, metadata !DIExpression()), !dbg !4597
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end14
  %count.0 = phi i64 [ %2, %if.end14 ], [ %5, %if.else ], !dbg !4620
  %frequency.0 = phi i32 [ %3, %if.end14 ], [ %call21, %if.else ], !dbg !4620
  %loop_nest.0 = phi i32 [ %conv18, %if.end14 ], [ %7, %if.else ], !dbg !4620
  call void @llvm.dbg.value(metadata i32 %loop_nest.0, metadata !4582, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i32 %frequency.0, metadata !4581, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4580, metadata !DIExpression()), !dbg !4597
  %tobool23 = icmp eq %union.tree_node* %cond, null, !dbg !4621
  br i1 %tobool23, label %cleanup, label %if.then24, !dbg !4623

if.then24:                                        ; preds = %if.end22
  %call25 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %cond) #8, !dbg !4624
  %call26 = tail call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %node, %struct.cgraph_node* %call25, %union.gimple_statement_d* %new_stmt, i64 %count.0, i32 %frequency.0, i32 %loop_nest.0) #8, !dbg !4626
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call26, metadata !4579, metadata !DIExpression()), !dbg !4597
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call26, i64 0, i32 9, !dbg !4627
  %8 = load i32, i32* %inline_failed, align 8, !dbg !4627
  %tobool27 = icmp eq i32 %8, 0, !dbg !4627
  br i1 %tobool27, label %cond.true28, label %cleanup, !dbg !4627

cond.true28:                                      ; preds = %if.then24
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4627
  br label %cleanup, !dbg !4627

cleanup:                                          ; preds = %if.then24, %if.end22, %cond.true28, %land.lhs.true10
  ret void

if.else37:                                        ; preds = %if.end
  %cmp38 = icmp eq %union.gimple_statement_d* %old_stmt, %new_stmt, !dbg !4628
  br i1 %cmp38, label %cleanup.cont46, label %if.then40, !dbg !4630

if.then40:                                        ; preds = %if.else37
  %call41 = tail call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %node, %union.gimple_statement_d* %old_stmt) #8, !dbg !4631
  tail call void @cgraph_set_call_stmt(%struct.cgraph_edge* %call41, %union.gimple_statement_d* %new_stmt) #8, !dbg !4632
  br label %cleanup.cont46, !dbg !4632

cleanup.cont46:                                   ; preds = %if.else37, %cond.end, %if.then40
  ret void, !dbg !4633
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_node_remove_callees(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4634 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4636, metadata !DIExpression()), !dbg !4639
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !4640
  %0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callees, align 8, !dbg !4640
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %0, metadata !4637, metadata !DIExpression()), !dbg !4639
  br label %for.cond, !dbg !4642

for.cond:                                         ; preds = %for.body, %entry
  %e.0 = phi %struct.cgraph_edge* [ %0, %entry ], [ %1, %for.body ], !dbg !4643
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4637, metadata !DIExpression()), !dbg !4639
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4644
  br i1 %tobool, label %for.end, label %for.body, !dbg !4644

for.body:                                         ; preds = %for.cond
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !4645
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_callee, align 8, !dbg !4645
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !4638, metadata !DIExpression()), !dbg !4639
  tail call fastcc void @cgraph_call_edge_removal_hooks(%struct.cgraph_edge* nonnull %e.0) #8, !dbg !4648
  tail call fastcc void @cgraph_edge_remove_callee(%struct.cgraph_edge* nonnull %e.0) #8, !dbg !4649
  tail call fastcc void @cgraph_free_edge(%struct.cgraph_edge* nonnull %e.0) #8, !dbg !4650
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !4637, metadata !DIExpression()), !dbg !4639
  br label %for.cond, !dbg !4651, !llvm.loop !4652

for.end:                                          ; preds = %for.cond
  store %struct.cgraph_edge* null, %struct.cgraph_edge** %callees, align 8, !dbg !4654
  %call_site_hash = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 15, !dbg !4655
  %2 = load %struct.htab*, %struct.htab** %call_site_hash, align 8, !dbg !4655
  %tobool2 = icmp eq %struct.htab* %2, null, !dbg !4657
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4658

if.then:                                          ; preds = %for.end
  tail call void @htab_delete(%struct.htab* nonnull %2) #6, !dbg !4659
  store %struct.htab* null, %struct.htab** %call_site_hash, align 8, !dbg !4661
  br label %if.end, !dbg !4662

if.end:                                           ; preds = %for.end, %if.then
  ret void, !dbg !4663
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_release_function_body(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4664 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4666, metadata !DIExpression()), !dbg !4670
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !4671
  %1 = load %struct.tree_function_decl*, %struct.tree_function_decl** %0, align 8, !dbg !4671
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %1, i64 0, i32 1, !dbg !4671
  %2 = load %struct.function*, %struct.function** %f, align 8, !dbg !4671
  %tobool = icmp eq %struct.function* %2, null, !dbg !4671
  br i1 %tobool, label %entry.if.end40_crit_edge, label %if.then, !dbg !4672

entry.if.end40_crit_edge:                         ; preds = %entry
  %3 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %1, i64 0, i32 0, !dbg !4672
  br label %if.end40, !dbg !4672

if.then:                                          ; preds = %entry
  %4 = load i64, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !4673
  tail call void @push_cfun(%struct.function* nonnull %2) #6, !dbg !4674
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4675
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 3, !dbg !4677
  %6 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4677
  %tobool4 = icmp eq %struct.gimple_df* %6, null, !dbg !4675
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !4678

if.then5:                                         ; preds = %if.then
  %7 = bitcast %struct.cgraph_node* %node to i64*, !dbg !4679
  %8 = load i64, i64* %7, align 8, !dbg !4679
  store i64 %8, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !4681
  tail call void @delete_tree_ssa() #6, !dbg !4682
  tail call void @delete_tree_cfg_annotations() #6, !dbg !4683
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4684
  %eh = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 0, !dbg !4685
  store %struct.eh_status* null, %struct.eh_status** %eh, align 8, !dbg !4686
  store i64 %4, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !4687
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4688
  br label %if.end, !dbg !4690

if.end:                                           ; preds = %if.then, %if.then5
  %10 = phi %struct.function* [ %5, %if.then ], [ %.pre, %if.then5 ], !dbg !4688
  %cfg = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !4691
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4691
  %tobool9 = icmp eq %struct.control_flow_graph* %11, null, !dbg !4688
  br i1 %tobool9, label %if.end22, label %if.then10, !dbg !4692

if.then10:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 8, i64 0, !dbg !4693
  %12 = load i32, i32* %arrayidx, align 4, !dbg !4693
  %cmp = icmp eq i32 %12, 0, !dbg !4693
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4693

cond.true:                                        ; preds = %if.then10
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4693
  %.pre1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4695
  %cfg14.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre1, i64 0, i32 1, !dbg !4696
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14.phi.trans.insert, align 8, !dbg !4695
  br label %cond.end, !dbg !4693

cond.end:                                         ; preds = %if.then10, %cond.true
  %13 = phi %struct.control_flow_graph* [ %11, %if.then10 ], [ %.pre2, %cond.true ], !dbg !4695
  %arrayidx16 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 8, i64 1, !dbg !4695
  %14 = load i32, i32* %arrayidx16, align 4, !dbg !4695
  %cmp17 = icmp eq i32 %14, 0, !dbg !4695
  br i1 %cmp17, label %cond.end20, label %cond.true18, !dbg !4695

cond.true18:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4695
  br label %cond.end20, !dbg !4695

cond.end20:                                       ; preds = %cond.end, %cond.true18
  tail call void @clear_edges() #6, !dbg !4697
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4698
  br label %if.end22, !dbg !4700

if.end22:                                         ; preds = %if.end, %cond.end20
  %15 = phi %struct.function* [ %10, %if.end ], [ %.pre3, %cond.end20 ], !dbg !4698
  %value_histograms = getelementptr inbounds %struct.function, %struct.function* %15, i64 0, i32 5, !dbg !4701
  %16 = load %struct.htab*, %struct.htab** %value_histograms, align 8, !dbg !4701
  %tobool24 = icmp eq %struct.htab* %16, null, !dbg !4698
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4702

if.then25:                                        ; preds = %if.end22
  tail call void @free_histograms() #6, !dbg !4703
  %.pre4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4704
  br label %if.end26, !dbg !4703

if.end26:                                         ; preds = %if.end22, %if.then25
  %17 = phi %struct.function* [ %15, %if.end22 ], [ %.pre4, %if.then25 ], !dbg !4704
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 4, !dbg !4704
  %18 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4704
  %tobool28 = icmp eq %struct.loops* %18, null, !dbg !4704
  br i1 %tobool28, label %cond.end31, label %cond.true29, !dbg !4704

cond.true29:                                      ; preds = %if.end26
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4704
  br label %cond.end31, !dbg !4704

cond.end31:                                       ; preds = %if.end26, %cond.true29
  tail call void @pop_cfun() #6, !dbg !4705
  %decl33 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !4706
  %19 = load %union.tree_node*, %union.tree_node** %decl33, align 8, !dbg !4706
  tail call void @gimple_set_body(%union.tree_node* %19, %struct.gimple_seq_d* null) #6, !dbg !4707
  %ipa_transforms_to_apply = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 17, !dbg !4708
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(%struct.VEC_ipa_opt_pass_heap** nonnull %ipa_transforms_to_apply) #8, !dbg !4708
  %20 = load %struct.tree_function_decl*, %struct.tree_function_decl** %0, align 8, !dbg !4709
  %f36 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %20, i64 0, i32 1, !dbg !4709
  %21 = bitcast %struct.function** %f36 to i8**, !dbg !4709
  %22 = load i8*, i8** %21, align 8, !dbg !4709
  tail call void @ggc_free(i8* %22) #6, !dbg !4710
  %23 = load %struct.tree_function_decl*, %struct.tree_function_decl** %0, align 8, !dbg !4711
  %f39 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %23, i64 0, i32 1, !dbg !4711
  store %struct.function* null, %struct.function** %f39, align 8, !dbg !4712
  %.phi.trans.insert = bitcast %struct.cgraph_node* %node to %struct.tree_decl_non_common**, !dbg !4670
  %.pre5 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** %.phi.trans.insert, align 8, !dbg !4713
  br label %if.end40, !dbg !4714

if.end40:                                         ; preds = %entry.if.end40_crit_edge, %cond.end31
  %24 = phi %struct.tree_decl_non_common* [ %3, %entry.if.end40_crit_edge ], [ %.pre5, %cond.end31 ], !dbg !4713
  %saved_tree = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %24, i64 0, i32 1, !dbg !4713
  store %union.tree_node* null, %union.tree_node** %saved_tree, align 8, !dbg !4715
  %abstract_and_needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4716
  %bf.load = load i16, i16* %abstract_and_needed, align 4, !dbg !4716
  %bf.clear = and i16 %bf.load, 4, !dbg !4716
  %tobool42 = icmp eq i16 %bf.clear, 0, !dbg !4718
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !4719

if.then43:                                        ; preds = %if.end40
  %25 = load i64, i64* bitcast ([131 x %union.tree_node*]* @global_trees to i64*), align 16, !dbg !4720
  %26 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_common**, !dbg !4721
  %27 = load %struct.tree_decl_common*, %struct.tree_decl_common** %26, align 8, !dbg !4721
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %27, i64 0, i32 5, !dbg !4721
  %28 = bitcast %union.tree_node** %initial to i64*, !dbg !4722
  store i64 %25, i64* %28, align 8, !dbg !4722
  br label %if.end45, !dbg !4721

if.end45:                                         ; preds = %if.end40, %if.then43
  ret void, !dbg !4723
}

declare dso_local void @delete_tree_ssa() local_unnamed_addr #1

declare dso_local void @delete_tree_cfg_annotations() local_unnamed_addr #1

declare dso_local void @clear_edges() local_unnamed_addr #1

declare dso_local void @free_histograms() local_unnamed_addr #1

declare dso_local void @gimple_set_body(%union.tree_node*, %struct.gimple_seq_d*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_free(%struct.VEC_ipa_opt_pass_heap** %vec_) unnamed_addr #0 !dbg !4724 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_heap** %vec_, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4731
  %tobool = icmp eq %struct.VEC_ipa_opt_pass_heap* %0, null, !dbg !4731
  br i1 %tobool, label %if.end, label %if.then, !dbg !4733

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_ipa_opt_pass_heap* %0 to i8*, !dbg !4733
  tail call void @free(i8* nonnull %1) #6, !dbg !4731
  br label %if.end, !dbg !4731

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_ipa_opt_pass_heap* null, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4733
  ret void, !dbg !4733
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_same_body_alias(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4734 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4736, metadata !DIExpression()), !dbg !4742
  %uid1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !4743
  %0 = load i32, i32* %uid1, align 8, !dbg !4743
  call void @llvm.dbg.value(metadata i32 %0, metadata !4738, metadata !DIExpression()), !dbg !4742
  %same_body_alias = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4744
  %bf.load = load i16, i16* %same_body_alias, align 4, !dbg !4744
  %bf.clear = and i16 %bf.load, 512, !dbg !4744
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !4744
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4744

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4744
  br label %cond.end, !dbg !4744

cond.end:                                         ; preds = %entry, %cond.true
  %previous = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 4, !dbg !4745
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %previous, align 8, !dbg !4745
  %tobool2 = icmp eq %struct.cgraph_node* %1, null, !dbg !4747
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 3, !dbg !4748
  %2 = bitcast %struct.cgraph_node** %next to i64*, !dbg !4748
  %3 = load i64, i64* %2, align 8, !dbg !4748
  br i1 %tobool2, label %if.else, label %if.then, !dbg !4749

if.then:                                          ; preds = %cond.end
  %next4 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 3, !dbg !4750
  %4 = bitcast %struct.cgraph_node** %next4 to i64*, !dbg !4751
  store i64 %3, i64* %4, align 8, !dbg !4751
  br label %if.end, !dbg !4752

if.else:                                          ; preds = %cond.end
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !4753
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !4753
  %same_body6 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i64 0, i32 13, !dbg !4754
  %6 = bitcast %struct.cgraph_node** %same_body6 to i64*, !dbg !4755
  store i64 %3, i64* %6, align 8, !dbg !4755
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %next, align 8, !dbg !4756
  %tobool8 = icmp eq %struct.cgraph_node* %7, null, !dbg !4758
  br i1 %tobool8, label %if.end13, label %if.then9, !dbg !4759

if.then9:                                         ; preds = %if.end
  %8 = bitcast %struct.cgraph_node** %previous to i64*, !dbg !4760
  %9 = load i64, i64* %8, align 8, !dbg !4760
  %previous12 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 4, !dbg !4761
  %10 = bitcast %struct.cgraph_node** %previous12 to i64*, !dbg !4762
  store i64 %9, i64* %10, align 8, !dbg !4762
  br label %if.end13, !dbg !4763

if.end13:                                         ; preds = %if.end, %if.then9
  store %struct.cgraph_node* null, %struct.cgraph_node** %next, align 8, !dbg !4764
  store %struct.cgraph_node* null, %struct.cgraph_node** %previous, align 8, !dbg !4765
  %11 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !4766
  %12 = bitcast %struct.cgraph_node* %node to i8*, !dbg !4767
  %call = tail call i8** @htab_find_slot(%struct.htab* %11, i8* %12, i32 0) #6, !dbg !4768
  call void @llvm.dbg.value(metadata i8** %call, metadata !4737, metadata !DIExpression()), !dbg !4742
  %13 = load i8*, i8** %call, align 8, !dbg !4769
  %cmp = icmp eq i8* %13, %12, !dbg !4771
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !4772

if.then16:                                        ; preds = %if.end13
  %14 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !4773
  tail call void @htab_clear_slot(%struct.htab* %14, i8** %call) #6, !dbg !4774
  br label %if.end17, !dbg !4774

if.end17:                                         ; preds = %if.then16, %if.end13
  %15 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !4775
  %tobool18 = icmp eq %struct.htab* %15, null, !dbg !4775
  br i1 %tobool18, label %if.end27, label %if.then19, !dbg !4776

if.then19:                                        ; preds = %if.end17
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !4777
  %16 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4777
  %call20 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %16) #6, !dbg !4777
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !4739, metadata !DIExpression()), !dbg !4778
  %17 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !4779
  %18 = bitcast %union.tree_node* %call20 to i8*, !dbg !4780
  %call21 = tail call i32 @decl_assembler_name_hash(%union.tree_node* %call20) #6, !dbg !4781
  %call22 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %17, i8* %18, i32 %call21, i32 0) #6, !dbg !4782
  call void @llvm.dbg.value(metadata i8** %call22, metadata !4737, metadata !DIExpression()), !dbg !4742
  %tobool23 = icmp eq i8** %call22, null, !dbg !4783
  br i1 %tobool23, label %if.end27, label %land.lhs.true, !dbg !4785

land.lhs.true:                                    ; preds = %if.then19
  %19 = load i8*, i8** %call22, align 8, !dbg !4786
  %cmp24 = icmp eq i8* %19, %12, !dbg !4787
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !4788

if.then25:                                        ; preds = %land.lhs.true
  %20 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !4789
  tail call void @htab_clear_slot(%struct.htab* %20, i8** nonnull %call22) #6, !dbg !4790
  br label %if.end27, !dbg !4790

if.end27:                                         ; preds = %if.then19, %if.end17, %land.lhs.true, %if.then25
  %call28 = tail call i8* @memset(i8* %12, i32 0, i64 312) #6, !dbg !4791
  store i32 %0, i32* %uid1, align 8, !dbg !4792
  %21 = load i64, i64* bitcast (%struct.cgraph_node** @free_nodes to i64*), align 8, !dbg !4793
  store i64 %21, i64* %2, align 8, !dbg !4794
  store %struct.cgraph_node* %node, %struct.cgraph_node** @free_nodes, align 8, !dbg !4795
  ret void, !dbg !4796
}

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_call_node_removal_hooks(%struct.cgraph_node* %node) unnamed_addr #4 !dbg !4797 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4799, metadata !DIExpression()), !dbg !4801
  br label %while.cond, !dbg !4802

while.cond:                                       ; preds = %while.body, %entry
  %entry1.0.in = phi %struct.cgraph_node_hook_list** [ @first_cgraph_node_removal_hook, %entry ], [ %next, %while.body ]
  %entry1.0 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** %entry1.0.in, align 8, !dbg !4801
  call void @llvm.dbg.value(metadata %struct.cgraph_node_hook_list* %entry1.0, metadata !4800, metadata !DIExpression()), !dbg !4801
  %tobool = icmp eq %struct.cgraph_node_hook_list* %entry1.0, null, !dbg !4802
  br i1 %tobool, label %while.end, label %while.body, !dbg !4802

while.body:                                       ; preds = %while.cond
  %hook = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1.0, i64 0, i32 0, !dbg !4803
  %0 = load void (%struct.cgraph_node*, i8*)*, void (%struct.cgraph_node*, i8*)** %hook, align 8, !dbg !4803
  %data = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1.0, i64 0, i32 1, !dbg !4805
  %1 = load i8*, i8** %data, align 8, !dbg !4805
  tail call void %0(%struct.cgraph_node* %node, i8* %1) #6, !dbg !4806
  %next = getelementptr inbounds %struct.cgraph_node_hook_list, %struct.cgraph_node_hook_list* %entry1.0, i64 0, i32 2, !dbg !4807
  br label %while.cond, !dbg !4802, !llvm.loop !4808

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4810
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_node_remove_callers(%struct.cgraph_node* %node) unnamed_addr #4 !dbg !4811 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4813, metadata !DIExpression()), !dbg !4816
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !4817
  %0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !4817
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %0, metadata !4814, metadata !DIExpression()), !dbg !4816
  br label %for.cond, !dbg !4819

for.cond:                                         ; preds = %for.body, %entry
  %e.0 = phi %struct.cgraph_edge* [ %0, %entry ], [ %1, %for.body ], !dbg !4820
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4814, metadata !DIExpression()), !dbg !4816
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4821
  br i1 %tobool, label %for.end, label %for.body, !dbg !4821

for.body:                                         ; preds = %for.cond
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !4822
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !4822
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !4815, metadata !DIExpression()), !dbg !4816
  tail call fastcc void @cgraph_call_edge_removal_hooks(%struct.cgraph_edge* nonnull %e.0) #8, !dbg !4825
  tail call fastcc void @cgraph_edge_remove_caller(%struct.cgraph_edge* nonnull %e.0) #8, !dbg !4826
  tail call fastcc void @cgraph_free_edge(%struct.cgraph_edge* nonnull %e.0) #8, !dbg !4827
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !4814, metadata !DIExpression()), !dbg !4816
  br label %for.cond, !dbg !4828, !llvm.loop !4829

for.end:                                          ; preds = %for.cond
  store %struct.cgraph_edge* null, %struct.cgraph_edge** %callers, align 8, !dbg !4831
  ret void, !dbg !4832
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_node_and_inline_clones(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4833 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4835, metadata !DIExpression()), !dbg !4838
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !4839
  %0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callees, align 8, !dbg !4839
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %0, metadata !4836, metadata !DIExpression()), !dbg !4838
  br label %for.cond, !dbg !4841

for.cond:                                         ; preds = %for.inc, %entry
  %e.0 = phi %struct.cgraph_edge* [ %0, %entry ], [ %1, %for.inc ], !dbg !4842
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4836, metadata !DIExpression()), !dbg !4838
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4843
  br i1 %tobool, label %for.end, label %for.body, !dbg !4843

for.body:                                         ; preds = %for.cond
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !4844
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_callee, align 8, !dbg !4844
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !4837, metadata !DIExpression()), !dbg !4838
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !4847
  %2 = load i32, i32* %inline_failed, align 8, !dbg !4847
  %tobool1 = icmp eq i32 %2, 0, !dbg !4849
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !4850

if.then:                                          ; preds = %for.body
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !4851
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4851
  tail call void @cgraph_remove_node_and_inline_clones(%struct.cgraph_node* %3) #8, !dbg !4852
  br label %for.inc, !dbg !4852

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !4836, metadata !DIExpression()), !dbg !4838
  br label %for.cond, !dbg !4853, !llvm.loop !4854

for.end:                                          ; preds = %for.cond
  tail call void @cgraph_remove_node(%struct.cgraph_node* %node) #8, !dbg !4856
  ret void, !dbg !4857
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_mark_reachable_node(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4858 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4860, metadata !DIExpression()), !dbg !4861
  %reachable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4862
  %bf.load = load i16, i16* %reachable, align 4, !dbg !4862
  %bf.clear = and i16 %bf.load, 8, !dbg !4862
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !4864
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4865

land.lhs.true:                                    ; preds = %entry
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !4866
  %bf.load1 = load i8, i8* %finalized, align 8, !dbg !4866
  %bf.clear3 = and i8 %bf.load1, 4, !dbg !4866
  %tobool5 = icmp eq i8 %bf.clear3, 0, !dbg !4867
  br i1 %tobool5, label %if.end, label %if.then, !dbg !4868

if.then:                                          ; preds = %land.lhs.true
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !4869
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4869
  tail call void @notice_global_symbol(%union.tree_node* %0) #6, !dbg !4871
  %bf.load7 = load i16, i16* %reachable, align 4, !dbg !4872
  %bf.set = or i16 %bf.load7, 8, !dbg !4872
  store i16 %bf.set, i16* %reachable, align 4, !dbg !4872
  %1 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !4873
  %tobool9 = icmp eq i8 %1, 0, !dbg !4873
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !4873

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1526, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4873
  br label %cond.end, !dbg !4873

cond.end:                                         ; preds = %if.then, %cond.true
  %2 = load i64, i64* bitcast (%struct.cgraph_node** @cgraph_nodes_queue to i64*), align 8, !dbg !4874
  %next_needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 8, !dbg !4875
  %3 = bitcast %struct.cgraph_node** %next_needed to i64*, !dbg !4876
  store i64 %2, i64* %3, align 8, !dbg !4876
  store %struct.cgraph_node* %node, %struct.cgraph_node** @cgraph_nodes_queue, align 8, !dbg !4877
  br label %if.end, !dbg !4878

if.end:                                           ; preds = %land.lhs.true, %entry, %cond.end
  ret void, !dbg !4879
}

declare dso_local void @notice_global_symbol(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_mark_needed_node(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4880 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4882, metadata !DIExpression()), !dbg !4883
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4884
  %bf.load = load i16, i16* %needed, align 4, !dbg !4885
  %bf.set = or i16 %bf.load, 1, !dbg !4885
  store i16 %bf.set, i16* %needed, align 4, !dbg !4885
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !4886
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4886
  %tobool = icmp eq %struct.cgraph_node* %0, null, !dbg !4886
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4886

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1540, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4886
  br label %cond.end, !dbg !4886

cond.end:                                         ; preds = %entry, %cond.true
  tail call void @cgraph_mark_reachable_node(%struct.cgraph_node* %node) #8, !dbg !4887
  ret void, !dbg !4888
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_mark_address_taken_node(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4889 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4891, metadata !DIExpression()), !dbg !4892
  %address_taken = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4893
  %bf.load = load i16, i16* %address_taken, align 4, !dbg !4894
  %bf.set = or i16 %bf.load, 2, !dbg !4894
  store i16 %bf.set, i16* %address_taken, align 4, !dbg !4894
  tail call void @cgraph_mark_needed_node(%struct.cgraph_node* %node) #8, !dbg !4895
  ret void, !dbg !4896
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_local_info* @cgraph_local_info(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !4897 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !4902, metadata !DIExpression()), !dbg !4904
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4905
  %bf.load = load i64, i64* %0, align 8, !dbg !4905
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4905
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !4905
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4905

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1560, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4905
  br label %cond.end, !dbg !4905

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) #8, !dbg !4906
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !4903, metadata !DIExpression()), !dbg !4904
  %local = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 18, !dbg !4907
  ret %struct.cgraph_local_info* %local, !dbg !4908
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_global_info* @cgraph_global_info(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !4909 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !4914, metadata !DIExpression()), !dbg !4916
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4917
  %bf.load = load i64, i64* %0, align 8, !dbg !4917
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4917
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !4917
  br i1 %cmp, label %land.lhs.true, label %cond.true, !dbg !4917

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !4917
  %tobool = icmp eq i8 %1, 0, !dbg !4917
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4917

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1572, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4917
  br label %cond.end, !dbg !4917

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) #8, !dbg !4918
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !4915, metadata !DIExpression()), !dbg !4916
  %global = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 19, !dbg !4919
  ret %struct.cgraph_global_info* %global, !dbg !4920
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_rtl_info* @cgraph_rtl_info(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !4921 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !4926, metadata !DIExpression()), !dbg !4928
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4929
  %bf.load = load i64, i64* %0, align 8, !dbg !4929
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4929
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !4929
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4929

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1584, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4929
  br label %cond.end, !dbg !4929

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) #8, !dbg !4930
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !4927, metadata !DIExpression()), !dbg !4928
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4931
  %cmp1 = icmp eq %union.tree_node* %1, %decl, !dbg !4933
  br i1 %cmp1, label %if.end, label %land.lhs.true, !dbg !4934

land.lhs.true:                                    ; preds = %cond.end
  %2 = bitcast %struct.cgraph_node* %call to i64**, !dbg !4935
  %3 = load i64*, i64** %2, align 8, !dbg !4935
  %bf.load4 = load i64, i64* %3, align 8, !dbg !4935
  %bf.cast62 = and i64 %bf.load4, 4194304, !dbg !4935
  %tobool = icmp eq i64 %bf.cast62, 0, !dbg !4935
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4936

if.end:                                           ; preds = %land.lhs.true, %cond.end
  %rtl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 20, !dbg !4937
  br label %cleanup, !dbg !4938

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct.cgraph_rtl_info* [ %rtl, %if.end ], [ null, %land.lhs.true ], !dbg !4928
  ret %struct.cgraph_rtl_info* %retval.0, !dbg !4939
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cgraph_inline_failed_string(i32 %reason) local_unnamed_addr #4 !dbg !2540 {
entry:
  call void @llvm.dbg.value(metadata i32 %reason, metadata !2544, metadata !DIExpression()), !dbg !4940
  %cmp = icmp ult i32 %reason, 19, !dbg !4941
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4941

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1606, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4941
  br label %cond.end, !dbg !4941

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %reason to i64, !dbg !4942
  %arrayidx = getelementptr inbounds [19 x i8*], [19 x i8*]* @cgraph_inline_failed_string.cif_string_table, i64 0, i64 %idxprom, !dbg !4942
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !4942
  ret i8* %0, !dbg !4943
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cgraph_node_name(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4944 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4948, metadata !DIExpression()), !dbg !4949
  %0 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !4950
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !4951
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4951
  %call = tail call i8* %0(%union.tree_node* %1, i32 2) #6, !dbg !4952
  ret i8* %call, !dbg !4953
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_cgraph_node(%struct._IO_FILE* %f, %struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !4954 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !4958, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4959, metadata !DIExpression()), !dbg !4964
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #8, !dbg !4965
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !4966
  %0 = load i32, i32* %uid, align 8, !dbg !4966
  %pid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 26, !dbg !4967
  %1 = load i32, i32* %pid, align 8, !dbg !4967
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* %call, i32 %0, i32 %1) #6, !dbg !4968
  %2 = bitcast %struct.cgraph_node* %node to i8*, !dbg !4969
  tail call void @dump_addr(%struct._IO_FILE* %f, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %2) #6, !dbg !4970
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !4971
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4971
  %tobool = icmp eq %struct.cgraph_node* %3, null, !dbg !4973
  br i1 %tobool, label %if.end, label %if.then, !dbg !4974

if.then:                                          ; preds = %entry
  %call4 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %3) #8, !dbg !4975
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4976
  %uid7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i64 0, i32 24, !dbg !4977
  %5 = load i32, i32* %uid7, align 8, !dbg !4977
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %call4, i32 %5) #6, !dbg !4978
  br label %if.end, !dbg !4978

if.end:                                           ; preds = %entry, %if.then
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 12, !dbg !4979
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4979
  %tobool9 = icmp eq %struct.cgraph_node* %6, null, !dbg !4981
  br i1 %tobool9, label %if.end16, label %if.then10, !dbg !4982

if.then10:                                        ; preds = %if.end
  %call12 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %6) #8, !dbg !4983
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4984
  %uid14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 24, !dbg !4985
  %8 = load i32, i32* %uid14, align 8, !dbg !4985
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8* %call12, i32 %8) #6, !dbg !4986
  br label %if.end16, !dbg !4986

if.end16:                                         ; preds = %if.end, %if.then10
  %9 = load i8, i8* @cgraph_function_flags_ready, align 1, !dbg !4987
  %tobool17 = icmp eq i8 %9, 0, !dbg !4987
  br i1 %tobool17, label %if.end21, label %if.then18, !dbg !4989

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %node) #8, !dbg !4990
  %idxprom = zext i32 %call19 to i64, !dbg !4991
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @cgraph_availability_names, i64 0, i64 %idxprom, !dbg !4991
  %10 = load i8*, i8** %arrayidx, align 8, !dbg !4991
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* %10) #6, !dbg !4992
  br label %if.end21, !dbg !4992

if.end21:                                         ; preds = %if.end16, %if.then18
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 23, !dbg !4993
  %11 = load i64, i64* %count, align 8, !dbg !4993
  %tobool22 = icmp eq i64 %11, 0, !dbg !4995
  br i1 %tobool22, label %if.end26, label %if.then23, !dbg !4996

if.then23:                                        ; preds = %if.end21
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i64 %11) #6, !dbg !4997
  br label %if.end26, !dbg !4997

if.end26:                                         ; preds = %if.end21, %if.then23
  %self_time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 3, !dbg !4998
  %12 = load i32, i32* %self_time, align 8, !dbg !4998
  %tobool27 = icmp eq i32 %12, 0, !dbg !5000
  br i1 %tobool27, label %if.end35, label %if.then28, !dbg !5001

if.then28:                                        ; preds = %if.end26
  %time_inlining_benefit = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 4, !dbg !5002
  %13 = load i32, i32* %time_inlining_benefit, align 4, !dbg !5002
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 %12, i32 %13) #6, !dbg !5003
  br label %if.end35, !dbg !5003

if.end35:                                         ; preds = %if.end26, %if.then28
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 3, !dbg !5004
  %14 = load i32, i32* %time, align 8, !dbg !5004
  %tobool37 = icmp eq i32 %14, 0, !dbg !5006
  br i1 %tobool37, label %if.end47, label %land.lhs.true, !dbg !5007

land.lhs.true:                                    ; preds = %if.end35
  %15 = load i32, i32* %self_time, align 8, !dbg !5008
  %cmp = icmp eq i32 %14, %15, !dbg !5009
  br i1 %cmp, label %if.end47, label %if.then43, !dbg !5010

if.then43:                                        ; preds = %land.lhs.true
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i32 %14) #6, !dbg !5011
  br label %if.end47, !dbg !5011

if.end47:                                         ; preds = %land.lhs.true, %if.end35, %if.then43
  %self_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 1, !dbg !5012
  %16 = load i32, i32* %self_size, align 8, !dbg !5012
  %tobool50 = icmp eq i32 %16, 0, !dbg !5014
  br i1 %tobool50, label %if.end58, label %if.then51, !dbg !5015

if.then51:                                        ; preds = %if.end47
  %size_inlining_benefit = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 2, !dbg !5016
  %17 = load i32, i32* %size_inlining_benefit, align 4, !dbg !5016
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 %16, i32 %17) #6, !dbg !5017
  br label %if.end58, !dbg !5017

if.end58:                                         ; preds = %if.end47, %if.then51
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 4, !dbg !5018
  %18 = load i32, i32* %size, align 4, !dbg !5018
  %tobool60 = icmp eq i32 %18, 0, !dbg !5020
  br i1 %tobool60, label %if.end72, label %land.lhs.true61, !dbg !5021

land.lhs.true61:                                  ; preds = %if.end58
  %19 = load i32, i32* %self_size, align 8, !dbg !5022
  %cmp67 = icmp eq i32 %18, %19, !dbg !5023
  br i1 %cmp67, label %if.end72, label %if.then68, !dbg !5024

if.then68:                                        ; preds = %land.lhs.true61
  %call71 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i32 %18) #6, !dbg !5025
  br label %if.end72, !dbg !5025

if.end72:                                         ; preds = %land.lhs.true61, %if.end58, %if.then68
  %estimated_self_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 0, !dbg !5026
  %20 = load i64, i64* %estimated_self_stack_size, align 8, !dbg !5026
  %tobool75 = icmp eq i64 %20, 0, !dbg !5028
  br i1 %tobool75, label %if.end81, label %if.then76, !dbg !5029

if.then76:                                        ; preds = %if.end72
  %conv = trunc i64 %20 to i32, !dbg !5030
  %call80 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i32 %conv) #6, !dbg !5031
  %.pre = load i64, i64* %estimated_self_stack_size, align 8, !dbg !5032
  br label %if.end81, !dbg !5031

if.end81:                                         ; preds = %if.end72, %if.then76
  %21 = phi i64 [ 0, %if.end72 ], [ %.pre, %if.then76 ], !dbg !5032
  %estimated_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 0, !dbg !5034
  %22 = load i64, i64* %estimated_stack_size, align 8, !dbg !5034
  %cmp86 = icmp eq i64 %22, %21, !dbg !5035
  br i1 %cmp86, label %if.end93, label %if.then88, !dbg !5036

if.then88:                                        ; preds = %if.end81
  %conv91 = trunc i64 %22 to i32, !dbg !5037
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i32 %conv91) #6, !dbg !5038
  br label %if.end93, !dbg !5038

if.end93:                                         ; preds = %if.end81, %if.then88
  %origin = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 5, !dbg !5039
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %origin, align 8, !dbg !5039
  %tobool94 = icmp eq %struct.cgraph_node* %23, null, !dbg !5041
  br i1 %tobool94, label %if.end99, label %if.then95, !dbg !5042

if.then95:                                        ; preds = %if.end93
  %call97 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %23) #8, !dbg !5043
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* %call97) #6, !dbg !5044
  br label %if.end99, !dbg !5044

if.end99:                                         ; preds = %if.end93, %if.then95
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !5045
  %bf.load = load i16, i16* %needed, align 4, !dbg !5045
  %bf.clear = and i16 %bf.load, 1, !dbg !5045
  %tobool100 = icmp eq i16 %bf.clear, 0, !dbg !5047
  br i1 %tobool100, label %if.end103, label %if.then101, !dbg !5048

if.then101:                                       ; preds = %if.end99
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !5049
  %bf.load104.pre = load i16, i16* %needed, align 4, !dbg !5050
  br label %if.end103, !dbg !5049

if.end103:                                        ; preds = %if.end99, %if.then101
  %bf.load110 = phi i16 [ %bf.load, %if.end99 ], [ %bf.load104.pre, %if.then101 ], !dbg !5050
  %bf.clear105 = and i16 %bf.load110, 2, !dbg !5050
  %tobool107 = icmp eq i16 %bf.clear105, 0, !dbg !5052
  br i1 %tobool107, label %if.else, label %if.then108, !dbg !5053

if.then108:                                       ; preds = %if.end103
  %call109 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !5054
  br label %if.end118, !dbg !5054

if.else:                                          ; preds = %if.end103
  %bf.clear112 = and i16 %bf.load110, 8, !dbg !5055
  %tobool114 = icmp eq i16 %bf.clear112, 0, !dbg !5057
  br i1 %tobool114, label %if.end118, label %if.then115, !dbg !5058

if.then115:                                       ; preds = %if.else
  %call116 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !5059
  br label %if.end118, !dbg !5059

if.end118:                                        ; preds = %if.else, %if.then115, %if.then108
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !5060
  %24 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5060
  %call119 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %24) #6, !dbg !5062
  %tobool120 = icmp eq i8 %call119, 0, !dbg !5062
  br i1 %tobool120, label %if.end123, label %if.then121, !dbg !5063

if.then121:                                       ; preds = %if.end118
  %call122 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !5064
  br label %if.end123, !dbg !5064

if.end123:                                        ; preds = %if.end118, %if.then121
  %bf.load124 = load i16, i16* %needed, align 4, !dbg !5065
  %bf.clear126 = and i16 %bf.load124, 64, !dbg !5065
  %tobool128 = icmp eq i16 %bf.clear126, 0, !dbg !5067
  br i1 %tobool128, label %if.end131, label %if.then129, !dbg !5068

if.then129:                                       ; preds = %if.end123
  %call130 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !5069
  br label %if.end131, !dbg !5069

if.end131:                                        ; preds = %if.end123, %if.then129
  %local133 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !5070
  %bf.load134 = load i8, i8* %local133, align 8, !dbg !5070
  %bf.clear135 = and i8 %bf.load134, 1, !dbg !5070
  %tobool137 = icmp eq i8 %bf.clear135, 0, !dbg !5072
  br i1 %tobool137, label %if.end140, label %if.then138, !dbg !5073

if.then138:                                       ; preds = %if.end131
  %call139 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !5074
  %bf.load142.pre = load i8, i8* %local133, align 8, !dbg !5075
  br label %if.end140, !dbg !5074

if.end140:                                        ; preds = %if.end131, %if.then138
  %bf.load142 = phi i8 [ %bf.load134, %if.end131 ], [ %bf.load142.pre, %if.then138 ], !dbg !5075
  %bf.clear144 = and i8 %bf.load142, 2, !dbg !5075
  %tobool146 = icmp eq i8 %bf.clear144, 0, !dbg !5077
  br i1 %tobool146, label %if.end149, label %if.then147, !dbg !5078

if.then147:                                       ; preds = %if.end140
  %call148 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !5079
  %bf.load151.pre = load i8, i8* %local133, align 8, !dbg !5080
  br label %if.end149, !dbg !5079

if.end149:                                        ; preds = %if.end140, %if.then147
  %bf.load151 = phi i8 [ %bf.load142, %if.end140 ], [ %bf.load151.pre, %if.then147 ], !dbg !5080
  %bf.clear153 = and i8 %bf.load151, 4, !dbg !5080
  %tobool155 = icmp eq i8 %bf.clear153, 0, !dbg !5082
  br i1 %tobool155, label %if.end158, label %if.then156, !dbg !5083

if.then156:                                       ; preds = %if.end149
  %call157 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !5084
  %bf.load160.pre = load i8, i8* %local133, align 8, !dbg !5085
  br label %if.end158, !dbg !5084

if.end158:                                        ; preds = %if.end149, %if.then156
  %bf.load169 = phi i8 [ %bf.load151, %if.end149 ], [ %bf.load160.pre, %if.then156 ], !dbg !5085
  %bf.clear162 = and i8 %bf.load169, 16, !dbg !5085
  %tobool164 = icmp eq i8 %bf.clear162, 0, !dbg !5087
  br i1 %tobool164, label %if.else167, label %if.then165, !dbg !5088

if.then165:                                       ; preds = %if.end158
  %call166 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !5089
  br label %if.end177, !dbg !5089

if.else167:                                       ; preds = %if.end158
  %bf.clear171 = and i8 %bf.load169, 8, !dbg !5090
  %tobool173 = icmp eq i8 %bf.clear171, 0, !dbg !5092
  br i1 %tobool173, label %if.end177, label %if.then174, !dbg !5093

if.then174:                                       ; preds = %if.else167
  %call175 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !5094
  br label %if.end177, !dbg !5094

if.end177:                                        ; preds = %if.else167, %if.then174, %if.then165
  %bf.load179 = load i8, i8* %local133, align 8, !dbg !5095
  %bf.clear181 = and i8 %bf.load179, 32, !dbg !5095
  %tobool183 = icmp eq i8 %bf.clear181, 0, !dbg !5097
  br i1 %tobool183, label %if.end186, label %if.then184, !dbg !5098

if.then184:                                       ; preds = %if.end177
  %call185 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !5099
  br label %if.end186, !dbg !5099

if.end186:                                        ; preds = %if.end177, %if.then184
  %25 = bitcast %struct.cgraph_node* %node to i64**, !dbg !5100
  %26 = load i64*, i64** %25, align 8, !dbg !5100
  %bf.load188 = load i64, i64* %26, align 8, !dbg !5100
  %bf.cast1911 = and i64 %bf.load188, 4194304, !dbg !5100
  %tobool192 = icmp eq i64 %bf.cast1911, 0, !dbg !5100
  br i1 %tobool192, label %if.end195, label %if.then193, !dbg !5102

if.then193:                                       ; preds = %if.end186
  %call194 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !5103
  br label %if.end195, !dbg !5103

if.end195:                                        ; preds = %if.end186, %if.then193
  %call196 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !5104
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !5105
  br label %for.cond, !dbg !5107

for.cond:                                         ; preds = %for.inc, %if.end195
  %edge.0.in = phi %struct.cgraph_edge** [ %callers, %if.end195 ], [ %next_caller, %for.inc ]
  %edge.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.0.in, align 8, !dbg !5108
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0, metadata !4960, metadata !DIExpression()), !dbg !4964
  %tobool197 = icmp eq %struct.cgraph_edge* %edge.0, null, !dbg !5109
  br i1 %tobool197, label %for.end, label %for.body, !dbg !5109

for.body:                                         ; preds = %for.cond
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 1, !dbg !5110
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5110
  %call198 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %27) #8, !dbg !5113
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !5114
  %uid200 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %28, i64 0, i32 24, !dbg !5115
  %29 = load i32, i32* %uid200, align 8, !dbg !5115
  %call201 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* %call198, i32 %29) #6, !dbg !5116
  %count202 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 0, !dbg !5117
  %30 = load i64, i64* %count202, align 8, !dbg !5117
  %tobool203 = icmp eq i64 %30, 0, !dbg !5119
  br i1 %tobool203, label %if.end207, label %if.then204, !dbg !5120

if.then204:                                       ; preds = %for.body
  %call206 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i64 %30) #6, !dbg !5121
  br label %if.end207, !dbg !5121

if.end207:                                        ; preds = %for.body, %if.then204
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 11, !dbg !5122
  %31 = load i32, i32* %frequency, align 8, !dbg !5122
  %tobool208 = icmp eq i32 %31, 0, !dbg !5124
  br i1 %tobool208, label %if.end213, label %if.then209, !dbg !5125

if.then209:                                       ; preds = %if.end207
  %conv211 = sitofp i32 %31 to double, !dbg !5126
  %div = fdiv double %conv211, 1.000000e+03, !dbg !5127
  %call212 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), double %div) #6, !dbg !5128
  br label %if.end213, !dbg !5128

if.end213:                                        ; preds = %if.end207, %if.then209
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 9, !dbg !5129
  %32 = load i32, i32* %inline_failed, align 8, !dbg !5129
  %tobool214 = icmp eq i32 %32, 0, !dbg !5131
  br i1 %tobool214, label %if.then215, label %if.end217, !dbg !5132

if.then215:                                       ; preds = %if.end213
  %call216 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !5133
  br label %if.end217, !dbg !5133

if.end217:                                        ; preds = %if.end213, %if.then215
  %indirect_call = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 14, !dbg !5134
  %bf.load218 = load i8, i8* %indirect_call, align 2, !dbg !5134
  %bf.clear219 = and i8 %bf.load218, 1, !dbg !5134
  %tobool221 = icmp eq i8 %bf.clear219, 0, !dbg !5136
  br i1 %tobool221, label %if.end224, label %if.then222, !dbg !5137

if.then222:                                       ; preds = %if.end217
  %call223 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0)) #6, !dbg !5138
  %bf.load225.pre = load i8, i8* %indirect_call, align 2, !dbg !5139
  br label %if.end224, !dbg !5138

if.end224:                                        ; preds = %if.end217, %if.then222
  %bf.load225 = phi i8 [ %bf.load218, %if.end217 ], [ %bf.load225.pre, %if.then222 ], !dbg !5139
  %bf.clear227 = and i8 %bf.load225, 4, !dbg !5139
  %tobool229 = icmp eq i8 %bf.clear227, 0, !dbg !5141
  br i1 %tobool229, label %for.inc, label %if.then230, !dbg !5142

if.then230:                                       ; preds = %if.end224
  %call231 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !5143
  br label %for.inc, !dbg !5143

for.inc:                                          ; preds = %if.end224, %if.then230
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 4, !dbg !5144
  br label %for.cond, !dbg !5145, !llvm.loop !5146

for.end:                                          ; preds = %for.cond
  %call233 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !5148
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !5149
  br label %for.cond234, !dbg !5151

for.cond234:                                      ; preds = %for.inc283, %for.end
  %edge.1.in = phi %struct.cgraph_edge** [ %callees, %for.end ], [ %next_callee, %for.inc283 ]
  %edge.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.1.in, align 8, !dbg !5152
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.1, metadata !4960, metadata !DIExpression()), !dbg !4964
  %tobool235 = icmp eq %struct.cgraph_edge* %edge.1, null, !dbg !5153
  br i1 %tobool235, label %for.end284, label %for.body236, !dbg !5153

for.body236:                                      ; preds = %for.cond234
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 2, !dbg !5154
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5154
  %call237 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %33) #8, !dbg !5157
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5158
  %uid239 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %34, i64 0, i32 24, !dbg !5159
  %35 = load i32, i32* %uid239, align 8, !dbg !5159
  %call240 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* %call237, i32 %35) #6, !dbg !5160
  %inline_failed241 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 9, !dbg !5161
  %36 = load i32, i32* %inline_failed241, align 8, !dbg !5161
  %tobool242 = icmp eq i32 %36, 0, !dbg !5163
  br i1 %tobool242, label %if.then243, label %if.end245, !dbg !5164

if.then243:                                       ; preds = %for.body236
  %call244 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !5165
  br label %if.end245, !dbg !5165

if.end245:                                        ; preds = %for.body236, %if.then243
  %indirect_call246 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 14, !dbg !5166
  %bf.load247 = load i8, i8* %indirect_call246, align 2, !dbg !5166
  %bf.clear248 = and i8 %bf.load247, 1, !dbg !5166
  %tobool250 = icmp eq i8 %bf.clear248, 0, !dbg !5168
  br i1 %tobool250, label %if.end253, label %if.then251, !dbg !5169

if.then251:                                       ; preds = %if.end245
  %call252 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0)) #6, !dbg !5170
  br label %if.end253, !dbg !5170

if.end253:                                        ; preds = %if.end245, %if.then251
  %count254 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 0, !dbg !5171
  %37 = load i64, i64* %count254, align 8, !dbg !5171
  %tobool255 = icmp eq i64 %37, 0, !dbg !5173
  br i1 %tobool255, label %if.end259, label %if.then256, !dbg !5174

if.then256:                                       ; preds = %if.end253
  %call258 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i64 %37) #6, !dbg !5175
  br label %if.end259, !dbg !5175

if.end259:                                        ; preds = %if.end253, %if.then256
  %frequency260 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 11, !dbg !5176
  %38 = load i32, i32* %frequency260, align 8, !dbg !5176
  %tobool261 = icmp eq i32 %38, 0, !dbg !5178
  br i1 %tobool261, label %if.end267, label %if.then262, !dbg !5179

if.then262:                                       ; preds = %if.end259
  %conv264 = sitofp i32 %38 to double, !dbg !5180
  %div265 = fdiv double %conv264, 1.000000e+03, !dbg !5181
  %call266 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), double %div265) #6, !dbg !5182
  br label %if.end267, !dbg !5182

if.end267:                                        ; preds = %if.end259, %if.then262
  %loop_nest = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 13, !dbg !5183
  %39 = load i16, i16* %loop_nest, align 8, !dbg !5183
  %tobool268 = icmp eq i16 %39, 0, !dbg !5185
  br i1 %tobool268, label %if.end273, label %if.then269, !dbg !5186

if.then269:                                       ; preds = %if.end267
  %conv271 = zext i16 %39 to i32, !dbg !5187
  %call272 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i64 0, i64 0), i32 %conv271) #6, !dbg !5188
  br label %if.end273, !dbg !5188

if.end273:                                        ; preds = %if.end267, %if.then269
  %bf.load275 = load i8, i8* %indirect_call246, align 2, !dbg !5189
  %bf.clear277 = and i8 %bf.load275, 4, !dbg !5189
  %tobool279 = icmp eq i8 %bf.clear277, 0, !dbg !5191
  br i1 %tobool279, label %for.inc283, label %if.then280, !dbg !5192

if.then280:                                       ; preds = %if.end273
  %call281 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !5193
  br label %for.inc283, !dbg !5193

for.inc283:                                       ; preds = %if.end273, %if.then280
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 6, !dbg !5194
  br label %for.cond234, !dbg !5195, !llvm.loop !5196

for.end284:                                       ; preds = %for.cond234
  %call285 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !5198
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !5199
  %40 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !5199
  %tobool286 = icmp eq %struct.cgraph_node* %40, null, !dbg !5200
  br i1 %tobool286, label %if.end312, label %if.then287, !dbg !5201

if.then287:                                       ; preds = %for.end284
  %call288 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0)) #6, !dbg !5202
  br label %for.cond290, !dbg !5203

for.cond290:                                      ; preds = %for.inc309, %if.then287
  %n.0.in = phi %struct.cgraph_node** [ %same_body, %if.then287 ], [ %next, %for.inc309 ]
  %n.0 = load %struct.cgraph_node*, %struct.cgraph_node** %n.0.in, align 8, !dbg !5205
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0, metadata !4961, metadata !DIExpression()), !dbg !5206
  %tobool291 = icmp eq %struct.cgraph_node* %n.0, null, !dbg !5207
  br i1 %tobool291, label %for.end310, label %for.body292, !dbg !5207

for.body292:                                      ; preds = %for.cond290
  %call293 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %n.0) #8, !dbg !5208
  %uid294 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 24, !dbg !5211
  %41 = load i32, i32* %uid294, align 8, !dbg !5211
  %call295 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i8* %call293, i32 %41) #6, !dbg !5212
  %thunk_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 22, i32 5, !dbg !5213
  %42 = load i8, i8* %thunk_p, align 2, !dbg !5213
  %tobool296 = icmp eq i8 %42, 0, !dbg !5215
  br i1 %tobool296, label %for.inc309, label %if.then297, !dbg !5216

if.then297:                                       ; preds = %for.body292
  %43 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !5217
  %alias = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 22, i32 2, !dbg !5219
  %44 = load %union.tree_node*, %union.tree_node** %alias, align 8, !dbg !5219
  %call299 = tail call i8* %43(%union.tree_node* %44, i32 2) #6, !dbg !5220
  %fixed_offset = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 22, i32 0, !dbg !5221
  %45 = load i64, i64* %fixed_offset, align 8, !dbg !5221
  %conv301 = trunc i64 %45 to i32, !dbg !5222
  %virtual_value = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 22, i32 1, !dbg !5223
  %46 = load i64, i64* %virtual_value, align 8, !dbg !5223
  %conv303 = trunc i64 %46 to i32, !dbg !5224
  %virtual_offset_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 22, i32 4, !dbg !5225
  %47 = load i8, i8* %virtual_offset_p, align 1, !dbg !5225
  %conv305 = zext i8 %47 to i32, !dbg !5226
  %call306 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.61, i64 0, i64 0), i8* %call299, i32 %conv301, i32 %conv303, i32 %conv305) #6, !dbg !5227
  %call307 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #6, !dbg !5228
  br label %for.inc309, !dbg !5229

for.inc309:                                       ; preds = %for.body292, %if.then297
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 3, !dbg !5230
  br label %for.cond290, !dbg !5231, !llvm.loop !5232

for.end310:                                       ; preds = %for.cond290
  %call311 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !5234
  br label %if.end312, !dbg !5235

if.end312:                                        ; preds = %for.end284, %for.end310
  ret void, !dbg !5236
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @dump_addr(%struct._IO_FILE*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !5237 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5241, metadata !DIExpression()), !dbg !5243
  %0 = load i8, i8* @cgraph_function_flags_ready, align 1, !dbg !5244
  %tobool = icmp eq i8 %0, 0, !dbg !5244
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5244

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2071, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5244
  br label %cond.end, !dbg !5244

cond.end:                                         ; preds = %entry, %cond.true
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !5245
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !5245
  %bf.clear = and i16 %bf.load, 32, !dbg !5245
  %tobool1 = icmp eq i16 %bf.clear, 0, !dbg !5247
  br i1 %tobool1, label %if.end42, label %if.else, !dbg !5248

if.else:                                          ; preds = %cond.end
  %local2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !5249
  %bf.load3 = load i8, i8* %local2, align 8, !dbg !5249
  %bf.clear4 = and i8 %bf.load3, 1, !dbg !5249
  %tobool6 = icmp eq i8 %bf.clear4, 0, !dbg !5251
  br i1 %tobool6, label %if.else8, label %if.end42, !dbg !5252

if.else8:                                         ; preds = %if.else
  %bf.clear12 = and i8 %bf.load3, 2, !dbg !5253
  %tobool14 = icmp eq i8 %bf.clear12, 0, !dbg !5255
  br i1 %tobool14, label %if.end42, label %if.else16, !dbg !5256

if.else16:                                        ; preds = %if.else8
  %1 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !5257
  %2 = load %struct.tree_function_decl*, %struct.tree_function_decl** %1, align 8, !dbg !5257
  %declared_inline_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %2, i64 0, i32 5, !dbg !5257
  %bf.load17 = load i32, i32* %declared_inline_flag, align 8, !dbg !5257
  %bf.clear19 = and i32 %bf.load17, 2097152, !dbg !5257
  %tobool20 = icmp eq i32 %bf.clear19, 0, !dbg !5257
  %3 = bitcast %struct.tree_function_decl* %2 to %union.tree_node*, !dbg !5259
  br i1 %tobool20, label %if.else22, label %if.end42, !dbg !5259

if.else22:                                        ; preds = %if.else16
  %comdat_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %2, i64 0, i32 0, i32 0, i32 4, !dbg !5260
  %4 = bitcast i24* %comdat_flag to i32*, !dbg !5260
  %bf.load24 = load i32, i32* %4, align 8, !dbg !5260
  %bf.clear26 = and i32 %bf.load24, 512, !dbg !5260
  %tobool27 = icmp eq i32 %bf.clear26, 0, !dbg !5260
  br i1 %tobool27, label %land.lhs.true, label %if.else38, !dbg !5260

land.lhs.true:                                    ; preds = %if.else22
  %5 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 49), align 8, !dbg !5260
  %call = tail call zeroext i8 %5(%union.tree_node* %3) #6, !dbg !5260
  %tobool29 = icmp eq i8 %call, 0, !dbg !5260
  br i1 %tobool29, label %land.lhs.true30, label %if.else38, !dbg !5262

land.lhs.true30:                                  ; preds = %land.lhs.true
  %6 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_common**, !dbg !5263
  %7 = load %struct.tree_decl_common*, %struct.tree_decl_common** %6, align 8, !dbg !5263
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %7, i64 0, i32 2, !dbg !5263
  %8 = bitcast i40* %decl_flag_1 to i64*, !dbg !5263
  %bf.load32 = load i64, i64* %8, align 8, !dbg !5263
  %bf.cast351 = and i64 %bf.load32, 33554432, !dbg !5263
  %tobool36 = icmp eq i64 %bf.cast351, 0, !dbg !5263
  br i1 %tobool36, label %if.end42, label %if.else38, !dbg !5264

if.else38:                                        ; preds = %land.lhs.true30, %land.lhs.true, %if.else22
  call void @llvm.dbg.value(metadata i32 3, metadata !5242, metadata !DIExpression()), !dbg !5243
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true30, %if.else16, %if.else8, %if.else, %cond.end, %if.else38
  %avail.4 = phi i32 [ 1, %cond.end ], [ 4, %if.else ], [ 3, %if.else8 ], [ 3, %if.else16 ], [ 3, %if.else38 ], [ 2, %land.lhs.true30 ], !dbg !5265
  call void @llvm.dbg.value(metadata i32 %avail.4, metadata !5242, metadata !DIExpression()), !dbg !5243
  ret i32 %avail.4, !dbg !5266
}

declare dso_local zeroext i8 @gimple_has_body_p(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_cgraph_node(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !5267 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5271
  tail call void @dump_cgraph_node(%struct._IO_FILE* %0, %struct.cgraph_node* %node) #8, !dbg !5272
  ret void, !dbg !5273
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_cgraph(%struct._IO_FILE* %f) local_unnamed_addr #4 !dbg !5274 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !5278, metadata !DIExpression()), !dbg !5280
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !5281
  br label %for.cond, !dbg !5282

for.cond:                                         ; preds = %for.body, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.body ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !5284
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !5279, metadata !DIExpression()), !dbg !5280
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !5285
  br i1 %tobool, label %for.end, label %for.body, !dbg !5285

for.body:                                         ; preds = %for.cond
  tail call void @dump_cgraph_node(%struct._IO_FILE* %f, %struct.cgraph_node* nonnull %node.0) #8, !dbg !5286
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !5288
  br label %for.cond, !dbg !5289, !llvm.loop !5290

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5292
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_cgraph() local_unnamed_addr #4 !dbg !5293 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5294
  tail call void @dump_cgraph(%struct._IO_FILE* %0) #8, !dbg !5295
  ret void, !dbg !5296
}

; Function Attrs: nounwind uwtable
define dso_local void @change_decl_assembler_name(%union.tree_node* %decl, %union.tree_node* %name) local_unnamed_addr #4 !dbg !5297 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !5301, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !5302, metadata !DIExpression()), !dbg !5303
  %0 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !5304
  %tobool = icmp eq %struct.htab* %0, null, !dbg !5304
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5304

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1788, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5304
  br label %cond.end, !dbg !5304

cond.end:                                         ; preds = %entry, %cond.true
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5305
  %bf.load = load i64, i64* %1, align 8, !dbg !5305
  %bf.cast = and i64 %bf.load, 65535, !dbg !5305
  %arrayidx1 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast, i64 13, !dbg !5305
  %2 = load i8, i8* %arrayidx1, align 1, !dbg !5305
  %tobool2 = icmp eq i8 %2, 0, !dbg !5305
  br i1 %tobool2, label %if.then, label %land.lhs.true, !dbg !5305

land.lhs.true:                                    ; preds = %cond.end
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !5305
  %3 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !5305
  %cmp = icmp eq %union.tree_node* %3, null, !dbg !5305
  br i1 %cmp, label %if.then, label %if.end, !dbg !5307

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %assembler_name5 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !5308
  store %union.tree_node* %name, %union.tree_node** %assembler_name5, align 8, !dbg !5308
  br label %return, !dbg !5310

if.end:                                           ; preds = %land.lhs.true
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !5311
  %cmp6 = icmp eq %union.tree_node* %call, %name, !dbg !5313
  br i1 %cmp6, label %return, label %if.end9, !dbg !5314

if.end9:                                          ; preds = %if.end
  %call10 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !5315
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5315
  %bf.load12 = load i64, i64* %4, align 8, !dbg !5315
  %bf.cast141 = and i64 %bf.load12, 67108864, !dbg !5315
  %tobool15 = icmp eq i64 %bf.cast141, 0, !dbg !5315
  br i1 %tobool15, label %if.end31, label %land.lhs.true16, !dbg !5317

land.lhs.true16:                                  ; preds = %if.end9
  %bf.load18 = load i64, i64* %1, align 8, !dbg !5318
  %bf.cast20 = and i64 %bf.load18, 65535, !dbg !5318
  %arrayidx23 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast20, i64 11, !dbg !5318
  %5 = load i8, i8* %arrayidx23, align 1, !dbg !5318
  %tobool25 = icmp eq i8 %5, 0, !dbg !5318
  br i1 %tobool25, label %if.end31, label %land.lhs.true26, !dbg !5318

land.lhs.true26:                                  ; preds = %land.lhs.true16
  %rtl = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5318
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8, !dbg !5318
  %cmp27 = icmp eq %struct.rtx_def* %6, null, !dbg !5318
  br i1 %cmp27, label %if.end31, label %if.then29, !dbg !5319

if.then29:                                        ; preds = %land.lhs.true26
  %call30 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), %union.tree_node* %decl) #6, !dbg !5320
  br label %if.end31, !dbg !5320

if.end31:                                         ; preds = %land.lhs.true26, %land.lhs.true16, %if.end9, %if.then29
  store %union.tree_node* %name, %union.tree_node** %assembler_name, align 8, !dbg !5321
  br label %return, !dbg !5322

return:                                           ; preds = %if.end, %if.end31, %if.then
  ret void, !dbg !5322
}

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_asm_node* @cgraph_add_asm_node(%union.tree_node* %asm_str) local_unnamed_addr #4 !dbg !5323 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %asm_str, metadata !5327, metadata !DIExpression()), !dbg !5329
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 24) #6, !dbg !5330
  %0 = bitcast i8* %call to %struct.cgraph_asm_node*, !dbg !5330
  call void @llvm.dbg.value(metadata %struct.cgraph_asm_node* %0, metadata !5328, metadata !DIExpression()), !dbg !5329
  %asm_str1 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !5331
  %1 = bitcast i8* %asm_str1 to %union.tree_node**, !dbg !5331
  store %union.tree_node* %asm_str, %union.tree_node** %1, align 8, !dbg !5332
  %2 = load i32, i32* @cgraph_order, align 4, !dbg !5333
  %inc = add nsw i32 %2, 1, !dbg !5333
  store i32 %inc, i32* @cgraph_order, align 4, !dbg !5333
  %order = getelementptr inbounds i8, i8* %call, i64 16, !dbg !5334
  %3 = bitcast i8* %order to i32*, !dbg !5334
  store i32 %2, i32* %3, align 8, !dbg !5335
  %next = bitcast i8* %call to %struct.cgraph_asm_node**, !dbg !5336
  store %struct.cgraph_asm_node* null, %struct.cgraph_asm_node** %next, align 8, !dbg !5337
  %4 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** @cgraph_asm_nodes, align 8, !dbg !5338
  %cmp = icmp eq %struct.cgraph_asm_node* %4, null, !dbg !5340
  br i1 %cmp, label %if.then, label %if.else, !dbg !5341

if.then:                                          ; preds = %entry
  store i8* %call, i8** bitcast (%struct.cgraph_asm_node** @cgraph_asm_nodes to i8**), align 8, !dbg !5342
  br label %if.end, !dbg !5343

if.else:                                          ; preds = %entry
  %5 = load i8**, i8*** bitcast (%struct.cgraph_asm_node** @cgraph_asm_last_node to i8***), align 8, !dbg !5344
  store i8* %call, i8** %5, align 8, !dbg !5345
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8* %call, i8** bitcast (%struct.cgraph_asm_node** @cgraph_asm_last_node to i8**), align 8, !dbg !5346
  ret %struct.cgraph_asm_node* %0, !dbg !5347
}

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_function_possibly_inlined_p(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !5348 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !5354
  %tobool = icmp eq i8 %0, 0, !dbg !5354
  %possibly_inlined = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 5, !dbg !5353
  %bf.load3 = load i32, i32* %possibly_inlined, align 8, !dbg !5353
  br i1 %tobool, label %if.then, label %if.end, !dbg !5356

if.then:                                          ; preds = %entry
  %1 = trunc i32 %bf.load3 to i16, !dbg !5357
  %.lobit = lshr i16 %1, 15, !dbg !5357
  %2 = trunc i16 %.lobit to i8, !dbg !5357
  %.not = xor i8 %2, 1, !dbg !5357
  br label %return, !dbg !5358

if.end:                                           ; preds = %entry
  %bf.lshr4 = lshr i32 %bf.load3, 16, !dbg !5359
  %3 = trunc i32 %bf.lshr4 to i8, !dbg !5359
  %conv6 = and i8 %3, 1, !dbg !5359
  br label %return, !dbg !5360

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %conv6, %if.end ], [ %.not, %if.then ], !dbg !5353
  ret i8 %retval.0, !dbg !5361
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_edge* @cgraph_clone_edge(%struct.cgraph_edge* %e, %struct.cgraph_node* %n, %union.gimple_statement_d* %call_stmt, i32 %stmt_uid, i64 %count_scale, i32 %freq_scale, i32 %loop_nest, i8 zeroext %update_original) local_unnamed_addr #4 !dbg !5362 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !5366, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n, metadata !5367, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call_stmt, metadata !5368, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata i32 %stmt_uid, metadata !5369, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata i64 %count_scale, metadata !5370, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata i32 %freq_scale, metadata !5371, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata i32 %loop_nest, metadata !5372, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata i8 %update_original, metadata !5373, metadata !DIExpression()), !dbg !5377
  %count1 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 0, !dbg !5378
  %0 = load i64, i64* %count1, align 8, !dbg !5378
  %mul = mul nsw i64 %0, %count_scale, !dbg !5379
  %div = sdiv i64 %mul, 10000, !dbg !5380
  call void @llvm.dbg.value(metadata i64 %div, metadata !5375, metadata !DIExpression()), !dbg !5377
  %tobool = icmp eq i32 %freq_scale, 0, !dbg !5381
  %spec.select = select i1 %tobool, i32 1, i32 %freq_scale, !dbg !5383
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !5371, metadata !DIExpression()), !dbg !5377
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 11, !dbg !5384
  %1 = load i32, i32* %frequency, align 8, !dbg !5384
  %conv = sext i32 %1 to i64, !dbg !5385
  %conv2 = sext i32 %spec.select to i64, !dbg !5386
  %mul3 = mul nsw i64 %conv, %conv2, !dbg !5387
  %div4 = sdiv i64 %mul3, 1000, !dbg !5388
  call void @llvm.dbg.value(metadata i64 %div4, metadata !5376, metadata !DIExpression()), !dbg !5377
  %2 = icmp slt i64 %div4, 100000, !dbg !5389
  %freq.0 = select i1 %2, i64 %div4, i64 100000, !dbg !5389
  call void @llvm.dbg.value(metadata i64 %freq.0, metadata !5376, metadata !DIExpression()), !dbg !5377
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !5390
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !5390
  %conv8 = trunc i64 %freq.0 to i32, !dbg !5391
  %loop_nest9 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 13, !dbg !5392
  %4 = load i16, i16* %loop_nest9, align 8, !dbg !5392
  %conv10 = zext i16 %4 to i32, !dbg !5393
  %add = add nsw i32 %conv10, %loop_nest, !dbg !5394
  %call = tail call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %n, %struct.cgraph_node* %3, %union.gimple_statement_d* %call_stmt, i64 %div, i32 %conv8, i32 %add) #8, !dbg !5395
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call, metadata !5374, metadata !DIExpression()), !dbg !5377
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !5396
  %5 = load i32, i32* %inline_failed, align 8, !dbg !5396
  %inline_failed11 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call, i64 0, i32 9, !dbg !5397
  store i32 %5, i32* %inline_failed11, align 8, !dbg !5398
  %indirect_call = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 14, !dbg !5399
  %bf.load = load i8, i8* %indirect_call, align 2, !dbg !5399
  %bf.clear = and i8 %bf.load, 1, !dbg !5399
  %indirect_call12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call, i64 0, i32 14, !dbg !5400
  %bf.load13 = load i8, i8* %indirect_call12, align 2, !dbg !5401
  %bf.clear14 = and i8 %bf.load13, -2, !dbg !5401
  %bf.set = or i8 %bf.clear14, %bf.clear, !dbg !5401
  store i8 %bf.set, i8* %indirect_call12, align 2, !dbg !5401
  %lto_stmt_uid = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call, i64 0, i32 10, !dbg !5402
  store i32 %stmt_uid, i32* %lto_stmt_uid, align 4, !dbg !5403
  %tobool15 = icmp eq i8 %update_original, 0, !dbg !5404
  br i1 %tobool15, label %if.end25, label %if.then16, !dbg !5406

if.then16:                                        ; preds = %entry
  %count17 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call, i64 0, i32 0, !dbg !5407
  %6 = load i64, i64* %count17, align 8, !dbg !5407
  %7 = load i64, i64* %count1, align 8, !dbg !5409
  %sub = sub nsw i64 %7, %6, !dbg !5409
  store i64 %sub, i64* %count1, align 8, !dbg !5409
  %cmp20 = icmp slt i64 %sub, 0, !dbg !5410
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !5412

if.then22:                                        ; preds = %if.then16
  store i64 0, i64* %count1, align 8, !dbg !5413
  br label %if.end25, !dbg !5414

if.end25:                                         ; preds = %entry, %if.then16, %if.then22
  tail call fastcc void @cgraph_call_edge_duplication_hooks(%struct.cgraph_edge* %e, %struct.cgraph_edge* %call) #8, !dbg !5415
  ret %struct.cgraph_edge* %call, !dbg !5416
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_call_edge_duplication_hooks(%struct.cgraph_edge* %cs1, %struct.cgraph_edge* %cs2) unnamed_addr #4 !dbg !5417 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs1, metadata !5421, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs2, metadata !5422, metadata !DIExpression()), !dbg !5424
  br label %while.cond, !dbg !5425

while.cond:                                       ; preds = %while.body, %entry
  %entry1.0.in = phi %struct.cgraph_2edge_hook_list** [ @first_cgraph_edge_duplicated_hook, %entry ], [ %next, %while.body ]
  %entry1.0 = load %struct.cgraph_2edge_hook_list*, %struct.cgraph_2edge_hook_list** %entry1.0.in, align 8, !dbg !5424
  call void @llvm.dbg.value(metadata %struct.cgraph_2edge_hook_list* %entry1.0, metadata !5423, metadata !DIExpression()), !dbg !5424
  %tobool = icmp eq %struct.cgraph_2edge_hook_list* %entry1.0, null, !dbg !5425
  br i1 %tobool, label %while.end, label %while.body, !dbg !5425

while.body:                                       ; preds = %while.cond
  %hook = getelementptr inbounds %struct.cgraph_2edge_hook_list, %struct.cgraph_2edge_hook_list* %entry1.0, i64 0, i32 0, !dbg !5426
  %0 = load void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)*, void (%struct.cgraph_edge*, %struct.cgraph_edge*, i8*)** %hook, align 8, !dbg !5426
  %data = getelementptr inbounds %struct.cgraph_2edge_hook_list, %struct.cgraph_2edge_hook_list* %entry1.0, i64 0, i32 1, !dbg !5428
  %1 = load i8*, i8** %data, align 8, !dbg !5428
  tail call void %0(%struct.cgraph_edge* %cs1, %struct.cgraph_edge* %cs2, i8* %1) #6, !dbg !5429
  %next = getelementptr inbounds %struct.cgraph_2edge_hook_list, %struct.cgraph_2edge_hook_list* %entry1.0, i64 0, i32 2, !dbg !5430
  br label %while.cond, !dbg !5425, !llvm.loop !5431

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5433
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node* %n, i64 %count, i32 %freq, i32 %loop_nest, i8 zeroext %update_original, %struct.VEC_cgraph_edge_p_heap* %redirect_callers) local_unnamed_addr #4 !dbg !5434 {
entry:
  %e = alloca %struct.cgraph_edge*, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n, metadata !5450, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata i64 %count, metadata !5451, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata i32 %freq, metadata !5452, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata i32 %loop_nest, metadata !5453, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata i8 %update_original, metadata !5454, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %redirect_callers, metadata !5455, metadata !DIExpression()), !dbg !5460
  %call = tail call fastcc %struct.cgraph_node* @cgraph_create_node() #8, !dbg !5461
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !5456, metadata !DIExpression()), !dbg !5460
  %0 = bitcast %struct.cgraph_edge** %e to i8*, !dbg !5462
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !5462
  %1 = bitcast %struct.cgraph_node* %n to i64*, !dbg !5463
  %2 = load i64, i64* %1, align 8, !dbg !5463
  %3 = bitcast %struct.cgraph_node* %call to i64*, !dbg !5464
  store i64 %2, i64* %3, align 8, !dbg !5464
  %origin = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 5, !dbg !5465
  %4 = bitcast %struct.cgraph_node** %origin to i64*, !dbg !5465
  %5 = load i64, i64* %4, align 8, !dbg !5465
  %origin2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 5, !dbg !5466
  %6 = bitcast %struct.cgraph_node** %origin2 to i64*, !dbg !5467
  store i64 %5, i64* %6, align 8, !dbg !5467
  %tobool = icmp eq i64 %5, 0, !dbg !5468
  br i1 %tobool, label %if.end, label %if.then, !dbg !5470

if.then:                                          ; preds = %entry
  %7 = inttoptr i64 %5 to %struct.cgraph_node*, !dbg !5470
  %nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 6, !dbg !5471
  %8 = bitcast %struct.cgraph_node** %nested to i64*, !dbg !5471
  %9 = load i64, i64* %8, align 8, !dbg !5471
  %next_nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 7, !dbg !5473
  %10 = bitcast %struct.cgraph_node** %next_nested to i64*, !dbg !5474
  store i64 %9, i64* %10, align 8, !dbg !5474
  store %struct.cgraph_node* %call, %struct.cgraph_node** %nested, align 8, !dbg !5475
  br label %if.end, !dbg !5476

if.end:                                           ; preds = %entry, %if.then
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 27, !dbg !5477
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !5477
  %bf.clear = and i16 %bf.load, 32, !dbg !5477
  %analyzed7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 27, !dbg !5478
  %bf.load8 = load i16, i16* %analyzed7, align 4, !dbg !5479
  %bf.clear9 = and i16 %bf.load8, -33, !dbg !5479
  %bf.set = or i16 %bf.clear9, %bf.clear, !dbg !5479
  store i16 %bf.set, i16* %analyzed7, align 4, !dbg !5479
  %local = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 18, !dbg !5480
  %local10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 18, !dbg !5481
  %11 = bitcast %struct.cgraph_local_info* %local to i8*, !dbg !5481
  %12 = bitcast %struct.cgraph_local_info* %local10 to i8*, !dbg !5481
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %12, i64 40, i1 false), !dbg !5481
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 18, i32 2, !dbg !5482
  %bf.load12 = load i8, i8* %externally_visible, align 8, !dbg !5483
  %bf.clear13 = and i8 %bf.load12, -3, !dbg !5483
  store i8 %bf.clear13, i8* %externally_visible, align 8, !dbg !5483
  %global = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 19, !dbg !5484
  %global14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 19, !dbg !5485
  %13 = bitcast %struct.cgraph_global_info* %global to i8*, !dbg !5485
  %14 = bitcast %struct.cgraph_global_info* %global14 to i8*, !dbg !5485
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %14, i64 40, i1 false), !dbg !5485
  %15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 20, i32 0, !dbg !5486
  %16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 20, i32 0, !dbg !5486
  %17 = load i32, i32* %15, align 8, !dbg !5486
  store i32 %17, i32* %16, align 8, !dbg !5486
  %count16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 23, !dbg !5487
  store i64 %count, i64* %count16, align 8, !dbg !5488
  %clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 21, !dbg !5489
  %clone17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 21, !dbg !5490
  %18 = bitcast %struct.cgraph_clone_info* %clone to i8*, !dbg !5490
  %19 = bitcast %struct.cgraph_clone_info* %clone17 to i8*, !dbg !5490
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %18, i8* nonnull align 8 %19, i64 24, i1 false), !dbg !5490
  %tree_map = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 21, i32 0, !dbg !5491
  store %struct.VEC_ipa_replace_map_p_gc* null, %struct.VEC_ipa_replace_map_p_gc** %tree_map, align 8, !dbg !5492
  %count19 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 23, !dbg !5493
  %20 = load i64, i64* %count19, align 8, !dbg !5493
  %tobool20 = icmp eq i64 %20, 0, !dbg !5495
  br i1 %tobool20, label %if.end29, label %if.then21, !dbg !5496

if.then21:                                        ; preds = %if.end
  %cmp = icmp slt i64 %20, %count, !dbg !5497
  br i1 %cmp, label %if.end29, label %if.else, !dbg !5500

if.else:                                          ; preds = %if.then21
  %mul = mul nsw i64 %count, 10000, !dbg !5501
  %div = sdiv i64 %mul, %20, !dbg !5502
  call void @llvm.dbg.value(metadata i64 %div, metadata !5458, metadata !DIExpression()), !dbg !5460
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.else, %if.then21
  %count_scale.1 = phi i64 [ %div, %if.else ], [ 10000, %if.then21 ], [ 0, %if.end ], !dbg !5503
  call void @llvm.dbg.value(metadata i64 %count_scale.1, metadata !5458, metadata !DIExpression()), !dbg !5460
  %tobool30 = icmp eq i8 %update_original, 0, !dbg !5504
  br i1 %tobool30, label %if.end38, label %if.then31, !dbg !5506

if.then31:                                        ; preds = %if.end29
  %sub = sub nsw i64 %20, %count, !dbg !5507
  store i64 %sub, i64* %count19, align 8, !dbg !5507
  %cmp34 = icmp slt i64 %sub, 0, !dbg !5509
  br i1 %cmp34, label %if.then35, label %if.end38, !dbg !5511

if.then35:                                        ; preds = %if.then31
  store i64 0, i64* %count19, align 8, !dbg !5512
  br label %if.end38, !dbg !5513

if.end38:                                         ; preds = %if.end29, %if.then31, %if.then35
  call void @llvm.dbg.value(metadata i32 0, metadata !5459, metadata !DIExpression()), !dbg !5460
  %base = getelementptr inbounds %struct.VEC_cgraph_edge_p_heap, %struct.VEC_cgraph_edge_p_heap* %redirect_callers, i64 0, i32 0, !dbg !5514
  br label %for.cond, !dbg !5517

for.cond:                                         ; preds = %for.body, %if.end38
  %i.0 = phi i32 [ 0, %if.end38 ], [ %inc, %for.body ], !dbg !5518
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata %struct.cgraph_edge** %e, metadata !5457, metadata !DIExpression(DW_OP_deref)), !dbg !5460
  %call40 = call fastcc i32 @VEC_cgraph_edge_p_base_iterate(%struct.VEC_cgraph_edge_p_base* %base, i32 %i.0, %struct.cgraph_edge** nonnull %e) #8, !dbg !5519
  %tobool41 = icmp eq i32 %call40, 0, !dbg !5520
  br i1 %tobool41, label %for.end, label %for.body, !dbg !5520

for.body:                                         ; preds = %for.cond
  %21 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e, align 8, !dbg !5521
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %21, metadata !5457, metadata !DIExpression()), !dbg !5460
  call void @cgraph_redirect_edge_callee(%struct.cgraph_edge* %21, %struct.cgraph_node* %call) #8, !dbg !5523
  %inc = add i32 %i.0, 1, !dbg !5524
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5459, metadata !DIExpression()), !dbg !5460
  br label %for.cond, !dbg !5525, !llvm.loop !5526

for.end:                                          ; preds = %for.cond
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 1, !dbg !5528
  %22 = bitcast %struct.cgraph_edge** %callees to i64*, !dbg !5528
  %23 = load i64, i64* %22, align 8, !dbg !5528
  %24 = bitcast %struct.cgraph_edge** %e to i64*, !dbg !5530
  store i64 %23, i64* %24, align 8, !dbg !5530
  %25 = inttoptr i64 %23 to %struct.cgraph_edge*, !dbg !5531
  br label %for.cond42, !dbg !5531

for.cond42:                                       ; preds = %for.body44, %for.end
  %26 = phi %struct.cgraph_edge* [ %33, %for.body44 ], [ %25, %for.end ]
  %27 = phi %struct.cgraph_edge* [ %33, %for.body44 ], [ %25, %for.end ], !dbg !5532
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %27, metadata !5457, metadata !DIExpression()), !dbg !5460
  %tobool43 = icmp eq %struct.cgraph_edge* %27, null, !dbg !5534
  br i1 %tobool43, label %for.end47, label %for.body44, !dbg !5534

for.body44:                                       ; preds = %for.cond42
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %26, metadata !5457, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %26, metadata !5457, metadata !DIExpression()), !dbg !5460
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %26, i64 0, i32 7, !dbg !5535
  %28 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !5535
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %26, metadata !5457, metadata !DIExpression()), !dbg !5460
  %lto_stmt_uid = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %26, i64 0, i32 10, !dbg !5536
  %29 = load i32, i32* %lto_stmt_uid, align 4, !dbg !5536
  %call45 = call %struct.cgraph_edge* @cgraph_clone_edge(%struct.cgraph_edge* %26, %struct.cgraph_node* %call, %union.gimple_statement_d* %28, i32 %29, i64 %count_scale.1, i32 %freq, i32 %loop_nest, i8 zeroext %update_original) #8, !dbg !5537
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e, align 8, !dbg !5538
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %30, metadata !5457, metadata !DIExpression()), !dbg !5460
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %30, i64 0, i32 6, !dbg !5539
  %31 = bitcast %struct.cgraph_edge** %next_callee to i64*, !dbg !5539
  %32 = load i64, i64* %31, align 8, !dbg !5539
  store i64 %32, i64* %24, align 8, !dbg !5540
  %33 = inttoptr i64 %32 to %struct.cgraph_edge*, !dbg !5541
  br label %for.cond42, !dbg !5541, !llvm.loop !5542

for.end47:                                        ; preds = %for.cond42
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n, i64 0, i32 11, !dbg !5544
  %34 = bitcast %struct.cgraph_node** %clones to i64*, !dbg !5544
  %35 = load i64, i64* %34, align 8, !dbg !5544
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 9, !dbg !5545
  %36 = bitcast %struct.cgraph_node** %next_sibling_clone to i64*, !dbg !5546
  store i64 %35, i64* %36, align 8, !dbg !5546
  %37 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !5547
  %tobool49 = icmp eq %struct.cgraph_node* %37, null, !dbg !5549
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !5550

if.then50:                                        ; preds = %for.end47
  %prev_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %37, i64 0, i32 10, !dbg !5551
  store %struct.cgraph_node* %call, %struct.cgraph_node** %prev_sibling_clone, align 8, !dbg !5552
  br label %if.end52, !dbg !5553

if.end52:                                         ; preds = %for.end47, %if.then50
  store %struct.cgraph_node* %call, %struct.cgraph_node** %clones, align 8, !dbg !5554
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 12, !dbg !5555
  store %struct.cgraph_node* %n, %struct.cgraph_node** %clone_of, align 8, !dbg !5556
  call fastcc void @cgraph_call_node_duplication_hooks(%struct.cgraph_node* %n, %struct.cgraph_node* %call) #8, !dbg !5557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !5558
  ret %struct.cgraph_node* %call, !dbg !5559
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_edge_p_base_iterate(%struct.VEC_cgraph_edge_p_base* %vec_, i32 %ix_, %struct.cgraph_edge** %ptr) unnamed_addr #0 !dbg !5560 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_base* %vec_, metadata !5567, metadata !DIExpression()), !dbg !5570
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5568, metadata !DIExpression()), !dbg !5570
  call void @llvm.dbg.value(metadata %struct.cgraph_edge** %ptr, metadata !5569, metadata !DIExpression()), !dbg !5570
  %tobool = icmp eq %struct.VEC_cgraph_edge_p_base* %vec_, null, !dbg !5571
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5571

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 0, !dbg !5571
  %0 = load i32, i32* %num, align 8, !dbg !5571
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5571
  br i1 %cmp, label %if.then, label %if.else, !dbg !5573

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5574
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5574
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %arrayidx, align 8, !dbg !5574
  br label %return, !dbg !5574

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5576

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.cgraph_edge* [ null, %if.else ], [ %1, %if.then ], !dbg !5578
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5578
  store %struct.cgraph_edge* %storemerge, %struct.cgraph_edge** %ptr, align 8, !dbg !5578
  ret i32 %retval.0, !dbg !5573
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_call_node_duplication_hooks(%struct.cgraph_node* %node1, %struct.cgraph_node* %node2) unnamed_addr #4 !dbg !5579 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node1, metadata !5583, metadata !DIExpression()), !dbg !5586
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2, metadata !5584, metadata !DIExpression()), !dbg !5586
  br label %while.cond, !dbg !5587

while.cond:                                       ; preds = %while.body, %entry
  %entry1.0.in = phi %struct.cgraph_2node_hook_list** [ @first_cgraph_node_duplicated_hook, %entry ], [ %next, %while.body ]
  %entry1.0 = load %struct.cgraph_2node_hook_list*, %struct.cgraph_2node_hook_list** %entry1.0.in, align 8, !dbg !5586
  call void @llvm.dbg.value(metadata %struct.cgraph_2node_hook_list* %entry1.0, metadata !5585, metadata !DIExpression()), !dbg !5586
  %tobool = icmp eq %struct.cgraph_2node_hook_list* %entry1.0, null, !dbg !5587
  br i1 %tobool, label %while.end, label %while.body, !dbg !5587

while.body:                                       ; preds = %while.cond
  %hook = getelementptr inbounds %struct.cgraph_2node_hook_list, %struct.cgraph_2node_hook_list* %entry1.0, i64 0, i32 0, !dbg !5588
  %0 = load void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)*, void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)** %hook, align 8, !dbg !5588
  %data = getelementptr inbounds %struct.cgraph_2node_hook_list, %struct.cgraph_2node_hook_list* %entry1.0, i64 0, i32 1, !dbg !5590
  %1 = load i8*, i8** %data, align 8, !dbg !5590
  tail call void %0(%struct.cgraph_node* %node1, %struct.cgraph_node* %node2, i8* %1) #6, !dbg !5591
  %next = getelementptr inbounds %struct.cgraph_2node_hook_list, %struct.cgraph_2node_hook_list* %entry1.0, i64 0, i32 2, !dbg !5592
  br label %while.cond, !dbg !5587, !llvm.loop !5593

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5595
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @cgraph_create_virtual_clone(%struct.cgraph_node* %old_node, %struct.VEC_cgraph_edge_p_heap* %redirect_callers, %struct.VEC_ipa_replace_map_p_gc* %tree_map, %struct.bitmap_head_def* %args_to_skip) local_unnamed_addr #4 !dbg !5596 {
entry:
  %key = alloca %struct.cgraph_node, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %old_node, metadata !5600, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %redirect_callers, metadata !5601, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc* %tree_map, metadata !5602, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %args_to_skip, metadata !5603, metadata !DIExpression()), !dbg !5621
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_node, i64 0, i32 0, !dbg !5622
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5622
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !5604, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.value(metadata %struct.cgraph_node* null, metadata !5605, metadata !DIExpression()), !dbg !5621
  %1 = bitcast %struct.cgraph_node* %key to i8*, !dbg !5623
  call void @llvm.lifetime.start.p0i8(i64 312, i8* nonnull %1) #7, !dbg !5623
  %call = tail call zeroext i8 @tree_versionable_function_p(%union.tree_node* %0) #6, !dbg !5624
  %tobool = icmp eq i8 %call, 0, !dbg !5624
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5624

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1973, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5624
  br label %cond.end, !dbg !5624

cond.end:                                         ; preds = %entry, %cond.true
  %tobool1 = icmp eq %struct.bitmap_head_def* %args_to_skip, null, !dbg !5625
  br i1 %tobool1, label %if.then, label %if.else, !dbg !5627

if.then:                                          ; preds = %cond.end
  %call2 = tail call %union.tree_node* @copy_node_stat(%union.tree_node* %0) #6, !dbg !5628
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !5606, metadata !DIExpression()), !dbg !5621
  br label %if.end, !dbg !5629

if.else:                                          ; preds = %cond.end
  %call3 = tail call %union.tree_node* @build_function_decl_skip_args(%union.tree_node* %0, %struct.bitmap_head_def* nonnull %args_to_skip) #6, !dbg !5630
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !5606, metadata !DIExpression()), !dbg !5621
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %new_decl.0 = phi %union.tree_node* [ %call3, %if.else ], [ %call2, %if.then ], !dbg !5631
  call void @llvm.dbg.value(metadata %union.tree_node* %new_decl.0, metadata !5606, metadata !DIExpression()), !dbg !5621
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %new_decl.0, i64 0, i32 0, i32 1, !dbg !5632
  store %struct.function* null, %struct.function** %f, align 8, !dbg !5633
  %call4 = tail call fastcc %union.tree_node* @clone_function_name(%union.tree_node* %0) #8, !dbg !5634
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %new_decl.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5635
  store %union.tree_node* %call4, %union.tree_node** %name, align 8, !dbg !5636
  %.cast = ptrtoint %union.tree_node* %call4 to i64, !dbg !5637
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %new_decl.0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !5637
  %2 = bitcast %union.tree_node** %assembler_name to i64*, !dbg !5637
  store i64 %.cast, i64* %2, align 8, !dbg !5637
  tail call void @set_decl_rtl(%union.tree_node* %new_decl.0, %struct.rtx_def* null) #6, !dbg !5638
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_node, i64 0, i32 23, !dbg !5639
  %3 = load i64, i64* %count, align 8, !dbg !5639
  %call7 = tail call %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node* %old_node, i64 %3, i32 1000, i32 0, i8 zeroext 0, %struct.VEC_cgraph_edge_p_heap* %redirect_callers) #8, !dbg !5640
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call7, metadata !5605, metadata !DIExpression()), !dbg !5621
  %decl8 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 0, !dbg !5641
  store %union.tree_node* %new_decl.0, %union.tree_node** %decl8, align 8, !dbg !5642
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %new_decl.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5643
  %4 = bitcast i40* %decl_flag_1 to i64*, !dbg !5643
  %bf.load = load i64, i64* %4, align 8, !dbg !5644
  %bf.clear = and i64 %bf.load, -33554433, !dbg !5644
  store i64 %bf.clear, i64* %4, align 8, !dbg !5644
  %5 = bitcast %struct.cgraph_node* %call7 to %struct.tree_decl_with_vis**, !dbg !5645
  %6 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %5, align 8, !dbg !5645
  %comdat_group = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %6, i64 0, i32 3, !dbg !5645
  store %union.tree_node* null, %union.tree_node** %comdat_group, align 8, !dbg !5646
  %7 = bitcast %struct.cgraph_node* %call7 to i64**, !dbg !5647
  %8 = load i64*, i64** %7, align 8, !dbg !5647
  %bf.load13 = load i64, i64* %8, align 8, !dbg !5648
  %bf.clear14 = and i64 %bf.load13, -134217729, !dbg !5648
  store i64 %bf.clear14, i64* %8, align 8, !dbg !5648
  %9 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %5, align 8, !dbg !5649
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %9, i64 0, i32 4, !dbg !5649
  %10 = bitcast i24* %comdat_flag to i32*, !dbg !5649
  %bf.load17 = load i32, i32* %10, align 8, !dbg !5650
  %bf.clear18 = and i32 %bf.load17, -513, !dbg !5650
  store i32 %bf.clear18, i32* %10, align 8, !dbg !5650
  %11 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %5, align 8, !dbg !5651
  %weak_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %11, i64 0, i32 4, !dbg !5651
  %12 = bitcast i24* %weak_flag to i32*, !dbg !5651
  %bf.load21 = load i32, i32* %12, align 8, !dbg !5652
  %bf.clear22 = and i32 %bf.load21, -129, !dbg !5652
  store i32 %bf.clear22, i32* %12, align 8, !dbg !5652
  %tree_map23 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 21, i32 0, !dbg !5653
  store %struct.VEC_ipa_replace_map_p_gc* %tree_map, %struct.VEC_ipa_replace_map_p_gc** %tree_map23, align 8, !dbg !5654
  %args_to_skip25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 21, i32 1, !dbg !5655
  store %struct.bitmap_head_def* %args_to_skip, %struct.bitmap_head_def** %args_to_skip25, align 8, !dbg !5656
  %combined_args_to_skip33 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_node, i64 0, i32 21, i32 2, !dbg !5657
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %combined_args_to_skip33, align 8, !dbg !5657
  br i1 %tobool1, label %if.then27, label %if.else31, !dbg !5658

if.then27:                                        ; preds = %if.end
  %combined_args_to_skip30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 21, i32 2, !dbg !5659
  store %struct.bitmap_head_def* %13, %struct.bitmap_head_def** %combined_args_to_skip30, align 8, !dbg !5660
  br label %if.end64, !dbg !5661

if.else31:                                        ; preds = %if.end
  %tobool34 = icmp eq %struct.bitmap_head_def* %13, null, !dbg !5662
  br i1 %tobool34, label %if.else60, label %if.then35, !dbg !5663

if.then35:                                        ; preds = %if.else31
  call void @llvm.dbg.value(metadata i32 0, metadata !5609, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.value(metadata i32 0, metadata !5613, metadata !DIExpression()), !dbg !5664
  %call36 = tail call %struct.bitmap_head_def* @bitmap_gc_alloc_stat() #6, !dbg !5665
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call36, metadata !5615, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %old_node, metadata !5616, metadata !DIExpression()), !dbg !5664
  br label %for.cond, !dbg !5666

for.cond:                                         ; preds = %for.inc, %if.then35
  %orig_node.0 = phi %struct.cgraph_node* [ %old_node, %if.then35 ], [ %14, %for.inc ], !dbg !5668
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %orig_node.0, metadata !5616, metadata !DIExpression()), !dbg !5664
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %orig_node.0, i64 0, i32 12, !dbg !5669
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !5669
  %tobool37 = icmp eq %struct.cgraph_node* %14, null, !dbg !5671
  br i1 %tobool37, label %for.end, label %for.inc, !dbg !5671

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %14, metadata !5616, metadata !DIExpression()), !dbg !5664
  br label %for.cond, !dbg !5672, !llvm.loop !5673

for.end:                                          ; preds = %for.cond
  %orig_node.0.lcssa = phi %struct.cgraph_node* [ %orig_node.0, %for.cond ], !dbg !5668
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %orig_node.0.lcssa, metadata !5616, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %orig_node.0.lcssa, metadata !5616, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %orig_node.0.lcssa, metadata !5616, metadata !DIExpression()), !dbg !5664
  %15 = bitcast %struct.cgraph_node* %orig_node.0.lcssa to %struct.tree_decl_non_common**, !dbg !5675
  %16 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** %15, align 8, !dbg !5675
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %16, i64 0, i32 2, !dbg !5675
  br label %for.cond40, !dbg !5677

for.cond40:                                       ; preds = %for.inc55, %for.end
  %newi.0 = phi i32 [ 0, %for.end ], [ %newi.1, %for.inc55 ], !dbg !5678
  %oldi.0 = phi i32 [ 0, %for.end ], [ %inc56, %for.inc55 ], !dbg !5664
  %arg.0.in = phi %union.tree_node** [ %arguments, %for.end ], [ %chain, %for.inc55 ]
  %arg.0 = load %union.tree_node*, %union.tree_node** %arg.0.in, align 8, !dbg !5679
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !5614, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.value(metadata i32 %oldi.0, metadata !5613, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.value(metadata i32 %newi.0, metadata !5609, metadata !DIExpression()), !dbg !5664
  %tobool41 = icmp eq %union.tree_node* %arg.0, null, !dbg !5680
  br i1 %tobool41, label %for.end57, label %for.body42, !dbg !5680

for.body42:                                       ; preds = %for.cond40
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %combined_args_to_skip33, align 8, !dbg !5681
  %call45 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %17, i32 %oldi.0) #6, !dbg !5685
  %tobool46 = icmp eq i32 %call45, 0, !dbg !5685
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !5686

if.then47:                                        ; preds = %for.body42
  %call48 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call36, i32 %oldi.0) #6, !dbg !5687
  br label %for.inc55, !dbg !5689

if.end49:                                         ; preds = %for.body42
  %call50 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %args_to_skip, i32 %newi.0) #6, !dbg !5690
  %tobool51 = icmp eq i32 %call50, 0, !dbg !5690
  br i1 %tobool51, label %if.end54, label %if.then52, !dbg !5692

if.then52:                                        ; preds = %if.end49
  %call53 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call36, i32 %oldi.0) #6, !dbg !5693
  br label %if.end54, !dbg !5693

if.end54:                                         ; preds = %if.end49, %if.then52
  %inc = add nsw i32 %newi.0, 1, !dbg !5694
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5609, metadata !DIExpression()), !dbg !5664
  br label %for.inc55, !dbg !5695

for.inc55:                                        ; preds = %if.end54, %if.then47
  %newi.1 = phi i32 [ %newi.0, %if.then47 ], [ %inc, %if.end54 ], !dbg !5664
  call void @llvm.dbg.value(metadata i32 %newi.1, metadata !5609, metadata !DIExpression()), !dbg !5664
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5696
  %inc56 = add nuw nsw i32 %oldi.0, 1, !dbg !5697
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !5613, metadata !DIExpression()), !dbg !5664
  br label %for.cond40, !dbg !5698, !llvm.loop !5699

for.end57:                                        ; preds = %for.cond40
  %combined_args_to_skip59 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 21, i32 2, !dbg !5701
  store %struct.bitmap_head_def* %call36, %struct.bitmap_head_def** %combined_args_to_skip59, align 8, !dbg !5702
  br label %if.end64, !dbg !5703

if.else60:                                        ; preds = %if.else31
  %combined_args_to_skip62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 21, i32 2, !dbg !5704
  store %struct.bitmap_head_def* %args_to_skip, %struct.bitmap_head_def** %combined_args_to_skip62, align 8, !dbg !5705
  br label %if.end64

if.end64:                                         ; preds = %for.end57, %if.else60, %if.then27
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 18, i32 2, !dbg !5706
  %bf.load65 = load i8, i8* %externally_visible, align 8, !dbg !5707
  %bf.clear70 = and i8 %bf.load65, -4, !dbg !5708
  %bf.set = or i8 %bf.clear70, 1, !dbg !5708
  store i8 %bf.set, i8* %externally_visible, align 8, !dbg !5708
  %lowered = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call7, i64 0, i32 27, !dbg !5709
  %bf.load71 = load i16, i16* %lowered, align 4, !dbg !5710
  %bf.set76 = or i16 %bf.load71, 24, !dbg !5711
  store i16 %bf.set76, i16* %lowered, align 4, !dbg !5711
  %decl77 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %key, i64 0, i32 0, !dbg !5712
  store %union.tree_node* %new_decl.0, %union.tree_node** %decl77, align 8, !dbg !5713
  %18 = load %struct.htab*, %struct.htab** @cgraph_hash, align 8, !dbg !5714
  %call78 = call i8** @htab_find_slot(%struct.htab* %18, i8* nonnull %1, i32 1) #6, !dbg !5715
  %19 = bitcast i8** %call78 to %struct.cgraph_node**, !dbg !5716
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %19, metadata !5608, metadata !DIExpression()), !dbg !5621
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %19, align 8, !dbg !5717
  %tobool79 = icmp eq %struct.cgraph_node* %20, null, !dbg !5717
  br i1 %tobool79, label %cond.end82, label %cond.true80, !dbg !5717

cond.true80:                                      ; preds = %if.end64
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2035, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5717
  br label %cond.end82, !dbg !5717

cond.end82:                                       ; preds = %if.end64, %cond.true80
  store %struct.cgraph_node* %call7, %struct.cgraph_node** %19, align 8, !dbg !5718
  %21 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !5719
  %tobool84 = icmp eq %struct.htab* %21, null, !dbg !5719
  br i1 %tobool84, label %if.end95, label %if.then85, !dbg !5720

if.then85:                                        ; preds = %cond.end82
  %call87 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %new_decl.0) #6, !dbg !5721
  call void @llvm.dbg.value(metadata %union.tree_node* %call87, metadata !5620, metadata !DIExpression()), !dbg !5722
  %22 = load %struct.htab*, %struct.htab** @assembler_name_hash, align 8, !dbg !5723
  %23 = bitcast %union.tree_node* %call87 to i8*, !dbg !5724
  %call88 = call i32 @decl_assembler_name_hash(%union.tree_node* %call87) #6, !dbg !5725
  %call89 = call i8** @htab_find_slot_with_hash(%struct.htab* %22, i8* %23, i32 %call88, i32 1) #6, !dbg !5726
  call void @llvm.dbg.value(metadata i8** %call89, metadata !5617, metadata !DIExpression()), !dbg !5722
  %24 = load i8*, i8** %call89, align 8, !dbg !5727
  %tobool90 = icmp eq i8* %24, null, !dbg !5727
  br i1 %tobool90, label %cond.end93, label %cond.true91, !dbg !5727

cond.true91:                                      ; preds = %if.then85
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2045, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5727
  br label %cond.end93, !dbg !5727

cond.end93:                                       ; preds = %if.then85, %cond.true91
  %25 = bitcast i8** %call89 to %struct.cgraph_node**, !dbg !5728
  store %struct.cgraph_node* %call7, %struct.cgraph_node** %25, align 8, !dbg !5728
  br label %if.end95, !dbg !5729

if.end95:                                         ; preds = %cond.end82, %cond.end93
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %1) #7, !dbg !5730
  ret %struct.cgraph_node* %call7, !dbg !5731
}

declare dso_local zeroext i8 @tree_versionable_function_p(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @copy_node_stat(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_function_decl_skip_args(%union.tree_node*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @clone_function_name(%union.tree_node* %decl) unnamed_addr #4 !dbg !5732 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !5736, metadata !DIExpression()), !dbg !5745
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !5746
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5737, metadata !DIExpression()), !dbg !5745
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5747
  %0 = getelementptr inbounds i32, i32* %id, i64 2, !dbg !5747
  %1 = load i32, i32* %0, align 8, !dbg !5747
  %conv = zext i32 %1 to i64, !dbg !5747
  call void @llvm.dbg.value(metadata i64 %conv, metadata !5738, metadata !DIExpression()), !dbg !5745
  %call2 = tail call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !5748
  %add = add i64 %call2, %conv, !dbg !5748
  %add3 = add i64 %add, 1, !dbg !5748
  %2 = alloca i8, i64 %add3, align 16, !dbg !5748
  call void @llvm.dbg.value(metadata i8* %2, metadata !5740, metadata !DIExpression()), !dbg !5745
  %str = bitcast i32* %id to i8**, !dbg !5749
  %3 = load i8*, i8** %str, align 8, !dbg !5749
  %call6 = call i8* @memcpy(i8* nonnull %2, i8* %3, i64 %conv) #6, !dbg !5750
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %conv, !dbg !5751
  %call7 = call i8* @strcpy(i8* nonnull %add.ptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !5752
  store i8 46, i8* %add.ptr, align 1, !dbg !5753
  call void @llvm.dbg.value(metadata i8* %2, metadata !5741, metadata !DIExpression()), !dbg !5754
  %call8 = call i64 @strlen(i8* nonnull %2) #6, !dbg !5755
  %add9 = add i64 %call8, 32, !dbg !5755
  %4 = alloca i8, i64 %add9, align 16, !dbg !5755
  call void @llvm.dbg.value(metadata i8* %4, metadata !5739, metadata !DIExpression()), !dbg !5745
  call void @llvm.dbg.value(metadata i8* %4, metadata !5743, metadata !DIExpression()), !dbg !5754
  %5 = load i32, i32* @clone_fn_id_num, align 4, !dbg !5755
  %inc = add i32 %5, 1, !dbg !5755
  store i32 %inc, i32* @clone_fn_id_num, align 4, !dbg !5755
  %conv10 = zext i32 %5 to i64, !dbg !5755
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i8* nonnull %2, i64 %conv10) #6, !dbg !5755
  %call12 = call %union.tree_node* @get_identifier(i8* nonnull %4) #6, !dbg !5756
  ret %union.tree_node* %call12, !dbg !5757
}

declare dso_local void @set_decl_rtl(%union.tree_node*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_gc_alloc_stat() local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_unnest_node(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !5758 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5760, metadata !DIExpression()), !dbg !5762
  %origin = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 5, !dbg !5763
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %origin, align 8, !dbg !5763
  %nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 6, !dbg !5764
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %nested, metadata !5761, metadata !DIExpression()), !dbg !5762
  %tobool = icmp eq %struct.cgraph_node* %0, null, !dbg !5765
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5765

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2057, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5765
  br label %cond.end, !dbg !5765

cond.end:                                         ; preds = %entry, %cond.true
  br label %while.cond, !dbg !5766

while.cond:                                       ; preds = %while.body, %cond.end
  %node2.0 = phi %struct.cgraph_node** [ %nested, %cond.end ], [ %next_nested, %while.body ], !dbg !5762
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0, metadata !5761, metadata !DIExpression()), !dbg !5762
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %node2.0, align 8, !dbg !5767
  %cmp = icmp eq %struct.cgraph_node* %1, %node, !dbg !5768
  br i1 %cmp, label %while.end, label %while.body, !dbg !5766

while.body:                                       ; preds = %while.cond
  %next_nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 7, !dbg !5769
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %next_nested, metadata !5761, metadata !DIExpression()), !dbg !5762
  br label %while.cond, !dbg !5766, !llvm.loop !5770

while.end:                                        ; preds = %while.cond
  %node2.0.lcssa = phi %struct.cgraph_node** [ %node2.0, %while.cond ], !dbg !5762
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0.lcssa, metadata !5761, metadata !DIExpression()), !dbg !5762
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0.lcssa, metadata !5761, metadata !DIExpression()), !dbg !5762
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node2.0.lcssa, metadata !5761, metadata !DIExpression()), !dbg !5762
  %next_nested2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 7, !dbg !5771
  %2 = bitcast %struct.cgraph_node** %next_nested2 to i64*, !dbg !5771
  %3 = load i64, i64* %2, align 8, !dbg !5771
  %4 = bitcast %struct.cgraph_node** %node2.0.lcssa to i64*, !dbg !5772
  store i64 %3, i64* %4, align 8, !dbg !5772
  store %struct.cgraph_node* null, %struct.cgraph_node** %origin, align 8, !dbg !5773
  ret void, !dbg !5774
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_add_new_function(%union.tree_node* %fndecl, i8 zeroext %lowered) local_unnamed_addr #4 !dbg !5775 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !5779, metadata !DIExpression()), !dbg !5782
  call void @llvm.dbg.value(metadata i8 %lowered, metadata !5780, metadata !DIExpression()), !dbg !5782
  %0 = load i32, i32* @cgraph_state, align 4, !dbg !5783
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
    i32 3, label %sw.bb2
    i32 4, label %sw.bb34
  ], !dbg !5784

sw.bb:                                            ; preds = %entry
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %fndecl) #8, !dbg !5785
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !5781, metadata !DIExpression()), !dbg !5782
  %1 = load i64, i64* bitcast (%struct.cgraph_node** @cgraph_new_nodes to i64*), align 8, !dbg !5787
  %next_needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 8, !dbg !5788
  %2 = bitcast %struct.cgraph_node** %next_needed to i64*, !dbg !5789
  store i64 %1, i64* %2, align 8, !dbg !5789
  %tobool = icmp eq i8 %lowered, 0, !dbg !5790
  br i1 %tobool, label %if.end, label %if.then, !dbg !5792

if.then:                                          ; preds = %sw.bb
  %lowered1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 27, !dbg !5793
  %bf.load = load i16, i16* %lowered1, align 4, !dbg !5794
  %bf.set = or i16 %bf.load, 16, !dbg !5794
  store i16 %bf.set, i16* %lowered1, align 4, !dbg !5794
  br label %if.end, !dbg !5795

if.end:                                           ; preds = %sw.bb, %if.then
  store %struct.cgraph_node* %call, %struct.cgraph_node** @cgraph_new_nodes, align 8, !dbg !5796
  br label %sw.epilog, !dbg !5797

sw.bb2:                                           ; preds = %entry, %entry, %entry
  %call3 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %fndecl) #8, !dbg !5798
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call3, metadata !5781, metadata !DIExpression()), !dbg !5782
  %local4 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call3, i64 0, i32 18, i32 2, !dbg !5799
  %bf.load5 = load i8, i8* %local4, align 8, !dbg !5800
  %bf.clear9 = and i8 %bf.load5, -6, !dbg !5801
  %bf.set10 = or i8 %bf.clear9, 4, !dbg !5801
  store i8 %bf.set10, i8* %local4, align 8, !dbg !5801
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call3, i64 0, i32 27, !dbg !5802
  %bf.load11 = load i16, i16* %needed, align 4, !dbg !5803
  %bf.set16 = or i16 %bf.load11, 9, !dbg !5804
  store i16 %bf.set16, i16* %needed, align 4, !dbg !5804
  %tobool17 = icmp eq i8 %lowered, 0, !dbg !5805
  %3 = load i32, i32* @cgraph_state, align 4, !dbg !5807
  %cmp = icmp eq i32 %3, 3, !dbg !5808
  %or.cond = and i1 %tobool17, %cmp, !dbg !5809
  br i1 %or.cond, label %if.then18, label %if.end25, !dbg !5809

if.then18:                                        ; preds = %sw.bb2
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 1, !dbg !5810
  %4 = load %struct.function*, %struct.function** %f, align 8, !dbg !5810
  tail call void @push_cfun(%struct.function* %4) #6, !dbg !5812
  store %union.tree_node* %fndecl, %union.tree_node** @current_function_decl, align 8, !dbg !5813
  tail call void @gimple_register_cfg_hooks() #6, !dbg !5814
  tail call void @tree_lowering_passes(%union.tree_node* %fndecl) #6, !dbg !5815
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* null) #6, !dbg !5816
  %5 = load %struct.function*, %struct.function** %f, align 8, !dbg !5817
  %call21 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %5) #8, !dbg !5819
  %tobool22 = icmp eq i8 %call21, 0, !dbg !5819
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5820

if.then23:                                        ; preds = %if.then18
  %6 = load %struct.opt_pass*, %struct.opt_pass** getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !dbg !5821
  tail call void @execute_pass_list(%struct.opt_pass* %6) #6, !dbg !5822
  br label %if.end24, !dbg !5822

if.end24:                                         ; preds = %if.then18, %if.then23
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* null) #6, !dbg !5823
  tail call void @pop_cfun() #6, !dbg !5824
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !5825
  call void @llvm.dbg.value(metadata i8 1, metadata !5780, metadata !DIExpression()), !dbg !5782
  br label %if.end25, !dbg !5826

if.end25:                                         ; preds = %sw.bb2, %if.end24
  %lowered.addr.0 = phi i8 [ %lowered, %sw.bb2 ], [ 1, %if.end24 ]
  call void @llvm.dbg.value(metadata i8 %lowered.addr.0, metadata !5780, metadata !DIExpression()), !dbg !5782
  %tobool26 = icmp eq i8 %lowered.addr.0, 0, !dbg !5827
  br i1 %tobool26, label %if.end32, label %if.then27, !dbg !5829

if.then27:                                        ; preds = %if.end25
  %bf.load29 = load i16, i16* %needed, align 4, !dbg !5830
  %bf.set31 = or i16 %bf.load29, 16, !dbg !5830
  store i16 %bf.set31, i16* %needed, align 4, !dbg !5830
  br label %if.end32, !dbg !5831

if.end32:                                         ; preds = %if.end25, %if.then27
  %7 = load i64, i64* bitcast (%struct.cgraph_node** @cgraph_new_nodes to i64*), align 8, !dbg !5832
  %next_needed33 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call3, i64 0, i32 8, !dbg !5833
  %8 = bitcast %struct.cgraph_node** %next_needed33 to i64*, !dbg !5834
  store i64 %7, i64* %8, align 8, !dbg !5834
  store %struct.cgraph_node* %call3, %struct.cgraph_node** @cgraph_new_nodes, align 8, !dbg !5835
  br label %sw.epilog, !dbg !5836

sw.bb34:                                          ; preds = %entry
  %f36 = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 1, !dbg !5837
  %9 = load %struct.function*, %struct.function** %f36, align 8, !dbg !5837
  tail call void @push_cfun(%struct.function* %9) #6, !dbg !5838
  store %union.tree_node* %fndecl, %union.tree_node** @current_function_decl, align 8, !dbg !5839
  tail call void @gimple_register_cfg_hooks() #6, !dbg !5840
  %tobool37 = icmp eq i8 %lowered, 0, !dbg !5841
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5843

if.then38:                                        ; preds = %sw.bb34
  tail call void @tree_lowering_passes(%union.tree_node* %fndecl) #6, !dbg !5844
  br label %if.end39, !dbg !5844

if.end39:                                         ; preds = %sw.bb34, %if.then38
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* null) #6, !dbg !5845
  %10 = load %struct.function*, %struct.function** %f36, align 8, !dbg !5846
  %call42 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %10) #8, !dbg !5848
  %tobool43 = icmp eq i8 %call42, 0, !dbg !5848
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !5849

if.then44:                                        ; preds = %if.end39
  %11 = load %struct.opt_pass*, %struct.opt_pass** getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !dbg !5850
  tail call void @execute_pass_list(%struct.opt_pass* %11) #6, !dbg !5851
  br label %if.end45, !dbg !5851

if.end45:                                         ; preds = %if.end39, %if.then44
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* null) #6, !dbg !5852
  tail call void @tree_rest_of_compilation(%union.tree_node* %fndecl) #6, !dbg !5853
  tail call void @pop_cfun() #6, !dbg !5854
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !5855
  br label %sw.epilog, !dbg !5856

sw.epilog:                                        ; preds = %entry, %if.end45, %if.end32, %if.end
  %lowered.addr.1 = phi i8 [ %lowered, %entry ], [ %lowered, %if.end45 ], [ %lowered.addr.0, %if.end32 ], [ %lowered, %if.end ]
  call void @llvm.dbg.value(metadata i8 %lowered.addr.1, metadata !5780, metadata !DIExpression()), !dbg !5782
  %tobool46 = icmp eq i8 %lowered.addr.1, 0, !dbg !5857
  br i1 %tobool46, label %if.end56, label %land.lhs.true47, !dbg !5859

land.lhs.true47:                                  ; preds = %sw.epilog
  %f49 = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 1, !dbg !5860
  %12 = load %struct.function*, %struct.function** %f49, align 8, !dbg !5860
  %call50 = tail call i32 @function_needs_eh_personality(%struct.function* %12) #6, !dbg !5861
  %cmp51 = icmp eq i32 %call50, 2, !dbg !5862
  br i1 %cmp51, label %if.then53, label %if.end56, !dbg !5863

if.then53:                                        ; preds = %land.lhs.true47
  %13 = load %union.tree_node* ()*, %union.tree_node* ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 45), align 8, !dbg !5864
  %call54 = tail call %union.tree_node* %13() #6, !dbg !5865
  %personality = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 2, !dbg !5866
  store %union.tree_node* %call54, %union.tree_node** %personality, align 8, !dbg !5867
  br label %if.end56, !dbg !5866

if.end56:                                         ; preds = %sw.epilog, %if.then53, %land.lhs.true47
  ret void, !dbg !5868
}

declare dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #1

declare dso_local void @tree_lowering_passes(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !5869 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !5876, metadata !DIExpression()), !dbg !5877
  %tobool = icmp eq %struct.function* %fun, null, !dbg !5878
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !5879

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !5880
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !5880
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !5881
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !5882

land.rhs:                                         ; preds = %land.lhs.true
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 10, !dbg !5883
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !5883
  %bf.clear = and i8 %bf.load, 1, !dbg !5883
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.clear, %land.rhs ]
  ret i8 %1, !dbg !5884
}

declare dso_local void @execute_pass_list(%struct.opt_pass*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_release(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local void @tree_rest_of_compilation(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @function_needs_eh_personality(%struct.function*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_node_can_be_local_p(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !5885 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5889, metadata !DIExpression()), !dbg !5890
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !5891
  %bf.load = load i16, i16* %needed, align 4, !dbg !5891
  %bf.clear = and i16 %bf.load, 1, !dbg !5891
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !5892
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5893

land.rhs:                                         ; preds = %entry
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_with_vis**, !dbg !5894
  %1 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %0, align 8, !dbg !5894
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 4, !dbg !5894
  %2 = bitcast i24* %comdat_flag to i32*, !dbg !5894
  %bf.load1 = load i32, i32* %2, align 8, !dbg !5894
  %bf.clear2 = and i32 %bf.load1, 512, !dbg !5894
  %tobool3 = icmp eq i32 %bf.clear2, 0, !dbg !5894
  br i1 %tobool3, label %lor.rhs, label %land.lhs.true, !dbg !5895

land.lhs.true:                                    ; preds = %land.rhs
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 14, !dbg !5896
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !5896
  %tobool4 = icmp eq %struct.cgraph_node* %3, null, !dbg !5897
  br i1 %tobool4, label %land.end, label %lor.rhs, !dbg !5898

lor.rhs:                                          ; preds = %land.lhs.true, %land.rhs
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !5899
  %bf.load5 = load i8, i8* %externally_visible, align 8, !dbg !5899
  %bf.clear7 = lshr i8 %bf.load5, 1, !dbg !5898
  %bf.clear7.lobit = and i8 %bf.clear7, 1, !dbg !5898
  %4 = xor i8 %bf.clear7.lobit, 1, !dbg !5898
  br label %land.end, !dbg !5898

land.end:                                         ; preds = %land.lhs.true, %entry, %lor.rhs
  %5 = phi i8 [ 0, %entry ], [ 1, %land.lhs.true ], [ %4, %lor.rhs ]
  ret i8 %5, !dbg !5900
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_make_decl_local(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !5901 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !5905, metadata !DIExpression()), !dbg !5908
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5909
  %bf.load = load i64, i64* %0, align 8, !dbg !5909
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5911
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !5911
  br i1 %cmp, label %if.then, label %if.else, !dbg !5912

if.then:                                          ; preds = %entry
  %common_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !5913
  %1 = bitcast i24* %common_flag to i32*, !dbg !5913
  %bf.load1 = load i32, i32* %1, align 8, !dbg !5914
  %bf.clear2 = and i32 %bf.load1, -9, !dbg !5914
  store i32 %bf.clear2, i32* %1, align 8, !dbg !5914
  br label %if.end19, !dbg !5913

if.else:                                          ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 29, !dbg !5915
  br i1 %cmp7, label %if.then8, label %if.else18, !dbg !5917

if.then8:                                         ; preds = %if.else
  %comdat_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !5918
  %2 = bitcast i24* %comdat_flag to i32*, !dbg !5918
  %bf.load10 = load i32, i32* %2, align 8, !dbg !5920
  %comdat_group = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !5921
  store %union.tree_node* null, %union.tree_node** %comdat_group, align 8, !dbg !5922
  %bf.clear15 = and i32 %bf.load10, -641, !dbg !5923
  store i32 %bf.clear15, i32* %2, align 8, !dbg !5923
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5924
  %3 = bitcast i40* %decl_flag_1 to i64*, !dbg !5924
  %bf.load16 = load i64, i64* %3, align 8, !dbg !5925
  %bf.clear17 = and i64 %bf.load16, -33554433, !dbg !5925
  store i64 %bf.clear17, i64* %3, align 8, !dbg !5925
  br label %if.end19, !dbg !5926

if.else18:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5927
  %bf.load21.pre = load i64, i64* %0, align 8, !dbg !5928
  %.pre = and i64 %bf.load21.pre, 65535, !dbg !5929
  br label %if.end19

if.end19:                                         ; preds = %if.then8, %if.else18, %if.then
  %bf.cast26.pre-phi = phi i64 [ 29, %if.then8 ], [ %.pre, %if.else18 ], [ 32, %if.then ], !dbg !5929
  %bf.load21 = phi i64 [ %bf.load, %if.then8 ], [ %bf.load21.pre, %if.else18 ], [ %bf.load, %if.then ], !dbg !5928
  %bf.clear22 = and i64 %bf.load21, -134217729, !dbg !5928
  store i64 %bf.clear22, i64* %0, align 8, !dbg !5928
  %arrayidx27 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast26.pre-phi, i64 11, !dbg !5929
  %4 = load i8, i8* %arrayidx27, align 1, !dbg !5929
  %tobool = icmp eq i8 %4, 0, !dbg !5929
  br i1 %tobool, label %cleanup.cont, label %land.lhs.true, !dbg !5929

land.lhs.true:                                    ; preds = %if.end19
  %rtl28 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5929
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtl28, align 8, !dbg !5929
  %cmp29 = icmp eq %struct.rtx_def* %5, null, !dbg !5929
  br i1 %cmp29, label %cleanup.cont, label %if.end32, !dbg !5931

if.end32:                                         ; preds = %land.lhs.true
  tail call void @make_decl_rtl(%union.tree_node* %decl) #6, !dbg !5932
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl28, align 8, !dbg !5933
  %tobool35 = icmp eq %struct.rtx_def* %6, null, !dbg !5933
  br i1 %tobool35, label %cond.false, label %cond.true, !dbg !5933

cond.true:                                        ; preds = %if.end32
  br label %cond.end, !dbg !5933

cond.false:                                       ; preds = %if.end32
  tail call void @make_decl_rtl(%union.tree_node* %decl) #6, !dbg !5933
  %cond.pre = load %struct.rtx_def*, %struct.rtx_def** %rtl28, align 8, !dbg !5933
  br label %cond.end, !dbg !5933

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %cond.pre, %cond.false ], [ %6, %cond.true ], !dbg !5933
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !5906, metadata !DIExpression()), !dbg !5908
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 0, !dbg !5934
  %bf.load40 = load i32, i32* %7, align 8, !dbg !5934
  %bf.clear41 = and i32 %bf.load40, 65535, !dbg !5934
  %cmp42 = icmp eq i32 %bf.clear41, 43, !dbg !5934
  br i1 %cmp42, label %if.end45, label %cleanup.cont, !dbg !5936

if.end45:                                         ; preds = %cond.end
  %arrayidx46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !5937
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**, !dbg !5937
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !5937
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !5907, metadata !DIExpression()), !dbg !5908
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !5938
  %bf.load47 = load i32, i32* %9, align 8, !dbg !5938
  %bf.clear48 = and i32 %bf.load47, 65535, !dbg !5938
  %cmp49 = icmp eq i32 %bf.clear48, 45, !dbg !5940
  br i1 %cmp49, label %if.end52, label %cleanup.cont, !dbg !5941

if.end52:                                         ; preds = %if.end45
  %weak_flag54 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !5942
  %10 = bitcast i24* %weak_flag54 to i32*, !dbg !5942
  %bf.load55 = load i32, i32* %10, align 8, !dbg !5942
  %bf.lshr = lshr i32 %bf.load55, 7, !dbg !5942
  %bf.shl = shl i32 %bf.lshr, 31, !dbg !5943
  %bf.clear58 = and i32 %bf.load47, 2147483647, !dbg !5943
  %bf.set = or i32 %bf.clear58, %bf.shl, !dbg !5943
  store i32 %bf.set, i32* %9, align 8, !dbg !5943
  br label %cleanup.cont, !dbg !5944

cleanup.cont:                                     ; preds = %if.end45, %land.lhs.true, %if.end19, %if.end52, %cond.end
  ret void, !dbg !5944
}

declare dso_local void @make_decl_rtl(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_make_node_local(%struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !5945 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5947, metadata !DIExpression()), !dbg !5951
  %call = tail call zeroext i8 @cgraph_node_can_be_local_p(%struct.cgraph_node* %node) #8, !dbg !5952
  %tobool = icmp eq i8 %call, 0, !dbg !5952
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5952

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5952
  br label %cond.end, !dbg !5952

cond.end:                                         ; preds = %entry, %cond.true
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_with_vis**, !dbg !5953
  %1 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %0, align 8, !dbg !5953
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 4, !dbg !5953
  %2 = bitcast i24* %comdat_flag to i32*, !dbg !5953
  %bf.load = load i32, i32* %2, align 8, !dbg !5953
  %bf.clear = and i32 %bf.load, 512, !dbg !5953
  %tobool1 = icmp eq i32 %bf.clear, 0, !dbg !5953
  %3 = bitcast %struct.tree_decl_with_vis* %1 to %union.tree_node*, !dbg !5954
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !5954

lor.lhs.false:                                    ; preds = %cond.end
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 0, i32 0, i32 2, !dbg !5955
  %4 = bitcast i40* %decl_flag_1 to i64*, !dbg !5955
  %bf.load3 = load i64, i64* %4, align 8, !dbg !5955
  %bf.cast1 = and i64 %bf.load3, 33554432, !dbg !5955
  %tobool6 = icmp eq i64 %bf.cast1, 0, !dbg !5955
  br i1 %tobool6, label %if.end, label %if.then, !dbg !5956

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  tail call void @cgraph_make_decl_local(%union.tree_node* %3) #8, !dbg !5957
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !5958
  br label %for.cond, !dbg !5960

for.cond:                                         ; preds = %for.body, %if.then
  %alias.0.in = phi %struct.cgraph_node** [ %same_body, %if.then ], [ %next, %for.body ]
  %alias.0 = load %struct.cgraph_node*, %struct.cgraph_node** %alias.0.in, align 8, !dbg !5961
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !5948, metadata !DIExpression()), !dbg !5962
  %tobool8 = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !5963
  br i1 %tobool8, label %for.end, label %for.body, !dbg !5963

for.body:                                         ; preds = %for.cond
  %decl9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 0, !dbg !5964
  %5 = load %union.tree_node*, %union.tree_node** %decl9, align 8, !dbg !5964
  tail call void @cgraph_make_decl_local(%union.tree_node* %5) #8, !dbg !5966
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !5967
  br label %for.cond, !dbg !5968, !llvm.loop !5969

for.end:                                          ; preds = %for.cond
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !5971
  %bf.load10 = load i8, i8* %externally_visible, align 8, !dbg !5972
  %bf.clear15 = and i8 %bf.load10, -4, !dbg !5973
  %bf.set = or i8 %bf.clear15, 1, !dbg !5973
  store i8 %bf.set, i8* %externally_visible, align 8, !dbg !5973
  %call16 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %node) #8, !dbg !5974
  %cmp = icmp eq i32 %call16, 4, !dbg !5974
  br i1 %cmp, label %if.end, label %cond.true17, !dbg !5974

cond.true17:                                      ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5974
  br label %if.end, !dbg !5974

if.end:                                           ; preds = %lor.lhs.false, %cond.true17, %for.end
  ret void, !dbg !5975
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_set_nothrow_flag(%struct.cgraph_node* %node, i8 zeroext %nothrow) local_unnamed_addr #4 !dbg !5976 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5980, metadata !DIExpression()), !dbg !5983
  call void @llvm.dbg.value(metadata i8 %nothrow, metadata !5981, metadata !DIExpression()), !dbg !5983
  %0 = bitcast %struct.cgraph_node* %node to i64**, !dbg !5984
  %1 = load i64*, i64** %0, align 8, !dbg !5984
  %bf.load = load i64, i64* %1, align 8, !dbg !5985
  %2 = and i8 %nothrow, 1, !dbg !5985
  %bf.value = zext i8 %2 to i64, !dbg !5985
  %bf.shl = shl nuw nsw i64 %bf.value, 25, !dbg !5985
  %bf.clear = and i64 %bf.load, -33554433, !dbg !5985
  %bf.set = or i64 %bf.clear, %bf.shl, !dbg !5985
  store i64 %bf.set, i64* %1, align 8, !dbg !5985
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !5986
  br label %for.cond, !dbg !5988

for.cond:                                         ; preds = %for.body, %entry
  %alias.0.in = phi %struct.cgraph_node** [ %same_body, %entry ], [ %next, %for.body ]
  %alias.0 = load %struct.cgraph_node*, %struct.cgraph_node** %alias.0.in, align 8, !dbg !5989
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !5982, metadata !DIExpression()), !dbg !5983
  %tobool = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !5990
  br i1 %tobool, label %for.end, label %for.body, !dbg !5990

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cgraph_node* %alias.0 to i64**, !dbg !5991
  %4 = load i64*, i64** %3, align 8, !dbg !5991
  %bf.load4 = load i64, i64* %4, align 8, !dbg !5993
  %bf.clear7 = and i64 %bf.load4, -33554433, !dbg !5993
  %bf.set8 = or i64 %bf.clear7, %bf.shl, !dbg !5993
  store i64 %bf.set8, i64* %4, align 8, !dbg !5993
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !5994
  br label %for.cond, !dbg !5995, !llvm.loop !5996

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5998
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_set_readonly_flag(%struct.cgraph_node* %node, i8 zeroext %readonly) local_unnamed_addr #4 !dbg !5999 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !6001, metadata !DIExpression()), !dbg !6004
  call void @llvm.dbg.value(metadata i8 %readonly, metadata !6002, metadata !DIExpression()), !dbg !6004
  %0 = bitcast %struct.cgraph_node* %node to i64**, !dbg !6005
  %1 = load i64*, i64** %0, align 8, !dbg !6005
  %bf.load = load i64, i64* %1, align 8, !dbg !6006
  %2 = and i8 %readonly, 1, !dbg !6006
  %bf.value = zext i8 %2 to i64, !dbg !6006
  %bf.shl = shl nuw nsw i64 %bf.value, 20, !dbg !6006
  %bf.clear = and i64 %bf.load, -1048577, !dbg !6006
  %bf.set = or i64 %bf.clear, %bf.shl, !dbg !6006
  store i64 %bf.set, i64* %1, align 8, !dbg !6006
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !6007
  br label %for.cond, !dbg !6009

for.cond:                                         ; preds = %for.body, %entry
  %alias.0.in = phi %struct.cgraph_node** [ %same_body, %entry ], [ %next, %for.body ]
  %alias.0 = load %struct.cgraph_node*, %struct.cgraph_node** %alias.0.in, align 8, !dbg !6010
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !6003, metadata !DIExpression()), !dbg !6004
  %tobool = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !6011
  br i1 %tobool, label %for.end, label %for.body, !dbg !6011

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cgraph_node* %alias.0 to i64**, !dbg !6012
  %4 = load i64*, i64** %3, align 8, !dbg !6012
  %bf.load4 = load i64, i64* %4, align 8, !dbg !6014
  %bf.clear7 = and i64 %bf.load4, -1048577, !dbg !6014
  %bf.set8 = or i64 %bf.clear7, %bf.shl, !dbg !6014
  store i64 %bf.set8, i64* %4, align 8, !dbg !6014
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !6015
  br label %for.cond, !dbg !6016, !llvm.loop !6017

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6019
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_set_pure_flag(%struct.cgraph_node* %node, i8 zeroext %pure) local_unnamed_addr #4 !dbg !6020 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !6022, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.value(metadata i8 %pure, metadata !6023, metadata !DIExpression()), !dbg !6025
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !6026
  %1 = load %struct.tree_function_decl*, %struct.tree_function_decl** %0, align 8, !dbg !6026
  %pure_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %1, i64 0, i32 5, !dbg !6026
  %bf.load = load i32, i32* %pure_flag, align 8, !dbg !6027
  %2 = and i8 %pure, 1, !dbg !6027
  %bf.value = zext i8 %2 to i32, !dbg !6027
  %bf.shl = shl nuw nsw i32 %bf.value, 27, !dbg !6027
  %bf.clear = and i32 %bf.load, -134217729, !dbg !6027
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !6027
  store i32 %bf.set, i32* %pure_flag, align 8, !dbg !6027
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !6028
  br label %for.cond, !dbg !6030

for.cond:                                         ; preds = %for.body, %entry
  %alias.0.in = phi %struct.cgraph_node** [ %same_body, %entry ], [ %next, %for.body ]
  %alias.0 = load %struct.cgraph_node*, %struct.cgraph_node** %alias.0.in, align 8, !dbg !6031
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !6024, metadata !DIExpression()), !dbg !6025
  %tobool = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !6032
  br i1 %tobool, label %for.end, label %for.body, !dbg !6032

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cgraph_node* %alias.0 to %struct.tree_function_decl**, !dbg !6033
  %4 = load %struct.tree_function_decl*, %struct.tree_function_decl** %3, align 8, !dbg !6033
  %pure_flag4 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %4, i64 0, i32 5, !dbg !6033
  %bf.load5 = load i32, i32* %pure_flag4, align 8, !dbg !6035
  %bf.clear8 = and i32 %bf.load5, -134217729, !dbg !6035
  %bf.set9 = or i32 %bf.clear8, %bf.shl, !dbg !6035
  store i32 %bf.set9, i32* %pure_flag4, align 8, !dbg !6035
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !6036
  br label %for.cond, !dbg !6037, !llvm.loop !6038

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6040
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_set_looping_const_or_pure_flag(%struct.cgraph_node* %node, i8 zeroext %looping_const_or_pure) local_unnamed_addr #4 !dbg !6041 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !6043, metadata !DIExpression()), !dbg !6046
  call void @llvm.dbg.value(metadata i8 %looping_const_or_pure, metadata !6044, metadata !DIExpression()), !dbg !6046
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !6047
  %1 = load %struct.tree_function_decl*, %struct.tree_function_decl** %0, align 8, !dbg !6047
  %looping_const_or_pure_flag = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %1, i64 0, i32 5, !dbg !6047
  %bf.load = load i32, i32* %looping_const_or_pure_flag, align 8, !dbg !6048
  %2 = and i8 %looping_const_or_pure, 1, !dbg !6048
  %bf.value = zext i8 %2 to i32, !dbg !6048
  %bf.shl = shl nuw nsw i32 %bf.value, 28, !dbg !6048
  %bf.clear = and i32 %bf.load, -268435457, !dbg !6048
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !6048
  store i32 %bf.set, i32* %looping_const_or_pure_flag, align 8, !dbg !6048
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !6049
  br label %for.cond, !dbg !6051

for.cond:                                         ; preds = %for.body, %entry
  %alias.0.in = phi %struct.cgraph_node** [ %same_body, %entry ], [ %next, %for.body ]
  %alias.0 = load %struct.cgraph_node*, %struct.cgraph_node** %alias.0.in, align 8, !dbg !6052
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !6045, metadata !DIExpression()), !dbg !6046
  %tobool = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !6053
  br i1 %tobool, label %for.end, label %for.body, !dbg !6053

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cgraph_node* %alias.0 to %struct.tree_function_decl**, !dbg !6054
  %4 = load %struct.tree_function_decl*, %struct.tree_function_decl** %3, align 8, !dbg !6054
  %looping_const_or_pure_flag4 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %4, i64 0, i32 5, !dbg !6054
  %bf.load5 = load i32, i32* %looping_const_or_pure_flag4, align 8, !dbg !6056
  %bf.clear8 = and i32 %bf.load5, -268435457, !dbg !6056
  %bf.set9 = or i32 %bf.clear8, %bf.shl, !dbg !6056
  store i32 %bf.set9, i32* %looping_const_or_pure_flag4, align 8, !dbg !6056
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !6057
  br label %for.cond, !dbg !6058, !llvm.loop !6059

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6061
}

declare dso_local void @gt_ggc_mx_cgraph_edge(i8*) #1

declare dso_local void @gt_pch_nx_cgraph_edge(i8*) #1

declare dso_local void @gt_ggc_mx_cgraph_node(i8*) #1

declare dso_local void @gt_pch_nx_cgraph_node(i8*) #1

declare dso_local void @gt_ggc_mx_cgraph_asm_node(i8*) #1

declare dso_local void @gt_pch_nx_cgraph_asm_node(i8*) #1

declare dso_local void @gt_ggc_m_P11cgraph_node4htab(i8*) #1

declare dso_local void @gt_pch_n_P11cgraph_node4htab(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @cgraph_allocate_node() unnamed_addr #0 !dbg !6062 {
entry:
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** @free_nodes, align 8, !dbg !6065
  %tobool = icmp eq %struct.cgraph_node* %0, null, !dbg !6065
  br i1 %tobool, label %if.else, label %if.then, !dbg !6067

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !6064, metadata !DIExpression()), !dbg !6068
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 3, !dbg !6069
  %1 = bitcast %struct.cgraph_node** %next to i64*, !dbg !6069
  %2 = load i64, i64* %1, align 8, !dbg !6069
  store i64 %2, i64* bitcast (%struct.cgraph_node** @free_nodes to i64*), align 8, !dbg !6071
  br label %if.end, !dbg !6072

if.else:                                          ; preds = %entry
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 312) #6, !dbg !6073
  %3 = bitcast i8* %call to %struct.cgraph_node*, !dbg !6073
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %3, metadata !6064, metadata !DIExpression()), !dbg !6068
  %4 = load i32, i32* @cgraph_max_uid, align 4, !dbg !6075
  %inc = add nsw i32 %4, 1, !dbg !6075
  store i32 %inc, i32* @cgraph_max_uid, align 4, !dbg !6075
  %uid = getelementptr inbounds i8, i8* %call, i64 296, !dbg !6076
  %5 = bitcast i8* %uid to i32*, !dbg !6076
  store i32 %4, i32* %5, align 8, !dbg !6077
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %node.0 = phi %struct.cgraph_node* [ %0, %if.then ], [ %3, %if.else ], !dbg !6078
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !6064, metadata !DIExpression()), !dbg !6068
  ret %struct.cgraph_node* %node.0, !dbg !6079
}

declare dso_local zeroext i8 @decl_assembler_name_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !6080 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !6084, metadata !DIExpression()), !dbg !6085
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !6086
  %bf.load = load i32, i32* %0, align 8, !dbg !6086
  %bf.clear = and i32 %bf.load, 255, !dbg !6086
  ret i32 %bf.clear, !dbg !6087
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !6088 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !6092, metadata !DIExpression()), !dbg !6094
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !6095
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !6096
  %bf.load = load i64, i64* %0, align 8, !dbg !6096
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !6098
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !6098
  br i1 %cmp, label %if.then, label %cleanup, !dbg !6099

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !6100
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !6100
  br label %cleanup, !dbg !6101

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !6094
  ret %union.tree_node* %retval.0, !dbg !6102
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !6103 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !6107, metadata !DIExpression()), !dbg !6108
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !6109
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !6109
  ret %struct.basic_block_def* %0, !dbg !6110
}

declare dso_local i32 @compute_call_stmt_bb_frequency(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !6111 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !6113, metadata !DIExpression()), !dbg !6114
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !6115
  ret %union.tree_node* %call, !dbg !6116
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !6117 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !6121, metadata !DIExpression()), !dbg !6123
  call void @llvm.dbg.value(metadata i32 1, metadata !6122, metadata !DIExpression()), !dbg !6123
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !6124
  %tobool = icmp eq i8 %call, 0, !dbg !6124
  br i1 %tobool, label %return, label %if.then, !dbg !6126

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !6127
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 1, !dbg !6127
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !6127
  br label %return, !dbg !6129

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !6130
  ret %union.tree_node* %retval.0, !dbg !6131
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !6132 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !6134, metadata !DIExpression()), !dbg !6135
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !6136
  %cmp = icmp eq i32 %call, 0, !dbg !6137
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !6138

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !6139
  %cmp2 = icmp ult i32 %call1, 10, !dbg !6140
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !6141
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !6142 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !6146, metadata !DIExpression()), !dbg !6148
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !6149
  %idxprom = zext i32 %call to i64, !dbg !6150
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !6150
  %0 = load i64, i64* %arrayidx, align 8, !dbg !6150
  call void @llvm.dbg.value(metadata i64 %0, metadata !6147, metadata !DIExpression()), !dbg !6148
  %cmp = icmp eq i64 %0, 0, !dbg !6151
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !6151

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !6151
  br label %cond.end, !dbg !6151

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !6152
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !6153
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !6154
  ret %union.tree_node** %2, !dbg !6155
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !6156 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !6160, metadata !DIExpression()), !dbg !6161
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !6162
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !6163
  ret i32 %call1, !dbg !6164
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !6165 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !6169, metadata !DIExpression()), !dbg !6170
  %idxprom = zext i32 %code to i64, !dbg !6171
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !6171
  %0 = load i32, i32* %arrayidx, align 4, !dbg !6171
  ret i32 %0, !dbg !6172
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2613, !2614, !2615}
!llvm.ident = !{!2616}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cgraph_global_info_ready", scope: !2, file: !3, line: 124, type: !814, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !812, globals: !2533, nameTableKind: None)
!3 = !DIFile(filename: "cgraph.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !14, !142, !337, !344, !350, !355, !360, !378, !385, !392, !399, !575, !597, !604, !747, !786}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cgraph_state", file: !6, line: 407, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CGRAPH_STATE_CONSTRUCTION", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CGRAPH_STATE_IPA", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CGRAPH_STATE_IPA_SSA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CGRAPH_STATE_EXPANSION", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CGRAPH_STATE_FINISHED", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !15, line: 7, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!17 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!23 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!25 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!27 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!28 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!29 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!30 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!31 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!32 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!33 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!34 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!35 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!36 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!37 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!38 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!39 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!40 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!41 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!42 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!43 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!44 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!45 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!46 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!47 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!48 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!49 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!50 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!51 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!52 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!53 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!54 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!55 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!56 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!57 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!58 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!59 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!60 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!61 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!62 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!63 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!64 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!65 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!66 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!67 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!68 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!69 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!70 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!71 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!72 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!73 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!74 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!75 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!76 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!77 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!78 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!79 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!80 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!81 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!82 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!83 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!84 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!85 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!86 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!87 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!88 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!89 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!90 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!91 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!92 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!93 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!94 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!95 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!96 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!97 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!98 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!99 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!100 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!101 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!102 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!103 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!131 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!140 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!141 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !143, line: 39, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!145 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!147 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!148 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!149 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!150 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!151 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!152 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!153 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!154 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!155 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!156 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!157 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!158 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!159 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!160 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!161 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!162 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!163 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!164 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!165 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!166 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!167 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!168 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!169 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!170 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!171 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!172 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!173 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!174 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!175 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!176 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!177 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!178 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!179 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!180 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!181 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!182 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!183 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!184 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!185 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!186 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!187 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!188 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!189 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!190 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!191 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!192 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!193 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!194 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!195 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!196 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!197 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!198 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!199 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!200 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!201 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!202 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!203 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!204 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!205 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!206 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!207 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!208 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!209 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!210 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!211 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!212 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!213 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!214 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!215 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!216 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!217 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!218 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!219 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!220 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!221 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!222 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!223 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!224 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!225 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!226 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!227 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!228 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!229 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!230 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!231 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!232 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!233 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!234 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!235 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!236 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!237 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!238 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!239 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!240 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!241 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!242 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!243 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!244 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!245 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!246 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!247 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!248 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!249 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!250 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!251 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!252 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!253 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!254 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!255 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!256 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!257 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!258 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!259 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!260 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!261 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!262 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!263 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!264 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!265 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!266 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!267 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!268 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!269 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!270 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!271 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!272 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!273 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!274 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!275 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!276 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!277 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!278 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!279 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!280 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!281 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!282 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!283 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!284 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!285 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!286 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!287 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!288 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!289 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!290 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!291 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!292 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!293 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!294 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!295 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!296 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!297 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!299 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!300 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!301 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!302 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!303 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!304 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!305 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!306 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!307 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!308 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!309 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!310 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!311 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!312 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!313 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!314 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!320 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!321 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!322 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!323 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!324 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!325 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!326 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!327 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!328 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!329 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!330 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!331 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!332 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!333 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!334 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!335 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!336 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!337 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !338, line: 30, baseType: !7, size: 32, elements: !339)
!338 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!339 = !{!340, !341, !342, !343}
!340 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!342 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!343 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !345, line: 363, baseType: !7, size: 32, elements: !346)
!345 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!346 = !{!347, !348, !349}
!347 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!348 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!349 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!350 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !345, line: 355, baseType: !7, size: 32, elements: !351)
!351 = !{!352, !353, !354}
!352 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!353 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!354 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !356, line: 474, baseType: !7, size: 32, elements: !357)
!356 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!357 = !{!358, !359}
!358 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!359 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !143, line: 280, baseType: !7, size: 32, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!362 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !143, line: 1817, baseType: !7, size: 32, elements: !379)
!379 = !{!380, !381, !382, !383, !384}
!380 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!385 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !143, line: 1805, baseType: !7, size: 32, elements: !386)
!386 = !{!387, !388, !389, !390, !391}
!387 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!392 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !393, line: 104, baseType: !7, size: 32, elements: !394)
!393 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!394 = !{!395, !396, !397, !398}
!395 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!396 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!397 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!398 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!399 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !400, line: 74, baseType: !7, size: 32, elements: !401)
!400 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!402 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!572 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!573 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!574 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 309, baseType: !7, size: 32, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!577 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!578 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!579 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!580 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!581 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!582 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!583 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!584 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!585 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!586 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!587 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!588 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!589 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!590 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!591 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!592 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!593 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!594 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!595 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!596 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!597 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "availability", file: !6, line: 27, baseType: !7, size: 32, elements: !598)
!598 = !{!599, !600, !601, !602, !603}
!599 = !DIEnumerator(name: "AVAIL_UNSET", value: 0, isUnsigned: true)
!600 = !DIEnumerator(name: "AVAIL_NOT_AVAILABLE", value: 1, isUnsigned: true)
!601 = !DIEnumerator(name: "AVAIL_OVERWRITABLE", value: 2, isUnsigned: true)
!602 = !DIEnumerator(name: "AVAIL_AVAILABLE", value: 3, isUnsigned: true)
!603 = !DIEnumerator(name: "AVAIL_LOCAL", value: 4, isUnsigned: true)
!604 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !605, line: 45, baseType: !7, size: 32, elements: !606)
!605 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!607 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!608 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!609 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!610 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!611 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!612 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!613 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!614 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!615 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!616 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!617 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!618 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!619 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!620 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!621 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!622 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!623 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!624 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!625 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!626 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!627 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!628 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!629 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!630 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!631 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!632 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!633 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!634 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!635 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!636 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!637 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!638 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!639 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!640 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!641 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!642 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!643 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!644 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!645 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!646 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!647 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!648 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!649 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!650 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!651 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!652 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!653 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!654 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!655 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!656 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!657 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!658 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!659 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!660 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!661 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!662 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!663 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!664 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!665 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!666 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!667 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!668 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!669 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!670 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!671 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!672 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!673 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!674 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!675 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!676 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!677 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!678 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!679 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!680 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!681 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!682 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!683 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!684 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!685 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!686 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!687 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!688 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!689 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!690 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!691 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!692 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!693 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!694 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!695 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!696 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!697 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!698 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!699 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!700 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!701 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!702 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!703 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!704 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!705 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!706 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!707 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!708 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!709 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!710 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!711 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!712 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!713 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!714 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!715 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!716 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!717 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!718 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!719 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!720 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!721 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!722 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!723 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!724 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!725 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!726 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!727 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!728 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!729 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!730 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!731 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!732 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!733 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!734 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!735 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!736 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!737 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!738 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!739 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!740 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!741 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!742 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!743 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!744 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!745 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!746 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!747 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !748, line: 51, baseType: !7, size: 32, elements: !749)
!748 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!750 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!751 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!752 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!753 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!754 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!755 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!756 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!757 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!758 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!759 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!760 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!761 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!762 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!763 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!764 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!765 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!766 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!767 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!768 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!769 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!770 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!771 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!772 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!773 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!774 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!775 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!776 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!777 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!778 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!779 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!780 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!781 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!782 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!783 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!784 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!785 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!786 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !748, line: 727, baseType: !7, size: 32, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!788 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!789 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!790 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!791 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!792 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!793 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!794 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!795 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!796 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!797 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!798 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!799 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!800 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!801 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!802 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!803 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!804 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!805 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!806 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!807 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!808 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!809 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!810 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!811 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!812 = !{!813, !814, !815, !816, !819, !820, !822, !2485, !2495, !2505, !142, !2515, !837, !830, !7, !835, !2516, !841, !2517, !834, !604, !2523, !1679, !2525, !2528, !1164, !2530, !1198, !817, !2532, !895}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!815 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge_hook_list", file: !3, line: 144, size: 192, elements: !824)
!824 = !{!825, !2483, !2484}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !823, file: !3, line: 145, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_edge_hook", file: !6, line: 513, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !830, !819}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !6, line: 314, size: 768, elements: !832)
!832 = !{!833, !836, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2475, !2476, !2477, !2478, !2480, !2481, !2482}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !831, file: !6, line: 316, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !345, line: 119, baseType: !835)
!835 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !831, file: !6, line: 317, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !6, line: 181, size: 2496, elements: !839)
!839 = !{!840, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2381, !2403, !2413, !2417, !2443, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !838, file: !6, line: 182, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !842, line: 56, baseType: !843)
!842 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !143, line: 3371, size: 1792, elements: !845)
!845 = !{!846, !879, !885, !897, !916, !927, !932, !941, !947, !960, !972, !1010, !1500, !1528, !1545, !1546, !1551, !1560, !1566, !1571, !1575, !1579, !1914, !1961, !1967, !1973, !1980, !1993, !2007, !2024, !2036, !2058, !2073, !2245}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !844, file: !143, line: 3372, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !143, line: 360, size: 64, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !847, file: !143, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !847, file: !143, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !847, file: !143, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !847, file: !143, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !847, file: !143, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !847, file: !143, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !847, file: !143, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !847, file: !143, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !847, file: !143, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !847, file: !143, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !847, file: !143, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !847, file: !143, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !847, file: !143, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !847, file: !143, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !847, file: !143, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !847, file: !143, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !847, file: !143, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !847, file: !143, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !847, file: !143, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !847, file: !143, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !847, file: !143, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !847, file: !143, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !847, file: !143, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !847, file: !143, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !847, file: !143, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !847, file: !143, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !847, file: !143, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !847, file: !143, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !847, file: !143, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !847, file: !143, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !844, file: !143, line: 3373, baseType: !880, size: 192)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !143, line: 402, size: 192, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !880, file: !143, line: 403, baseType: !847, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !880, file: !143, line: 404, baseType: !841, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !880, file: !143, line: 405, baseType: !841, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !844, file: !143, line: 3374, baseType: !886, size: 320)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !143, line: 1384, size: 320, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !886, file: !143, line: 1385, baseType: !880, size: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !886, file: !143, line: 1386, baseType: !890, size: 128, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !891, line: 58, baseType: !892)
!891 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 54, size: 128, elements: !893)
!893 = !{!894, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !892, file: !891, line: 56, baseType: !895, size: 64)
!895 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !892, file: !891, line: 57, baseType: !835, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !844, file: !143, line: 3375, baseType: !898, size: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !143, line: 1397, size: 256, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !898, file: !143, line: 1398, baseType: !880, size: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !898, file: !143, line: 1399, baseType: !902, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !904, line: 52, size: 256, elements: !905)
!904 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!905 = !{!906, !907, !908, !909, !910, !911, !912}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !903, file: !904, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !903, file: !904, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !903, file: !904, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !903, file: !904, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !903, file: !904, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !903, file: !904, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !903, file: !904, line: 62, baseType: !913, size: 192, offset: 64)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 192, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 3)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !844, file: !143, line: 3376, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !143, line: 1408, size: 256, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !917, file: !143, line: 1409, baseType: !880, size: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !917, file: !143, line: 1410, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !923, line: 27, size: 192, elements: !924)
!923 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !922, file: !923, line: 29, baseType: !890, size: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !922, file: !923, line: 30, baseType: !14, size: 32, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !844, file: !143, line: 3377, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !143, line: 1437, size: 256, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !928, file: !143, line: 1438, baseType: !880, size: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !928, file: !143, line: 1439, baseType: !841, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !844, file: !143, line: 3378, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !143, line: 1418, size: 256, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !143, line: 1419, baseType: !880, size: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !933, file: !143, line: 1420, baseType: !815, size: 32, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !933, file: !143, line: 1421, baseType: !938, size: 8, offset: 224)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 8, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 1)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !844, file: !143, line: 3379, baseType: !942, size: 320)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !143, line: 1428, size: 320, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !942, file: !143, line: 1429, baseType: !880, size: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !942, file: !143, line: 1430, baseType: !841, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !942, file: !143, line: 1431, baseType: !841, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !844, file: !143, line: 3380, baseType: !948, size: 320)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !143, line: 1460, size: 320, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !948, file: !143, line: 1461, baseType: !880, size: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !948, file: !143, line: 1462, baseType: !952, size: 128, offset: 192)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !953, line: 31, size: 128, elements: !954)
!953 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!954 = !{!955, !958, !959}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !952, file: !953, line: 32, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !952, file: !953, line: 33, baseType: !7, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !952, file: !953, line: 34, baseType: !7, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !844, file: !143, line: 3381, baseType: !961, size: 384)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !143, line: 2507, size: 384, elements: !962)
!962 = !{!963, !964, !969, !970, !971}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !961, file: !143, line: 2508, baseType: !880, size: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !961, file: !143, line: 2509, baseType: !965, size: 32, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !966, line: 58, baseType: !967)
!966 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !968, line: 44, baseType: !7)
!968 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!969 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !961, file: !143, line: 2510, baseType: !7, size: 32, offset: 224)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !961, file: !143, line: 2511, baseType: !841, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !961, file: !143, line: 2512, baseType: !841, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !844, file: !143, line: 3382, baseType: !973, size: 896)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !143, line: 2652, size: 896, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !973, file: !143, line: 2653, baseType: !961, size: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !973, file: !143, line: 2654, baseType: !841, size: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !973, file: !143, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !973, file: !143, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !973, file: !143, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !973, file: !143, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !973, file: !143, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !973, file: !143, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !973, file: !143, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !973, file: !143, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !973, file: !143, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !973, file: !143, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !973, file: !143, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !973, file: !143, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !973, file: !143, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !973, file: !143, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !973, file: !143, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !973, file: !143, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !973, file: !143, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !973, file: !143, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !973, file: !143, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !973, file: !143, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !973, file: !143, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !973, file: !143, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !973, file: !143, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !973, file: !143, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !973, file: !143, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !973, file: !143, line: 2703, baseType: !7, size: 32, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !973, file: !143, line: 2705, baseType: !841, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !973, file: !143, line: 2706, baseType: !841, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !973, file: !143, line: 2707, baseType: !841, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !973, file: !143, line: 2708, baseType: !841, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !973, file: !143, line: 2711, baseType: !1008, size: 64, offset: 832)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !143, line: 2711, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !844, file: !143, line: 3383, baseType: !1011, size: 960)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !143, line: 2756, size: 960, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1011, file: !143, line: 2757, baseType: !973, size: 896)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1011, file: !143, line: 2758, baseType: !1015, size: 64, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !842, line: 50, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !605, line: 240, size: 384, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1017, file: !605, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1017, file: !605, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1017, file: !605, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1017, file: !605, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1017, file: !605, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1017, file: !605, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1017, file: !605, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1017, file: !605, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1017, file: !605, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1017, file: !605, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1017, file: !605, line: 321, baseType: !1030, size: 320, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !605, line: 315, size: 320, elements: !1031)
!1031 = !{!1032, !1433, !1435, !1498, !1499}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1030, file: !605, line: 316, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 64, elements: !939)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !605, line: 183, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !605, line: 166, size: 64, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1049, !1050, !1062, !1065, !1125, !1126, !1410, !1423, !1430}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1035, file: !605, line: 168, baseType: !815, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1035, file: !605, line: 169, baseType: !7, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1035, file: !605, line: 170, baseType: !820, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1035, file: !605, line: 171, baseType: !1015, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1035, file: !605, line: 172, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !842, line: 53, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !605, line: 359, size: 128, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1044, file: !605, line: 360, baseType: !815, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1044, file: !605, line: 361, baseType: !1048, size: 64, offset: 64)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 64, elements: !939)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1035, file: !605, line: 173, baseType: !14, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1035, file: !605, line: 174, baseType: !1051, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !605, line: 133, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 115, size: 32, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1052, file: !605, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1052, file: !605, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1052, file: !605, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1052, file: !605, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1052, file: !605, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1052, file: !605, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1052, file: !605, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1052, file: !605, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1035, file: !605, line: 175, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !605, line: 175, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1035, file: !605, line: 176, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1068, line: 75, size: 256, elements: !1069)
!1068 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1069 = !{!1070, !1084, !1085, !1086}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1067, file: !1068, line: 76, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1068, line: 68, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1068, line: 63, size: 320, elements: !1074)
!1074 = !{!1075, !1077, !1078, !1079}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !1068, line: 64, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1073, file: !1068, line: 65, baseType: !1076, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1073, file: !1068, line: 66, baseType: !7, size: 32, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1073, file: !1068, line: 67, baseType: !1080, size: 128, offset: 192)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 128, elements: !1082)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1068, line: 29, baseType: !895)
!1082 = !{!1083}
!1083 = !DISubrange(count: 2)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1067, file: !1068, line: 77, baseType: !1071, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1067, file: !1068, line: 78, baseType: !7, size: 32, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1067, file: !1068, line: 79, baseType: !1087, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1068, line: 49, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1068, line: 45, size: 832, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1089, file: !1068, line: 46, baseType: !1076, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1089, file: !1068, line: 47, baseType: !1066, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1089, file: !1068, line: 48, baseType: !1094, size: 704, offset: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1095, line: 164, size: 704, elements: !1096)
!1095 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1096 = !{!1097, !1098, !1108, !1109, !1110, !1111, !1112, !1113, !1117, !1121, !1122, !1123, !1124}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1094, file: !1095, line: 166, baseType: !835, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1094, file: !1095, line: 167, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1095, line: 157, size: 192, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1100, file: !1095, line: 159, baseType: !817, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1100, file: !1095, line: 160, baseType: !1099, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1100, file: !1095, line: 161, baseType: !1105, size: 32, offset: 128)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 32, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 4)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1094, file: !1095, line: 168, baseType: !817, size: 64, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1094, file: !1095, line: 169, baseType: !817, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1094, file: !1095, line: 170, baseType: !817, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1094, file: !1095, line: 171, baseType: !835, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1094, file: !1095, line: 172, baseType: !815, size: 32, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1094, file: !1095, line: 176, baseType: !1114, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1099, !819, !835}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1094, file: !1095, line: 177, baseType: !1118, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !819, !1099}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1094, file: !1095, line: 178, baseType: !819, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1094, file: !1095, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1094, file: !1095, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1094, file: !1095, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1035, file: !605, line: 177, baseType: !841, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1035, file: !605, line: 178, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !345, line: 217, size: 832, elements: !1129)
!1129 = !{!1130, !1375, !1376, !1377, !1380, !1384, !1385, !1386, !1404, !1405, !1406, !1407, !1408, !1409}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1128, file: !345, line: 219, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !345, line: 151, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !345, line: 151, size: 128, elements: !1134)
!1134 = !{!1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1133, file: !345, line: 151, baseType: !1136, size: 128)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !345, line: 150, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !345, line: 150, size: 128, elements: !1138)
!1138 = !{!1139, !1140, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1137, file: !345, line: 150, baseType: !7, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1137, file: !345, line: 150, baseType: !7, size: 32, offset: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1137, file: !345, line: 150, baseType: !1142, size: 64, offset: 64)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, size: 64, elements: !939)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !842, line: 108, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !345, line: 122, size: 512, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1145, file: !345, line: 124, baseType: !1127, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1145, file: !345, line: 125, baseType: !1127, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1145, file: !345, line: 131, baseType: !1150, size: 64, offset: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !345, line: 128, size: 64, elements: !1151)
!1151 = !{!1152, !1367}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1150, file: !345, line: 129, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !842, line: 66, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !748, line: 143, size: 192, elements: !1156)
!1156 = !{!1157, !1365, !1366}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1155, file: !748, line: 145, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !842, line: 69, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !748, line: 136, size: 192, elements: !1161)
!1161 = !{!1162, !1363, !1364}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1160, file: !748, line: 137, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !842, line: 58, baseType: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !748, line: 737, size: 768, elements: !1166)
!1166 = !{!1167, !1184, !1218, !1224, !1229, !1234, !1241, !1247, !1253, !1258, !1272, !1277, !1283, !1288, !1298, !1303, !1321, !1328, !1335, !1341, !1346, !1352, !1358}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1165, file: !748, line: 738, baseType: !1168, size: 256)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !748, line: 271, size: 256, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1168, file: !748, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1168, file: !748, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1168, file: !748, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1168, file: !748, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1168, file: !748, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1168, file: !748, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1168, file: !748, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1168, file: !748, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1168, file: !748, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1168, file: !748, line: 312, baseType: !7, size: 32, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1168, file: !748, line: 316, baseType: !965, size: 32, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1168, file: !748, line: 319, baseType: !7, size: 32, offset: 96)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1168, file: !748, line: 323, baseType: !1127, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1168, file: !748, line: 327, baseType: !841, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1165, file: !748, line: 739, baseType: !1185, size: 448)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !748, line: 350, size: 448, elements: !1186)
!1186 = !{!1187, !1216}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1185, file: !748, line: 353, baseType: !1188, size: 384)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !748, line: 333, size: 384, elements: !1189)
!1189 = !{!1190, !1191, !1199}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1188, file: !748, line: 336, baseType: !1168, size: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1188, file: !748, line: 343, baseType: !1192, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1194, line: 37, size: 128, elements: !1195)
!1194 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1193, file: !1194, line: 39, baseType: !1192, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1193, file: !1194, line: 40, baseType: !1198, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1188, file: !748, line: 344, baseType: !1200, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1194, line: 45, size: 320, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1201, file: !1194, line: 47, baseType: !1200, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1201, file: !1194, line: 48, baseType: !1205, size: 256, offset: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !143, line: 1883, size: 256, elements: !1206)
!1206 = !{!1207, !1209, !1210, !1215}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1205, file: !143, line: 1884, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1205, file: !143, line: 1885, baseType: !1208, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1205, file: !143, line: 1891, baseType: !1211, size: 64, offset: 128)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !143, line: 1891, size: 64, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1211, file: !143, line: 1891, baseType: !1163, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1211, file: !143, line: 1891, baseType: !841, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1205, file: !143, line: 1892, baseType: !1198, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1185, file: !748, line: 359, baseType: !1217, size: 64, offset: 384)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 64, elements: !939)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1165, file: !748, line: 740, baseType: !1219, size: 512)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !748, line: 365, size: 512, elements: !1220)
!1220 = !{!1221, !1222, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1219, file: !748, line: 368, baseType: !1188, size: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1219, file: !748, line: 373, baseType: !841, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1219, file: !748, line: 374, baseType: !841, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1165, file: !748, line: 741, baseType: !1225, size: 576)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !748, line: 380, size: 576, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1225, file: !748, line: 383, baseType: !1219, size: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1225, file: !748, line: 389, baseType: !1217, size: 64, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1165, file: !748, line: 742, baseType: !1230, size: 320)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !748, line: 395, size: 320, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1230, file: !748, line: 397, baseType: !1168, size: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1230, file: !748, line: 400, baseType: !1153, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1165, file: !748, line: 743, baseType: !1235, size: 448)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !748, line: 406, size: 448, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1235, file: !748, line: 408, baseType: !1168, size: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1235, file: !748, line: 412, baseType: !841, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1235, file: !748, line: 420, baseType: !841, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1235, file: !748, line: 423, baseType: !1153, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1165, file: !748, line: 744, baseType: !1242, size: 384)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !748, line: 429, size: 384, elements: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1242, file: !748, line: 431, baseType: !1168, size: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1242, file: !748, line: 434, baseType: !841, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1242, file: !748, line: 437, baseType: !1153, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1165, file: !748, line: 745, baseType: !1248, size: 384)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !748, line: 443, size: 384, elements: !1249)
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1248, file: !748, line: 445, baseType: !1168, size: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1248, file: !748, line: 449, baseType: !841, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1248, file: !748, line: 453, baseType: !1153, size: 64, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1165, file: !748, line: 746, baseType: !1254, size: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !748, line: 459, size: 320, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1254, file: !748, line: 461, baseType: !1168, size: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1254, file: !748, line: 464, baseType: !841, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1165, file: !748, line: 747, baseType: !1259, size: 768)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !748, line: 469, size: 768, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1259, file: !748, line: 471, baseType: !1168, size: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1259, file: !748, line: 474, baseType: !7, size: 32, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1259, file: !748, line: 475, baseType: !7, size: 32, offset: 288)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1259, file: !748, line: 478, baseType: !841, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1259, file: !748, line: 481, baseType: !1266, size: 384, offset: 384)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1267, size: 384, elements: !939)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !143, line: 1917, size: 384, elements: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1267, file: !143, line: 1920, baseType: !1205, size: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1267, file: !143, line: 1921, baseType: !841, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1267, file: !143, line: 1922, baseType: !965, size: 32, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1165, file: !748, line: 748, baseType: !1273, size: 320)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !748, line: 487, size: 320, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1273, file: !748, line: 490, baseType: !1168, size: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1273, file: !748, line: 494, baseType: !815, size: 32, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1165, file: !748, line: 749, baseType: !1278, size: 384)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !748, line: 500, size: 384, elements: !1279)
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1278, file: !748, line: 502, baseType: !1168, size: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1278, file: !748, line: 506, baseType: !1153, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1278, file: !748, line: 510, baseType: !1153, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1165, file: !748, line: 750, baseType: !1284, size: 320)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !748, line: 529, size: 320, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1284, file: !748, line: 531, baseType: !1168, size: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1284, file: !748, line: 540, baseType: !1153, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1165, file: !748, line: 751, baseType: !1289, size: 704)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !748, line: 546, size: 704, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1289, file: !748, line: 549, baseType: !1219, size: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1289, file: !748, line: 553, baseType: !820, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1289, file: !748, line: 557, baseType: !814, size: 8, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1289, file: !748, line: 558, baseType: !814, size: 8, offset: 584)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1289, file: !748, line: 559, baseType: !814, size: 8, offset: 592)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1289, file: !748, line: 560, baseType: !814, size: 8, offset: 600)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1289, file: !748, line: 566, baseType: !1217, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1165, file: !748, line: 752, baseType: !1299, size: 384)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !748, line: 571, size: 384, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1299, file: !748, line: 573, baseType: !1230, size: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1299, file: !748, line: 577, baseType: !841, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1165, file: !748, line: 753, baseType: !1304, size: 576)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !748, line: 600, size: 576, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1311, !1320}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1304, file: !748, line: 602, baseType: !1230, size: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1304, file: !748, line: 605, baseType: !841, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1304, file: !748, line: 609, baseType: !1309, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1310, line: 46, baseType: !895)
!1310 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1304, file: !748, line: 612, baseType: !1312, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !748, line: 581, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1313, file: !748, line: 583, baseType: !142, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1313, file: !748, line: 586, baseType: !841, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1313, file: !748, line: 589, baseType: !841, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1313, file: !748, line: 592, baseType: !841, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1313, file: !748, line: 595, baseType: !841, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1304, file: !748, line: 616, baseType: !1153, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1165, file: !748, line: 754, baseType: !1322, size: 512)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !748, line: 622, size: 512, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1322, file: !748, line: 624, baseType: !1230, size: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1322, file: !748, line: 628, baseType: !841, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1322, file: !748, line: 632, baseType: !841, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1322, file: !748, line: 636, baseType: !841, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1165, file: !748, line: 755, baseType: !1329, size: 704)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !748, line: 642, size: 704, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1329, file: !748, line: 644, baseType: !1322, size: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1329, file: !748, line: 648, baseType: !841, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1329, file: !748, line: 652, baseType: !841, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1329, file: !748, line: 653, baseType: !841, size: 64, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1165, file: !748, line: 756, baseType: !1336, size: 448)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !748, line: 663, size: 448, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1336, file: !748, line: 665, baseType: !1230, size: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1336, file: !748, line: 668, baseType: !841, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1336, file: !748, line: 673, baseType: !841, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1165, file: !748, line: 757, baseType: !1342, size: 384)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !748, line: 694, size: 384, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1342, file: !748, line: 696, baseType: !1230, size: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1342, file: !748, line: 699, baseType: !841, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1165, file: !748, line: 758, baseType: !1347, size: 384)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !748, line: 681, size: 384, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1347, file: !748, line: 683, baseType: !1168, size: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1347, file: !748, line: 686, baseType: !841, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1347, file: !748, line: 689, baseType: !841, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1165, file: !748, line: 759, baseType: !1353, size: 384)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !748, line: 707, size: 384, elements: !1354)
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1353, file: !748, line: 709, baseType: !1168, size: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1353, file: !748, line: 712, baseType: !841, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1353, file: !748, line: 712, baseType: !841, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1165, file: !748, line: 760, baseType: !1359, size: 320)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !748, line: 718, size: 320, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1359, file: !748, line: 720, baseType: !1168, size: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1359, file: !748, line: 723, baseType: !841, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1160, file: !748, line: 138, baseType: !1159, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1160, file: !748, line: 139, baseType: !1159, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1155, file: !748, line: 146, baseType: !1158, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1155, file: !748, line: 152, baseType: !1153, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1150, file: !345, line: 130, baseType: !1015, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1145, file: !345, line: 134, baseType: !819, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1145, file: !345, line: 137, baseType: !841, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1145, file: !345, line: 138, baseType: !965, size: 32, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1145, file: !345, line: 142, baseType: !7, size: 32, offset: 352)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1145, file: !345, line: 144, baseType: !815, size: 32, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1145, file: !345, line: 145, baseType: !815, size: 32, offset: 416)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1145, file: !345, line: 146, baseType: !834, size: 64, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1128, file: !345, line: 220, baseType: !1131, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1128, file: !345, line: 223, baseType: !819, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1128, file: !345, line: 226, baseType: !1378, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !345, line: 185, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1128, file: !345, line: 229, baseType: !1381, size: 128, offset: 256)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 128, elements: !1082)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !345, line: 229, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1128, file: !345, line: 232, baseType: !1127, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1128, file: !345, line: 233, baseType: !1127, size: 64, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1128, file: !345, line: 238, baseType: !1387, size: 64, offset: 512)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !345, line: 235, size: 64, elements: !1388)
!1388 = !{!1389, !1395}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1387, file: !345, line: 236, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !345, line: 273, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1391, file: !345, line: 275, baseType: !1153, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1391, file: !345, line: 278, baseType: !1153, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1387, file: !345, line: 237, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !345, line: 259, size: 320, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1397, file: !345, line: 261, baseType: !1015, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1397, file: !345, line: 262, baseType: !1015, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1397, file: !345, line: 266, baseType: !1015, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1397, file: !345, line: 267, baseType: !1015, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1397, file: !345, line: 270, baseType: !815, size: 32, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1128, file: !345, line: 241, baseType: !834, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1128, file: !345, line: 244, baseType: !815, size: 32, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1128, file: !345, line: 247, baseType: !815, size: 32, offset: 672)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1128, file: !345, line: 250, baseType: !815, size: 32, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1128, file: !345, line: 253, baseType: !815, size: 32, offset: 736)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !345, line: 256, baseType: !815, size: 32, offset: 768)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1035, file: !605, line: 179, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !605, line: 150, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !605, line: 142, size: 320, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1421, !1422}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1413, file: !605, line: 144, baseType: !841, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1413, file: !605, line: 145, baseType: !1015, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1413, file: !605, line: 146, baseType: !1015, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1413, file: !605, line: 147, baseType: !1419, size: 32, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1420, line: 31, baseType: !815)
!1420 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1413, file: !605, line: 148, baseType: !7, size: 32, offset: 224)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1413, file: !605, line: 149, baseType: !814, size: 8, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1035, file: !605, line: 180, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !605, line: 162, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !605, line: 159, size: 128, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1426, file: !605, line: 160, baseType: !841, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1426, file: !605, line: 161, baseType: !835, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1035, file: !605, line: 181, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !605, line: 181, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1030, file: !605, line: 317, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 64, elements: !939)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1030, file: !605, line: 318, baseType: !1436, size: 320)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !605, line: 188, size: 320, elements: !1437)
!1437 = !{!1438, !1440, !1497}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1436, file: !605, line: 190, baseType: !1439, size: 192)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 192, elements: !914)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1436, file: !605, line: 193, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !605, line: 206, size: 320, elements: !1443)
!1443 = !{!1444, !1482, !1483, !1484, !1496}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1442, file: !605, line: 208, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !842, line: 62, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1448, line: 538, size: 256, elements: !1449)
!1448 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1449 = !{!1450, !1454, !1460, !1473}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1447, file: !1448, line: 539, baseType: !1451, size: 32)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1448, line: 482, size: 32, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1451, file: !1448, line: 484, baseType: !7, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1447, file: !1448, line: 540, baseType: !1455, size: 192)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1448, line: 488, size: 192, elements: !1456)
!1456 = !{!1457, !1458, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1455, file: !1448, line: 489, baseType: !1451, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1455, file: !1448, line: 492, baseType: !820, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1455, file: !1448, line: 496, baseType: !841, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1447, file: !1448, line: 541, baseType: !1461, size: 256)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1448, line: 504, size: 256, elements: !1462)
!1462 = !{!1463, !1464, !1471, !1472}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !1448, line: 505, baseType: !1451, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1461, file: !1448, line: 509, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1448, line: 501, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1461, file: !1448, line: 510, baseType: !1469, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1461, file: !1448, line: 513, baseType: !1445, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1447, file: !1448, line: 542, baseType: !1474, size: 128)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1448, line: 530, size: 128, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1474, file: !1448, line: 531, baseType: !1451, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1474, file: !1448, line: 534, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1448, line: 525, baseType: !1479)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!814, !841, !820, !895, !895}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1442, file: !605, line: 211, baseType: !7, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1442, file: !605, line: 214, baseType: !835, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1442, file: !605, line: 224, baseType: !1485, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !605, line: 202, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !605, line: 202, size: 128, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1487, file: !605, line: 202, baseType: !1490, size: 128)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !605, line: 200, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !605, line: 200, size: 128, elements: !1492)
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1491, file: !605, line: 200, baseType: !7, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1491, file: !605, line: 200, baseType: !7, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1491, file: !605, line: 200, baseType: !1048, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1442, file: !605, line: 234, baseType: !1485, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1436, file: !605, line: 197, baseType: !835, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1030, file: !605, line: 319, baseType: !903, size: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1030, file: !605, line: 320, baseType: !922, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !844, file: !143, line: 3384, baseType: !1501, size: 1472)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !143, line: 3114, size: 1472, elements: !1502)
!1502 = !{!1503, !1524, !1525, !1526, !1527}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1501, file: !143, line: 3115, baseType: !1504, size: 1216)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !143, line: 2984, size: 1216, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1504, file: !143, line: 2985, baseType: !1011, size: 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1504, file: !143, line: 2986, baseType: !841, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1504, file: !143, line: 2987, baseType: !841, size: 64, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1504, file: !143, line: 2988, baseType: !841, size: 64, offset: 1088)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1504, file: !143, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1504, file: !143, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1504, file: !143, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1504, file: !143, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1504, file: !143, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1504, file: !143, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1504, file: !143, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1504, file: !143, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1504, file: !143, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1504, file: !143, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1504, file: !143, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1504, file: !143, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1504, file: !143, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1504, file: !143, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1501, file: !143, line: 3117, baseType: !841, size: 64, offset: 1216)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1501, file: !143, line: 3119, baseType: !841, size: 64, offset: 1280)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1501, file: !143, line: 3121, baseType: !841, size: 64, offset: 1344)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1501, file: !143, line: 3123, baseType: !841, size: 64, offset: 1408)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !844, file: !143, line: 3385, baseType: !1529, size: 1088)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !143, line: 2874, size: 1088, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1529, file: !143, line: 2875, baseType: !1011, size: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1529, file: !143, line: 2876, baseType: !1015, size: 64, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1529, file: !143, line: 2877, baseType: !1534, size: 64, offset: 1024)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1536, line: 172, size: 128, elements: !1537)
!1536 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1535, file: !1536, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1535, file: !1536, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1535, file: !1536, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1535, file: !1536, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1535, file: !1536, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1535, file: !1536, line: 195, baseType: !7, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1535, file: !1536, line: 199, baseType: !841, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !844, file: !143, line: 3386, baseType: !1504, size: 1216)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !844, file: !143, line: 3387, baseType: !1547, size: 1280)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !143, line: 3093, size: 1280, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1547, file: !143, line: 3094, baseType: !1504, size: 1216)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1547, file: !143, line: 3095, baseType: !1534, size: 64, offset: 1216)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !844, file: !143, line: 3388, baseType: !1552, size: 1216)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !143, line: 2824, size: 1216, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1552, file: !143, line: 2825, baseType: !973, size: 896)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1552, file: !143, line: 2827, baseType: !841, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1552, file: !143, line: 2828, baseType: !841, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1552, file: !143, line: 2829, baseType: !841, size: 64, offset: 1024)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1552, file: !143, line: 2830, baseType: !841, size: 64, offset: 1088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1552, file: !143, line: 2831, baseType: !841, size: 64, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !844, file: !143, line: 3389, baseType: !1561, size: 1024)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !143, line: 2850, size: 1024, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1561, file: !143, line: 2851, baseType: !1011, size: 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1561, file: !143, line: 2852, baseType: !815, size: 32, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1561, file: !143, line: 2853, baseType: !815, size: 32, offset: 992)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !844, file: !143, line: 3390, baseType: !1567, size: 1024)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !143, line: 2857, size: 1024, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1567, file: !143, line: 2858, baseType: !1011, size: 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1567, file: !143, line: 2859, baseType: !1534, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !844, file: !143, line: 3391, baseType: !1572, size: 960)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !143, line: 2862, size: 960, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1572, file: !143, line: 2863, baseType: !1011, size: 960)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !844, file: !143, line: 3392, baseType: !1576, size: 1472)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !143, line: 3304, size: 1472, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1576, file: !143, line: 3305, baseType: !1501, size: 1472)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !844, file: !143, line: 3393, baseType: !1580, size: 1792)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !143, line: 3248, size: 1792, elements: !1581)
!1581 = !{!1582, !1583, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1580, file: !143, line: 3249, baseType: !1501, size: 1472)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1580, file: !143, line: 3251, baseType: !1584, size: 64, offset: 1472)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1586, line: 463, size: 1152, elements: !1587)
!1586 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1587 = !{!1588, !1747, !1778, !1779, !1834, !1837, !1838, !1839, !1840, !1841, !1842, !1866, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1585, file: !1586, line: 464, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !338, line: 194, size: 384, elements: !1591)
!1591 = !{!1592, !1641, !1654, !1668, !1716, !1728}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1590, file: !338, line: 197, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !338, line: 182, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !338, line: 116, size: 704, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1629, !1638, !1639, !1640}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1595, file: !338, line: 119, baseType: !1594, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1595, file: !338, line: 122, baseType: !1594, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1595, file: !338, line: 123, baseType: !1594, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1595, file: !338, line: 126, baseType: !815, size: 32, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1595, file: !338, line: 129, baseType: !337, size: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1595, file: !338, line: 165, baseType: !1603, size: 192, offset: 256)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !338, line: 132, size: 192, elements: !1604)
!1604 = !{!1605, !1618, !1624}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1603, file: !338, line: 137, baseType: !1606, size: 128)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !338, line: 133, size: 128, elements: !1607)
!1607 = !{!1608, !1617}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1606, file: !338, line: 135, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !338, line: 93, size: 320, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1610, file: !338, line: 96, baseType: !1609, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1610, file: !338, line: 97, baseType: !1609, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1610, file: !338, line: 101, baseType: !841, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1610, file: !338, line: 106, baseType: !841, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1610, file: !338, line: 111, baseType: !841, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1606, file: !338, line: 136, baseType: !1609, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1603, file: !338, line: 151, baseType: !1619, size: 192)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !338, line: 139, size: 192, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1619, file: !338, line: 141, baseType: !841, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1619, file: !338, line: 145, baseType: !841, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1619, file: !338, line: 150, baseType: !815, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1603, file: !338, line: 164, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !338, line: 153, size: 128, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1625, file: !338, line: 161, baseType: !841, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1625, file: !338, line: 163, baseType: !965, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1595, file: !338, line: 168, baseType: !1630, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !338, line: 67, size: 320, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1631, file: !338, line: 70, baseType: !1630, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1631, file: !338, line: 73, baseType: !1594, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1631, file: !338, line: 78, baseType: !841, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1631, file: !338, line: 85, baseType: !1015, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1631, file: !338, line: 88, baseType: !815, size: 32, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1595, file: !338, line: 173, baseType: !1015, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1595, file: !338, line: 173, baseType: !1015, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1595, file: !338, line: 177, baseType: !814, size: 8, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1590, file: !338, line: 200, baseType: !1642, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !338, line: 185, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !338, line: 185, size: 128, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1644, file: !338, line: 185, baseType: !1647, size: 128)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !338, line: 184, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !338, line: 184, size: 128, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1648, file: !338, line: 184, baseType: !7, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1648, file: !338, line: 184, baseType: !7, size: 32, offset: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1648, file: !338, line: 184, baseType: !1653, size: 64, offset: 64)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1593, size: 64, elements: !939)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1590, file: !338, line: 203, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !338, line: 189, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !338, line: 189, size: 128, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1657, file: !338, line: 189, baseType: !1660, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !338, line: 188, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !338, line: 188, size: 128, elements: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1661, file: !338, line: 188, baseType: !7, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1661, file: !338, line: 188, baseType: !7, size: 32, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1661, file: !338, line: 188, baseType: !1666, size: 64, offset: 64)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1667, size: 64, elements: !939)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !338, line: 180, baseType: !1630)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1590, file: !338, line: 207, baseType: !1669, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1670, line: 144, baseType: !1671)
!1670 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1670, line: 100, size: 896, elements: !1673)
!1673 = !{!1674, !1680, !1685, !1690, !1692, !1693, !1694, !1695, !1696, !1697, !1702, !1704, !1705, !1710, !1715}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1672, file: !1670, line: 102, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1670, line: 52, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1679, !1469}
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1670, line: 47, baseType: !7)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1672, file: !1670, line: 105, baseType: !1681, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1670, line: 59, baseType: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!815, !1469, !1469}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1672, file: !1670, line: 108, baseType: !1686, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1670, line: 63, baseType: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !819}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1672, file: !1670, line: 111, baseType: !1691, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1672, file: !1670, line: 114, baseType: !1309, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1672, file: !1670, line: 117, baseType: !1309, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1672, file: !1670, line: 120, baseType: !1309, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1672, file: !1670, line: 124, baseType: !7, size: 32, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1672, file: !1670, line: 128, baseType: !7, size: 32, offset: 480)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1672, file: !1670, line: 131, baseType: !1698, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1670, line: 75, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!819, !1309, !1309}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1672, file: !1670, line: 132, baseType: !1703, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1670, line: 78, baseType: !1687)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1672, file: !1670, line: 135, baseType: !819, size: 64, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1672, file: !1670, line: 136, baseType: !1706, size: 64, offset: 704)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1670, line: 82, baseType: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!819, !819, !1309, !1309}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1672, file: !1670, line: 137, baseType: !1711, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1670, line: 83, baseType: !1712)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !819, !819}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1672, file: !1670, line: 141, baseType: !7, size: 32, offset: 832)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1590, file: !338, line: 211, baseType: !1717, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !143, line: 183, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !143, line: 183, size: 128, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1719, file: !143, line: 183, baseType: !1722, size: 128)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !143, line: 182, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !143, line: 182, size: 128, elements: !1724)
!1724 = !{!1725, !1726, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1723, file: !143, line: 182, baseType: !7, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1723, file: !143, line: 182, baseType: !7, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1723, file: !143, line: 182, baseType: !1217, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1590, file: !338, line: 220, baseType: !1729, size: 64, offset: 320)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !338, line: 217, size: 64, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1729, file: !338, line: 218, baseType: !1717, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1729, file: !338, line: 219, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1735, line: 29, baseType: !1736)
!1735 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1735, line: 29, size: 96, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1736, file: !1735, line: 29, baseType: !1739, size: 96)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1735, line: 27, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1735, line: 27, size: 96, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1740, file: !1735, line: 27, baseType: !7, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1740, file: !1735, line: 27, baseType: !7, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1740, file: !1735, line: 27, baseType: !1745, size: 8, offset: 64)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1746, size: 8, elements: !939)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1735, line: 26, baseType: !814)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1585, file: !1586, line: 467, baseType: !1748, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !345, line: 374, size: 640, elements: !1750)
!1750 = !{!1751, !1753, !1754, !1767, !1768, !1769, !1770, !1771, !1772, !1774, !1776, !1777}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1749, file: !345, line: 377, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !842, line: 111, baseType: !1127)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1749, file: !345, line: 378, baseType: !1752, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1749, file: !345, line: 381, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !345, line: 282, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !345, line: 282, size: 128, elements: !1758)
!1758 = !{!1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1757, file: !345, line: 282, baseType: !1760, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !345, line: 281, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !345, line: 281, size: 128, elements: !1762)
!1762 = !{!1763, !1764, !1765}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1761, file: !345, line: 281, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1761, file: !345, line: 281, baseType: !7, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1761, file: !345, line: 281, baseType: !1766, size: 64, offset: 64)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1752, size: 64, elements: !939)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1749, file: !345, line: 384, baseType: !815, size: 32, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1749, file: !345, line: 387, baseType: !815, size: 32, offset: 224)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1749, file: !345, line: 390, baseType: !815, size: 32, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1749, file: !345, line: 394, baseType: !1755, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1749, file: !345, line: 396, baseType: !344, size: 32, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1749, file: !345, line: 399, baseType: !1773, size: 64, offset: 416)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 64, elements: !1082)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1749, file: !345, line: 402, baseType: !1775, size: 64, offset: 480)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1082)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1749, file: !345, line: 406, baseType: !815, size: 32, offset: 544)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1749, file: !345, line: 409, baseType: !815, size: 32, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1585, file: !1586, line: 470, baseType: !1154, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1585, file: !1586, line: 473, baseType: !1780, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1536, line: 39, size: 1152, elements: !1782)
!1782 = !{!1783, !1784, !1797, !1798, !1799, !1811, !1812, !1816, !1817, !1818, !1819, !1820}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1781, file: !1536, line: 41, baseType: !1669, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1781, file: !1536, line: 48, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !748, line: 35, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !748, line: 35, size: 128, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1787, file: !748, line: 35, baseType: !1790, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !748, line: 33, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !748, line: 33, size: 128, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1791, file: !748, line: 33, baseType: !7, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1791, file: !748, line: 33, baseType: !7, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1791, file: !748, line: 33, baseType: !1796, size: 64, offset: 64)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1163, size: 64, elements: !939)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1781, file: !1536, line: 51, baseType: !1717, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1781, file: !1536, line: 54, baseType: !841, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1781, file: !1536, line: 57, baseType: !1800, size: 128, offset: 256)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1801, line: 31, size: 128, elements: !1802)
!1801 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1800, file: !1801, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1800, file: !1801, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1800, file: !1801, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1800, file: !1801, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1800, file: !1801, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1800, file: !1801, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1800, file: !1801, line: 56, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !842, line: 47, baseType: !1066)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1781, file: !1536, line: 60, baseType: !1800, size: 128, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1781, file: !1536, line: 64, baseType: !1813, size: 64, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1815, line: 33, flags: DIFlagFwdDecl)
!1815 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1781, file: !1536, line: 67, baseType: !841, size: 64, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1781, file: !1536, line: 73, baseType: !1669, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1781, file: !1536, line: 77, baseType: !1810, size: 64, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1781, file: !1536, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1781, file: !1536, line: 82, baseType: !1821, size: 320, offset: 832)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1194, line: 62, size: 320, elements: !1822)
!1822 = !{!1823, !1829, !1830, !1831, !1832, !1833}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1821, file: !1194, line: 63, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1194, line: 56, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1825, file: !1194, line: 57, baseType: !1824, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1825, file: !1194, line: 58, baseType: !938, size: 8, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1821, file: !1194, line: 64, baseType: !7, size: 32, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1821, file: !1194, line: 66, baseType: !7, size: 32, offset: 96)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1821, file: !1194, line: 68, baseType: !814, size: 8, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1821, file: !1194, line: 70, baseType: !1192, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1821, file: !1194, line: 71, baseType: !1200, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1585, file: !1586, line: 476, baseType: !1835, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1586, line: 476, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1585, file: !1586, line: 479, baseType: !1669, size: 64, offset: 320)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1585, file: !1586, line: 484, baseType: !841, size: 64, offset: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1585, file: !1586, line: 488, baseType: !841, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1585, file: !1586, line: 493, baseType: !841, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1585, file: !1586, line: 496, baseType: !841, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1585, file: !1586, line: 501, baseType: !1843, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !356, line: 2355, size: 576, elements: !1845)
!1845 = !{!1846, !1849, !1850, !1851, !1852, !1854, !1855, !1860, !1861, !1862, !1863, !1864, !1865}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1844, file: !356, line: 2356, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !356, line: 2356, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1844, file: !356, line: 2357, baseType: !820, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1844, file: !356, line: 2358, baseType: !815, size: 32, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1844, file: !356, line: 2359, baseType: !815, size: 32, offset: 160)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1844, file: !356, line: 2360, baseType: !1853, size: 128, offset: 192)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 128, elements: !1106)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1844, file: !356, line: 2364, baseType: !815, size: 32, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1844, file: !356, line: 2367, baseType: !1856, size: 128, offset: 384)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !356, line: 2349, size: 128, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1856, file: !356, line: 2351, baseType: !1015, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1856, file: !356, line: 2352, baseType: !835, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1844, file: !356, line: 2371, baseType: !355, size: 32, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1844, file: !356, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1844, file: !356, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1844, file: !356, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1844, file: !356, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1844, file: !356, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1585, file: !1586, line: 504, baseType: !1867, size: 64, offset: 704)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1586, line: 504, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1585, file: !1586, line: 507, baseType: !1669, size: 64, offset: 768)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1585, file: !1586, line: 510, baseType: !815, size: 32, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1585, file: !1586, line: 513, baseType: !815, size: 32, offset: 864)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1585, file: !1586, line: 516, baseType: !965, size: 32, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1585, file: !1586, line: 519, baseType: !965, size: 32, offset: 928)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1585, file: !1586, line: 522, baseType: !7, size: 32, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1585, file: !1586, line: 523, baseType: !7, size: 32, offset: 992)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1585, file: !1586, line: 528, baseType: !820, size: 64, offset: 1024)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1585, file: !1586, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1585, file: !1586, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1585, file: !1586, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1585, file: !1586, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1585, file: !1586, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1585, file: !1586, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1585, file: !1586, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1585, file: !1586, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1585, file: !1586, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1585, file: !1586, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1585, file: !1586, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1585, file: !1586, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1585, file: !1586, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1585, file: !1586, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1585, file: !1586, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1585, file: !1586, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1580, file: !143, line: 3254, baseType: !841, size: 64, offset: 1536)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1580, file: !143, line: 3257, baseType: !841, size: 64, offset: 1600)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1580, file: !143, line: 3258, baseType: !841, size: 64, offset: 1664)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1580, file: !143, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1580, file: !143, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1580, file: !143, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1580, file: !143, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1580, file: !143, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1580, file: !143, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1580, file: !143, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1580, file: !143, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1580, file: !143, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1580, file: !143, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1580, file: !143, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1580, file: !143, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1580, file: !143, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1580, file: !143, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1580, file: !143, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1580, file: !143, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1580, file: !143, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1580, file: !143, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !143, line: 3394, baseType: !1915, size: 1344)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !143, line: 2279, size: 1344, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1915, file: !143, line: 2280, baseType: !880, size: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1915, file: !143, line: 2281, baseType: !841, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1915, file: !143, line: 2282, baseType: !841, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1915, file: !143, line: 2283, baseType: !841, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1915, file: !143, line: 2284, baseType: !841, size: 64, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1915, file: !143, line: 2285, baseType: !7, size: 32, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1915, file: !143, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1915, file: !143, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1915, file: !143, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1915, file: !143, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1915, file: !143, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1915, file: !143, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1915, file: !143, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1915, file: !143, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1915, file: !143, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1915, file: !143, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1915, file: !143, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1915, file: !143, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1915, file: !143, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1915, file: !143, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1915, file: !143, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1915, file: !143, line: 2305, baseType: !7, size: 32, offset: 512)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1915, file: !143, line: 2306, baseType: !1419, size: 32, offset: 544)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1915, file: !143, line: 2307, baseType: !841, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1915, file: !143, line: 2308, baseType: !841, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1915, file: !143, line: 2314, baseType: !1943, size: 64, offset: 704)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !143, line: 2309, size: 64, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1943, file: !143, line: 2310, baseType: !815, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1943, file: !143, line: 2311, baseType: !820, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1943, file: !143, line: 2312, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !143, line: 2277, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1915, file: !143, line: 2315, baseType: !841, size: 64, offset: 768)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1915, file: !143, line: 2316, baseType: !841, size: 64, offset: 832)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1915, file: !143, line: 2317, baseType: !841, size: 64, offset: 896)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1915, file: !143, line: 2318, baseType: !841, size: 64, offset: 960)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1915, file: !143, line: 2319, baseType: !841, size: 64, offset: 1024)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1915, file: !143, line: 2320, baseType: !841, size: 64, offset: 1088)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1915, file: !143, line: 2321, baseType: !841, size: 64, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1915, file: !143, line: 2322, baseType: !841, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1915, file: !143, line: 2324, baseType: !1959, size: 64, offset: 1280)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !143, line: 2324, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !844, file: !143, line: 3395, baseType: !1962, size: 320)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !143, line: 1469, size: 320, elements: !1963)
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1962, file: !143, line: 1470, baseType: !880, size: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1962, file: !143, line: 1471, baseType: !841, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1962, file: !143, line: 1472, baseType: !841, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !844, file: !143, line: 3396, baseType: !1968, size: 320)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !143, line: 1482, size: 320, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1968, file: !143, line: 1483, baseType: !880, size: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1968, file: !143, line: 1484, baseType: !815, size: 32, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1968, file: !143, line: 1485, baseType: !1217, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !844, file: !143, line: 3397, baseType: !1974, size: 384)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !143, line: 1829, size: 384, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1974, file: !143, line: 1830, baseType: !880, size: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1974, file: !143, line: 1831, baseType: !965, size: 32, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1974, file: !143, line: 1832, baseType: !841, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1974, file: !143, line: 1835, baseType: !1217, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !844, file: !143, line: 3398, baseType: !1981, size: 704)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !143, line: 1898, size: 704, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1992}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1981, file: !143, line: 1899, baseType: !880, size: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1981, file: !143, line: 1902, baseType: !841, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1981, file: !143, line: 1905, baseType: !1163, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1981, file: !143, line: 1908, baseType: !7, size: 32, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1981, file: !143, line: 1911, baseType: !1988, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1536, line: 117, size: 128, elements: !1990)
!1990 = !{!1991}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1989, file: !1536, line: 120, baseType: !1800, size: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1981, file: !143, line: 1914, baseType: !1205, size: 256, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !844, file: !143, line: 3399, baseType: !1994, size: 704)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !143, line: 2008, size: 704, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1994, file: !143, line: 2009, baseType: !880, size: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1994, file: !143, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1994, file: !143, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1994, file: !143, line: 2014, baseType: !965, size: 32, offset: 224)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1994, file: !143, line: 2016, baseType: !841, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1994, file: !143, line: 2017, baseType: !1717, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1994, file: !143, line: 2019, baseType: !841, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1994, file: !143, line: 2020, baseType: !841, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1994, file: !143, line: 2021, baseType: !841, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1994, file: !143, line: 2022, baseType: !841, size: 64, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1994, file: !143, line: 2023, baseType: !841, size: 64, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !844, file: !143, line: 3400, baseType: !2008, size: 832)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !143, line: 2430, size: 832, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2008, file: !143, line: 2431, baseType: !880, size: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2008, file: !143, line: 2433, baseType: !841, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2008, file: !143, line: 2434, baseType: !841, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2008, file: !143, line: 2435, baseType: !841, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2008, file: !143, line: 2436, baseType: !841, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2008, file: !143, line: 2437, baseType: !1717, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2008, file: !143, line: 2438, baseType: !841, size: 64, offset: 512)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2008, file: !143, line: 2440, baseType: !841, size: 64, offset: 576)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2008, file: !143, line: 2441, baseType: !841, size: 64, offset: 640)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2008, file: !143, line: 2443, baseType: !2020, size: 128, offset: 704)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !143, line: 182, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !143, line: 182, size: 128, elements: !2022)
!2022 = !{!2023}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2021, file: !143, line: 182, baseType: !1722, size: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !844, file: !143, line: 3401, baseType: !2025, size: 320)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !143, line: 3327, size: 320, elements: !2026)
!2026 = !{!2027, !2028, !2035}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2025, file: !143, line: 3329, baseType: !880, size: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2025, file: !143, line: 3330, baseType: !2029, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !143, line: 3320, size: 192, elements: !2031)
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2030, file: !143, line: 3322, baseType: !2029, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2030, file: !143, line: 3323, baseType: !2029, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2030, file: !143, line: 3324, baseType: !841, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2025, file: !143, line: 3331, baseType: !2029, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !844, file: !143, line: 3402, baseType: !2037, size: 256)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !143, line: 1540, size: 256, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2037, file: !143, line: 1541, baseType: !880, size: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2037, file: !143, line: 1542, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !143, line: 1538, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !143, line: 1538, size: 192, elements: !2044)
!2044 = !{!2045}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2043, file: !143, line: 1538, baseType: !2046, size: 192)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !143, line: 1537, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !143, line: 1537, size: 192, elements: !2048)
!2048 = !{!2049, !2050, !2051}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2047, file: !143, line: 1537, baseType: !7, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2047, file: !143, line: 1537, baseType: !7, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2047, file: !143, line: 1537, baseType: !2052, size: 128, offset: 64)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2053, size: 128, elements: !939)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !143, line: 1535, baseType: !2054)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !143, line: 1532, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2054, file: !143, line: 1533, baseType: !841, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2054, file: !143, line: 1534, baseType: !841, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !844, file: !143, line: 3403, baseType: !2059, size: 512)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !143, line: 1938, size: 512, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2070, !2071, !2072}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2059, file: !143, line: 1939, baseType: !880, size: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2059, file: !143, line: 1940, baseType: !965, size: 32, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2059, file: !143, line: 1941, baseType: !360, size: 32, offset: 224)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2059, file: !143, line: 1946, baseType: !2065, size: 32, offset: 256)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !143, line: 1942, size: 32, elements: !2066)
!2066 = !{!2067, !2068, !2069}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2065, file: !143, line: 1943, baseType: !378, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2065, file: !143, line: 1944, baseType: !385, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2065, file: !143, line: 1945, baseType: !142, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2059, file: !143, line: 1950, baseType: !1153, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2059, file: !143, line: 1951, baseType: !1153, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2059, file: !143, line: 1953, baseType: !1217, size: 64, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !844, file: !143, line: 3404, baseType: !2074, size: 1664)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !143, line: 3337, size: 1664, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2074, file: !143, line: 3338, baseType: !880, size: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2074, file: !143, line: 3341, baseType: !2078, size: 1472, offset: 192)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2079, line: 410, size: 1472, elements: !2080)
!2079 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2078, file: !2079, line: 412, baseType: !815, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2078, file: !2079, line: 413, baseType: !815, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2078, file: !2079, line: 414, baseType: !815, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2078, file: !2079, line: 415, baseType: !815, size: 32, offset: 96)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2078, file: !2079, line: 416, baseType: !815, size: 32, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2078, file: !2079, line: 417, baseType: !815, size: 32, offset: 160)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2078, file: !2079, line: 418, baseType: !814, size: 8, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2078, file: !2079, line: 419, baseType: !814, size: 8, offset: 200)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2078, file: !2079, line: 420, baseType: !2090, size: 8, offset: 208)
!2090 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2078, file: !2079, line: 421, baseType: !2090, size: 8, offset: 216)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2078, file: !2079, line: 422, baseType: !2090, size: 8, offset: 224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2078, file: !2079, line: 423, baseType: !2090, size: 8, offset: 232)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2078, file: !2079, line: 424, baseType: !2090, size: 8, offset: 240)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2078, file: !2079, line: 425, baseType: !2090, size: 8, offset: 248)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2078, file: !2079, line: 426, baseType: !2090, size: 8, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2078, file: !2079, line: 427, baseType: !2090, size: 8, offset: 264)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2078, file: !2079, line: 428, baseType: !2090, size: 8, offset: 272)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2078, file: !2079, line: 429, baseType: !2090, size: 8, offset: 280)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2078, file: !2079, line: 430, baseType: !2090, size: 8, offset: 288)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2078, file: !2079, line: 431, baseType: !2090, size: 8, offset: 296)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2078, file: !2079, line: 432, baseType: !2090, size: 8, offset: 304)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2078, file: !2079, line: 433, baseType: !2090, size: 8, offset: 312)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2078, file: !2079, line: 434, baseType: !2090, size: 8, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2078, file: !2079, line: 435, baseType: !2090, size: 8, offset: 328)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2078, file: !2079, line: 436, baseType: !2090, size: 8, offset: 336)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2078, file: !2079, line: 437, baseType: !2090, size: 8, offset: 344)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2078, file: !2079, line: 438, baseType: !2090, size: 8, offset: 352)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2078, file: !2079, line: 439, baseType: !2090, size: 8, offset: 360)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2078, file: !2079, line: 440, baseType: !2090, size: 8, offset: 368)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2078, file: !2079, line: 441, baseType: !2090, size: 8, offset: 376)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2078, file: !2079, line: 442, baseType: !2090, size: 8, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2078, file: !2079, line: 443, baseType: !2090, size: 8, offset: 392)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2078, file: !2079, line: 444, baseType: !2090, size: 8, offset: 400)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2078, file: !2079, line: 445, baseType: !2090, size: 8, offset: 408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2078, file: !2079, line: 446, baseType: !2090, size: 8, offset: 416)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2078, file: !2079, line: 447, baseType: !2090, size: 8, offset: 424)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2078, file: !2079, line: 448, baseType: !2090, size: 8, offset: 432)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2078, file: !2079, line: 449, baseType: !2090, size: 8, offset: 440)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2078, file: !2079, line: 450, baseType: !2090, size: 8, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2078, file: !2079, line: 451, baseType: !2090, size: 8, offset: 456)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2078, file: !2079, line: 452, baseType: !2090, size: 8, offset: 464)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2078, file: !2079, line: 453, baseType: !2090, size: 8, offset: 472)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2078, file: !2079, line: 454, baseType: !2090, size: 8, offset: 480)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2078, file: !2079, line: 455, baseType: !2090, size: 8, offset: 488)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2078, file: !2079, line: 456, baseType: !2090, size: 8, offset: 496)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2078, file: !2079, line: 457, baseType: !2090, size: 8, offset: 504)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2078, file: !2079, line: 458, baseType: !2090, size: 8, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2078, file: !2079, line: 459, baseType: !2090, size: 8, offset: 520)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2078, file: !2079, line: 460, baseType: !2090, size: 8, offset: 528)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2078, file: !2079, line: 461, baseType: !2090, size: 8, offset: 536)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2078, file: !2079, line: 462, baseType: !2090, size: 8, offset: 544)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2078, file: !2079, line: 463, baseType: !2090, size: 8, offset: 552)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2078, file: !2079, line: 464, baseType: !2090, size: 8, offset: 560)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2078, file: !2079, line: 465, baseType: !2090, size: 8, offset: 568)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2078, file: !2079, line: 466, baseType: !2090, size: 8, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2078, file: !2079, line: 467, baseType: !2090, size: 8, offset: 584)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2078, file: !2079, line: 468, baseType: !2090, size: 8, offset: 592)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2078, file: !2079, line: 469, baseType: !2090, size: 8, offset: 600)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2078, file: !2079, line: 470, baseType: !2090, size: 8, offset: 608)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2078, file: !2079, line: 471, baseType: !2090, size: 8, offset: 616)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2078, file: !2079, line: 472, baseType: !2090, size: 8, offset: 624)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2078, file: !2079, line: 473, baseType: !2090, size: 8, offset: 632)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2078, file: !2079, line: 474, baseType: !2090, size: 8, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2078, file: !2079, line: 475, baseType: !2090, size: 8, offset: 648)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2078, file: !2079, line: 476, baseType: !2090, size: 8, offset: 656)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2078, file: !2079, line: 477, baseType: !2090, size: 8, offset: 664)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2078, file: !2079, line: 478, baseType: !2090, size: 8, offset: 672)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2078, file: !2079, line: 479, baseType: !2090, size: 8, offset: 680)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2078, file: !2079, line: 480, baseType: !2090, size: 8, offset: 688)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2078, file: !2079, line: 481, baseType: !2090, size: 8, offset: 696)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2078, file: !2079, line: 482, baseType: !2090, size: 8, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2078, file: !2079, line: 483, baseType: !2090, size: 8, offset: 712)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2078, file: !2079, line: 484, baseType: !2090, size: 8, offset: 720)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2078, file: !2079, line: 485, baseType: !2090, size: 8, offset: 728)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2078, file: !2079, line: 486, baseType: !2090, size: 8, offset: 736)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2078, file: !2079, line: 487, baseType: !2090, size: 8, offset: 744)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2078, file: !2079, line: 488, baseType: !2090, size: 8, offset: 752)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2078, file: !2079, line: 489, baseType: !2090, size: 8, offset: 760)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2078, file: !2079, line: 490, baseType: !2090, size: 8, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2078, file: !2079, line: 491, baseType: !2090, size: 8, offset: 776)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2078, file: !2079, line: 492, baseType: !2090, size: 8, offset: 784)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2078, file: !2079, line: 493, baseType: !2090, size: 8, offset: 792)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2078, file: !2079, line: 494, baseType: !2090, size: 8, offset: 800)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2078, file: !2079, line: 495, baseType: !2090, size: 8, offset: 808)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2078, file: !2079, line: 496, baseType: !2090, size: 8, offset: 816)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2078, file: !2079, line: 497, baseType: !2090, size: 8, offset: 824)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2078, file: !2079, line: 498, baseType: !2090, size: 8, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2078, file: !2079, line: 499, baseType: !2090, size: 8, offset: 840)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2078, file: !2079, line: 500, baseType: !2090, size: 8, offset: 848)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2078, file: !2079, line: 501, baseType: !2090, size: 8, offset: 856)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2078, file: !2079, line: 502, baseType: !2090, size: 8, offset: 864)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2078, file: !2079, line: 503, baseType: !2090, size: 8, offset: 872)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2078, file: !2079, line: 504, baseType: !2090, size: 8, offset: 880)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2078, file: !2079, line: 505, baseType: !2090, size: 8, offset: 888)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2078, file: !2079, line: 506, baseType: !2090, size: 8, offset: 896)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2078, file: !2079, line: 507, baseType: !2090, size: 8, offset: 904)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2078, file: !2079, line: 508, baseType: !2090, size: 8, offset: 912)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2078, file: !2079, line: 509, baseType: !2090, size: 8, offset: 920)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2078, file: !2079, line: 510, baseType: !2090, size: 8, offset: 928)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2078, file: !2079, line: 511, baseType: !2090, size: 8, offset: 936)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2078, file: !2079, line: 512, baseType: !2090, size: 8, offset: 944)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2078, file: !2079, line: 513, baseType: !2090, size: 8, offset: 952)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2078, file: !2079, line: 514, baseType: !2090, size: 8, offset: 960)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2078, file: !2079, line: 515, baseType: !2090, size: 8, offset: 968)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2078, file: !2079, line: 516, baseType: !2090, size: 8, offset: 976)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2078, file: !2079, line: 517, baseType: !2090, size: 8, offset: 984)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2078, file: !2079, line: 518, baseType: !2090, size: 8, offset: 992)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2078, file: !2079, line: 519, baseType: !2090, size: 8, offset: 1000)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2078, file: !2079, line: 520, baseType: !2090, size: 8, offset: 1008)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2078, file: !2079, line: 521, baseType: !2090, size: 8, offset: 1016)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2078, file: !2079, line: 522, baseType: !2090, size: 8, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2078, file: !2079, line: 523, baseType: !2090, size: 8, offset: 1032)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2078, file: !2079, line: 524, baseType: !2090, size: 8, offset: 1040)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2078, file: !2079, line: 525, baseType: !2090, size: 8, offset: 1048)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2078, file: !2079, line: 526, baseType: !2090, size: 8, offset: 1056)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2078, file: !2079, line: 527, baseType: !2090, size: 8, offset: 1064)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2078, file: !2079, line: 528, baseType: !2090, size: 8, offset: 1072)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2078, file: !2079, line: 529, baseType: !2090, size: 8, offset: 1080)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2078, file: !2079, line: 530, baseType: !2090, size: 8, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2078, file: !2079, line: 531, baseType: !2090, size: 8, offset: 1096)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2078, file: !2079, line: 532, baseType: !2090, size: 8, offset: 1104)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2078, file: !2079, line: 533, baseType: !2090, size: 8, offset: 1112)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2078, file: !2079, line: 534, baseType: !2090, size: 8, offset: 1120)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2078, file: !2079, line: 535, baseType: !2090, size: 8, offset: 1128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2078, file: !2079, line: 536, baseType: !2090, size: 8, offset: 1136)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2078, file: !2079, line: 537, baseType: !2090, size: 8, offset: 1144)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2078, file: !2079, line: 538, baseType: !2090, size: 8, offset: 1152)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2078, file: !2079, line: 539, baseType: !2090, size: 8, offset: 1160)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2078, file: !2079, line: 540, baseType: !2090, size: 8, offset: 1168)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2078, file: !2079, line: 541, baseType: !2090, size: 8, offset: 1176)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2078, file: !2079, line: 542, baseType: !2090, size: 8, offset: 1184)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2078, file: !2079, line: 543, baseType: !2090, size: 8, offset: 1192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2078, file: !2079, line: 544, baseType: !2090, size: 8, offset: 1200)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2078, file: !2079, line: 545, baseType: !2090, size: 8, offset: 1208)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2078, file: !2079, line: 546, baseType: !2090, size: 8, offset: 1216)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2078, file: !2079, line: 547, baseType: !2090, size: 8, offset: 1224)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2078, file: !2079, line: 548, baseType: !2090, size: 8, offset: 1232)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2078, file: !2079, line: 549, baseType: !2090, size: 8, offset: 1240)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2078, file: !2079, line: 550, baseType: !2090, size: 8, offset: 1248)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2078, file: !2079, line: 551, baseType: !2090, size: 8, offset: 1256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2078, file: !2079, line: 552, baseType: !2090, size: 8, offset: 1264)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2078, file: !2079, line: 553, baseType: !2090, size: 8, offset: 1272)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2078, file: !2079, line: 554, baseType: !2090, size: 8, offset: 1280)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2078, file: !2079, line: 555, baseType: !2090, size: 8, offset: 1288)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2078, file: !2079, line: 556, baseType: !2090, size: 8, offset: 1296)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2078, file: !2079, line: 557, baseType: !2090, size: 8, offset: 1304)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2078, file: !2079, line: 558, baseType: !2090, size: 8, offset: 1312)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2078, file: !2079, line: 559, baseType: !2090, size: 8, offset: 1320)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2078, file: !2079, line: 560, baseType: !2090, size: 8, offset: 1328)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2078, file: !2079, line: 561, baseType: !2090, size: 8, offset: 1336)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2078, file: !2079, line: 562, baseType: !2090, size: 8, offset: 1344)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2078, file: !2079, line: 563, baseType: !2090, size: 8, offset: 1352)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2078, file: !2079, line: 564, baseType: !2090, size: 8, offset: 1360)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2078, file: !2079, line: 565, baseType: !2090, size: 8, offset: 1368)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2078, file: !2079, line: 566, baseType: !2090, size: 8, offset: 1376)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2078, file: !2079, line: 567, baseType: !2090, size: 8, offset: 1384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2078, file: !2079, line: 568, baseType: !2090, size: 8, offset: 1392)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2078, file: !2079, line: 569, baseType: !2090, size: 8, offset: 1400)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2078, file: !2079, line: 570, baseType: !2090, size: 8, offset: 1408)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2078, file: !2079, line: 571, baseType: !2090, size: 8, offset: 1416)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2078, file: !2079, line: 572, baseType: !2090, size: 8, offset: 1424)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2078, file: !2079, line: 573, baseType: !2090, size: 8, offset: 1432)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2078, file: !2079, line: 574, baseType: !2090, size: 8, offset: 1440)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !844, file: !143, line: 3405, baseType: !2246, size: 384)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !143, line: 3352, size: 384, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2246, file: !143, line: 3353, baseType: !880, size: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2246, file: !143, line: 3356, baseType: !2250, size: 192, offset: 192)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2079, line: 578, size: 192, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2250, file: !2079, line: 580, baseType: !815, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2250, file: !2079, line: 581, baseType: !815, size: 32, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2250, file: !2079, line: 582, baseType: !815, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2250, file: !2079, line: 583, baseType: !815, size: 32, offset: 96)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2250, file: !2079, line: 584, baseType: !814, size: 8, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2250, file: !2079, line: 585, baseType: !814, size: 8, offset: 136)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2250, file: !2079, line: 586, baseType: !814, size: 8, offset: 144)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2250, file: !2079, line: 587, baseType: !814, size: 8, offset: 152)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2250, file: !2079, line: 588, baseType: !814, size: 8, offset: 160)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2250, file: !2079, line: 589, baseType: !814, size: 8, offset: 168)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2250, file: !2079, line: 590, baseType: !814, size: 8, offset: 176)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !838, file: !6, line: 183, baseType: !830, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !838, file: !6, line: 184, baseType: !830, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !838, file: !6, line: 185, baseType: !837, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !838, file: !6, line: 186, baseType: !837, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !838, file: !6, line: 188, baseType: !837, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !838, file: !6, line: 190, baseType: !837, size: 64, offset: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !838, file: !6, line: 192, baseType: !837, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !838, file: !6, line: 194, baseType: !837, size: 64, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !838, file: !6, line: 196, baseType: !837, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !838, file: !6, line: 197, baseType: !837, size: 64, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !838, file: !6, line: 198, baseType: !837, size: 64, offset: 704)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !838, file: !6, line: 199, baseType: !837, size: 64, offset: 768)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !838, file: !6, line: 202, baseType: !837, size: 64, offset: 832)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !838, file: !6, line: 204, baseType: !837, size: 64, offset: 896)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !838, file: !6, line: 207, baseType: !1669, size: 64, offset: 960)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !838, file: !6, line: 209, baseType: !819, size: 64, offset: 1024)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !838, file: !6, line: 214, baseType: !2280, size: 64, offset: 1088)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1586, line: 177, baseType: !2282)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1586, line: 177, size: 128, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2282, file: !1586, line: 177, baseType: !2285, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1586, line: 176, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1586, line: 176, size: 128, elements: !2287)
!2287 = !{!2288, !2289, !2290}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2286, file: !1586, line: 176, baseType: !7, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2286, file: !1586, line: 176, baseType: !7, size: 32, offset: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2286, file: !1586, line: 176, baseType: !2291, size: 64, offset: 64)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2292, size: 64, elements: !939)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1586, line: 174, baseType: !2293)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !393, line: 173, size: 1152, elements: !2295)
!2295 = !{!2296, !2320, !2324, !2347, !2348, !2352, !2357, !2358, !2362}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2294, file: !393, line: 175, baseType: !2297, size: 640)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !393, line: 114, size: 640, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2305, !2309, !2311, !2312, !2313, !2315, !2316, !2317, !2318, !2319}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2297, file: !393, line: 117, baseType: !392, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2297, file: !393, line: 121, baseType: !820, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2297, file: !393, line: 125, baseType: !2302, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!814}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2297, file: !393, line: 130, baseType: !2306, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!7}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2297, file: !393, line: 133, baseType: !2310, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2297, file: !393, line: 136, baseType: !2310, size: 64, offset: 320)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2297, file: !393, line: 139, baseType: !815, size: 32, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2297, file: !393, line: 143, baseType: !2314, size: 32, offset: 416)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !400, line: 80, baseType: !399)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2297, file: !393, line: 146, baseType: !7, size: 32, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2297, file: !393, line: 147, baseType: !7, size: 32, offset: 480)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2297, file: !393, line: 148, baseType: !7, size: 32, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2297, file: !393, line: 151, baseType: !7, size: 32, offset: 544)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2297, file: !393, line: 152, baseType: !7, size: 32, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2294, file: !393, line: 179, baseType: !2321, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2294, file: !393, line: 182, baseType: !2325, size: 64, offset: 704)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !6, line: 276, size: 192, elements: !2330)
!2330 = !{!2331, !2332, !2346}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2329, file: !6, line: 278, baseType: !1669, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2329, file: !6, line: 279, baseType: !2333, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !6, line: 272, baseType: !2335)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !6, line: 272, size: 128, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2335, file: !6, line: 272, baseType: !2338, size: 128)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !6, line: 270, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !6, line: 270, size: 128, elements: !2340)
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2339, file: !6, line: 270, baseType: !7, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2339, file: !6, line: 270, baseType: !7, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2339, file: !6, line: 270, baseType: !2344, size: 64, offset: 64)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2345, size: 64, elements: !939)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !6, line: 268, baseType: !837)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2329, file: !6, line: 280, baseType: !819, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2294, file: !393, line: 187, baseType: !2321, size: 64, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2294, file: !393, line: 188, baseType: !2349, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !837}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2294, file: !393, line: 191, baseType: !2353, size: 64, offset: 896)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !837, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2294, file: !393, line: 195, baseType: !7, size: 32, offset: 960)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2294, file: !393, line: 196, baseType: !2359, size: 64, offset: 1024)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!7, !837}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2294, file: !393, line: 197, baseType: !2363, size: 64, offset: 1088)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !6, line: 358, size: 320, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2367, file: !6, line: 359, baseType: !841, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2367, file: !6, line: 361, baseType: !2366, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2367, file: !6, line: 363, baseType: !2366, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2367, file: !6, line: 366, baseType: !2366, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2367, file: !6, line: 368, baseType: !815, size: 32, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2367, file: !6, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2367, file: !6, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2367, file: !6, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2367, file: !6, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2367, file: !6, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2367, file: !6, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2367, file: !6, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !838, file: !6, line: 216, baseType: !2382, size: 320, offset: 1152)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !6, line: 88, size: 320, elements: !2383)
!2383 = !{!2384, !2387, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2382, file: !6, line: 90, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !6, line: 51, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2382, file: !6, line: 92, baseType: !2388, size: 192, offset: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !6, line: 57, size: 192, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2388, file: !6, line: 60, baseType: !835, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2388, file: !6, line: 63, baseType: !815, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2388, file: !6, line: 65, baseType: !815, size: 32, offset: 96)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2388, file: !6, line: 67, baseType: !815, size: 32, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2388, file: !6, line: 69, baseType: !815, size: 32, offset: 160)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2382, file: !6, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2382, file: !6, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2382, file: !6, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2382, file: !6, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2382, file: !6, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2382, file: !6, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2382, file: !6, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2382, file: !6, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !838, file: !6, line: 217, baseType: !2404, size: 320, offset: 1472)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !6, line: 126, size: 320, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2404, file: !6, line: 128, baseType: !835, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2404, file: !6, line: 130, baseType: !835, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2404, file: !6, line: 134, baseType: !837, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2404, file: !6, line: 137, baseType: !815, size: 32, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2404, file: !6, line: 138, baseType: !815, size: 32, offset: 224)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2404, file: !6, line: 141, baseType: !815, size: 32, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2404, file: !6, line: 144, baseType: !814, size: 8, offset: 288)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !838, file: !6, line: 218, baseType: !2414, size: 32, offset: 1792)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !6, line: 150, size: 32, elements: !2415)
!2415 = !{!2416}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2414, file: !6, line: 151, baseType: !7, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !838, file: !6, line: 219, baseType: !2418, size: 192, offset: 1856)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !6, line: 171, size: 192, elements: !2419)
!2419 = !{!2420, !2441, !2442}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2418, file: !6, line: 173, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !6, line: 169, baseType: !2423)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !6, line: 169, size: 128, elements: !2424)
!2424 = !{!2425}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2423, file: !6, line: 169, baseType: !2426, size: 128)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !6, line: 168, baseType: !2427)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !6, line: 168, size: 128, elements: !2428)
!2428 = !{!2429, !2430, !2431}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2427, file: !6, line: 168, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2427, file: !6, line: 168, baseType: !7, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2427, file: !6, line: 168, baseType: !2432, size: 64, offset: 64)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, size: 64, elements: !939)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !6, line: 167, baseType: !2434)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !6, line: 156, size: 192, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2435, file: !6, line: 159, baseType: !841, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2435, file: !6, line: 161, baseType: !841, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2435, file: !6, line: 163, baseType: !814, size: 8, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2435, file: !6, line: 165, baseType: !814, size: 8, offset: 136)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2418, file: !6, line: 174, baseType: !1810, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2418, file: !6, line: 175, baseType: !1810, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !838, file: !6, line: 220, baseType: !2444, size: 256, offset: 2048)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !6, line: 74, size: 256, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2444, file: !6, line: 76, baseType: !835, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2444, file: !6, line: 77, baseType: !835, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2444, file: !6, line: 78, baseType: !841, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2444, file: !6, line: 79, baseType: !814, size: 8, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2444, file: !6, line: 80, baseType: !814, size: 8, offset: 200)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2444, file: !6, line: 82, baseType: !814, size: 8, offset: 208)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !838, file: !6, line: 223, baseType: !834, size: 64, offset: 2304)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !838, file: !6, line: 225, baseType: !815, size: 32, offset: 2368)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !838, file: !6, line: 227, baseType: !815, size: 32, offset: 2400)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !838, file: !6, line: 231, baseType: !815, size: 32, offset: 2432)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !838, file: !6, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !838, file: !6, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !838, file: !6, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !838, file: !6, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !838, file: !6, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !838, file: !6, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !838, file: !6, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !838, file: !6, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !838, file: !6, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !838, file: !6, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !831, file: !6, line: 318, baseType: !837, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !831, file: !6, line: 319, baseType: !830, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !831, file: !6, line: 320, baseType: !830, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !831, file: !6, line: 321, baseType: !830, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !831, file: !6, line: 322, baseType: !830, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !831, file: !6, line: 323, baseType: !1163, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !831, file: !6, line: 324, baseType: !819, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !831, file: !6, line: 327, baseType: !2474, size: 32, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !6, line: 312, baseType: !575)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !831, file: !6, line: 330, baseType: !7, size: 32, offset: 608)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !831, file: !6, line: 334, baseType: !815, size: 32, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !831, file: !6, line: 336, baseType: !815, size: 32, offset: 672)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !831, file: !6, line: 338, baseType: !2479, size: 16, offset: 704)
!2479 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !831, file: !6, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !831, file: !6, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !831, file: !6, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !823, file: !3, line: 146, baseType: !819, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !823, file: !3, line: 147, baseType: !822, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_hook_list", file: !3, line: 151, size: 192, elements: !2487)
!2487 = !{!2488, !2493, !2494}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !2486, file: !3, line: 152, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_hook", file: !6, line: 514, baseType: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !837, !819}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2486, file: !3, line: 153, baseType: !819, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2486, file: !3, line: 154, baseType: !2485, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_2edge_hook_list", file: !3, line: 158, size: 192, elements: !2497)
!2497 = !{!2498, !2503, !2504}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !2496, file: !3, line: 159, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_2edge_hook", file: !6, line: 515, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !830, !830, !819}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2496, file: !3, line: 160, baseType: !819, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2496, file: !3, line: 161, baseType: !2495, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_2node_hook_list", file: !3, line: 165, size: 192, elements: !2507)
!2507 = !{!2508, !2513, !2514}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !2506, file: !3, line: 166, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_2node_hook", file: !6, line: 517, baseType: !2510)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !837, !837, !819}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2506, file: !3, line: 167, baseType: !819, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2506, file: !3, line: 168, baseType: !2505, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!2516 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_asm_node", file: !6, line: 392, size: 192, elements: !2519)
!2519 = !{!2520, !2521, !2522}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2518, file: !6, line: 394, baseType: !2517, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "asm_str", scope: !2518, file: !6, line: 396, baseType: !841, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2518, file: !6, line: 398, baseType: !815, size: 32, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !842, line: 59, baseType: !2526)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_edge_p", file: !6, line: 350, baseType: !830)
!2533 = !{!0, !2534, !2536, !2538, !2548, !2554, !2570, !2573, !2575, !2577, !2579, !2581, !2583, !2585, !2587, !2589, !2591, !2593, !2595, !2597, !2599, !2601, !2603, !2605, !2607, !2609, !2611}
!2534 = !DIGlobalVariableExpression(var: !2535, expr: !DIExpression())
!2535 = distinct !DIGlobalVariable(name: "cgraph_state", scope: !2, file: !3, line: 127, type: !5, isLocal: false, isDefinition: true)
!2536 = !DIGlobalVariableExpression(var: !2537, expr: !DIExpression())
!2537 = distinct !DIGlobalVariable(name: "cgraph_function_flags_ready", scope: !2, file: !3, line: 130, type: !814, isLocal: false, isDefinition: true)
!2538 = !DIGlobalVariableExpression(var: !2539, expr: !DIExpression())
!2539 = distinct !DIGlobalVariable(name: "cif_string_table", scope: !2540, file: !3, line: 1600, type: !2545, isLocal: true, isDefinition: true)
!2540 = distinct !DISubprogram(name: "cgraph_inline_failed_string", scope: !3, file: !3, line: 1595, type: !2541, scopeLine: 1596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!820, !2474}
!2543 = !{!2544}
!2544 = !DILocalVariable(name: "reason", arg: 1, scope: !2540, file: !3, line: 1595, type: !2474)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 1216, elements: !2546)
!2546 = !{!2547}
!2547 = !DISubrange(count: 19)
!2548 = !DIGlobalVariableExpression(var: !2549, expr: !DIExpression())
!2549 = distinct !DIGlobalVariable(name: "cgraph_availability_names", scope: !2, file: !3, line: 1618, type: !2550, isLocal: false, isDefinition: true)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2551, size: 320, elements: !2552)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!2552 = !{!2553}
!2553 = !DISubrange(count: 5)
!2554 = !DIGlobalVariableExpression(var: !2555, expr: !DIExpression())
!2555 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_cgraph_h", scope: !2, file: !2556, line: 24, type: !2557, isLocal: false, isDefinition: true)
!2556 = !DIFile(filename: "./gt-cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2558, size: 1920, elements: !2568)
!2558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !2560, line: 69, size: 320, elements: !2561)
!2560 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2561 = !{!2562, !2563, !2564, !2565, !2567}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2559, file: !2560, line: 70, baseType: !819, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !2559, file: !2560, line: 71, baseType: !1309, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !2559, file: !2560, line: 72, baseType: !1309, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2559, file: !2560, line: 73, baseType: !2566, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !2560, line: 65, baseType: !1687)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !2559, file: !2560, line: 74, baseType: !2566, size: 64, offset: 256)
!2568 = !{!2569}
!2569 = !DISubrange(count: 6)
!2570 = !DIGlobalVariableExpression(var: !2571, expr: !DIExpression())
!2571 = distinct !DIGlobalVariable(name: "gt_pch_rs_gt_cgraph_h", scope: !2, file: !2556, line: 63, type: !2572, isLocal: false, isDefinition: true)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2558, size: 640, elements: !1082)
!2573 = !DIGlobalVariableExpression(var: !2574, expr: !DIExpression())
!2574 = distinct !DIGlobalVariable(name: "cgraph_hash", scope: !2, file: !3, line: 96, type: !1669, isLocal: true, isDefinition: true)
!2575 = !DIGlobalVariableExpression(var: !2576, expr: !DIExpression())
!2576 = distinct !DIGlobalVariable(name: "assembler_name_hash", scope: !2, file: !3, line: 98, type: !1669, isLocal: true, isDefinition: true)
!2577 = !DIGlobalVariableExpression(var: !2578, expr: !DIExpression())
!2578 = distinct !DIGlobalVariable(name: "cgraph_nodes", scope: !2, file: !3, line: 101, type: !837, isLocal: false, isDefinition: true)
!2579 = !DIGlobalVariableExpression(var: !2580, expr: !DIExpression())
!2580 = distinct !DIGlobalVariable(name: "cgraph_nodes_queue", scope: !2, file: !3, line: 104, type: !837, isLocal: false, isDefinition: true)
!2581 = !DIGlobalVariableExpression(var: !2582, expr: !DIExpression())
!2582 = distinct !DIGlobalVariable(name: "cgraph_new_nodes", scope: !2, file: !3, line: 109, type: !837, isLocal: false, isDefinition: true)
!2583 = !DIGlobalVariableExpression(var: !2584, expr: !DIExpression())
!2584 = distinct !DIGlobalVariable(name: "cgraph_n_nodes", scope: !2, file: !3, line: 112, type: !815, isLocal: false, isDefinition: true)
!2585 = !DIGlobalVariableExpression(var: !2586, expr: !DIExpression())
!2586 = distinct !DIGlobalVariable(name: "cgraph_max_uid", scope: !2, file: !3, line: 115, type: !815, isLocal: false, isDefinition: true)
!2587 = !DIGlobalVariableExpression(var: !2588, expr: !DIExpression())
!2588 = distinct !DIGlobalVariable(name: "cgraph_edge_max_uid", scope: !2, file: !3, line: 118, type: !815, isLocal: false, isDefinition: true)
!2589 = !DIGlobalVariableExpression(var: !2590, expr: !DIExpression())
!2590 = distinct !DIGlobalVariable(name: "cgraph_max_pid", scope: !2, file: !3, line: 121, type: !815, isLocal: false, isDefinition: true)
!2591 = !DIGlobalVariableExpression(var: !2592, expr: !DIExpression())
!2592 = distinct !DIGlobalVariable(name: "cgraph_asm_nodes", scope: !2, file: !3, line: 133, type: !2517, isLocal: false, isDefinition: true)
!2593 = !DIGlobalVariableExpression(var: !2594, expr: !DIExpression())
!2594 = distinct !DIGlobalVariable(name: "cgraph_asm_last_node", scope: !2, file: !3, line: 136, type: !2517, isLocal: true, isDefinition: true)
!2595 = !DIGlobalVariableExpression(var: !2596, expr: !DIExpression())
!2596 = distinct !DIGlobalVariable(name: "cgraph_order", scope: !2, file: !3, line: 141, type: !815, isLocal: false, isDefinition: true)
!2597 = !DIGlobalVariableExpression(var: !2598, expr: !DIExpression())
!2598 = distinct !DIGlobalVariable(name: "first_cgraph_edge_removal_hook", scope: !2, file: !3, line: 172, type: !822, isLocal: false, isDefinition: true)
!2599 = !DIGlobalVariableExpression(var: !2600, expr: !DIExpression())
!2600 = distinct !DIGlobalVariable(name: "first_cgraph_node_removal_hook", scope: !2, file: !3, line: 174, type: !2485, isLocal: false, isDefinition: true)
!2601 = !DIGlobalVariableExpression(var: !2602, expr: !DIExpression())
!2602 = distinct !DIGlobalVariable(name: "first_cgraph_edge_duplicated_hook", scope: !2, file: !3, line: 176, type: !2495, isLocal: false, isDefinition: true)
!2603 = !DIGlobalVariableExpression(var: !2604, expr: !DIExpression())
!2604 = distinct !DIGlobalVariable(name: "first_cgraph_node_duplicated_hook", scope: !2, file: !3, line: 178, type: !2505, isLocal: false, isDefinition: true)
!2605 = !DIGlobalVariableExpression(var: !2606, expr: !DIExpression())
!2606 = distinct !DIGlobalVariable(name: "first_cgraph_function_insertion_hook", scope: !2, file: !3, line: 180, type: !2485, isLocal: false, isDefinition: true)
!2607 = !DIGlobalVariableExpression(var: !2608, expr: !DIExpression())
!2608 = distinct !DIGlobalVariable(name: "free_nodes", scope: !2, file: !3, line: 184, type: !837, isLocal: true, isDefinition: true)
!2609 = !DIGlobalVariableExpression(var: !2610, expr: !DIExpression())
!2610 = distinct !DIGlobalVariable(name: "free_edges", scope: !2, file: !3, line: 187, type: !830, isLocal: true, isDefinition: true)
!2611 = !DIGlobalVariableExpression(var: !2612, expr: !DIExpression())
!2612 = distinct !DIGlobalVariable(name: "clone_fn_id_num", scope: !2, file: !3, line: 1935, type: !7, isLocal: true, isDefinition: true)
!2613 = !{i32 2, !"Dwarf Version", i32 4}
!2614 = !{i32 2, !"Debug Info Version", i32 3}
!2615 = !{i32 1, !"wchar_size", i32 4}
!2616 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2617 = distinct !DISubprogram(name: "vprintf", scope: !2618, file: !2618, line: 39, type: !2619, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2629)
!2618 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!815, !2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !820)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2623, file: !3, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2623, file: !3, baseType: !7, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2623, file: !3, baseType: !819, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2623, file: !3, baseType: !819, size: 64, offset: 128)
!2629 = !{!2630, !2631}
!2630 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2617, file: !2618, line: 39, type: !2621)
!2631 = !DILocalVariable(name: "__arg", arg: 2, scope: !2617, file: !2618, line: 39, type: !2622)
!2632 = !DILocation(line: 0, scope: !2617)
!2633 = !DILocation(line: 41, column: 20, scope: !2617)
!2634 = !DILocation(line: 41, column: 10, scope: !2617)
!2635 = !DILocation(line: 41, column: 3, scope: !2617)
!2636 = distinct !DISubprogram(name: "getchar", scope: !2618, file: !2618, line: 47, type: !2637, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!815}
!2639 = !{}
!2640 = !DILocation(line: 49, column: 16, scope: !2636)
!2641 = !DILocation(line: 49, column: 10, scope: !2636)
!2642 = !DILocation(line: 49, column: 3, scope: !2636)
!2643 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2618, file: !2618, line: 56, type: !2644, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2696)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!815, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2648, line: 7, baseType: !2649)
!2648 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2650, line: 49, size: 1728, elements: !2651)
!2650 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2669, !2670, !2671, !2674, !2675, !2676, !2677, !2680, !2682, !2685, !2688, !2689, !2690, !2691, !2692}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2649, file: !2650, line: 51, baseType: !815, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2649, file: !2650, line: 54, baseType: !817, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2649, file: !2650, line: 55, baseType: !817, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2649, file: !2650, line: 56, baseType: !817, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2649, file: !2650, line: 57, baseType: !817, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2649, file: !2650, line: 58, baseType: !817, size: 64, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2649, file: !2650, line: 59, baseType: !817, size: 64, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2649, file: !2650, line: 60, baseType: !817, size: 64, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2649, file: !2650, line: 61, baseType: !817, size: 64, offset: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2649, file: !2650, line: 64, baseType: !817, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2649, file: !2650, line: 65, baseType: !817, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2649, file: !2650, line: 66, baseType: !817, size: 64, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2649, file: !2650, line: 68, baseType: !2665, size: 64, offset: 768)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2650, line: 36, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2649, file: !2650, line: 70, baseType: !2668, size: 64, offset: 832)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2649, file: !2650, line: 72, baseType: !815, size: 32, offset: 896)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2649, file: !2650, line: 73, baseType: !815, size: 32, offset: 928)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2649, file: !2650, line: 74, baseType: !2672, size: 64, offset: 960)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2673, line: 152, baseType: !835)
!2673 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2649, file: !2650, line: 77, baseType: !2479, size: 16, offset: 1024)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2649, file: !2650, line: 78, baseType: !2090, size: 8, offset: 1040)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2649, file: !2650, line: 79, baseType: !938, size: 8, offset: 1048)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2649, file: !2650, line: 81, baseType: !2678, size: 64, offset: 1088)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2650, line: 43, baseType: null)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2649, file: !2650, line: 89, baseType: !2681, size: 64, offset: 1152)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2673, line: 153, baseType: !835)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2649, file: !2650, line: 91, baseType: !2683, size: 64, offset: 1216)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2650, line: 37, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2649, file: !2650, line: 92, baseType: !2686, size: 64, offset: 1280)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2650, line: 38, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2649, file: !2650, line: 93, baseType: !2668, size: 64, offset: 1344)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2649, file: !2650, line: 94, baseType: !819, size: 64, offset: 1408)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2649, file: !2650, line: 95, baseType: !1309, size: 64, offset: 1472)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2649, file: !2650, line: 96, baseType: !815, size: 32, offset: 1536)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2649, file: !2650, line: 98, baseType: !2693, size: 160, offset: 1568)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 160, elements: !2694)
!2694 = !{!2695}
!2695 = !DISubrange(count: 20)
!2696 = !{!2697}
!2697 = !DILocalVariable(name: "__fp", arg: 1, scope: !2643, file: !2618, line: 56, type: !2646)
!2698 = !DILocation(line: 0, scope: !2643)
!2699 = !DILocation(line: 58, column: 10, scope: !2643)
!2700 = !DILocation(line: 58, column: 3, scope: !2643)
!2701 = distinct !DISubprogram(name: "getc_unlocked", scope: !2618, file: !2618, line: 66, type: !2644, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2702 = !{!2703}
!2703 = !DILocalVariable(name: "__fp", arg: 1, scope: !2701, file: !2618, line: 66, type: !2646)
!2704 = !DILocation(line: 0, scope: !2701)
!2705 = !DILocation(line: 68, column: 10, scope: !2701)
!2706 = !DILocation(line: 68, column: 3, scope: !2701)
!2707 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2618, file: !2618, line: 73, type: !2637, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2708 = !DILocation(line: 75, column: 10, scope: !2707)
!2709 = !DILocation(line: 75, column: 3, scope: !2707)
!2710 = distinct !DISubprogram(name: "putchar", scope: !2618, file: !2618, line: 82, type: !2711, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!815, !815}
!2713 = !{!2714}
!2714 = !DILocalVariable(name: "__c", arg: 1, scope: !2710, file: !2618, line: 82, type: !815)
!2715 = !DILocation(line: 0, scope: !2710)
!2716 = !DILocation(line: 84, column: 21, scope: !2710)
!2717 = !DILocation(line: 84, column: 10, scope: !2710)
!2718 = !DILocation(line: 84, column: 3, scope: !2710)
!2719 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2618, file: !2618, line: 91, type: !2720, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!815, !815, !2646}
!2722 = !{!2723, !2724}
!2723 = !DILocalVariable(name: "__c", arg: 1, scope: !2719, file: !2618, line: 91, type: !815)
!2724 = !DILocalVariable(name: "__stream", arg: 2, scope: !2719, file: !2618, line: 91, type: !2646)
!2725 = !DILocation(line: 0, scope: !2719)
!2726 = !DILocation(line: 93, column: 10, scope: !2719)
!2727 = !DILocation(line: 93, column: 3, scope: !2719)
!2728 = distinct !DISubprogram(name: "putc_unlocked", scope: !2618, file: !2618, line: 101, type: !2720, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "__c", arg: 1, scope: !2728, file: !2618, line: 101, type: !815)
!2731 = !DILocalVariable(name: "__stream", arg: 2, scope: !2728, file: !2618, line: 101, type: !2646)
!2732 = !DILocation(line: 0, scope: !2728)
!2733 = !DILocation(line: 103, column: 10, scope: !2728)
!2734 = !DILocation(line: 103, column: 3, scope: !2728)
!2735 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2618, file: !2618, line: 108, type: !2711, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2736)
!2736 = !{!2737}
!2737 = !DILocalVariable(name: "__c", arg: 1, scope: !2735, file: !2618, line: 108, type: !815)
!2738 = !DILocation(line: 0, scope: !2735)
!2739 = !DILocation(line: 110, column: 10, scope: !2735)
!2740 = !DILocation(line: 110, column: 3, scope: !2735)
!2741 = distinct !DISubprogram(name: "getline", scope: !2618, file: !2618, line: 118, type: !2742, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!2744, !816, !2745, !2646}
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2673, line: 193, baseType: !835)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!2746 = !{!2747, !2748, !2749}
!2747 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2741, file: !2618, line: 118, type: !816)
!2748 = !DILocalVariable(name: "__n", arg: 2, scope: !2741, file: !2618, line: 118, type: !2745)
!2749 = !DILocalVariable(name: "__stream", arg: 3, scope: !2741, file: !2618, line: 118, type: !2646)
!2750 = !DILocation(line: 0, scope: !2741)
!2751 = !DILocation(line: 120, column: 10, scope: !2741)
!2752 = !DILocation(line: 120, column: 3, scope: !2741)
!2753 = distinct !DISubprogram(name: "feof_unlocked", scope: !2618, file: !2618, line: 128, type: !2644, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2754)
!2754 = !{!2755}
!2755 = !DILocalVariable(name: "__stream", arg: 1, scope: !2753, file: !2618, line: 128, type: !2646)
!2756 = !DILocation(line: 0, scope: !2753)
!2757 = !DILocation(line: 130, column: 10, scope: !2753)
!2758 = !DILocation(line: 130, column: 3, scope: !2753)
!2759 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2618, file: !2618, line: 135, type: !2644, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2760 = !{!2761}
!2761 = !DILocalVariable(name: "__stream", arg: 1, scope: !2759, file: !2618, line: 135, type: !2646)
!2762 = !DILocation(line: 0, scope: !2759)
!2763 = !DILocation(line: 137, column: 10, scope: !2759)
!2764 = !DILocation(line: 137, column: 3, scope: !2759)
!2765 = distinct !DISubprogram(name: "tolower", scope: !2766, file: !2766, line: 207, type: !2711, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2767)
!2766 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2767 = !{!2768}
!2768 = !DILocalVariable(name: "__c", arg: 1, scope: !2765, file: !2766, line: 207, type: !815)
!2769 = !DILocation(line: 0, scope: !2765)
!2770 = !DILocation(line: 209, column: 22, scope: !2765)
!2771 = !DILocation(line: 209, column: 39, scope: !2765)
!2772 = !DILocation(line: 209, column: 38, scope: !2765)
!2773 = !DILocation(line: 209, column: 37, scope: !2765)
!2774 = !DILocation(line: 209, column: 10, scope: !2765)
!2775 = !DILocation(line: 209, column: 3, scope: !2765)
!2776 = distinct !DISubprogram(name: "toupper", scope: !2766, file: !2766, line: 213, type: !2711, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "__c", arg: 1, scope: !2776, file: !2766, line: 213, type: !815)
!2779 = !DILocation(line: 0, scope: !2776)
!2780 = !DILocation(line: 215, column: 22, scope: !2776)
!2781 = !DILocation(line: 215, column: 39, scope: !2776)
!2782 = !DILocation(line: 215, column: 38, scope: !2776)
!2783 = !DILocation(line: 215, column: 37, scope: !2776)
!2784 = !DILocation(line: 215, column: 10, scope: !2776)
!2785 = !DILocation(line: 215, column: 3, scope: !2776)
!2786 = distinct !DISubprogram(name: "atoi", scope: !2787, file: !2787, line: 361, type: !2788, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2790)
!2787 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!815, !820}
!2790 = !{!2791}
!2791 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2786, file: !2787, line: 361, type: !820)
!2792 = !DILocation(line: 0, scope: !2786)
!2793 = !DILocation(line: 363, column: 16, scope: !2786)
!2794 = !DILocation(line: 363, column: 10, scope: !2786)
!2795 = !DILocation(line: 363, column: 3, scope: !2786)
!2796 = distinct !DISubprogram(name: "atol", scope: !2787, file: !2787, line: 366, type: !2797, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!835, !820}
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2796, file: !2787, line: 366, type: !820)
!2801 = !DILocation(line: 0, scope: !2796)
!2802 = !DILocation(line: 368, column: 10, scope: !2796)
!2803 = !DILocation(line: 368, column: 3, scope: !2796)
!2804 = distinct !DISubprogram(name: "atoll", scope: !2787, file: !2787, line: 373, type: !2805, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2808)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!2807, !820}
!2807 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2808 = !{!2809}
!2809 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2804, file: !2787, line: 373, type: !820)
!2810 = !DILocation(line: 0, scope: !2804)
!2811 = !DILocation(line: 375, column: 10, scope: !2804)
!2812 = !DILocation(line: 375, column: 3, scope: !2804)
!2813 = distinct !DISubprogram(name: "bsearch", scope: !2814, file: !2814, line: 20, type: !2815, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2818)
!2814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!819, !1469, !1469, !1309, !1309, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2787, line: 808, baseType: !1682)
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2819 = !DILocalVariable(name: "__key", arg: 1, scope: !2813, file: !2814, line: 20, type: !1469)
!2820 = !DILocalVariable(name: "__base", arg: 2, scope: !2813, file: !2814, line: 20, type: !1469)
!2821 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2813, file: !2814, line: 20, type: !1309)
!2822 = !DILocalVariable(name: "__size", arg: 4, scope: !2813, file: !2814, line: 20, type: !1309)
!2823 = !DILocalVariable(name: "__compar", arg: 5, scope: !2813, file: !2814, line: 21, type: !2817)
!2824 = !DILocalVariable(name: "__l", scope: !2813, file: !2814, line: 23, type: !1309)
!2825 = !DILocalVariable(name: "__u", scope: !2813, file: !2814, line: 23, type: !1309)
!2826 = !DILocalVariable(name: "__idx", scope: !2813, file: !2814, line: 23, type: !1309)
!2827 = !DILocalVariable(name: "__p", scope: !2813, file: !2814, line: 24, type: !1469)
!2828 = !DILocalVariable(name: "__comparison", scope: !2813, file: !2814, line: 25, type: !815)
!2829 = !DILocation(line: 0, scope: !2813)
!2830 = !DILocation(line: 29, column: 3, scope: !2813)
!2831 = !DILocation(line: 27, column: 7, scope: !2813)
!2832 = !DILocation(line: 29, column: 14, scope: !2813)
!2833 = !DILocation(line: 31, column: 20, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2813, file: !2814, line: 30, column: 5)
!2835 = !DILocation(line: 31, column: 27, scope: !2834)
!2836 = !DILocation(line: 32, column: 56, scope: !2834)
!2837 = !DILocation(line: 32, column: 47, scope: !2834)
!2838 = !DILocation(line: 33, column: 22, scope: !2834)
!2839 = !DILocation(line: 34, column: 24, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2834, file: !2814, line: 34, column: 11)
!2841 = !DILocation(line: 34, column: 11, scope: !2834)
!2842 = !DILocation(line: 36, column: 29, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !2814, line: 36, column: 16)
!2844 = !DILocation(line: 36, column: 16, scope: !2840)
!2845 = !DILocation(line: 37, column: 14, scope: !2843)
!2846 = distinct !{!2846, !2830, !2847}
!2847 = !DILocation(line: 40, column: 5, scope: !2813)
!2848 = !DILocation(line: 43, column: 1, scope: !2813)
!2849 = distinct !DISubprogram(name: "atof", scope: !2850, file: !2850, line: 25, type: !2851, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2850 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!2516, !820}
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2849, file: !2850, line: 25, type: !820)
!2855 = !DILocation(line: 0, scope: !2849)
!2856 = !DILocation(line: 27, column: 10, scope: !2849)
!2857 = !DILocation(line: 27, column: 3, scope: !2849)
!2858 = distinct !DISubprogram(name: "strtoimax", scope: !2859, file: !2859, line: 324, type: !2860, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2859 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!2862, !2621, !2865, !815}
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2863, line: 101, baseType: !2864)
!2863 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2673, line: 72, baseType: !835)
!2865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !816)
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "nptr", arg: 1, scope: !2858, file: !2859, line: 324, type: !2621)
!2868 = !DILocalVariable(name: "endptr", arg: 2, scope: !2858, file: !2859, line: 324, type: !2865)
!2869 = !DILocalVariable(name: "base", arg: 3, scope: !2858, file: !2859, line: 324, type: !815)
!2870 = !DILocation(line: 0, scope: !2858)
!2871 = !DILocation(line: 327, column: 10, scope: !2858)
!2872 = !DILocation(line: 327, column: 3, scope: !2858)
!2873 = distinct !DISubprogram(name: "strtoumax", scope: !2859, file: !2859, line: 336, type: !2874, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2878)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!2876, !2621, !2865, !815}
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2863, line: 102, baseType: !2877)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2673, line: 73, baseType: !895)
!2878 = !{!2879, !2880, !2881}
!2879 = !DILocalVariable(name: "nptr", arg: 1, scope: !2873, file: !2859, line: 336, type: !2621)
!2880 = !DILocalVariable(name: "endptr", arg: 2, scope: !2873, file: !2859, line: 336, type: !2865)
!2881 = !DILocalVariable(name: "base", arg: 3, scope: !2873, file: !2859, line: 336, type: !815)
!2882 = !DILocation(line: 0, scope: !2873)
!2883 = !DILocation(line: 339, column: 10, scope: !2873)
!2884 = !DILocation(line: 339, column: 3, scope: !2873)
!2885 = distinct !DISubprogram(name: "wcstoimax", scope: !2859, file: !2859, line: 348, type: !2886, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!2862, !2888, !2892, !815}
!2888 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2889)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2859, line: 34, baseType: !815)
!2892 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2895 = !{!2896, !2897, !2898}
!2896 = !DILocalVariable(name: "nptr", arg: 1, scope: !2885, file: !2859, line: 348, type: !2888)
!2897 = !DILocalVariable(name: "endptr", arg: 2, scope: !2885, file: !2859, line: 348, type: !2892)
!2898 = !DILocalVariable(name: "base", arg: 3, scope: !2885, file: !2859, line: 348, type: !815)
!2899 = !DILocation(line: 0, scope: !2885)
!2900 = !DILocation(line: 351, column: 10, scope: !2885)
!2901 = !DILocation(line: 351, column: 3, scope: !2885)
!2902 = distinct !DISubprogram(name: "wcstoumax", scope: !2859, file: !2859, line: 362, type: !2903, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!2876, !2888, !2892, !815}
!2905 = !{!2906, !2907, !2908}
!2906 = !DILocalVariable(name: "nptr", arg: 1, scope: !2902, file: !2859, line: 362, type: !2888)
!2907 = !DILocalVariable(name: "endptr", arg: 2, scope: !2902, file: !2859, line: 362, type: !2892)
!2908 = !DILocalVariable(name: "base", arg: 3, scope: !2902, file: !2859, line: 362, type: !815)
!2909 = !DILocation(line: 0, scope: !2902)
!2910 = !DILocation(line: 365, column: 10, scope: !2902)
!2911 = !DILocation(line: 365, column: 3, scope: !2902)
!2912 = distinct !DISubprogram(name: "stat", scope: !2913, file: !2913, line: 453, type: !2914, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2951)
!2913 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!815, !820, !2916}
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2918, line: 46, size: 1152, elements: !2919)
!2918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2919 = !{!2920, !2922, !2924, !2926, !2928, !2930, !2932, !2933, !2934, !2935, !2937, !2939, !2947, !2948, !2949}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2917, file: !2918, line: 48, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2673, line: 145, baseType: !895)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2917, file: !2918, line: 53, baseType: !2923, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2673, line: 148, baseType: !895)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2917, file: !2918, line: 61, baseType: !2925, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2673, line: 151, baseType: !895)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2917, file: !2918, line: 62, baseType: !2927, size: 32, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2673, line: 150, baseType: !7)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2917, file: !2918, line: 64, baseType: !2929, size: 32, offset: 224)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2673, line: 146, baseType: !7)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2917, file: !2918, line: 65, baseType: !2931, size: 32, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2673, line: 147, baseType: !7)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2917, file: !2918, line: 67, baseType: !815, size: 32, offset: 288)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2917, file: !2918, line: 69, baseType: !2921, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2917, file: !2918, line: 74, baseType: !2672, size: 64, offset: 384)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2917, file: !2918, line: 78, baseType: !2936, size: 64, offset: 448)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2673, line: 174, baseType: !835)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2917, file: !2918, line: 80, baseType: !2938, size: 64, offset: 512)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2673, line: 179, baseType: !835)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2917, file: !2918, line: 91, baseType: !2940, size: 128, offset: 576)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2941, line: 10, size: 128, elements: !2942)
!2941 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2942 = !{!2943, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2940, file: !2941, line: 12, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2673, line: 160, baseType: !835)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2940, file: !2941, line: 16, baseType: !2946, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2673, line: 196, baseType: !835)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2917, file: !2918, line: 92, baseType: !2940, size: 128, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2917, file: !2918, line: 93, baseType: !2940, size: 128, offset: 832)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2917, file: !2918, line: 106, baseType: !2950, size: 192, offset: 960)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2946, size: 192, elements: !914)
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "__path", arg: 1, scope: !2912, file: !2913, line: 453, type: !820)
!2953 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2912, file: !2913, line: 453, type: !2916)
!2954 = !DILocation(line: 0, scope: !2912)
!2955 = !DILocation(line: 455, column: 10, scope: !2912)
!2956 = !DILocation(line: 455, column: 3, scope: !2912)
!2957 = distinct !DISubprogram(name: "lstat", scope: !2913, file: !2913, line: 460, type: !2914, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2958)
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "__path", arg: 1, scope: !2957, file: !2913, line: 460, type: !820)
!2960 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2957, file: !2913, line: 460, type: !2916)
!2961 = !DILocation(line: 0, scope: !2957)
!2962 = !DILocation(line: 462, column: 10, scope: !2957)
!2963 = !DILocation(line: 462, column: 3, scope: !2957)
!2964 = distinct !DISubprogram(name: "fstat", scope: !2913, file: !2913, line: 467, type: !2965, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!815, !815, !2916}
!2967 = !{!2968, !2969}
!2968 = !DILocalVariable(name: "__fd", arg: 1, scope: !2964, file: !2913, line: 467, type: !815)
!2969 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2964, file: !2913, line: 467, type: !2916)
!2970 = !DILocation(line: 0, scope: !2964)
!2971 = !DILocation(line: 469, column: 10, scope: !2964)
!2972 = !DILocation(line: 469, column: 3, scope: !2964)
!2973 = distinct !DISubprogram(name: "fstatat", scope: !2913, file: !2913, line: 474, type: !2974, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!815, !815, !820, !2916, !815}
!2976 = !{!2977, !2978, !2979, !2980}
!2977 = !DILocalVariable(name: "__fd", arg: 1, scope: !2973, file: !2913, line: 474, type: !815)
!2978 = !DILocalVariable(name: "__filename", arg: 2, scope: !2973, file: !2913, line: 474, type: !820)
!2979 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2973, file: !2913, line: 474, type: !2916)
!2980 = !DILocalVariable(name: "__flag", arg: 4, scope: !2973, file: !2913, line: 474, type: !815)
!2981 = !DILocation(line: 0, scope: !2973)
!2982 = !DILocation(line: 477, column: 10, scope: !2973)
!2983 = !DILocation(line: 477, column: 3, scope: !2973)
!2984 = distinct !DISubprogram(name: "mknod", scope: !2913, file: !2913, line: 483, type: !2985, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!815, !820, !2927, !2921}
!2987 = !{!2988, !2989, !2990}
!2988 = !DILocalVariable(name: "__path", arg: 1, scope: !2984, file: !2913, line: 483, type: !820)
!2989 = !DILocalVariable(name: "__mode", arg: 2, scope: !2984, file: !2913, line: 483, type: !2927)
!2990 = !DILocalVariable(name: "__dev", arg: 3, scope: !2984, file: !2913, line: 483, type: !2921)
!2991 = !DILocation(line: 0, scope: !2984)
!2992 = !DILocation(line: 485, column: 10, scope: !2984)
!2993 = !DILocation(line: 485, column: 3, scope: !2984)
!2994 = distinct !DISubprogram(name: "mknodat", scope: !2913, file: !2913, line: 491, type: !2995, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!815, !815, !820, !2927, !2921}
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DILocalVariable(name: "__fd", arg: 1, scope: !2994, file: !2913, line: 491, type: !815)
!2999 = !DILocalVariable(name: "__path", arg: 2, scope: !2994, file: !2913, line: 491, type: !820)
!3000 = !DILocalVariable(name: "__mode", arg: 3, scope: !2994, file: !2913, line: 491, type: !2927)
!3001 = !DILocalVariable(name: "__dev", arg: 4, scope: !2994, file: !2913, line: 491, type: !2921)
!3002 = !DILocation(line: 0, scope: !2994)
!3003 = !DILocation(line: 494, column: 10, scope: !2994)
!3004 = !DILocation(line: 494, column: 3, scope: !2994)
!3005 = distinct !DISubprogram(name: "stat64", scope: !2913, file: !2913, line: 502, type: !3006, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3028)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!815, !820, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2918, line: 119, size: 1152, elements: !3010)
!3010 = !{!3011, !3012, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3024, !3025, !3026, !3027}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3009, file: !2918, line: 121, baseType: !2921, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3009, file: !2918, line: 123, baseType: !3013, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2673, line: 149, baseType: !895)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3009, file: !2918, line: 124, baseType: !2925, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3009, file: !2918, line: 125, baseType: !2927, size: 32, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3009, file: !2918, line: 132, baseType: !2929, size: 32, offset: 224)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3009, file: !2918, line: 133, baseType: !2931, size: 32, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3009, file: !2918, line: 135, baseType: !815, size: 32, offset: 288)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3009, file: !2918, line: 136, baseType: !2921, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3009, file: !2918, line: 137, baseType: !2672, size: 64, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3009, file: !2918, line: 143, baseType: !2936, size: 64, offset: 448)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3009, file: !2918, line: 144, baseType: !3023, size: 64, offset: 512)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2673, line: 180, baseType: !835)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3009, file: !2918, line: 152, baseType: !2940, size: 128, offset: 576)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3009, file: !2918, line: 153, baseType: !2940, size: 128, offset: 704)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3009, file: !2918, line: 154, baseType: !2940, size: 128, offset: 832)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3009, file: !2918, line: 164, baseType: !2950, size: 192, offset: 960)
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "__path", arg: 1, scope: !3005, file: !2913, line: 502, type: !820)
!3030 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3005, file: !2913, line: 502, type: !3008)
!3031 = !DILocation(line: 0, scope: !3005)
!3032 = !DILocation(line: 504, column: 10, scope: !3005)
!3033 = !DILocation(line: 504, column: 3, scope: !3005)
!3034 = distinct !DISubprogram(name: "lstat64", scope: !2913, file: !2913, line: 509, type: !3006, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3035 = !{!3036, !3037}
!3036 = !DILocalVariable(name: "__path", arg: 1, scope: !3034, file: !2913, line: 509, type: !820)
!3037 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3034, file: !2913, line: 509, type: !3008)
!3038 = !DILocation(line: 0, scope: !3034)
!3039 = !DILocation(line: 511, column: 10, scope: !3034)
!3040 = !DILocation(line: 511, column: 3, scope: !3034)
!3041 = distinct !DISubprogram(name: "fstat64", scope: !2913, file: !2913, line: 516, type: !3042, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!815, !815, !3008}
!3044 = !{!3045, !3046}
!3045 = !DILocalVariable(name: "__fd", arg: 1, scope: !3041, file: !2913, line: 516, type: !815)
!3046 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3041, file: !2913, line: 516, type: !3008)
!3047 = !DILocation(line: 0, scope: !3041)
!3048 = !DILocation(line: 518, column: 10, scope: !3041)
!3049 = !DILocation(line: 518, column: 3, scope: !3041)
!3050 = distinct !DISubprogram(name: "fstatat64", scope: !2913, file: !2913, line: 523, type: !3051, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!815, !815, !820, !3008, !815}
!3053 = !{!3054, !3055, !3056, !3057}
!3054 = !DILocalVariable(name: "__fd", arg: 1, scope: !3050, file: !2913, line: 523, type: !815)
!3055 = !DILocalVariable(name: "__filename", arg: 2, scope: !3050, file: !2913, line: 523, type: !820)
!3056 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3050, file: !2913, line: 523, type: !3008)
!3057 = !DILocalVariable(name: "__flag", arg: 4, scope: !3050, file: !2913, line: 523, type: !815)
!3058 = !DILocation(line: 0, scope: !3050)
!3059 = !DILocation(line: 526, column: 10, scope: !3050)
!3060 = !DILocation(line: 526, column: 3, scope: !3050)
!3061 = distinct !DISubprogram(name: "cgraph_add_edge_removal_hook", scope: !3, file: !3, line: 196, type: !3062, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!822, !826, !819}
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "hook", arg: 1, scope: !3061, file: !3, line: 196, type: !826)
!3066 = !DILocalVariable(name: "data", arg: 2, scope: !3061, file: !3, line: 196, type: !819)
!3067 = !DILocalVariable(name: "entry", scope: !3061, file: !3, line: 198, type: !822)
!3068 = !DILocalVariable(name: "ptr", scope: !3061, file: !3, line: 199, type: !3069)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!3070 = !DILocation(line: 0, scope: !3061)
!3071 = !DILocation(line: 201, column: 44, scope: !3061)
!3072 = !DILocation(line: 202, column: 10, scope: !3061)
!3073 = !DILocation(line: 202, column: 15, scope: !3061)
!3074 = !DILocation(line: 203, column: 10, scope: !3061)
!3075 = !DILocation(line: 203, column: 15, scope: !3061)
!3076 = !DILocation(line: 204, column: 10, scope: !3061)
!3077 = !DILocation(line: 204, column: 15, scope: !3061)
!3078 = !DILocation(line: 205, column: 3, scope: !3061)
!3079 = !DILocation(line: 205, column: 10, scope: !3061)
!3080 = !DILocation(line: 206, column: 20, scope: !3061)
!3081 = distinct !{!3081, !3078, !3080}
!3082 = !DILocation(line: 201, column: 11, scope: !3061)
!3083 = !DILocation(line: 207, column: 8, scope: !3061)
!3084 = !DILocation(line: 208, column: 3, scope: !3061)
!3085 = distinct !DISubprogram(name: "cgraph_remove_edge_removal_hook", scope: !3, file: !3, line: 213, type: !3086, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !822}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "entry", arg: 1, scope: !3085, file: !3, line: 213, type: !822)
!3090 = !DILocalVariable(name: "ptr", scope: !3085, file: !3, line: 215, type: !3069)
!3091 = !DILocation(line: 0, scope: !3085)
!3092 = !DILocation(line: 217, column: 3, scope: !3085)
!3093 = !DILocation(line: 217, column: 10, scope: !3085)
!3094 = !DILocation(line: 217, column: 15, scope: !3085)
!3095 = !DILocation(line: 218, column: 20, scope: !3085)
!3096 = distinct !{!3096, !3092, !3095}
!3097 = !DILocation(line: 219, column: 17, scope: !3085)
!3098 = !DILocation(line: 219, column: 8, scope: !3085)
!3099 = !DILocation(line: 220, column: 9, scope: !3085)
!3100 = !DILocation(line: 220, column: 3, scope: !3085)
!3101 = !DILocation(line: 221, column: 1, scope: !3085)
!3102 = distinct !DISubprogram(name: "cgraph_add_node_removal_hook", scope: !3, file: !3, line: 237, type: !3103, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!2485, !2489, !819}
!3105 = !{!3106, !3107, !3108, !3109}
!3106 = !DILocalVariable(name: "hook", arg: 1, scope: !3102, file: !3, line: 237, type: !2489)
!3107 = !DILocalVariable(name: "data", arg: 2, scope: !3102, file: !3, line: 237, type: !819)
!3108 = !DILocalVariable(name: "entry", scope: !3102, file: !3, line: 239, type: !2485)
!3109 = !DILocalVariable(name: "ptr", scope: !3102, file: !3, line: 240, type: !3110)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!3111 = !DILocation(line: 0, scope: !3102)
!3112 = !DILocation(line: 242, column: 44, scope: !3102)
!3113 = !DILocation(line: 243, column: 10, scope: !3102)
!3114 = !DILocation(line: 243, column: 15, scope: !3102)
!3115 = !DILocation(line: 244, column: 10, scope: !3102)
!3116 = !DILocation(line: 244, column: 15, scope: !3102)
!3117 = !DILocation(line: 245, column: 10, scope: !3102)
!3118 = !DILocation(line: 245, column: 15, scope: !3102)
!3119 = !DILocation(line: 246, column: 3, scope: !3102)
!3120 = !DILocation(line: 246, column: 10, scope: !3102)
!3121 = !DILocation(line: 247, column: 20, scope: !3102)
!3122 = distinct !{!3122, !3119, !3121}
!3123 = !DILocation(line: 242, column: 11, scope: !3102)
!3124 = !DILocation(line: 248, column: 8, scope: !3102)
!3125 = !DILocation(line: 249, column: 3, scope: !3102)
!3126 = distinct !DISubprogram(name: "cgraph_remove_node_removal_hook", scope: !3, file: !3, line: 254, type: !3127, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !2485}
!3129 = !{!3130, !3131}
!3130 = !DILocalVariable(name: "entry", arg: 1, scope: !3126, file: !3, line: 254, type: !2485)
!3131 = !DILocalVariable(name: "ptr", scope: !3126, file: !3, line: 256, type: !3110)
!3132 = !DILocation(line: 0, scope: !3126)
!3133 = !DILocation(line: 258, column: 3, scope: !3126)
!3134 = !DILocation(line: 258, column: 10, scope: !3126)
!3135 = !DILocation(line: 258, column: 15, scope: !3126)
!3136 = !DILocation(line: 259, column: 20, scope: !3126)
!3137 = distinct !{!3137, !3133, !3136}
!3138 = !DILocation(line: 260, column: 17, scope: !3126)
!3139 = !DILocation(line: 260, column: 8, scope: !3126)
!3140 = !DILocation(line: 261, column: 9, scope: !3126)
!3141 = !DILocation(line: 261, column: 3, scope: !3126)
!3142 = !DILocation(line: 262, column: 1, scope: !3126)
!3143 = distinct !DISubprogram(name: "cgraph_add_function_insertion_hook", scope: !3, file: !3, line: 278, type: !3103, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DILocalVariable(name: "hook", arg: 1, scope: !3143, file: !3, line: 278, type: !2489)
!3146 = !DILocalVariable(name: "data", arg: 2, scope: !3143, file: !3, line: 278, type: !819)
!3147 = !DILocalVariable(name: "entry", scope: !3143, file: !3, line: 280, type: !2485)
!3148 = !DILocalVariable(name: "ptr", scope: !3143, file: !3, line: 281, type: !3110)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 283, column: 44, scope: !3143)
!3151 = !DILocation(line: 284, column: 10, scope: !3143)
!3152 = !DILocation(line: 284, column: 15, scope: !3143)
!3153 = !DILocation(line: 285, column: 10, scope: !3143)
!3154 = !DILocation(line: 285, column: 15, scope: !3143)
!3155 = !DILocation(line: 286, column: 10, scope: !3143)
!3156 = !DILocation(line: 286, column: 15, scope: !3143)
!3157 = !DILocation(line: 287, column: 3, scope: !3143)
!3158 = !DILocation(line: 287, column: 10, scope: !3143)
!3159 = !DILocation(line: 288, column: 20, scope: !3143)
!3160 = distinct !{!3160, !3157, !3159}
!3161 = !DILocation(line: 283, column: 11, scope: !3143)
!3162 = !DILocation(line: 289, column: 8, scope: !3143)
!3163 = !DILocation(line: 290, column: 3, scope: !3143)
!3164 = distinct !DISubprogram(name: "cgraph_remove_function_insertion_hook", scope: !3, file: !3, line: 295, type: !3127, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3165)
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "entry", arg: 1, scope: !3164, file: !3, line: 295, type: !2485)
!3167 = !DILocalVariable(name: "ptr", scope: !3164, file: !3, line: 297, type: !3110)
!3168 = !DILocation(line: 0, scope: !3164)
!3169 = !DILocation(line: 299, column: 3, scope: !3164)
!3170 = !DILocation(line: 299, column: 10, scope: !3164)
!3171 = !DILocation(line: 299, column: 15, scope: !3164)
!3172 = !DILocation(line: 300, column: 20, scope: !3164)
!3173 = distinct !{!3173, !3169, !3172}
!3174 = !DILocation(line: 301, column: 17, scope: !3164)
!3175 = !DILocation(line: 301, column: 8, scope: !3164)
!3176 = !DILocation(line: 302, column: 9, scope: !3164)
!3177 = !DILocation(line: 302, column: 3, scope: !3164)
!3178 = !DILocation(line: 303, column: 1, scope: !3164)
!3179 = distinct !DISubprogram(name: "cgraph_call_function_insertion_hooks", scope: !3, file: !3, line: 307, type: !2350, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3180)
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "node", arg: 1, scope: !3179, file: !3, line: 307, type: !837)
!3182 = !DILocalVariable(name: "entry", scope: !3179, file: !3, line: 309, type: !2485)
!3183 = !DILocation(line: 0, scope: !3179)
!3184 = !DILocation(line: 310, column: 3, scope: !3179)
!3185 = !DILocation(line: 312, column: 12, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 311, column: 3)
!3187 = !DILocation(line: 312, column: 31, scope: !3186)
!3188 = !DILocation(line: 312, column: 5, scope: !3186)
!3189 = !DILocation(line: 313, column: 20, scope: !3186)
!3190 = distinct !{!3190, !3184, !3191}
!3191 = !DILocation(line: 314, column: 3, scope: !3179)
!3192 = !DILocation(line: 315, column: 1, scope: !3179)
!3193 = distinct !DISubprogram(name: "cgraph_add_edge_duplication_hook", scope: !3, file: !3, line: 319, type: !3194, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!2495, !2499, !819}
!3196 = !{!3197, !3198, !3199, !3200}
!3197 = !DILocalVariable(name: "hook", arg: 1, scope: !3193, file: !3, line: 319, type: !2499)
!3198 = !DILocalVariable(name: "data", arg: 2, scope: !3193, file: !3, line: 319, type: !819)
!3199 = !DILocalVariable(name: "entry", scope: !3193, file: !3, line: 321, type: !2495)
!3200 = !DILocalVariable(name: "ptr", scope: !3193, file: !3, line: 322, type: !3201)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!3202 = !DILocation(line: 0, scope: !3193)
!3203 = !DILocation(line: 324, column: 45, scope: !3193)
!3204 = !DILocation(line: 325, column: 10, scope: !3193)
!3205 = !DILocation(line: 325, column: 15, scope: !3193)
!3206 = !DILocation(line: 326, column: 10, scope: !3193)
!3207 = !DILocation(line: 326, column: 15, scope: !3193)
!3208 = !DILocation(line: 327, column: 10, scope: !3193)
!3209 = !DILocation(line: 327, column: 15, scope: !3193)
!3210 = !DILocation(line: 328, column: 3, scope: !3193)
!3211 = !DILocation(line: 328, column: 10, scope: !3193)
!3212 = !DILocation(line: 329, column: 20, scope: !3193)
!3213 = distinct !{!3213, !3210, !3212}
!3214 = !DILocation(line: 324, column: 11, scope: !3193)
!3215 = !DILocation(line: 330, column: 8, scope: !3193)
!3216 = !DILocation(line: 331, column: 3, scope: !3193)
!3217 = distinct !DISubprogram(name: "cgraph_remove_edge_duplication_hook", scope: !3, file: !3, line: 336, type: !3218, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !2495}
!3220 = !{!3221, !3222}
!3221 = !DILocalVariable(name: "entry", arg: 1, scope: !3217, file: !3, line: 336, type: !2495)
!3222 = !DILocalVariable(name: "ptr", scope: !3217, file: !3, line: 338, type: !3201)
!3223 = !DILocation(line: 0, scope: !3217)
!3224 = !DILocation(line: 340, column: 3, scope: !3217)
!3225 = !DILocation(line: 340, column: 10, scope: !3217)
!3226 = !DILocation(line: 340, column: 15, scope: !3217)
!3227 = !DILocation(line: 341, column: 20, scope: !3217)
!3228 = distinct !{!3228, !3224, !3227}
!3229 = !DILocation(line: 342, column: 17, scope: !3217)
!3230 = !DILocation(line: 342, column: 8, scope: !3217)
!3231 = !DILocation(line: 343, column: 9, scope: !3217)
!3232 = !DILocation(line: 343, column: 3, scope: !3217)
!3233 = !DILocation(line: 344, column: 1, scope: !3217)
!3234 = distinct !DISubprogram(name: "cgraph_add_node_duplication_hook", scope: !3, file: !3, line: 361, type: !3235, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!2505, !2509, !819}
!3237 = !{!3238, !3239, !3240, !3241}
!3238 = !DILocalVariable(name: "hook", arg: 1, scope: !3234, file: !3, line: 361, type: !2509)
!3239 = !DILocalVariable(name: "data", arg: 2, scope: !3234, file: !3, line: 361, type: !819)
!3240 = !DILocalVariable(name: "entry", scope: !3234, file: !3, line: 363, type: !2505)
!3241 = !DILocalVariable(name: "ptr", scope: !3234, file: !3, line: 364, type: !3242)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!3243 = !DILocation(line: 0, scope: !3234)
!3244 = !DILocation(line: 366, column: 45, scope: !3234)
!3245 = !DILocation(line: 367, column: 10, scope: !3234)
!3246 = !DILocation(line: 367, column: 15, scope: !3234)
!3247 = !DILocation(line: 368, column: 10, scope: !3234)
!3248 = !DILocation(line: 368, column: 15, scope: !3234)
!3249 = !DILocation(line: 369, column: 10, scope: !3234)
!3250 = !DILocation(line: 369, column: 15, scope: !3234)
!3251 = !DILocation(line: 370, column: 3, scope: !3234)
!3252 = !DILocation(line: 370, column: 10, scope: !3234)
!3253 = !DILocation(line: 371, column: 20, scope: !3234)
!3254 = distinct !{!3254, !3251, !3253}
!3255 = !DILocation(line: 366, column: 11, scope: !3234)
!3256 = !DILocation(line: 372, column: 8, scope: !3234)
!3257 = !DILocation(line: 373, column: 3, scope: !3234)
!3258 = distinct !DISubprogram(name: "cgraph_remove_node_duplication_hook", scope: !3, file: !3, line: 378, type: !3259, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !2505}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "entry", arg: 1, scope: !3258, file: !3, line: 378, type: !2505)
!3263 = !DILocalVariable(name: "ptr", scope: !3258, file: !3, line: 380, type: !3242)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 382, column: 3, scope: !3258)
!3266 = !DILocation(line: 382, column: 10, scope: !3258)
!3267 = !DILocation(line: 382, column: 15, scope: !3258)
!3268 = !DILocation(line: 383, column: 20, scope: !3258)
!3269 = distinct !{!3269, !3265, !3268}
!3270 = !DILocation(line: 384, column: 17, scope: !3258)
!3271 = !DILocation(line: 384, column: 8, scope: !3258)
!3272 = !DILocation(line: 385, column: 9, scope: !3258)
!3273 = !DILocation(line: 385, column: 3, scope: !3258)
!3274 = !DILocation(line: 386, column: 1, scope: !3258)
!3275 = distinct !DISubprogram(name: "cgraph_node", scope: !3, file: !3, line: 464, type: !3276, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!837, !841}
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3286}
!3279 = !DILocalVariable(name: "decl", arg: 1, scope: !3275, file: !3, line: 464, type: !841)
!3280 = !DILocalVariable(name: "key", scope: !3275, file: !3, line: 466, type: !838)
!3281 = !DILocalVariable(name: "node", scope: !3275, file: !3, line: 466, type: !837)
!3282 = !DILocalVariable(name: "slot", scope: !3275, file: !3, line: 466, type: !2515)
!3283 = !DILocalVariable(name: "aslot", scope: !3284, file: !3, line: 496, type: !1691)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 495, column: 5)
!3285 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 494, column: 7)
!3286 = !DILocalVariable(name: "name", scope: !3284, file: !3, line: 497, type: !841)
!3287 = !DILocation(line: 0, scope: !3275)
!3288 = !DILocation(line: 466, column: 3, scope: !3275)
!3289 = !DILocation(line: 468, column: 3, scope: !3275)
!3290 = !DILocation(line: 470, column: 8, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 470, column: 7)
!3292 = !DILocation(line: 470, column: 7, scope: !3275)
!3293 = !DILocation(line: 471, column: 19, scope: !3291)
!3294 = !DILocation(line: 471, column: 17, scope: !3291)
!3295 = !DILocation(line: 471, column: 5, scope: !3291)
!3296 = !DILocation(line: 475, column: 50, scope: !3275)
!3297 = !DILocation(line: 473, column: 7, scope: !3275)
!3298 = !DILocation(line: 473, column: 12, scope: !3275)
!3299 = !DILocation(line: 475, column: 34, scope: !3275)
!3300 = !DILocation(line: 475, column: 10, scope: !3275)
!3301 = !DILocation(line: 477, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 477, column: 7)
!3303 = !DILocation(line: 477, column: 7, scope: !3275)
!3304 = !DILocation(line: 480, column: 17, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 480, column: 11)
!3306 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 478, column: 5)
!3307 = !DILocation(line: 480, column: 11, scope: !3305)
!3308 = !DILocation(line: 480, column: 11, scope: !3306)
!3309 = !DILocation(line: 481, column: 15, scope: !3305)
!3310 = !DILocation(line: 481, column: 2, scope: !3305)
!3311 = !DILocation(line: 485, column: 10, scope: !3275)
!3312 = !DILocation(line: 486, column: 9, scope: !3275)
!3313 = !DILocation(line: 486, column: 14, scope: !3275)
!3314 = !DILocation(line: 487, column: 9, scope: !3275)
!3315 = !DILocation(line: 488, column: 7, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 488, column: 7)
!3317 = !DILocation(line: 488, column: 27, scope: !3316)
!3318 = !DILocation(line: 488, column: 30, scope: !3316)
!3319 = !DILocation(line: 488, column: 62, scope: !3316)
!3320 = !DILocation(line: 488, column: 7, scope: !3275)
!3321 = !DILocation(line: 490, column: 22, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 489, column: 5)
!3323 = !DILocation(line: 490, column: 13, scope: !3322)
!3324 = !DILocation(line: 490, column: 20, scope: !3322)
!3325 = !DILocation(line: 491, column: 41, scope: !3322)
!3326 = !DILocation(line: 491, column: 13, scope: !3322)
!3327 = !DILocation(line: 491, column: 25, scope: !3322)
!3328 = !DILocation(line: 492, column: 28, scope: !3322)
!3329 = !DILocation(line: 493, column: 5, scope: !3322)
!3330 = !DILocation(line: 494, column: 7, scope: !3285)
!3331 = !DILocation(line: 494, column: 7, scope: !3275)
!3332 = !DILocation(line: 497, column: 19, scope: !3284)
!3333 = !DILocation(line: 0, scope: !3284)
!3334 = !DILocation(line: 499, column: 41, scope: !3284)
!3335 = !DILocation(line: 499, column: 62, scope: !3284)
!3336 = !DILocation(line: 500, column: 6, scope: !3284)
!3337 = !DILocation(line: 499, column: 15, scope: !3284)
!3338 = !DILocation(line: 506, column: 11, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 506, column: 11)
!3340 = !DILocation(line: 506, column: 18, scope: !3339)
!3341 = !DILocation(line: 506, column: 11, scope: !3284)
!3342 = !DILocation(line: 507, column: 9, scope: !3339)
!3343 = !DILocation(line: 507, column: 2, scope: !3339)
!3344 = !DILocation(line: 510, column: 1, scope: !3275)
!3345 = distinct !DISubprogram(name: "hash_node", scope: !3, file: !3, line: 404, type: !1677, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3346)
!3346 = !{!3347, !3348}
!3347 = !DILocalVariable(name: "p", arg: 1, scope: !3345, file: !3, line: 404, type: !1469)
!3348 = !DILocalVariable(name: "n", scope: !3345, file: !3, line: 406, type: !2523)
!3349 = !DILocation(line: 0, scope: !3345)
!3350 = !DILocation(line: 407, column: 22, scope: !3345)
!3351 = !DILocation(line: 407, column: 3, scope: !3345)
!3352 = distinct !DISubprogram(name: "eq_node", scope: !3, file: !3, line: 414, type: !1683, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3353 = !{!3354, !3355, !3356, !3357}
!3354 = !DILocalVariable(name: "p1", arg: 1, scope: !3352, file: !3, line: 414, type: !1469)
!3355 = !DILocalVariable(name: "p2", arg: 2, scope: !3352, file: !3, line: 414, type: !1469)
!3356 = !DILocalVariable(name: "n1", scope: !3352, file: !3, line: 416, type: !2523)
!3357 = !DILocalVariable(name: "n2", scope: !3352, file: !3, line: 417, type: !2523)
!3358 = !DILocation(line: 0, scope: !3352)
!3359 = !DILocation(line: 418, column: 10, scope: !3352)
!3360 = !DILocation(line: 418, column: 33, scope: !3352)
!3361 = !DILocation(line: 418, column: 30, scope: !3352)
!3362 = !DILocation(line: 418, column: 3, scope: !3352)
!3363 = distinct !DISubprogram(name: "cgraph_create_node", scope: !3, file: !3, line: 445, type: !3364, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!837}
!3366 = !{!3367}
!3367 = !DILocalVariable(name: "node", scope: !3363, file: !3, line: 447, type: !837)
!3368 = !DILocation(line: 447, column: 30, scope: !3363)
!3369 = !DILocation(line: 0, scope: !3363)
!3370 = !DILocation(line: 449, column: 16, scope: !3363)
!3371 = !DILocation(line: 449, column: 9, scope: !3363)
!3372 = !DILocation(line: 449, column: 14, scope: !3363)
!3373 = !DILocation(line: 450, column: 9, scope: !3363)
!3374 = !DILocation(line: 450, column: 13, scope: !3363)
!3375 = !DILocation(line: 451, column: 29, scope: !3363)
!3376 = !DILocation(line: 451, column: 9, scope: !3363)
!3377 = !DILocation(line: 451, column: 15, scope: !3363)
!3378 = !DILocation(line: 452, column: 7, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 452, column: 7)
!3380 = !DILocation(line: 452, column: 7, scope: !3363)
!3381 = !DILocation(line: 453, column: 19, scope: !3379)
!3382 = !DILocation(line: 453, column: 28, scope: !3379)
!3383 = !DILocation(line: 453, column: 5, scope: !3379)
!3384 = !DILocation(line: 454, column: 9, scope: !3363)
!3385 = !DILocation(line: 454, column: 18, scope: !3363)
!3386 = !DILocation(line: 455, column: 16, scope: !3363)
!3387 = !DILocation(line: 455, column: 33, scope: !3363)
!3388 = !DILocation(line: 456, column: 16, scope: !3363)
!3389 = !DILocation(line: 457, column: 17, scope: !3363)
!3390 = !DILocation(line: 458, column: 3, scope: !3363)
!3391 = distinct !DISubprogram(name: "cgraph_same_body_alias", scope: !3, file: !3, line: 550, type: !3392, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!814, !841, !841}
!3394 = !{!3395, !3396}
!3395 = !DILocalVariable(name: "alias", arg: 1, scope: !3391, file: !3, line: 550, type: !841)
!3396 = !DILocalVariable(name: "decl", arg: 2, scope: !3391, file: !3, line: 550, type: !841)
!3397 = !DILocation(line: 0, scope: !3391)
!3398 = !DILocation(line: 559, column: 10, scope: !3391)
!3399 = !DILocation(line: 559, column: 49, scope: !3391)
!3400 = !DILocation(line: 559, column: 3, scope: !3391)
!3401 = distinct !DISubprogram(name: "cgraph_same_body_alias_1", scope: !3, file: !3, line: 515, type: !3402, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!837, !841, !841}
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410}
!3405 = !DILocalVariable(name: "alias", arg: 1, scope: !3401, file: !3, line: 515, type: !841)
!3406 = !DILocalVariable(name: "decl", arg: 2, scope: !3401, file: !3, line: 515, type: !841)
!3407 = !DILocalVariable(name: "key", scope: !3401, file: !3, line: 517, type: !838)
!3408 = !DILocalVariable(name: "alias_node", scope: !3401, file: !3, line: 517, type: !837)
!3409 = !DILocalVariable(name: "decl_node", scope: !3401, file: !3, line: 517, type: !837)
!3410 = !DILocalVariable(name: "slot", scope: !3401, file: !3, line: 517, type: !2515)
!3411 = !DILocation(line: 0, scope: !3401)
!3412 = !DILocation(line: 517, column: 3, scope: !3401)
!3413 = !DILocation(line: 519, column: 3, scope: !3401)
!3414 = !DILocation(line: 520, column: 3, scope: !3401)
!3415 = !DILocation(line: 521, column: 15, scope: !3401)
!3416 = !DILocation(line: 523, column: 7, scope: !3401)
!3417 = !DILocation(line: 523, column: 12, scope: !3401)
!3418 = !DILocation(line: 525, column: 50, scope: !3401)
!3419 = !DILocation(line: 525, column: 34, scope: !3401)
!3420 = !DILocation(line: 525, column: 10, scope: !3401)
!3421 = !DILocation(line: 528, column: 7, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 528, column: 7)
!3423 = !DILocation(line: 528, column: 7, scope: !3401)
!3424 = !DILocation(line: 531, column: 16, scope: !3401)
!3425 = !DILocation(line: 532, column: 15, scope: !3401)
!3426 = !DILocation(line: 532, column: 20, scope: !3401)
!3427 = !DILocation(line: 533, column: 15, scope: !3401)
!3428 = !DILocation(line: 533, column: 31, scope: !3401)
!3429 = !DILocation(line: 534, column: 15, scope: !3401)
!3430 = !DILocation(line: 534, column: 25, scope: !3401)
!3431 = !DILocation(line: 535, column: 15, scope: !3401)
!3432 = !DILocation(line: 535, column: 24, scope: !3401)
!3433 = !DILocation(line: 536, column: 18, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 536, column: 7)
!3435 = !DILocation(line: 536, column: 7, scope: !3434)
!3436 = !DILocation(line: 536, column: 7, scope: !3401)
!3437 = !DILocation(line: 537, column: 27, scope: !3434)
!3438 = !DILocation(line: 537, column: 36, scope: !3434)
!3439 = !DILocation(line: 538, column: 33, scope: !3401)
!3440 = !DILocation(line: 537, column: 5, scope: !3434)
!3441 = !DILocation(line: 538, column: 15, scope: !3401)
!3442 = !DILocation(line: 538, column: 20, scope: !3401)
!3443 = !DILocation(line: 539, column: 21, scope: !3401)
!3444 = !DILocation(line: 539, column: 27, scope: !3401)
!3445 = !DILocation(line: 540, column: 24, scope: !3401)
!3446 = !DILocation(line: 541, column: 9, scope: !3401)
!3447 = !DILocation(line: 542, column: 3, scope: !3401)
!3448 = !DILocation(line: 543, column: 1, scope: !3401)
!3449 = distinct !DISubprogram(name: "cgraph_add_thunk", scope: !3, file: !3, line: 563, type: !3450, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !841, !841, !814, !835, !835, !841, !841}
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3453 = !DILocalVariable(name: "alias", arg: 1, scope: !3449, file: !3, line: 563, type: !841)
!3454 = !DILocalVariable(name: "decl", arg: 2, scope: !3449, file: !3, line: 563, type: !841)
!3455 = !DILocalVariable(name: "this_adjusting", arg: 3, scope: !3449, file: !3, line: 563, type: !814)
!3456 = !DILocalVariable(name: "fixed_offset", arg: 4, scope: !3449, file: !3, line: 564, type: !835)
!3457 = !DILocalVariable(name: "virtual_value", arg: 5, scope: !3449, file: !3, line: 564, type: !835)
!3458 = !DILocalVariable(name: "virtual_offset", arg: 6, scope: !3449, file: !3, line: 565, type: !841)
!3459 = !DILocalVariable(name: "real_alias", arg: 7, scope: !3449, file: !3, line: 566, type: !841)
!3460 = !DILocalVariable(name: "node", scope: !3449, file: !3, line: 568, type: !837)
!3461 = !DILocation(line: 0, scope: !3449)
!3462 = !DILocation(line: 568, column: 30, scope: !3449)
!3463 = !DILocation(line: 570, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 570, column: 7)
!3465 = !DILocation(line: 570, column: 7, scope: !3449)
!3466 = !DILocation(line: 572, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 571, column: 5)
!3468 = !DILocation(line: 573, column: 7, scope: !3467)
!3469 = !DILocation(line: 574, column: 7, scope: !3467)
!3470 = !DILocation(line: 575, column: 5, scope: !3467)
!3471 = !DILocation(line: 577, column: 10, scope: !3449)
!3472 = !DILocation(line: 578, column: 3, scope: !3449)
!3473 = !DILocation(line: 583, column: 15, scope: !3449)
!3474 = !DILocation(line: 583, column: 28, scope: !3449)
!3475 = !DILocation(line: 584, column: 15, scope: !3449)
!3476 = !DILocation(line: 584, column: 30, scope: !3449)
!3477 = !DILocation(line: 585, column: 15, scope: !3449)
!3478 = !DILocation(line: 585, column: 29, scope: !3449)
!3479 = !DILocation(line: 586, column: 49, scope: !3449)
!3480 = !DILocation(line: 586, column: 34, scope: !3449)
!3481 = !DILocation(line: 586, column: 15, scope: !3449)
!3482 = !DILocation(line: 586, column: 32, scope: !3449)
!3483 = !DILocation(line: 587, column: 15, scope: !3449)
!3484 = !DILocation(line: 587, column: 21, scope: !3449)
!3485 = !DILocation(line: 588, column: 15, scope: !3449)
!3486 = !DILocation(line: 588, column: 23, scope: !3449)
!3487 = !DILocation(line: 589, column: 1, scope: !3449)
!3488 = distinct !DISubprogram(name: "cgraph_get_node", scope: !3, file: !3, line: 595, type: !3276, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3489)
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DILocalVariable(name: "decl", arg: 1, scope: !3488, file: !3, line: 595, type: !841)
!3491 = !DILocalVariable(name: "key", scope: !3488, file: !3, line: 597, type: !838)
!3492 = !DILocalVariable(name: "node", scope: !3488, file: !3, line: 597, type: !837)
!3493 = !DILocalVariable(name: "slot", scope: !3488, file: !3, line: 597, type: !2515)
!3494 = !DILocation(line: 0, scope: !3488)
!3495 = !DILocation(line: 597, column: 3, scope: !3488)
!3496 = !DILocation(line: 599, column: 3, scope: !3488)
!3497 = !DILocation(line: 601, column: 8, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 601, column: 7)
!3499 = !DILocation(line: 601, column: 7, scope: !3488)
!3500 = !DILocation(line: 604, column: 7, scope: !3488)
!3501 = !DILocation(line: 604, column: 12, scope: !3488)
!3502 = !DILocation(line: 606, column: 34, scope: !3488)
!3503 = !DILocation(line: 609, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 609, column: 7)
!3505 = !DILocation(line: 609, column: 12, scope: !3504)
!3506 = !DILocation(line: 606, column: 10, scope: !3488)
!3507 = !DILocation(line: 609, column: 15, scope: !3504)
!3508 = !DILocation(line: 609, column: 7, scope: !3488)
!3509 = !DILocation(line: 612, column: 17, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 612, column: 11)
!3511 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 610, column: 5)
!3512 = !DILocation(line: 612, column: 11, scope: !3510)
!3513 = !DILocation(line: 612, column: 11, scope: !3511)
!3514 = !DILocation(line: 613, column: 15, scope: !3510)
!3515 = !DILocation(line: 613, column: 2, scope: !3510)
!3516 = !DILocation(line: 616, column: 1, scope: !3488)
!3517 = distinct !DISubprogram(name: "cgraph_remove_node", scope: !3, file: !3, line: 1288, type: !2350, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3527, !3530, !3533, !3534, !3537, !3538, !3541, !3544}
!3519 = !DILocalVariable(name: "node", arg: 1, scope: !3517, file: !3, line: 1288, type: !837)
!3520 = !DILocalVariable(name: "slot", scope: !3517, file: !3, line: 1290, type: !1691)
!3521 = !DILocalVariable(name: "kill_body", scope: !3517, file: !3, line: 1291, type: !814)
!3522 = !DILocalVariable(name: "n", scope: !3517, file: !3, line: 1292, type: !837)
!3523 = !DILocalVariable(name: "uid", scope: !3517, file: !3, line: 1293, type: !815)
!3524 = !DILocalVariable(name: "node2", scope: !3525, file: !3, line: 1309, type: !2515)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1308, column: 5)
!3526 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1307, column: 7)
!3527 = !DILocalVariable(name: "next_inline_clone", scope: !3528, file: !3, line: 1326, type: !837)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 1325, column: 5)
!3529 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1324, column: 7)
!3530 = !DILocalVariable(name: "n", scope: !3531, file: !3, line: 1338, type: !837)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 1337, column: 2)
!3532 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1336, column: 11)
!3533 = !DILocalVariable(name: "new_clones", scope: !3531, file: !3, line: 1339, type: !837)
!3534 = !DILocalVariable(name: "n", scope: !3535, file: !3, line: 1415, type: !837)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 1414, column: 5)
!3536 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1413, column: 7)
!3537 = !DILocalVariable(name: "next", scope: !3535, file: !3, line: 1415, type: !837)
!3538 = !DILocalVariable(name: "prev", scope: !3539, file: !3, line: 1449, type: !837)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 1448, column: 5)
!3540 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1447, column: 7)
!3541 = !DILocalVariable(name: "n", scope: !3542, file: !3, line: 1467, type: !837)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 1466, column: 5)
!3543 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1465, column: 7)
!3544 = !DILocalVariable(name: "name", scope: !3545, file: !3, line: 1475, type: !841)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 1474, column: 5)
!3546 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1473, column: 7)
!3547 = !DILocation(line: 0, scope: !3517)
!3548 = !DILocation(line: 1293, column: 19, scope: !3517)
!3549 = !DILocation(line: 1295, column: 3, scope: !3517)
!3550 = !DILocation(line: 1296, column: 3, scope: !3517)
!3551 = !DILocation(line: 1297, column: 3, scope: !3517)
!3552 = !DILocation(line: 1298, column: 3, scope: !3517)
!3553 = !DILocation(line: 1303, column: 24, scope: !3517)
!3554 = !DILocation(line: 1303, column: 34, scope: !3517)
!3555 = !DILocation(line: 1303, column: 16, scope: !3517)
!3556 = !DILocation(line: 1304, column: 18, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1304, column: 3)
!3558 = !DILocation(line: 1304, column: 8, scope: !3557)
!3559 = !DILocation(line: 0, scope: !3557)
!3560 = !DILocation(line: 1304, column: 3, scope: !3557)
!3561 = !DILocation(line: 1305, column: 8, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1304, column: 3)
!3563 = !DILocation(line: 1305, column: 15, scope: !3562)
!3564 = !DILocation(line: 1304, column: 36, scope: !3562)
!3565 = !DILocation(line: 1304, column: 3, scope: !3562)
!3566 = distinct !{!3566, !3560, !3567}
!3567 = !DILocation(line: 1305, column: 17, scope: !3557)
!3568 = !DILocation(line: 1306, column: 16, scope: !3517)
!3569 = !DILocation(line: 1307, column: 13, scope: !3526)
!3570 = !DILocation(line: 1307, column: 7, scope: !3526)
!3571 = !DILocation(line: 1307, column: 7, scope: !3517)
!3572 = !DILocation(line: 1309, column: 51, scope: !3525)
!3573 = !DILocation(line: 0, scope: !3525)
!3574 = !DILocation(line: 1311, column: 7, scope: !3525)
!3575 = !DILocation(line: 1311, column: 14, scope: !3525)
!3576 = !DILocation(line: 1311, column: 21, scope: !3525)
!3577 = !DILocation(line: 1312, column: 21, scope: !3525)
!3578 = distinct !{!3578, !3574, !3577}
!3579 = !DILocation(line: 1313, column: 22, scope: !3525)
!3580 = !DILocation(line: 1313, column: 14, scope: !3525)
!3581 = !DILocation(line: 1314, column: 5, scope: !3525)
!3582 = !DILocation(line: 1315, column: 13, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1315, column: 7)
!3584 = !DILocation(line: 1315, column: 7, scope: !3583)
!3585 = !DILocation(line: 0, scope: !3583)
!3586 = !DILocation(line: 1315, column: 7, scope: !3517)
!3587 = !DILocation(line: 1316, column: 21, scope: !3583)
!3588 = !DILocation(line: 1316, column: 26, scope: !3583)
!3589 = !DILocation(line: 1319, column: 13, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1319, column: 7)
!3591 = !DILocation(line: 1316, column: 5, scope: !3583)
!3592 = !DILocation(line: 1318, column: 18, scope: !3583)
!3593 = !DILocation(line: 1319, column: 7, scope: !3590)
!3594 = !DILocation(line: 1319, column: 7, scope: !3517)
!3595 = !DILocation(line: 1320, column: 34, scope: !3590)
!3596 = !DILocation(line: 1320, column: 17, scope: !3590)
!3597 = !DILocation(line: 1320, column: 26, scope: !3590)
!3598 = !DILocation(line: 1320, column: 5, scope: !3590)
!3599 = !DILocation(line: 1321, column: 14, scope: !3517)
!3600 = !DILocation(line: 1322, column: 18, scope: !3517)
!3601 = !DILocation(line: 1323, column: 26, scope: !3517)
!3602 = !DILocation(line: 1323, column: 39, scope: !3517)
!3603 = !DILocation(line: 1323, column: 10, scope: !3517)
!3604 = !DILocation(line: 1324, column: 7, scope: !3529)
!3605 = !DILocation(line: 1324, column: 13, scope: !3529)
!3606 = !DILocation(line: 1324, column: 7, scope: !3517)
!3607 = !DILocation(line: 1328, column: 38, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1328, column: 7)
!3609 = !DILocation(line: 0, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 1328, column: 7)
!3611 = !DILocation(line: 1328, column: 12, scope: !3608)
!3612 = !DILocation(line: 0, scope: !3608)
!3613 = !DILocation(line: 0, scope: !3528)
!3614 = !DILocation(line: 1329, column: 29, scope: !3610)
!3615 = !DILocation(line: 1329, column: 51, scope: !3610)
!3616 = !DILocation(line: 1329, column: 65, scope: !3610)
!3617 = !DILocation(line: 1329, column: 56, scope: !3610)
!3618 = !DILocation(line: 1328, column: 7, scope: !3608)
!3619 = !DILocation(line: 1330, column: 44, scope: !3610)
!3620 = !DILocation(line: 1328, column: 7, scope: !3610)
!3621 = distinct !{!3621, !3618, !3622}
!3622 = !DILocation(line: 1331, column: 2, scope: !3608)
!3623 = !DILocation(line: 1341, column: 10, scope: !3531)
!3624 = !DILocation(line: 1344, column: 27, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1344, column: 8)
!3626 = !DILocation(line: 1344, column: 8, scope: !3625)
!3627 = !DILocation(line: 1344, column: 8, scope: !3531)
!3628 = !DILocation(line: 1346, column: 29, scope: !3625)
!3629 = !DILocation(line: 1345, column: 45, scope: !3625)
!3630 = !DILocation(line: 1346, column: 8, scope: !3625)
!3631 = !DILocation(line: 1345, column: 6, scope: !3625)
!3632 = !DILocation(line: 1347, column: 27, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1347, column: 8)
!3634 = !DILocation(line: 1347, column: 8, scope: !3633)
!3635 = !DILocation(line: 0, scope: !3633)
!3636 = !DILocation(line: 1347, column: 8, scope: !3531)
!3637 = !DILocation(line: 1349, column: 8, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1348, column: 6)
!3639 = !DILocation(line: 1350, column: 27, scope: !3638)
!3640 = !DILocation(line: 1351, column: 31, scope: !3638)
!3641 = !DILocation(line: 1350, column: 47, scope: !3638)
!3642 = !DILocation(line: 1351, column: 10, scope: !3638)
!3643 = !DILocation(line: 1359, column: 23, scope: !3531)
!3644 = !DILocation(line: 1352, column: 6, scope: !3638)
!3645 = !DILocation(line: 1355, column: 8, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1354, column: 6)
!3647 = !DILocation(line: 1356, column: 42, scope: !3646)
!3648 = !DILocation(line: 1356, column: 21, scope: !3646)
!3649 = !DILocation(line: 0, scope: !3531)
!3650 = !DILocation(line: 1360, column: 17, scope: !3531)
!3651 = !DILocation(line: 1363, column: 23, scope: !3531)
!3652 = !DILocation(line: 1363, column: 37, scope: !3531)
!3653 = !DILocation(line: 1366, column: 40, scope: !3531)
!3654 = !DILocation(line: 1366, column: 23, scope: !3531)
!3655 = !DILocation(line: 1366, column: 32, scope: !3531)
!3656 = !DILocation(line: 1367, column: 42, scope: !3531)
!3657 = !DILocation(line: 1368, column: 42, scope: !3531)
!3658 = !DILocation(line: 1369, column: 14, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1369, column: 8)
!3660 = !DILocation(line: 1369, column: 8, scope: !3659)
!3661 = !DILocation(line: 1369, column: 8, scope: !3531)
!3662 = !DILocation(line: 1371, column: 28, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1371, column: 12)
!3664 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 1370, column: 6)
!3665 = !DILocation(line: 1371, column: 12, scope: !3663)
!3666 = !DILocation(line: 1371, column: 12, scope: !3664)
!3667 = !DILocation(line: 1372, column: 34, scope: !3663)
!3668 = !DILocation(line: 1372, column: 53, scope: !3663)
!3669 = !DILocation(line: 1373, column: 54, scope: !3664)
!3670 = !DILocation(line: 1372, column: 10, scope: !3663)
!3671 = !DILocation(line: 1373, column: 64, scope: !3664)
!3672 = !DILocation(line: 1373, column: 46, scope: !3664)
!3673 = !DILocation(line: 1374, column: 14, scope: !3664)
!3674 = !DILocation(line: 1374, column: 24, scope: !3664)
!3675 = !DILocation(line: 1374, column: 31, scope: !3664)
!3676 = !DILocation(line: 1375, column: 6, scope: !3664)
!3677 = !DILocation(line: 1378, column: 8, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1378, column: 8)
!3679 = !DILocation(line: 1378, column: 8, scope: !3531)
!3680 = !DILocation(line: 1380, column: 32, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 1380, column: 12)
!3682 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 1379, column: 6)
!3683 = !DILocation(line: 1380, column: 13, scope: !3681)
!3684 = !DILocation(line: 1380, column: 12, scope: !3682)
!3685 = !DILocation(line: 1381, column: 29, scope: !3681)
!3686 = !DILocation(line: 1381, column: 3, scope: !3681)
!3687 = !DILocation(line: 1385, column: 5, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 1383, column: 3)
!3689 = !DILocation(line: 0, scope: !3688)
!3690 = !DILocation(line: 1385, column: 15, scope: !3688)
!3691 = distinct !{!3691, !3687, !3692}
!3692 = !DILocation(line: 1386, column: 15, scope: !3688)
!3693 = !DILocation(line: 1387, column: 27, scope: !3688)
!3694 = !DILocation(line: 1388, column: 17, scope: !3688)
!3695 = !DILocation(line: 1388, column: 36, scope: !3688)
!3696 = !DILocation(line: 1394, column: 4, scope: !3531)
!3697 = !DILocation(line: 1396, column: 11, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1395, column: 6)
!3699 = !DILocation(line: 1396, column: 20, scope: !3698)
!3700 = !DILocation(line: 1397, column: 15, scope: !3698)
!3701 = distinct !{!3701, !3696, !3702}
!3702 = !DILocation(line: 1398, column: 6, scope: !3531)
!3703 = !DILocation(line: 1402, column: 21, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 1401, column: 2)
!3705 = !DILocation(line: 1402, column: 4, scope: !3704)
!3706 = !DILocation(line: 1407, column: 13, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1407, column: 7)
!3708 = !DILocation(line: 1291, column: 8, scope: !3517)
!3709 = !DILocation(line: 1407, column: 7, scope: !3707)
!3710 = !DILocation(line: 1407, column: 7, scope: !3517)
!3711 = !DILocation(line: 1408, column: 58, scope: !3707)
!3712 = !DILocation(line: 1408, column: 31, scope: !3707)
!3713 = !DILocation(line: 1408, column: 50, scope: !3707)
!3714 = !DILocation(line: 1408, column: 5, scope: !3707)
!3715 = !DILocation(line: 1409, column: 18, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 1409, column: 12)
!3717 = !DILocation(line: 1409, column: 12, scope: !3716)
!3718 = !DILocation(line: 1409, column: 12, scope: !3707)
!3719 = !DILocation(line: 1410, column: 36, scope: !3716)
!3720 = !DILocation(line: 1410, column: 21, scope: !3716)
!3721 = !DILocation(line: 1410, column: 28, scope: !3716)
!3722 = !DILocation(line: 1410, column: 5, scope: !3716)
!3723 = !DILocation(line: 1411, column: 13, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1411, column: 7)
!3725 = !DILocation(line: 1411, column: 7, scope: !3724)
!3726 = !DILocation(line: 1411, column: 7, scope: !3517)
!3727 = !DILocation(line: 1412, column: 58, scope: !3724)
!3728 = !DILocation(line: 1412, column: 31, scope: !3724)
!3729 = !DILocation(line: 1412, column: 50, scope: !3724)
!3730 = !DILocation(line: 1412, column: 5, scope: !3724)
!3731 = !DILocation(line: 1413, column: 13, scope: !3536)
!3732 = !DILocation(line: 1413, column: 7, scope: !3536)
!3733 = !DILocation(line: 1413, column: 7, scope: !3517)
!3734 = !DILocation(line: 1417, column: 17, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1417, column: 11)
!3736 = !DILocation(line: 1417, column: 11, scope: !3735)
!3737 = !DILocation(line: 0, scope: !3535)
!3738 = !DILocation(line: 1417, column: 11, scope: !3535)
!3739 = !DILocation(line: 0, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1418, column: 9)
!3741 = !DILocation(line: 1419, column: 4, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 1419, column: 4)
!3743 = !DILocation(line: 1434, column: 4, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 1434, column: 4)
!3745 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1428, column: 9)
!3746 = !DILocation(line: 0, scope: !3742)
!3747 = !DILocation(line: 1419, column: 30, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 1419, column: 4)
!3749 = !DILocation(line: 1419, column: 4, scope: !3748)
!3750 = distinct !{!3750, !3741, !3751}
!3751 = !DILocation(line: 1420, column: 26, scope: !3742)
!3752 = !DILocation(line: 1422, column: 34, scope: !3740)
!3753 = !DILocation(line: 1422, column: 44, scope: !3740)
!3754 = !DILocation(line: 1422, column: 26, scope: !3740)
!3755 = !DILocation(line: 1423, column: 14, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 1423, column: 8)
!3757 = !DILocation(line: 1423, column: 24, scope: !3756)
!3758 = !DILocation(line: 1423, column: 8, scope: !3756)
!3759 = !DILocation(line: 1423, column: 8, scope: !3740)
!3760 = !DILocation(line: 1424, column: 30, scope: !3756)
!3761 = !DILocation(line: 1424, column: 49, scope: !3756)
!3762 = !DILocation(line: 1425, column: 10, scope: !3740)
!3763 = !DILocation(line: 1424, column: 6, scope: !3756)
!3764 = !DILocation(line: 1425, column: 35, scope: !3740)
!3765 = !DILocation(line: 1425, column: 20, scope: !3740)
!3766 = !DILocation(line: 1425, column: 27, scope: !3740)
!3767 = !DILocation(line: 1426, column: 2, scope: !3740)
!3768 = !DILocation(line: 0, scope: !3744)
!3769 = !DILocation(line: 1436, column: 19, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 1435, column: 6)
!3771 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 1434, column: 4)
!3772 = !DILocation(line: 1437, column: 31, scope: !3770)
!3773 = !DILocation(line: 1438, column: 12, scope: !3770)
!3774 = !DILocation(line: 1438, column: 31, scope: !3770)
!3775 = !DILocation(line: 1439, column: 12, scope: !3770)
!3776 = !DILocation(line: 1439, column: 21, scope: !3770)
!3777 = !DILocation(line: 1434, column: 4, scope: !3771)
!3778 = distinct !{!3778, !3743, !3779}
!3779 = !DILocation(line: 1440, column: 6, scope: !3744)
!3780 = !DILocation(line: 1444, column: 3, scope: !3517)
!3781 = !DILocation(line: 1444, column: 16, scope: !3517)
!3782 = !DILocation(line: 1445, column: 5, scope: !3517)
!3783 = distinct !{!3783, !3780, !3784}
!3784 = !DILocation(line: 1445, column: 51, scope: !3517)
!3785 = !DILocation(line: 1447, column: 13, scope: !3540)
!3786 = !DILocation(line: 1447, column: 7, scope: !3540)
!3787 = !DILocation(line: 1447, column: 7, scope: !3517)
!3788 = !DILocation(line: 1450, column: 12, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1450, column: 7)
!3790 = !DILocation(line: 0, scope: !3789)
!3791 = !DILocation(line: 0, scope: !3539)
!3792 = !DILocation(line: 1451, column: 11, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 1450, column: 7)
!3794 = !DILocation(line: 1451, column: 29, scope: !3793)
!3795 = !DILocation(line: 1450, column: 7, scope: !3789)
!3796 = !DILocation(line: 1450, column: 7, scope: !3793)
!3797 = distinct !{!3797, !3795, !3798}
!3798 = !DILocation(line: 1453, column: 2, scope: !3789)
!3799 = !DILocation(line: 1454, column: 35, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1454, column: 11)
!3801 = !DILocation(line: 1454, column: 11, scope: !3539)
!3802 = !DILocation(line: 1455, column: 8, scope: !3800)
!3803 = !DILocation(line: 1455, column: 26, scope: !3800)
!3804 = !DILocation(line: 1455, column: 2, scope: !3800)
!3805 = !DILocation(line: 1457, column: 26, scope: !3800)
!3806 = !DILocation(line: 1458, column: 31, scope: !3539)
!3807 = !DILocation(line: 1459, column: 5, scope: !3539)
!3808 = !DILocation(line: 1465, column: 8, scope: !3543)
!3809 = !DILocation(line: 1465, column: 18, scope: !3543)
!3810 = !DILocation(line: 1465, column: 21, scope: !3543)
!3811 = !DILocation(line: 1465, column: 7, scope: !3517)
!3812 = !DILocation(line: 0, scope: !3542)
!3813 = !DILocation(line: 1468, column: 15, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 1468, column: 11)
!3815 = !DILocation(line: 1468, column: 12, scope: !3814)
!3816 = !DILocation(line: 1468, column: 22, scope: !3814)
!3817 = !DILocation(line: 1468, column: 29, scope: !3814)
!3818 = !DILocation(line: 1468, column: 26, scope: !3814)
!3819 = !DILocation(line: 1468, column: 38, scope: !3814)
!3820 = !DILocation(line: 1468, column: 52, scope: !3814)
!3821 = !DILocation(line: 1468, column: 42, scope: !3814)
!3822 = !DILocation(line: 1469, column: 4, scope: !3814)
!3823 = !DILocation(line: 1469, column: 8, scope: !3814)
!3824 = !DILocation(line: 1470, column: 8, scope: !3814)
!3825 = !DILocation(line: 1470, column: 12, scope: !3814)
!3826 = !DILocation(line: 1470, column: 39, scope: !3814)
!3827 = !DILocation(line: 1470, column: 42, scope: !3814)
!3828 = !DILocation(line: 1468, column: 11, scope: !3542)
!3829 = !DILocation(line: 1471, column: 2, scope: !3814)
!3830 = !DILocation(line: 1473, column: 7, scope: !3546)
!3831 = !DILocation(line: 1473, column: 7, scope: !3517)
!3832 = !DILocation(line: 1475, column: 19, scope: !3545)
!3833 = !DILocation(line: 0, scope: !3545)
!3834 = !DILocation(line: 1476, column: 40, scope: !3545)
!3835 = !DILocation(line: 1476, column: 61, scope: !3545)
!3836 = !DILocation(line: 1477, column: 12, scope: !3545)
!3837 = !DILocation(line: 1476, column: 14, scope: !3545)
!3838 = !DILocation(line: 1480, column: 11, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 1480, column: 11)
!3840 = !DILocation(line: 1480, column: 16, scope: !3839)
!3841 = !DILocation(line: 1480, column: 19, scope: !3839)
!3842 = !DILocation(line: 1480, column: 25, scope: !3839)
!3843 = !DILocation(line: 1480, column: 11, scope: !3545)
!3844 = !DILocation(line: 1481, column: 26, scope: !3839)
!3845 = !DILocation(line: 1481, column: 9, scope: !3839)
!3846 = !DILocation(line: 1484, column: 7, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1484, column: 7)
!3848 = !DILocation(line: 1484, column: 7, scope: !3517)
!3849 = !DILocation(line: 1485, column: 5, scope: !3847)
!3850 = !DILocation(line: 1486, column: 9, scope: !3517)
!3851 = !DILocation(line: 1486, column: 14, scope: !3517)
!3852 = !DILocation(line: 1487, column: 13, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1487, column: 7)
!3854 = !DILocation(line: 1487, column: 7, scope: !3853)
!3855 = !DILocation(line: 1487, column: 7, scope: !3517)
!3856 = !DILocation(line: 1489, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 1488, column: 5)
!3858 = !DILocation(line: 1490, column: 28, scope: !3857)
!3859 = !DILocation(line: 1491, column: 5, scope: !3857)
!3860 = !DILocation(line: 1492, column: 17, scope: !3517)
!3861 = !DILocation(line: 1496, column: 3, scope: !3517)
!3862 = !DILocation(line: 1497, column: 13, scope: !3517)
!3863 = !DILocation(line: 1498, column: 27, scope: !3517)
!3864 = !DILocation(line: 1498, column: 25, scope: !3517)
!3865 = !DILocation(line: 1499, column: 14, scope: !3517)
!3866 = !DILocation(line: 1500, column: 1, scope: !3517)
!3867 = distinct !DISubprogram(name: "cgraph_insert_node_to_hashtable", scope: !3, file: !3, line: 621, type: !2350, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3868 = !{!3869, !3870}
!3869 = !DILocalVariable(name: "node", arg: 1, scope: !3867, file: !3, line: 621, type: !837)
!3870 = !DILocalVariable(name: "slot", scope: !3867, file: !3, line: 623, type: !2515)
!3871 = !DILocation(line: 0, scope: !3867)
!3872 = !DILocation(line: 625, column: 50, scope: !3867)
!3873 = !DILocation(line: 625, column: 63, scope: !3867)
!3874 = !DILocation(line: 625, column: 34, scope: !3867)
!3875 = !DILocation(line: 625, column: 10, scope: !3867)
!3876 = !DILocation(line: 627, column: 3, scope: !3867)
!3877 = !DILocation(line: 628, column: 9, scope: !3867)
!3878 = !DILocation(line: 629, column: 1, scope: !3867)
!3879 = distinct !DISubprogram(name: "cgraph_node_for_asm", scope: !3, file: !3, line: 654, type: !3276, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3880)
!3880 = !{!3881, !3882, !3883, !3884, !3891, !3894}
!3881 = !DILocalVariable(name: "asmname", arg: 1, scope: !3879, file: !3, line: 654, type: !841)
!3882 = !DILocalVariable(name: "node", scope: !3879, file: !3, line: 656, type: !837)
!3883 = !DILocalVariable(name: "slot", scope: !3879, file: !3, line: 657, type: !1691)
!3884 = !DILocalVariable(name: "name", scope: !3885, file: !3, line: 667, type: !841)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 666, column: 4)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 665, column: 13)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 664, column: 7)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 664, column: 7)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 660, column: 5)
!3890 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 659, column: 7)
!3891 = !DILocalVariable(name: "alias", scope: !3892, file: !3, line: 679, type: !837)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 678, column: 8)
!3893 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 677, column: 10)
!3894 = !DILocalVariable(name: "hash", scope: !3895, file: !3, line: 683, type: !1679)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 682, column: 5)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 681, column: 3)
!3897 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 681, column: 3)
!3898 = !DILocation(line: 0, scope: !3879)
!3899 = !DILocation(line: 659, column: 8, scope: !3890)
!3900 = !DILocation(line: 659, column: 7, scope: !3879)
!3901 = !DILocation(line: 662, column: 2, scope: !3889)
!3902 = !DILocation(line: 661, column: 27, scope: !3889)
!3903 = !DILocation(line: 664, column: 12, scope: !3888)
!3904 = !DILocation(line: 0, scope: !3888)
!3905 = !DILocation(line: 664, column: 7, scope: !3888)
!3906 = !DILocation(line: 665, column: 27, scope: !3886)
!3907 = !DILocation(line: 665, column: 14, scope: !3886)
!3908 = !DILocation(line: 665, column: 13, scope: !3887)
!3909 = !DILocation(line: 667, column: 18, scope: !3885)
!3910 = !DILocation(line: 0, scope: !3885)
!3911 = !DILocation(line: 668, column: 39, scope: !3885)
!3912 = !DILocation(line: 668, column: 60, scope: !3885)
!3913 = !DILocation(line: 669, column: 11, scope: !3885)
!3914 = !DILocation(line: 668, column: 13, scope: !3885)
!3915 = !DILocation(line: 675, column: 11, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 675, column: 10)
!3917 = !DILocation(line: 675, column: 10, scope: !3885)
!3918 = !DILocation(line: 676, column: 14, scope: !3916)
!3919 = !DILocation(line: 676, column: 8, scope: !3916)
!3920 = !DILocation(line: 677, column: 16, scope: !3893)
!3921 = !DILocation(line: 677, column: 10, scope: !3893)
!3922 = !DILocation(line: 677, column: 10, scope: !3885)
!3923 = !DILocation(line: 681, column: 8, scope: !3897)
!3924 = !DILocation(line: 0, scope: !3897)
!3925 = !DILocation(line: 0, scope: !3892)
!3926 = !DILocation(line: 681, column: 3, scope: !3897)
!3927 = !DILocation(line: 684, column: 14, scope: !3895)
!3928 = !DILocation(line: 685, column: 14, scope: !3895)
!3929 = !DILocation(line: 0, scope: !3895)
!3930 = !DILocation(line: 686, column: 40, scope: !3895)
!3931 = !DILocation(line: 686, column: 61, scope: !3895)
!3932 = !DILocation(line: 686, column: 14, scope: !3895)
!3933 = !DILocation(line: 688, column: 12, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 688, column: 11)
!3935 = !DILocation(line: 688, column: 11, scope: !3895)
!3936 = !DILocation(line: 689, column: 15, scope: !3934)
!3937 = !DILocation(line: 689, column: 9, scope: !3934)
!3938 = !DILocation(line: 681, column: 55, scope: !3896)
!3939 = !DILocation(line: 681, column: 3, scope: !3896)
!3940 = distinct !{!3940, !3926, !3941}
!3941 = !DILocation(line: 690, column: 5, scope: !3897)
!3942 = !DILocation(line: 664, column: 52, scope: !3887)
!3943 = !DILocation(line: 664, column: 7, scope: !3887)
!3944 = distinct !{!3944, !3905, !3945}
!3945 = !DILocation(line: 692, column: 4, scope: !3888)
!3946 = !DILocation(line: 695, column: 36, scope: !3879)
!3947 = !DILocation(line: 695, column: 57, scope: !3879)
!3948 = !DILocation(line: 696, column: 8, scope: !3879)
!3949 = !DILocation(line: 695, column: 10, scope: !3879)
!3950 = !DILocation(line: 699, column: 7, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 699, column: 7)
!3952 = !DILocation(line: 699, column: 7, scope: !3879)
!3953 = !DILocation(line: 701, column: 37, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 700, column: 5)
!3955 = !DILocation(line: 702, column: 17, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 702, column: 11)
!3957 = !DILocation(line: 702, column: 11, scope: !3956)
!3958 = !DILocation(line: 702, column: 11, scope: !3954)
!3959 = !DILocation(line: 703, column: 15, scope: !3956)
!3960 = !DILocation(line: 703, column: 2, scope: !3956)
!3961 = !DILocation(line: 707, column: 1, scope: !3879)
!3962 = distinct !DISubprogram(name: "hash_node_by_assembler_name", scope: !3, file: !3, line: 634, type: !1677, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3963)
!3963 = !{!3964, !3965}
!3964 = !DILocalVariable(name: "p", arg: 1, scope: !3962, file: !3, line: 634, type: !1469)
!3965 = !DILocalVariable(name: "n", scope: !3962, file: !3, line: 636, type: !2523)
!3966 = !DILocation(line: 0, scope: !3962)
!3967 = !DILocation(line: 637, column: 48, scope: !3962)
!3968 = !DILocation(line: 637, column: 22, scope: !3962)
!3969 = !DILocation(line: 637, column: 3, scope: !3962)
!3970 = distinct !DISubprogram(name: "eq_assembler_name", scope: !3, file: !3, line: 643, type: !1683, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3971 = !{!3972, !3973, !3974, !3975}
!3972 = !DILocalVariable(name: "p1", arg: 1, scope: !3970, file: !3, line: 643, type: !1469)
!3973 = !DILocalVariable(name: "p2", arg: 2, scope: !3970, file: !3, line: 643, type: !1469)
!3974 = !DILocalVariable(name: "n1", scope: !3970, file: !3, line: 645, type: !2523)
!3975 = !DILocalVariable(name: "name", scope: !3970, file: !3, line: 646, type: !2525)
!3976 = !DILocation(line: 0, scope: !3970)
!3977 = !DILocation(line: 646, column: 21, scope: !3970)
!3978 = !DILocation(line: 647, column: 42, scope: !3970)
!3979 = !DILocation(line: 647, column: 11, scope: !3970)
!3980 = !DILocation(line: 647, column: 10, scope: !3970)
!3981 = !DILocation(line: 647, column: 3, scope: !3970)
!3982 = distinct !DISubprogram(name: "cgraph_edge", scope: !3, file: !3, line: 730, type: !3983, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3985)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!830, !837, !1163}
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991}
!3986 = !DILocalVariable(name: "node", arg: 1, scope: !3982, file: !3, line: 730, type: !837)
!3987 = !DILocalVariable(name: "call_stmt", arg: 2, scope: !3982, file: !3, line: 730, type: !1163)
!3988 = !DILocalVariable(name: "e", scope: !3982, file: !3, line: 732, type: !830)
!3989 = !DILocalVariable(name: "e2", scope: !3982, file: !3, line: 732, type: !830)
!3990 = !DILocalVariable(name: "n", scope: !3982, file: !3, line: 733, type: !815)
!3991 = !DILocalVariable(name: "slot", scope: !3992, file: !3, line: 757, type: !1691)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 756, column: 2)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 755, column: 7)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 755, column: 7)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 753, column: 5)
!3996 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 752, column: 7)
!3997 = !DILocation(line: 0, scope: !3982)
!3998 = !DILocation(line: 735, column: 13, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 735, column: 7)
!4000 = !DILocation(line: 735, column: 7, scope: !3999)
!4001 = !DILocation(line: 735, column: 7, scope: !3982)
!4002 = !DILocation(line: 737, column: 50, scope: !3999)
!4003 = !DILocation(line: 738, column: 27, scope: !3999)
!4004 = !DILocation(line: 737, column: 7, scope: !3999)
!4005 = !DILocation(line: 736, column: 12, scope: !3999)
!4006 = !DILocation(line: 736, column: 5, scope: !3999)
!4007 = !DILocation(line: 745, column: 18, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 745, column: 3)
!4009 = !DILocation(line: 745, column: 8, scope: !4008)
!4010 = !DILocation(line: 0, scope: !4008)
!4011 = !DILocation(line: 745, column: 3, scope: !4008)
!4012 = !DILocation(line: 747, column: 14, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 747, column: 11)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 746, column: 5)
!4015 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 745, column: 3)
!4016 = !DILocation(line: 747, column: 24, scope: !4013)
!4017 = !DILocation(line: 747, column: 11, scope: !4014)
!4018 = !DILocation(line: 749, column: 8, scope: !4014)
!4019 = !DILocation(line: 745, column: 36, scope: !4015)
!4020 = !DILocation(line: 745, column: 3, scope: !4015)
!4021 = distinct !{!4021, !4011, !4022}
!4022 = !DILocation(line: 750, column: 5, scope: !4008)
!4023 = !DILocation(line: 752, column: 9, scope: !3996)
!4024 = !DILocation(line: 752, column: 7, scope: !3982)
!4025 = !DILocation(line: 754, column: 30, scope: !3995)
!4026 = !DILocation(line: 754, column: 28, scope: !3995)
!4027 = !DILocation(line: 755, column: 12, scope: !3994)
!4028 = !DILocation(line: 0, scope: !3994)
!4029 = !DILocation(line: 755, column: 7, scope: !3994)
!4030 = !DILocation(line: 758, column: 43, scope: !3992)
!4031 = !DILocation(line: 759, column: 13, scope: !3992)
!4032 = !DILocation(line: 760, column: 9, scope: !3992)
!4033 = !DILocation(line: 758, column: 11, scope: !3992)
!4034 = !DILocation(line: 0, scope: !3992)
!4035 = !DILocation(line: 762, column: 4, scope: !3992)
!4036 = !DILocation(line: 763, column: 10, scope: !3992)
!4037 = !DILocation(line: 755, column: 45, scope: !3993)
!4038 = !DILocation(line: 755, column: 7, scope: !3993)
!4039 = distinct !{!4039, !4029, !4040}
!4040 = !DILocation(line: 764, column: 2, scope: !3994)
!4041 = !DILocation(line: 768, column: 1, scope: !3982)
!4042 = distinct !DISubprogram(name: "edge_hash", scope: !3, file: !3, line: 712, type: !1677, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4043)
!4043 = !{!4044}
!4044 = !DILocalVariable(name: "x", arg: 1, scope: !4042, file: !3, line: 712, type: !1469)
!4045 = !DILocation(line: 0, scope: !4042)
!4046 = !DILocation(line: 714, column: 10, scope: !4042)
!4047 = !DILocation(line: 714, column: 63, scope: !4042)
!4048 = !DILocation(line: 714, column: 3, scope: !4042)
!4049 = distinct !DISubprogram(name: "edge_eq", scope: !3, file: !3, line: 720, type: !1683, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4050)
!4050 = !{!4051, !4052}
!4051 = !DILocalVariable(name: "x", arg: 1, scope: !4049, file: !3, line: 720, type: !1469)
!4052 = !DILocalVariable(name: "y", arg: 2, scope: !4049, file: !3, line: 720, type: !1469)
!4053 = !DILocation(line: 0, scope: !4049)
!4054 = !DILocation(line: 722, column: 44, scope: !4049)
!4055 = !DILocation(line: 722, column: 57, scope: !4049)
!4056 = !DILocation(line: 722, column: 54, scope: !4049)
!4057 = !DILocation(line: 722, column: 3, scope: !4049)
!4058 = distinct !DISubprogram(name: "cgraph_set_call_stmt", scope: !3, file: !3, line: 774, type: !4059, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !830, !1163}
!4061 = !{!4062, !4063, !4064}
!4062 = !DILocalVariable(name: "e", arg: 1, scope: !4058, file: !3, line: 774, type: !830)
!4063 = !DILocalVariable(name: "new_stmt", arg: 2, scope: !4058, file: !3, line: 774, type: !1163)
!4064 = !DILocalVariable(name: "slot", scope: !4065, file: !3, line: 788, type: !1691)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 787, column: 5)
!4066 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 786, column: 7)
!4067 = !DILocation(line: 0, scope: !4058)
!4068 = !DILocation(line: 776, column: 10, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 776, column: 7)
!4070 = !DILocation(line: 776, column: 18, scope: !4069)
!4071 = !DILocation(line: 776, column: 7, scope: !4069)
!4072 = !DILocation(line: 776, column: 7, scope: !4058)
!4073 = !DILocation(line: 779, column: 9, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 777, column: 5)
!4075 = !DILocation(line: 780, column: 6, scope: !4074)
!4076 = !DILocation(line: 778, column: 7, scope: !4074)
!4077 = !DILocation(line: 783, column: 14, scope: !4058)
!4078 = !DILocation(line: 781, column: 5, scope: !4074)
!4079 = !DILocation(line: 782, column: 6, scope: !4058)
!4080 = !DILocation(line: 782, column: 16, scope: !4058)
!4081 = !DILocation(line: 783, column: 3, scope: !4058)
!4082 = !DILocation(line: 784, column: 27, scope: !4058)
!4083 = !DILocation(line: 784, column: 6, scope: !4058)
!4084 = !DILocation(line: 784, column: 25, scope: !4058)
!4085 = !DILocation(line: 785, column: 3, scope: !4058)
!4086 = !DILocation(line: 786, column: 10, scope: !4066)
!4087 = !DILocation(line: 786, column: 18, scope: !4066)
!4088 = !DILocation(line: 786, column: 7, scope: !4066)
!4089 = !DILocation(line: 786, column: 7, scope: !4058)
!4090 = !DILocation(line: 790, column: 15, scope: !4065)
!4091 = !DILocation(line: 791, column: 12, scope: !4065)
!4092 = !DILocation(line: 789, column: 14, scope: !4065)
!4093 = !DILocation(line: 0, scope: !4065)
!4094 = !DILocation(line: 793, column: 7, scope: !4065)
!4095 = !DILocation(line: 794, column: 13, scope: !4065)
!4096 = !DILocation(line: 795, column: 5, scope: !4065)
!4097 = !DILocation(line: 796, column: 1, scope: !4058)
!4098 = distinct !DISubprogram(name: "cgraph_set_call_stmt_including_clones", scope: !3, file: !3, line: 802, type: !4099, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !837, !1163, !1163}
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107}
!4102 = !DILocalVariable(name: "orig", arg: 1, scope: !4098, file: !3, line: 802, type: !837)
!4103 = !DILocalVariable(name: "old_stmt", arg: 2, scope: !4098, file: !3, line: 803, type: !1163)
!4104 = !DILocalVariable(name: "new_stmt", arg: 3, scope: !4098, file: !3, line: 803, type: !1163)
!4105 = !DILocalVariable(name: "node", scope: !4098, file: !3, line: 805, type: !837)
!4106 = !DILocalVariable(name: "edge", scope: !4098, file: !3, line: 806, type: !830)
!4107 = !DILocalVariable(name: "edge", scope: !4108, file: !3, line: 815, type: !830)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 814, column: 7)
!4109 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 812, column: 7)
!4110 = !DILocation(line: 0, scope: !4098)
!4111 = !DILocation(line: 806, column: 30, scope: !4098)
!4112 = !DILocation(line: 808, column: 7, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 808, column: 7)
!4114 = !DILocation(line: 808, column: 7, scope: !4098)
!4115 = !DILocation(line: 809, column: 5, scope: !4113)
!4116 = !DILocation(line: 811, column: 16, scope: !4098)
!4117 = !DILocation(line: 812, column: 7, scope: !4109)
!4118 = !DILocation(line: 812, column: 7, scope: !4098)
!4119 = !DILocation(line: 813, column: 5, scope: !4109)
!4120 = !DILocation(line: 813, column: 17, scope: !4109)
!4121 = !DILocation(line: 815, column: 29, scope: !4108)
!4122 = !DILocation(line: 0, scope: !4108)
!4123 = !DILocation(line: 816, column: 6, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 816, column: 6)
!4125 = !DILocation(line: 816, column: 6, scope: !4108)
!4126 = !DILocation(line: 817, column: 4, scope: !4124)
!4127 = !DILocation(line: 818, column: 12, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 818, column: 6)
!4129 = !DILocation(line: 818, column: 6, scope: !4128)
!4130 = !DILocation(line: 818, column: 6, scope: !4108)
!4131 = !DILocation(line: 819, column: 4, scope: !4128)
!4132 = !DILocation(line: 820, column: 17, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 820, column: 11)
!4134 = !DILocation(line: 820, column: 11, scope: !4133)
!4135 = !DILocation(line: 820, column: 11, scope: !4128)
!4136 = !DILocation(line: 824, column: 6, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 823, column: 4)
!4138 = !DILocation(line: 821, column: 4, scope: !4133)
!4139 = !DILocation(line: 824, column: 18, scope: !4137)
!4140 = !DILocation(line: 824, column: 26, scope: !4137)
!4141 = !DILocation(line: 824, column: 36, scope: !4137)
!4142 = !DILocation(line: 824, column: 29, scope: !4137)
!4143 = !DILocation(line: 825, column: 21, scope: !4137)
!4144 = distinct !{!4144, !4136, !4143}
!4145 = !DILocation(line: 826, column: 10, scope: !4137)
!4146 = !DILocation(line: 827, column: 21, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 826, column: 10)
!4148 = !DILocation(line: 827, column: 8, scope: !4147)
!4149 = !DILocation(line: 0, scope: !4128)
!4150 = distinct !{!4150, !4119, !4151}
!4151 = !DILocation(line: 829, column: 7, scope: !4109)
!4152 = !DILocation(line: 830, column: 1, scope: !4098)
!4153 = distinct !DISubprogram(name: "cgraph_create_edge_including_clones", scope: !3, file: !3, line: 840, type: !4154, scopeLine: 846, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4156)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !837, !837, !1163, !1163, !834, !815, !815, !2474}
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167}
!4157 = !DILocalVariable(name: "orig", arg: 1, scope: !4153, file: !3, line: 840, type: !837)
!4158 = !DILocalVariable(name: "callee", arg: 2, scope: !4153, file: !3, line: 841, type: !837)
!4159 = !DILocalVariable(name: "old_stmt", arg: 3, scope: !4153, file: !3, line: 842, type: !1163)
!4160 = !DILocalVariable(name: "stmt", arg: 4, scope: !4153, file: !3, line: 843, type: !1163)
!4161 = !DILocalVariable(name: "count", arg: 5, scope: !4153, file: !3, line: 843, type: !834)
!4162 = !DILocalVariable(name: "freq", arg: 6, scope: !4153, file: !3, line: 844, type: !815)
!4163 = !DILocalVariable(name: "loop_depth", arg: 7, scope: !4153, file: !3, line: 844, type: !815)
!4164 = !DILocalVariable(name: "reason", arg: 8, scope: !4153, file: !3, line: 845, type: !2474)
!4165 = !DILocalVariable(name: "node", scope: !4153, file: !3, line: 847, type: !837)
!4166 = !DILocalVariable(name: "edge", scope: !4153, file: !3, line: 848, type: !830)
!4167 = !DILocalVariable(name: "edge", scope: !4168, file: !3, line: 860, type: !830)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 859, column: 7)
!4169 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 857, column: 7)
!4170 = !DILocation(line: 0, scope: !4153)
!4171 = !DILocation(line: 850, column: 8, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 850, column: 7)
!4173 = !DILocation(line: 850, column: 7, scope: !4153)
!4174 = !DILocation(line: 852, column: 14, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 851, column: 5)
!4176 = !DILocation(line: 853, column: 13, scope: !4175)
!4177 = !DILocation(line: 853, column: 27, scope: !4175)
!4178 = !DILocation(line: 854, column: 5, scope: !4175)
!4179 = !DILocation(line: 856, column: 16, scope: !4153)
!4180 = !DILocation(line: 857, column: 7, scope: !4169)
!4181 = !DILocation(line: 857, column: 7, scope: !4153)
!4182 = !DILocation(line: 858, column: 5, scope: !4169)
!4183 = !DILocation(line: 858, column: 17, scope: !4169)
!4184 = !DILocation(line: 860, column: 29, scope: !4168)
!4185 = !DILocation(line: 0, scope: !4168)
!4186 = !DILocation(line: 866, column: 6, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 866, column: 6)
!4188 = !DILocation(line: 866, column: 6, scope: !4168)
!4189 = !DILocation(line: 867, column: 4, scope: !4187)
!4190 = !DILocation(line: 868, column: 12, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 868, column: 11)
!4192 = !DILocation(line: 868, column: 11, scope: !4187)
!4193 = !DILocation(line: 870, column: 13, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 869, column: 4)
!4195 = !DILocation(line: 872, column: 12, scope: !4194)
!4196 = !DILocation(line: 872, column: 26, scope: !4194)
!4197 = !DILocation(line: 873, column: 4, scope: !4194)
!4198 = !DILocation(line: 875, column: 12, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 875, column: 6)
!4200 = !DILocation(line: 875, column: 6, scope: !4199)
!4201 = !DILocation(line: 875, column: 6, scope: !4168)
!4202 = !DILocation(line: 876, column: 4, scope: !4199)
!4203 = !DILocation(line: 877, column: 17, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 877, column: 11)
!4205 = !DILocation(line: 877, column: 11, scope: !4204)
!4206 = !DILocation(line: 877, column: 11, scope: !4199)
!4207 = !DILocation(line: 881, column: 6, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 880, column: 4)
!4209 = !DILocation(line: 878, column: 4, scope: !4204)
!4210 = !DILocation(line: 881, column: 18, scope: !4208)
!4211 = !DILocation(line: 881, column: 26, scope: !4208)
!4212 = !DILocation(line: 881, column: 36, scope: !4208)
!4213 = !DILocation(line: 881, column: 29, scope: !4208)
!4214 = !DILocation(line: 882, column: 21, scope: !4208)
!4215 = distinct !{!4215, !4207, !4214}
!4216 = !DILocation(line: 883, column: 10, scope: !4208)
!4217 = !DILocation(line: 884, column: 21, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 883, column: 10)
!4219 = !DILocation(line: 884, column: 8, scope: !4218)
!4220 = !DILocation(line: 0, scope: !4199)
!4221 = distinct !{!4221, !4182, !4222}
!4222 = !DILocation(line: 886, column: 7, scope: !4169)
!4223 = !DILocation(line: 887, column: 1, scope: !4153)
!4224 = distinct !DISubprogram(name: "cgraph_create_edge", scope: !3, file: !3, line: 912, type: !4225, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4227)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!830, !837, !837, !1163, !834, !815, !815}
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235}
!4228 = !DILocalVariable(name: "caller", arg: 1, scope: !4224, file: !3, line: 912, type: !837)
!4229 = !DILocalVariable(name: "callee", arg: 2, scope: !4224, file: !3, line: 912, type: !837)
!4230 = !DILocalVariable(name: "call_stmt", arg: 3, scope: !4224, file: !3, line: 913, type: !1163)
!4231 = !DILocalVariable(name: "count", arg: 4, scope: !4224, file: !3, line: 913, type: !834)
!4232 = !DILocalVariable(name: "freq", arg: 5, scope: !4224, file: !3, line: 913, type: !815)
!4233 = !DILocalVariable(name: "nest", arg: 6, scope: !4224, file: !3, line: 913, type: !815)
!4234 = !DILocalVariable(name: "edge", scope: !4224, file: !3, line: 915, type: !830)
!4235 = !DILocalVariable(name: "slot", scope: !4236, file: !3, line: 972, type: !1691)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 971, column: 5)
!4237 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 970, column: 7)
!4238 = !DILocation(line: 0, scope: !4224)
!4239 = !DILocation(line: 920, column: 7, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 920, column: 7)
!4241 = !DILocation(line: 920, column: 7, scope: !4224)
!4242 = !DILocation(line: 928, column: 7, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 921, column: 5)
!4244 = !DILocation(line: 931, column: 7, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 931, column: 7)
!4246 = !DILocation(line: 931, column: 7, scope: !4224)
!4247 = !DILocation(line: 934, column: 20, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 932, column: 5)
!4249 = !DILocation(line: 934, column: 18, scope: !4248)
!4250 = !DILocation(line: 935, column: 5, scope: !4248)
!4251 = !DILocation(line: 938, column: 14, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 937, column: 5)
!4253 = !DILocation(line: 939, column: 38, scope: !4252)
!4254 = !DILocation(line: 939, column: 13, scope: !4252)
!4255 = !DILocation(line: 939, column: 17, scope: !4252)
!4256 = !DILocation(line: 0, scope: !4245)
!4257 = !DILocation(line: 942, column: 9, scope: !4224)
!4258 = !DILocation(line: 942, column: 13, scope: !4224)
!4259 = !DILocation(line: 944, column: 9, scope: !4224)
!4260 = !DILocation(line: 944, column: 16, scope: !4224)
!4261 = !DILocation(line: 945, column: 9, scope: !4224)
!4262 = !DILocation(line: 945, column: 16, scope: !4224)
!4263 = !DILocation(line: 946, column: 9, scope: !4224)
!4264 = !DILocation(line: 946, column: 19, scope: !4224)
!4265 = !DILocation(line: 947, column: 14, scope: !4224)
!4266 = !DILocation(line: 947, column: 3, scope: !4224)
!4267 = !DILocation(line: 949, column: 7, scope: !4224)
!4268 = !DILocation(line: 949, column: 19, scope: !4224)
!4269 = !DILocation(line: 948, column: 9, scope: !4224)
!4270 = !DILocation(line: 949, column: 5, scope: !4224)
!4271 = !DILocation(line: 950, column: 3, scope: !4224)
!4272 = !DILocation(line: 951, column: 9, scope: !4224)
!4273 = !DILocation(line: 951, column: 21, scope: !4224)
!4274 = !DILocation(line: 952, column: 31, scope: !4224)
!4275 = !DILocation(line: 952, column: 9, scope: !4224)
!4276 = !DILocation(line: 952, column: 21, scope: !4224)
!4277 = !DILocation(line: 953, column: 15, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 953, column: 7)
!4279 = !DILocation(line: 953, column: 7, scope: !4278)
!4280 = !DILocation(line: 953, column: 7, scope: !4224)
!4281 = !DILocation(line: 954, column: 22, scope: !4278)
!4282 = !DILocation(line: 954, column: 34, scope: !4278)
!4283 = !DILocation(line: 954, column: 5, scope: !4278)
!4284 = !DILocation(line: 955, column: 9, scope: !4224)
!4285 = !DILocation(line: 955, column: 21, scope: !4224)
!4286 = !DILocation(line: 956, column: 31, scope: !4224)
!4287 = !DILocation(line: 956, column: 9, scope: !4224)
!4288 = !DILocation(line: 956, column: 21, scope: !4224)
!4289 = !DILocation(line: 957, column: 15, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 957, column: 7)
!4291 = !DILocation(line: 957, column: 7, scope: !4290)
!4292 = !DILocation(line: 957, column: 7, scope: !4224)
!4293 = !DILocation(line: 958, column: 22, scope: !4290)
!4294 = !DILocation(line: 958, column: 34, scope: !4290)
!4295 = !DILocation(line: 958, column: 5, scope: !4290)
!4296 = !DILocation(line: 959, column: 19, scope: !4224)
!4297 = !DILocation(line: 960, column: 19, scope: !4224)
!4298 = !DILocation(line: 961, column: 9, scope: !4224)
!4299 = !DILocation(line: 961, column: 15, scope: !4224)
!4300 = !DILocation(line: 962, column: 3, scope: !4224)
!4301 = !DILocation(line: 963, column: 9, scope: !4224)
!4302 = !DILocation(line: 963, column: 19, scope: !4224)
!4303 = !DILocation(line: 964, column: 3, scope: !4224)
!4304 = !DILocation(line: 965, column: 3, scope: !4224)
!4305 = !DILocation(line: 966, column: 21, scope: !4224)
!4306 = !DILocation(line: 966, column: 9, scope: !4224)
!4307 = !DILocation(line: 966, column: 19, scope: !4224)
!4308 = !DILocation(line: 967, column: 23, scope: !4224)
!4309 = !DILocation(line: 969, column: 6, scope: !4224)
!4310 = !DILocation(line: 969, column: 18, scope: !4224)
!4311 = !DILocation(line: 968, column: 35, scope: !4224)
!4312 = !DILocation(line: 970, column: 17, scope: !4237)
!4313 = !DILocation(line: 970, column: 28, scope: !4237)
!4314 = !DILocation(line: 970, column: 20, scope: !4237)
!4315 = !DILocation(line: 970, column: 7, scope: !4224)
!4316 = !DILocation(line: 974, column: 18, scope: !4236)
!4317 = !DILocation(line: 975, column: 12, scope: !4236)
!4318 = !DILocation(line: 973, column: 14, scope: !4236)
!4319 = !DILocation(line: 0, scope: !4236)
!4320 = !DILocation(line: 978, column: 7, scope: !4236)
!4321 = !DILocation(line: 979, column: 13, scope: !4236)
!4322 = !DILocation(line: 980, column: 5, scope: !4236)
!4323 = !DILocation(line: 982, column: 3, scope: !4224)
!4324 = !DILocation(line: 984, column: 3, scope: !4224)
!4325 = distinct !DISubprogram(name: "is_gimple_call", scope: !748, file: !748, line: 1870, type: !4326, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4329)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!814, !4328}
!4328 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !842, line: 60, baseType: !2530)
!4329 = !{!4330}
!4330 = !DILocalVariable(name: "gs", arg: 1, scope: !4325, file: !748, line: 1870, type: !4328)
!4331 = !DILocation(line: 0, scope: !4325)
!4332 = !DILocation(line: 1872, column: 10, scope: !4325)
!4333 = !DILocation(line: 1872, column: 27, scope: !4325)
!4334 = !DILocation(line: 1872, column: 3, scope: !4325)
!4335 = distinct !DISubprogram(name: "gimple_call_cannot_inline_p", scope: !748, file: !748, line: 2094, type: !4336, scopeLine: 2095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!814, !1163}
!4338 = !{!4339}
!4339 = !DILocalVariable(name: "s", arg: 1, scope: !4335, file: !748, line: 2094, type: !1163)
!4340 = !DILocation(line: 0, scope: !4335)
!4341 = !DILocation(line: 2097, column: 21, scope: !4335)
!4342 = !DILocation(line: 2097, column: 10, scope: !4335)
!4343 = !DILocation(line: 2097, column: 3, scope: !4335)
!4344 = distinct !DISubprogram(name: "initialize_inline_failed", scope: !3, file: !3, line: 893, type: !4345, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !830}
!4347 = !{!4348, !4349}
!4348 = !DILocalVariable(name: "e", arg: 1, scope: !4344, file: !3, line: 893, type: !830)
!4349 = !DILocalVariable(name: "callee", scope: !4344, file: !3, line: 895, type: !837)
!4350 = !DILocation(line: 0, scope: !4344)
!4351 = !DILocation(line: 895, column: 35, scope: !4344)
!4352 = !DILocation(line: 897, column: 16, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 897, column: 7)
!4354 = !DILocation(line: 897, column: 8, scope: !4353)
!4355 = !DILocation(line: 897, column: 7, scope: !4344)
!4356 = !DILocation(line: 898, column: 8, scope: !4353)
!4357 = !DILocation(line: 898, column: 22, scope: !4353)
!4358 = !DILocation(line: 898, column: 5, scope: !4353)
!4359 = !DILocation(line: 899, column: 26, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 899, column: 12)
!4361 = !DILocation(line: 899, column: 12, scope: !4360)
!4362 = !DILocation(line: 899, column: 12, scope: !4353)
!4363 = !DILocation(line: 900, column: 8, scope: !4360)
!4364 = !DILocation(line: 900, column: 22, scope: !4360)
!4365 = !DILocation(line: 900, column: 5, scope: !4360)
!4366 = !DILocation(line: 901, column: 27, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 901, column: 12)
!4368 = !DILocation(line: 901, column: 13, scope: !4367)
!4369 = !DILocation(line: 901, column: 12, scope: !4360)
!4370 = !DILocation(line: 902, column: 8, scope: !4367)
!4371 = !DILocation(line: 902, column: 22, scope: !4367)
!4372 = !DILocation(line: 902, column: 5, scope: !4367)
!4373 = !DILocation(line: 903, column: 15, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 903, column: 12)
!4375 = !DILocation(line: 903, column: 12, scope: !4374)
!4376 = !DILocation(line: 903, column: 25, scope: !4374)
!4377 = !DILocation(line: 903, column: 28, scope: !4374)
!4378 = !DILocation(line: 903, column: 12, scope: !4367)
!4379 = !DILocation(line: 904, column: 8, scope: !4374)
!4380 = !DILocation(line: 904, column: 22, scope: !4374)
!4381 = !DILocation(line: 904, column: 5, scope: !4374)
!4382 = !DILocation(line: 906, column: 8, scope: !4374)
!4383 = !DILocation(line: 906, column: 22, scope: !4374)
!4384 = !DILocation(line: 907, column: 1, scope: !4344)
!4385 = distinct !DISubprogram(name: "cgraph_remove_edge", scope: !3, file: !3, line: 1034, type: !4345, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4386)
!4386 = !{!4387}
!4387 = !DILocalVariable(name: "e", arg: 1, scope: !4385, file: !3, line: 1034, type: !830)
!4388 = !DILocation(line: 0, scope: !4385)
!4389 = !DILocation(line: 1037, column: 3, scope: !4385)
!4390 = !DILocation(line: 1040, column: 3, scope: !4385)
!4391 = !DILocation(line: 1043, column: 3, scope: !4385)
!4392 = !DILocation(line: 1046, column: 3, scope: !4385)
!4393 = !DILocation(line: 1047, column: 1, scope: !4385)
!4394 = distinct !DISubprogram(name: "cgraph_call_edge_removal_hooks", scope: !3, file: !3, line: 225, type: !4345, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4395)
!4395 = !{!4396, !4397}
!4396 = !DILocalVariable(name: "e", arg: 1, scope: !4394, file: !3, line: 225, type: !830)
!4397 = !DILocalVariable(name: "entry", scope: !4394, file: !3, line: 227, type: !822)
!4398 = !DILocation(line: 0, scope: !4394)
!4399 = !DILocation(line: 228, column: 3, scope: !4394)
!4400 = !DILocation(line: 230, column: 12, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 229, column: 3)
!4402 = !DILocation(line: 230, column: 28, scope: !4401)
!4403 = !DILocation(line: 230, column: 5, scope: !4401)
!4404 = !DILocation(line: 231, column: 20, scope: !4401)
!4405 = distinct !{!4405, !4399, !4406}
!4406 = !DILocation(line: 232, column: 3, scope: !4394)
!4407 = !DILocation(line: 233, column: 1, scope: !4394)
!4408 = distinct !DISubprogram(name: "cgraph_edge_remove_callee", scope: !3, file: !3, line: 990, type: !4345, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4409)
!4409 = !{!4410}
!4410 = !DILocalVariable(name: "e", arg: 1, scope: !4408, file: !3, line: 990, type: !830)
!4411 = !DILocation(line: 0, scope: !4408)
!4412 = !DILocation(line: 992, column: 10, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 992, column: 7)
!4414 = !DILocation(line: 992, column: 7, scope: !4413)
!4415 = !DILocation(line: 992, column: 7, scope: !4408)
!4416 = !DILocation(line: 993, column: 38, scope: !4413)
!4417 = !DILocation(line: 993, column: 21, scope: !4413)
!4418 = !DILocation(line: 993, column: 33, scope: !4413)
!4419 = !DILocation(line: 993, column: 5, scope: !4413)
!4420 = !DILocation(line: 994, column: 10, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 994, column: 7)
!4422 = !DILocation(line: 994, column: 7, scope: !4421)
!4423 = !DILocation(line: 994, column: 7, scope: !4408)
!4424 = !DILocation(line: 995, column: 38, scope: !4421)
!4425 = !DILocation(line: 995, column: 21, scope: !4421)
!4426 = !DILocation(line: 995, column: 33, scope: !4421)
!4427 = !DILocation(line: 995, column: 5, scope: !4421)
!4428 = !DILocation(line: 996, column: 11, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 996, column: 7)
!4430 = !DILocation(line: 996, column: 8, scope: !4429)
!4431 = !DILocation(line: 996, column: 7, scope: !4408)
!4432 = !DILocation(line: 997, column: 29, scope: !4429)
!4433 = !DILocation(line: 997, column: 8, scope: !4429)
!4434 = !DILocation(line: 997, column: 16, scope: !4429)
!4435 = !DILocation(line: 997, column: 24, scope: !4429)
!4436 = !DILocation(line: 997, column: 5, scope: !4429)
!4437 = !DILocation(line: 998, column: 1, scope: !4408)
!4438 = distinct !DISubprogram(name: "cgraph_edge_remove_caller", scope: !3, file: !3, line: 1003, type: !4345, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4439)
!4439 = !{!4440}
!4440 = !DILocalVariable(name: "e", arg: 1, scope: !4438, file: !3, line: 1003, type: !830)
!4441 = !DILocation(line: 0, scope: !4438)
!4442 = !DILocation(line: 1005, column: 10, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1005, column: 7)
!4444 = !DILocation(line: 1005, column: 7, scope: !4443)
!4445 = !DILocation(line: 1005, column: 7, scope: !4438)
!4446 = !DILocation(line: 1006, column: 38, scope: !4443)
!4447 = !DILocation(line: 1006, column: 21, scope: !4443)
!4448 = !DILocation(line: 1006, column: 33, scope: !4443)
!4449 = !DILocation(line: 1006, column: 5, scope: !4443)
!4450 = !DILocation(line: 1007, column: 10, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1007, column: 7)
!4452 = !DILocation(line: 1007, column: 7, scope: !4451)
!4453 = !DILocation(line: 1007, column: 7, scope: !4438)
!4454 = !DILocation(line: 1008, column: 38, scope: !4451)
!4455 = !DILocation(line: 1008, column: 21, scope: !4451)
!4456 = !DILocation(line: 1008, column: 33, scope: !4451)
!4457 = !DILocation(line: 1008, column: 5, scope: !4451)
!4458 = !DILocation(line: 1009, column: 11, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1009, column: 7)
!4460 = !DILocation(line: 1009, column: 8, scope: !4459)
!4461 = !DILocation(line: 1009, column: 7, scope: !4438)
!4462 = !DILocation(line: 1010, column: 29, scope: !4459)
!4463 = !DILocation(line: 1010, column: 8, scope: !4459)
!4464 = !DILocation(line: 1010, column: 16, scope: !4459)
!4465 = !DILocation(line: 1010, column: 24, scope: !4459)
!4466 = !DILocation(line: 1010, column: 5, scope: !4459)
!4467 = !DILocation(line: 1011, column: 10, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1011, column: 7)
!4469 = !DILocation(line: 1011, column: 18, scope: !4468)
!4470 = !DILocation(line: 1011, column: 7, scope: !4468)
!4471 = !DILocation(line: 1011, column: 7, scope: !4438)
!4472 = !DILocation(line: 1013, column: 14, scope: !4468)
!4473 = !DILocation(line: 1014, column: 13, scope: !4468)
!4474 = !DILocation(line: 1012, column: 5, scope: !4468)
!4475 = !DILocation(line: 1015, column: 1, scope: !4438)
!4476 = distinct !DISubprogram(name: "cgraph_free_edge", scope: !3, file: !3, line: 1020, type: !4345, scopeLine: 1021, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4477)
!4477 = !{!4478, !4479}
!4478 = !DILocalVariable(name: "e", arg: 1, scope: !4476, file: !3, line: 1020, type: !830)
!4479 = !DILocalVariable(name: "uid", scope: !4476, file: !3, line: 1022, type: !815)
!4480 = !DILocation(line: 0, scope: !4476)
!4481 = !DILocation(line: 1022, column: 16, scope: !4476)
!4482 = !DILocation(line: 1025, column: 11, scope: !4476)
!4483 = !DILocation(line: 1025, column: 3, scope: !4476)
!4484 = !DILocation(line: 1026, column: 10, scope: !4476)
!4485 = !DILocation(line: 1027, column: 24, scope: !4476)
!4486 = !DILocation(line: 1027, column: 3, scope: !4476)
!4487 = !DILocation(line: 1027, column: 22, scope: !4476)
!4488 = !DILocation(line: 1028, column: 14, scope: !4476)
!4489 = !DILocation(line: 1029, column: 1, scope: !4476)
!4490 = distinct !DISubprogram(name: "cgraph_redirect_edge_callee", scope: !3, file: !3, line: 1053, type: !4491, scopeLine: 1054, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{null, !830, !837}
!4493 = !{!4494, !4495}
!4494 = !DILocalVariable(name: "e", arg: 1, scope: !4490, file: !3, line: 1053, type: !830)
!4495 = !DILocalVariable(name: "n", arg: 2, scope: !4490, file: !3, line: 1053, type: !837)
!4496 = !DILocation(line: 0, scope: !4490)
!4497 = !DILocation(line: 1056, column: 3, scope: !4490)
!4498 = !DILocation(line: 1059, column: 6, scope: !4490)
!4499 = !DILocation(line: 1059, column: 18, scope: !4490)
!4500 = !DILocation(line: 1060, column: 10, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 1060, column: 7)
!4502 = !DILocation(line: 1060, column: 7, scope: !4501)
!4503 = !DILocation(line: 1060, column: 7, scope: !4490)
!4504 = !DILocation(line: 1061, column: 17, scope: !4501)
!4505 = !DILocation(line: 1061, column: 29, scope: !4501)
!4506 = !DILocation(line: 1062, column: 23, scope: !4490)
!4507 = !DILocation(line: 1061, column: 5, scope: !4501)
!4508 = !DILocation(line: 1062, column: 6, scope: !4490)
!4509 = !DILocation(line: 1062, column: 18, scope: !4490)
!4510 = !DILocation(line: 1063, column: 14, scope: !4490)
!4511 = !DILocation(line: 1064, column: 6, scope: !4490)
!4512 = !DILocation(line: 1064, column: 13, scope: !4490)
!4513 = !DILocation(line: 1065, column: 1, scope: !4490)
!4514 = distinct !DISubprogram(name: "cgraph_update_edges_for_call_stmt", scope: !3, file: !3, line: 1134, type: !4515, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{null, !1163, !841, !1163}
!4517 = !{!4518, !4519, !4520, !4521, !4522}
!4518 = !DILocalVariable(name: "old_stmt", arg: 1, scope: !4514, file: !3, line: 1134, type: !1163)
!4519 = !DILocalVariable(name: "old_decl", arg: 2, scope: !4514, file: !3, line: 1134, type: !841)
!4520 = !DILocalVariable(name: "new_stmt", arg: 3, scope: !4514, file: !3, line: 1134, type: !1163)
!4521 = !DILocalVariable(name: "orig", scope: !4514, file: !3, line: 1136, type: !837)
!4522 = !DILocalVariable(name: "node", scope: !4514, file: !3, line: 1137, type: !837)
!4523 = !DILocation(line: 0, scope: !4514)
!4524 = !DILocation(line: 1136, column: 43, scope: !4514)
!4525 = !DILocation(line: 1136, column: 49, scope: !4514)
!4526 = !DILocation(line: 1136, column: 30, scope: !4514)
!4527 = !DILocation(line: 1139, column: 3, scope: !4514)
!4528 = !DILocation(line: 1140, column: 13, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 1140, column: 7)
!4530 = !DILocation(line: 1140, column: 7, scope: !4529)
!4531 = !DILocation(line: 1140, column: 7, scope: !4514)
!4532 = !DILocation(line: 1141, column: 10, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 1141, column: 5)
!4534 = !DILocation(line: 0, scope: !4533)
!4535 = !DILocation(line: 1141, column: 36, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 1141, column: 5)
!4537 = !DILocation(line: 1141, column: 5, scope: !4533)
!4538 = !DILocation(line: 1143, column: 9, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 1142, column: 7)
!4540 = !DILocation(line: 1144, column: 12, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 1144, column: 6)
!4542 = !DILocation(line: 1144, column: 6, scope: !4541)
!4543 = !DILocation(line: 1144, column: 6, scope: !4539)
!4544 = !DILocation(line: 1145, column: 4, scope: !4541)
!4545 = !DILocation(line: 1146, column: 17, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 1146, column: 11)
!4547 = !DILocation(line: 1146, column: 11, scope: !4546)
!4548 = !DILocation(line: 1146, column: 11, scope: !4541)
!4549 = !DILocation(line: 1150, column: 6, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 1149, column: 4)
!4551 = !DILocation(line: 1147, column: 4, scope: !4546)
!4552 = !DILocation(line: 1150, column: 18, scope: !4550)
!4553 = !DILocation(line: 1150, column: 26, scope: !4550)
!4554 = !DILocation(line: 1150, column: 36, scope: !4550)
!4555 = !DILocation(line: 1150, column: 29, scope: !4550)
!4556 = !DILocation(line: 1151, column: 21, scope: !4550)
!4557 = distinct !{!4557, !4549, !4556}
!4558 = !DILocation(line: 1152, column: 10, scope: !4550)
!4559 = !DILocation(line: 1153, column: 21, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 1152, column: 10)
!4561 = !DILocation(line: 1153, column: 8, scope: !4560)
!4562 = !DILocation(line: 0, scope: !4541)
!4563 = !DILocation(line: 1141, column: 5, scope: !4536)
!4564 = distinct !{!4564, !4537, !4565}
!4565 = !DILocation(line: 1155, column: 7, scope: !4533)
!4566 = !DILocation(line: 1156, column: 1, scope: !4514)
!4567 = distinct !DISubprogram(name: "cgraph_update_edges_for_call_stmt_node", scope: !3, file: !3, line: 1073, type: !4568, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4570)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !837, !1163, !841, !1163}
!4570 = !{!4571, !4572, !4573, !4574, !4575, !4576, !4579, !4580, !4581, !4582, !4583}
!4571 = !DILocalVariable(name: "node", arg: 1, scope: !4567, file: !3, line: 1073, type: !837)
!4572 = !DILocalVariable(name: "old_stmt", arg: 2, scope: !4567, file: !3, line: 1074, type: !1163)
!4573 = !DILocalVariable(name: "old_call", arg: 3, scope: !4567, file: !3, line: 1074, type: !841)
!4574 = !DILocalVariable(name: "new_stmt", arg: 4, scope: !4567, file: !3, line: 1074, type: !1163)
!4575 = !DILocalVariable(name: "new_call", scope: !4567, file: !3, line: 1076, type: !841)
!4576 = !DILocalVariable(name: "e", scope: !4577, file: !3, line: 1085, type: !830)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 1084, column: 5)
!4578 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 1083, column: 7)
!4579 = !DILocalVariable(name: "ne", scope: !4577, file: !3, line: 1086, type: !830)
!4580 = !DILocalVariable(name: "count", scope: !4577, file: !3, line: 1087, type: !834)
!4581 = !DILocalVariable(name: "frequency", scope: !4577, file: !3, line: 1088, type: !815)
!4582 = !DILocalVariable(name: "loop_nest", scope: !4577, file: !3, line: 1089, type: !815)
!4583 = !DILocalVariable(name: "bb", scope: !4584, file: !3, line: 1109, type: !1752)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 1107, column: 2)
!4585 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1091, column: 11)
!4586 = !DILocation(line: 0, scope: !4567)
!4587 = !DILocation(line: 1076, column: 20, scope: !4567)
!4588 = !DILocation(line: 1076, column: 19, scope: !4567)
!4589 = !DILocation(line: 1076, column: 49, scope: !4567)
!4590 = !DILocation(line: 1079, column: 8, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 1079, column: 7)
!4592 = !DILocation(line: 1079, column: 21, scope: !4591)
!4593 = !DILocation(line: 1079, column: 17, scope: !4591)
!4594 = !DILocation(line: 1083, column: 16, scope: !4578)
!4595 = !DILocation(line: 1083, column: 7, scope: !4567)
!4596 = !DILocation(line: 1085, column: 31, scope: !4577)
!4597 = !DILocation(line: 0, scope: !4577)
!4598 = !DILocation(line: 1091, column: 11, scope: !4585)
!4599 = !DILocation(line: 1091, column: 11, scope: !4577)
!4600 = !DILocation(line: 1095, column: 8, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1095, column: 8)
!4602 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 1092, column: 2)
!4603 = !DILocation(line: 1095, column: 17, scope: !4601)
!4604 = !DILocation(line: 1095, column: 23, scope: !4601)
!4605 = !DILocation(line: 1095, column: 31, scope: !4601)
!4606 = !DILocation(line: 1095, column: 36, scope: !4601)
!4607 = !DILocation(line: 1095, column: 8, scope: !4602)
!4608 = !DILocation(line: 1101, column: 15, scope: !4602)
!4609 = !DILocation(line: 1102, column: 19, scope: !4602)
!4610 = !DILocation(line: 1103, column: 19, scope: !4602)
!4611 = !DILocation(line: 1103, column: 16, scope: !4602)
!4612 = !DILocation(line: 1104, column: 4, scope: !4602)
!4613 = !DILocation(line: 1105, column: 2, scope: !4602)
!4614 = !DILocation(line: 1109, column: 21, scope: !4584)
!4615 = !DILocation(line: 0, scope: !4584)
!4616 = !DILocation(line: 1110, column: 16, scope: !4584)
!4617 = !DILocation(line: 1111, column: 48, scope: !4584)
!4618 = !DILocation(line: 1111, column: 16, scope: !4584)
!4619 = !DILocation(line: 1113, column: 20, scope: !4584)
!4620 = !DILocation(line: 0, scope: !4585)
!4621 = !DILocation(line: 1116, column: 11, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1116, column: 11)
!4623 = !DILocation(line: 1116, column: 11, scope: !4577)
!4624 = !DILocation(line: 1118, column: 35, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 1117, column: 2)
!4626 = !DILocation(line: 1118, column: 9, scope: !4625)
!4627 = !DILocation(line: 1121, column: 4, scope: !4625)
!4628 = !DILocation(line: 1125, column: 21, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 1125, column: 12)
!4630 = !DILocation(line: 1125, column: 12, scope: !4578)
!4631 = !DILocation(line: 1126, column: 27, scope: !4629)
!4632 = !DILocation(line: 1126, column: 5, scope: !4629)
!4633 = !DILocation(line: 1127, column: 1, scope: !4567)
!4634 = distinct !DISubprogram(name: "cgraph_node_remove_callees", scope: !3, file: !3, line: 1162, type: !2350, scopeLine: 1163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4635)
!4635 = !{!4636, !4637, !4638}
!4636 = !DILocalVariable(name: "node", arg: 1, scope: !4634, file: !3, line: 1162, type: !837)
!4637 = !DILocalVariable(name: "e", scope: !4634, file: !3, line: 1164, type: !830)
!4638 = !DILocalVariable(name: "f", scope: !4634, file: !3, line: 1164, type: !830)
!4639 = !DILocation(line: 0, scope: !4634)
!4640 = !DILocation(line: 1169, column: 18, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1169, column: 3)
!4642 = !DILocation(line: 1169, column: 8, scope: !4641)
!4643 = !DILocation(line: 0, scope: !4641)
!4644 = !DILocation(line: 1169, column: 3, scope: !4641)
!4645 = !DILocation(line: 1171, column: 14, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 1170, column: 5)
!4647 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1169, column: 3)
!4648 = !DILocation(line: 1172, column: 7, scope: !4646)
!4649 = !DILocation(line: 1173, column: 7, scope: !4646)
!4650 = !DILocation(line: 1174, column: 7, scope: !4646)
!4651 = !DILocation(line: 1169, column: 3, scope: !4647)
!4652 = distinct !{!4652, !4644, !4653}
!4653 = !DILocation(line: 1175, column: 5, scope: !4641)
!4654 = !DILocation(line: 1176, column: 17, scope: !4634)
!4655 = !DILocation(line: 1177, column: 13, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1177, column: 7)
!4657 = !DILocation(line: 1177, column: 7, scope: !4656)
!4658 = !DILocation(line: 1177, column: 7, scope: !4634)
!4659 = !DILocation(line: 1179, column: 7, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 1178, column: 5)
!4661 = !DILocation(line: 1180, column: 28, scope: !4660)
!4662 = !DILocation(line: 1181, column: 5, scope: !4660)
!4663 = !DILocation(line: 1182, column: 1, scope: !4634)
!4664 = distinct !DISubprogram(name: "cgraph_release_function_body", scope: !3, file: !3, line: 1207, type: !2350, scopeLine: 1208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4665)
!4665 = !{!4666, !4667}
!4666 = !DILocalVariable(name: "node", arg: 1, scope: !4664, file: !3, line: 1207, type: !837)
!4667 = !DILocalVariable(name: "old_decl", scope: !4668, file: !3, line: 1211, type: !841)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1210, column: 5)
!4669 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 1209, column: 7)
!4670 = !DILocation(line: 0, scope: !4664)
!4671 = !DILocation(line: 1209, column: 7, scope: !4669)
!4672 = !DILocation(line: 1209, column: 7, scope: !4664)
!4673 = !DILocation(line: 1211, column: 23, scope: !4668)
!4674 = !DILocation(line: 1212, column: 7, scope: !4668)
!4675 = !DILocation(line: 1213, column: 11, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 1213, column: 11)
!4677 = !DILocation(line: 1213, column: 17, scope: !4676)
!4678 = !DILocation(line: 1213, column: 11, scope: !4668)
!4679 = !DILocation(line: 1215, column: 34, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 1214, column: 2)
!4681 = !DILocation(line: 1215, column: 26, scope: !4680)
!4682 = !DILocation(line: 1216, column: 4, scope: !4680)
!4683 = !DILocation(line: 1217, column: 4, scope: !4680)
!4684 = !DILocation(line: 1218, column: 4, scope: !4680)
!4685 = !DILocation(line: 1218, column: 10, scope: !4680)
!4686 = !DILocation(line: 1218, column: 13, scope: !4680)
!4687 = !DILocation(line: 1219, column: 26, scope: !4680)
!4688 = !DILocation(line: 1221, column: 11, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 1221, column: 11)
!4690 = !DILocation(line: 1220, column: 2, scope: !4680)
!4691 = !DILocation(line: 1221, column: 17, scope: !4689)
!4692 = !DILocation(line: 1221, column: 11, scope: !4668)
!4693 = !DILocation(line: 1223, column: 4, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 1222, column: 2)
!4695 = !DILocation(line: 1224, column: 4, scope: !4694)
!4696 = !DILocation(line: 0, scope: !4694)
!4697 = !DILocation(line: 1225, column: 4, scope: !4694)
!4698 = !DILocation(line: 1227, column: 11, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 1227, column: 11)
!4700 = !DILocation(line: 1226, column: 2, scope: !4694)
!4701 = !DILocation(line: 1227, column: 17, scope: !4699)
!4702 = !DILocation(line: 1227, column: 11, scope: !4668)
!4703 = !DILocation(line: 1228, column: 2, scope: !4699)
!4704 = !DILocation(line: 1229, column: 7, scope: !4668)
!4705 = !DILocation(line: 1230, column: 7, scope: !4668)
!4706 = !DILocation(line: 1231, column: 30, scope: !4668)
!4707 = !DILocation(line: 1231, column: 7, scope: !4668)
!4708 = !DILocation(line: 1232, column: 7, scope: !4668)
!4709 = !DILocation(line: 1236, column: 17, scope: !4668)
!4710 = !DILocation(line: 1236, column: 7, scope: !4668)
!4711 = !DILocation(line: 1237, column: 7, scope: !4668)
!4712 = !DILocation(line: 1237, column: 41, scope: !4668)
!4713 = !DILocation(line: 1239, column: 3, scope: !4664)
!4714 = !DILocation(line: 1238, column: 5, scope: !4668)
!4715 = !DILocation(line: 1239, column: 32, scope: !4664)
!4716 = !DILocation(line: 1243, column: 14, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 1243, column: 7)
!4718 = !DILocation(line: 1243, column: 8, scope: !4717)
!4719 = !DILocation(line: 1243, column: 7, scope: !4664)
!4720 = !DILocation(line: 1244, column: 33, scope: !4717)
!4721 = !DILocation(line: 1244, column: 5, scope: !4717)
!4722 = !DILocation(line: 1244, column: 31, scope: !4717)
!4723 = !DILocation(line: 1245, column: 1, scope: !4664)
!4724 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_heap_free", scope: !1586, file: !1586, line: 177, type: !4725, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4728)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !4727}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "vec_", arg: 1, scope: !4724, file: !1586, line: 177, type: !4727)
!4730 = !DILocation(line: 0, scope: !4724)
!4731 = !DILocation(line: 177, column: 1, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4724, file: !1586, line: 177, column: 1)
!4733 = !DILocation(line: 177, column: 1, scope: !4724)
!4734 = distinct !DISubprogram(name: "cgraph_remove_same_body_alias", scope: !3, file: !3, line: 1250, type: !2350, scopeLine: 1251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4735)
!4735 = !{!4736, !4737, !4738, !4739}
!4736 = !DILocalVariable(name: "node", arg: 1, scope: !4734, file: !3, line: 1250, type: !837)
!4737 = !DILocalVariable(name: "slot", scope: !4734, file: !3, line: 1252, type: !1691)
!4738 = !DILocalVariable(name: "uid", scope: !4734, file: !3, line: 1253, type: !815)
!4739 = !DILocalVariable(name: "name", scope: !4740, file: !3, line: 1269, type: !841)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 1268, column: 5)
!4741 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1267, column: 7)
!4742 = !DILocation(line: 0, scope: !4734)
!4743 = !DILocation(line: 1253, column: 19, scope: !4734)
!4744 = !DILocation(line: 1255, column: 3, scope: !4734)
!4745 = !DILocation(line: 1256, column: 13, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1256, column: 7)
!4747 = !DILocation(line: 1256, column: 7, scope: !4746)
!4748 = !DILocation(line: 0, scope: !4746)
!4749 = !DILocation(line: 1256, column: 7, scope: !4734)
!4750 = !DILocation(line: 1257, column: 21, scope: !4746)
!4751 = !DILocation(line: 1257, column: 26, scope: !4746)
!4752 = !DILocation(line: 1257, column: 5, scope: !4746)
!4753 = !DILocation(line: 1259, column: 11, scope: !4746)
!4754 = !DILocation(line: 1259, column: 22, scope: !4746)
!4755 = !DILocation(line: 1259, column: 32, scope: !4746)
!4756 = !DILocation(line: 1260, column: 13, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1260, column: 7)
!4758 = !DILocation(line: 1260, column: 7, scope: !4757)
!4759 = !DILocation(line: 1260, column: 7, scope: !4734)
!4760 = !DILocation(line: 1261, column: 34, scope: !4757)
!4761 = !DILocation(line: 1261, column: 17, scope: !4757)
!4762 = !DILocation(line: 1261, column: 26, scope: !4757)
!4763 = !DILocation(line: 1261, column: 5, scope: !4757)
!4764 = !DILocation(line: 1262, column: 14, scope: !4734)
!4765 = !DILocation(line: 1263, column: 18, scope: !4734)
!4766 = !DILocation(line: 1264, column: 26, scope: !4734)
!4767 = !DILocation(line: 1264, column: 39, scope: !4734)
!4768 = !DILocation(line: 1264, column: 10, scope: !4734)
!4769 = !DILocation(line: 1265, column: 7, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1265, column: 7)
!4771 = !DILocation(line: 1265, column: 13, scope: !4770)
!4772 = !DILocation(line: 1265, column: 7, scope: !4734)
!4773 = !DILocation(line: 1266, column: 22, scope: !4770)
!4774 = !DILocation(line: 1266, column: 5, scope: !4770)
!4775 = !DILocation(line: 1267, column: 7, scope: !4741)
!4776 = !DILocation(line: 1267, column: 7, scope: !4734)
!4777 = !DILocation(line: 1269, column: 19, scope: !4740)
!4778 = !DILocation(line: 0, scope: !4740)
!4779 = !DILocation(line: 1270, column: 40, scope: !4740)
!4780 = !DILocation(line: 1270, column: 61, scope: !4740)
!4781 = !DILocation(line: 1271, column: 12, scope: !4740)
!4782 = !DILocation(line: 1270, column: 14, scope: !4740)
!4783 = !DILocation(line: 1273, column: 11, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 1273, column: 11)
!4785 = !DILocation(line: 1273, column: 16, scope: !4784)
!4786 = !DILocation(line: 1273, column: 19, scope: !4784)
!4787 = !DILocation(line: 1273, column: 25, scope: !4784)
!4788 = !DILocation(line: 1273, column: 11, scope: !4740)
!4789 = !DILocation(line: 1274, column: 19, scope: !4784)
!4790 = !DILocation(line: 1274, column: 2, scope: !4784)
!4791 = !DILocation(line: 1279, column: 3, scope: !4734)
!4792 = !DILocation(line: 1280, column: 13, scope: !4734)
!4793 = !DILocation(line: 1281, column: 27, scope: !4734)
!4794 = !DILocation(line: 1281, column: 25, scope: !4734)
!4795 = !DILocation(line: 1282, column: 14, scope: !4734)
!4796 = !DILocation(line: 1283, column: 1, scope: !4734)
!4797 = distinct !DISubprogram(name: "cgraph_call_node_removal_hooks", scope: !3, file: !3, line: 266, type: !2350, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4798 = !{!4799, !4800}
!4799 = !DILocalVariable(name: "node", arg: 1, scope: !4797, file: !3, line: 266, type: !837)
!4800 = !DILocalVariable(name: "entry", scope: !4797, file: !3, line: 268, type: !2485)
!4801 = !DILocation(line: 0, scope: !4797)
!4802 = !DILocation(line: 269, column: 3, scope: !4797)
!4803 = !DILocation(line: 271, column: 12, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 270, column: 3)
!4805 = !DILocation(line: 271, column: 31, scope: !4804)
!4806 = !DILocation(line: 271, column: 5, scope: !4804)
!4807 = !DILocation(line: 272, column: 20, scope: !4804)
!4808 = distinct !{!4808, !4802, !4809}
!4809 = !DILocation(line: 273, column: 3, scope: !4797)
!4810 = !DILocation(line: 274, column: 1, scope: !4797)
!4811 = distinct !DISubprogram(name: "cgraph_node_remove_callers", scope: !3, file: !3, line: 1187, type: !2350, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4812)
!4812 = !{!4813, !4814, !4815}
!4813 = !DILocalVariable(name: "node", arg: 1, scope: !4811, file: !3, line: 1187, type: !837)
!4814 = !DILocalVariable(name: "e", scope: !4811, file: !3, line: 1189, type: !830)
!4815 = !DILocalVariable(name: "f", scope: !4811, file: !3, line: 1189, type: !830)
!4816 = !DILocation(line: 0, scope: !4811)
!4817 = !DILocation(line: 1194, column: 18, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 1194, column: 3)
!4819 = !DILocation(line: 1194, column: 8, scope: !4818)
!4820 = !DILocation(line: 0, scope: !4818)
!4821 = !DILocation(line: 1194, column: 3, scope: !4818)
!4822 = !DILocation(line: 1196, column: 14, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 1195, column: 5)
!4824 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 1194, column: 3)
!4825 = !DILocation(line: 1197, column: 7, scope: !4823)
!4826 = !DILocation(line: 1198, column: 7, scope: !4823)
!4827 = !DILocation(line: 1199, column: 7, scope: !4823)
!4828 = !DILocation(line: 1194, column: 3, scope: !4824)
!4829 = distinct !{!4829, !4821, !4830}
!4830 = !DILocation(line: 1200, column: 5, scope: !4818)
!4831 = !DILocation(line: 1201, column: 17, scope: !4811)
!4832 = !DILocation(line: 1202, column: 1, scope: !4811)
!4833 = distinct !DISubprogram(name: "cgraph_remove_node_and_inline_clones", scope: !3, file: !3, line: 1505, type: !2350, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4834)
!4834 = !{!4835, !4836, !4837}
!4835 = !DILocalVariable(name: "node", arg: 1, scope: !4833, file: !3, line: 1505, type: !837)
!4836 = !DILocalVariable(name: "e", scope: !4833, file: !3, line: 1507, type: !830)
!4837 = !DILocalVariable(name: "next", scope: !4833, file: !3, line: 1507, type: !830)
!4838 = !DILocation(line: 0, scope: !4833)
!4839 = !DILocation(line: 1508, column: 18, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 1508, column: 3)
!4841 = !DILocation(line: 1508, column: 8, scope: !4840)
!4842 = !DILocation(line: 0, scope: !4840)
!4843 = !DILocation(line: 1508, column: 3, scope: !4840)
!4844 = !DILocation(line: 1510, column: 17, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 1509, column: 5)
!4846 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 1508, column: 3)
!4847 = !DILocation(line: 1511, column: 15, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 1511, column: 11)
!4849 = !DILocation(line: 1511, column: 12, scope: !4848)
!4850 = !DILocation(line: 1511, column: 11, scope: !4845)
!4851 = !DILocation(line: 1512, column: 50, scope: !4848)
!4852 = !DILocation(line: 1512, column: 9, scope: !4848)
!4853 = !DILocation(line: 1508, column: 3, scope: !4846)
!4854 = distinct !{!4854, !4843, !4855}
!4855 = !DILocation(line: 1513, column: 5, scope: !4840)
!4856 = !DILocation(line: 1514, column: 3, scope: !4833)
!4857 = !DILocation(line: 1515, column: 1, scope: !4833)
!4858 = distinct !DISubprogram(name: "cgraph_mark_reachable_node", scope: !3, file: !3, line: 1520, type: !2350, scopeLine: 1521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4859)
!4859 = !{!4860}
!4860 = !DILocalVariable(name: "node", arg: 1, scope: !4858, file: !3, line: 1520, type: !837)
!4861 = !DILocation(line: 0, scope: !4858)
!4862 = !DILocation(line: 1522, column: 14, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 1522, column: 7)
!4864 = !DILocation(line: 1522, column: 8, scope: !4863)
!4865 = !DILocation(line: 1522, column: 24, scope: !4863)
!4866 = !DILocation(line: 1522, column: 39, scope: !4863)
!4867 = !DILocation(line: 1522, column: 27, scope: !4863)
!4868 = !DILocation(line: 1522, column: 7, scope: !4858)
!4869 = !DILocation(line: 1524, column: 35, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 1523, column: 5)
!4871 = !DILocation(line: 1524, column: 7, scope: !4870)
!4872 = !DILocation(line: 1525, column: 23, scope: !4870)
!4873 = !DILocation(line: 1526, column: 7, scope: !4870)
!4874 = !DILocation(line: 1528, column: 27, scope: !4870)
!4875 = !DILocation(line: 1528, column: 13, scope: !4870)
!4876 = !DILocation(line: 1528, column: 25, scope: !4870)
!4877 = !DILocation(line: 1529, column: 26, scope: !4870)
!4878 = !DILocation(line: 1530, column: 5, scope: !4870)
!4879 = !DILocation(line: 1531, column: 1, scope: !4858)
!4880 = distinct !DISubprogram(name: "cgraph_mark_needed_node", scope: !3, file: !3, line: 1537, type: !2350, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4881)
!4881 = !{!4882}
!4882 = !DILocalVariable(name: "node", arg: 1, scope: !4880, file: !3, line: 1537, type: !837)
!4883 = !DILocation(line: 0, scope: !4880)
!4884 = !DILocation(line: 1539, column: 9, scope: !4880)
!4885 = !DILocation(line: 1539, column: 16, scope: !4880)
!4886 = !DILocation(line: 1540, column: 3, scope: !4880)
!4887 = !DILocation(line: 1541, column: 3, scope: !4880)
!4888 = !DILocation(line: 1542, column: 1, scope: !4880)
!4889 = distinct !DISubprogram(name: "cgraph_mark_address_taken_node", scope: !3, file: !3, line: 1547, type: !2350, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4890 = !{!4891}
!4891 = !DILocalVariable(name: "node", arg: 1, scope: !4889, file: !3, line: 1547, type: !837)
!4892 = !DILocation(line: 0, scope: !4889)
!4893 = !DILocation(line: 1549, column: 9, scope: !4889)
!4894 = !DILocation(line: 1549, column: 23, scope: !4889)
!4895 = !DILocation(line: 1550, column: 3, scope: !4889)
!4896 = !DILocation(line: 1551, column: 1, scope: !4889)
!4897 = distinct !DISubprogram(name: "cgraph_local_info", scope: !3, file: !3, line: 1556, type: !4898, scopeLine: 1557, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4901)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!4900, !841}
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!4901 = !{!4902, !4903}
!4902 = !DILocalVariable(name: "decl", arg: 1, scope: !4897, file: !3, line: 1556, type: !841)
!4903 = !DILocalVariable(name: "node", scope: !4897, file: !3, line: 1558, type: !837)
!4904 = !DILocation(line: 0, scope: !4897)
!4905 = !DILocation(line: 1560, column: 3, scope: !4897)
!4906 = !DILocation(line: 1561, column: 10, scope: !4897)
!4907 = !DILocation(line: 1562, column: 17, scope: !4897)
!4908 = !DILocation(line: 1562, column: 3, scope: !4897)
!4909 = distinct !DISubprogram(name: "cgraph_global_info", scope: !3, file: !3, line: 1568, type: !4910, scopeLine: 1569, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4913)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!4912, !841}
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!4913 = !{!4914, !4915}
!4914 = !DILocalVariable(name: "decl", arg: 1, scope: !4909, file: !3, line: 1568, type: !841)
!4915 = !DILocalVariable(name: "node", scope: !4909, file: !3, line: 1570, type: !837)
!4916 = !DILocation(line: 0, scope: !4909)
!4917 = !DILocation(line: 1572, column: 3, scope: !4909)
!4918 = !DILocation(line: 1573, column: 10, scope: !4909)
!4919 = !DILocation(line: 1574, column: 17, scope: !4909)
!4920 = !DILocation(line: 1574, column: 3, scope: !4909)
!4921 = distinct !DISubprogram(name: "cgraph_rtl_info", scope: !3, file: !3, line: 1580, type: !4922, scopeLine: 1581, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4925)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!4924, !841}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!4925 = !{!4926, !4927}
!4926 = !DILocalVariable(name: "decl", arg: 1, scope: !4921, file: !3, line: 1580, type: !841)
!4927 = !DILocalVariable(name: "node", scope: !4921, file: !3, line: 1582, type: !837)
!4928 = !DILocation(line: 0, scope: !4921)
!4929 = !DILocation(line: 1584, column: 3, scope: !4921)
!4930 = !DILocation(line: 1585, column: 10, scope: !4921)
!4931 = !DILocation(line: 1586, column: 15, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 1586, column: 7)
!4933 = !DILocation(line: 1586, column: 12, scope: !4932)
!4934 = !DILocation(line: 1587, column: 7, scope: !4932)
!4935 = !DILocation(line: 1587, column: 11, scope: !4932)
!4936 = !DILocation(line: 1586, column: 7, scope: !4921)
!4937 = !DILocation(line: 1589, column: 17, scope: !4921)
!4938 = !DILocation(line: 1589, column: 3, scope: !4921)
!4939 = !DILocation(line: 1590, column: 1, scope: !4921)
!4940 = !DILocation(line: 0, scope: !2540)
!4941 = !DILocation(line: 1606, column: 3, scope: !2540)
!4942 = !DILocation(line: 1607, column: 10, scope: !2540)
!4943 = !DILocation(line: 1607, column: 3, scope: !2540)
!4944 = distinct !DISubprogram(name: "cgraph_node_name", scope: !3, file: !3, line: 1612, type: !4945, scopeLine: 1613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4947)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!820, !837}
!4947 = !{!4948}
!4948 = !DILocalVariable(name: "node", arg: 1, scope: !4944, file: !3, line: 1612, type: !837)
!4949 = !DILocation(line: 0, scope: !4944)
!4950 = !DILocation(line: 1614, column: 21, scope: !4944)
!4951 = !DILocation(line: 1614, column: 48, scope: !4944)
!4952 = !DILocation(line: 1614, column: 10, scope: !4944)
!4953 = !DILocation(line: 1614, column: 3, scope: !4944)
!4954 = distinct !DISubprogram(name: "dump_cgraph_node", scope: !3, file: !3, line: 1625, type: !4955, scopeLine: 1626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4957)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !2646, !837}
!4957 = !{!4958, !4959, !4960, !4961}
!4958 = !DILocalVariable(name: "f", arg: 1, scope: !4954, file: !3, line: 1625, type: !2646)
!4959 = !DILocalVariable(name: "node", arg: 2, scope: !4954, file: !3, line: 1625, type: !837)
!4960 = !DILocalVariable(name: "edge", scope: !4954, file: !3, line: 1627, type: !830)
!4961 = !DILocalVariable(name: "n", scope: !4962, file: !3, line: 1731, type: !837)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 1730, column: 5)
!4963 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1729, column: 7)
!4964 = !DILocation(line: 0, scope: !4954)
!4965 = !DILocation(line: 1628, column: 28, scope: !4954)
!4966 = !DILocation(line: 1628, column: 59, scope: !4954)
!4967 = !DILocation(line: 1629, column: 11, scope: !4954)
!4968 = !DILocation(line: 1628, column: 3, scope: !4954)
!4969 = !DILocation(line: 1630, column: 23, scope: !4954)
!4970 = !DILocation(line: 1630, column: 3, scope: !4954)
!4971 = !DILocation(line: 1631, column: 20, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1631, column: 7)
!4973 = !DILocation(line: 1631, column: 7, scope: !4972)
!4974 = !DILocation(line: 1631, column: 7, scope: !4954)
!4975 = !DILocation(line: 1633, column: 7, scope: !4972)
!4976 = !DILocation(line: 1634, column: 20, scope: !4972)
!4977 = !DILocation(line: 1634, column: 32, scope: !4972)
!4978 = !DILocation(line: 1632, column: 5, scope: !4972)
!4979 = !DILocation(line: 1635, column: 13, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1635, column: 7)
!4981 = !DILocation(line: 1635, column: 7, scope: !4980)
!4982 = !DILocation(line: 1635, column: 7, scope: !4954)
!4983 = !DILocation(line: 1637, column: 7, scope: !4980)
!4984 = !DILocation(line: 1638, column: 13, scope: !4980)
!4985 = !DILocation(line: 1638, column: 23, scope: !4980)
!4986 = !DILocation(line: 1636, column: 5, scope: !4980)
!4987 = !DILocation(line: 1639, column: 7, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1639, column: 7)
!4989 = !DILocation(line: 1639, column: 7, scope: !4954)
!4990 = !DILocation(line: 1641, column: 34, scope: !4988)
!4991 = !DILocation(line: 1641, column: 7, scope: !4988)
!4992 = !DILocation(line: 1640, column: 5, scope: !4988)
!4993 = !DILocation(line: 1642, column: 13, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1642, column: 7)
!4995 = !DILocation(line: 1642, column: 7, scope: !4994)
!4996 = !DILocation(line: 1642, column: 7, scope: !4954)
!4997 = !DILocation(line: 1643, column: 5, scope: !4994)
!4998 = !DILocation(line: 1645, column: 34, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1645, column: 7)
!5000 = !DILocation(line: 1645, column: 7, scope: !4999)
!5001 = !DILocation(line: 1645, column: 7, scope: !4954)
!5002 = !DILocation(line: 1647, column: 37, scope: !4999)
!5003 = !DILocation(line: 1646, column: 5, scope: !4999)
!5004 = !DILocation(line: 1648, column: 20, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1648, column: 7)
!5006 = !DILocation(line: 1648, column: 7, scope: !5005)
!5007 = !DILocation(line: 1648, column: 25, scope: !5005)
!5008 = !DILocation(line: 1649, column: 37, scope: !5005)
!5009 = !DILocation(line: 1649, column: 7, scope: !5005)
!5010 = !DILocation(line: 1648, column: 7, scope: !4954)
!5011 = !DILocation(line: 1650, column: 5, scope: !5005)
!5012 = !DILocation(line: 1651, column: 34, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1651, column: 7)
!5014 = !DILocation(line: 1651, column: 7, scope: !5013)
!5015 = !DILocation(line: 1651, column: 7, scope: !4954)
!5016 = !DILocation(line: 1653, column: 37, scope: !5013)
!5017 = !DILocation(line: 1652, column: 5, scope: !5013)
!5018 = !DILocation(line: 1654, column: 20, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1654, column: 7)
!5020 = !DILocation(line: 1654, column: 7, scope: !5019)
!5021 = !DILocation(line: 1654, column: 25, scope: !5019)
!5022 = !DILocation(line: 1655, column: 37, scope: !5019)
!5023 = !DILocation(line: 1655, column: 7, scope: !5019)
!5024 = !DILocation(line: 1654, column: 7, scope: !4954)
!5025 = !DILocation(line: 1656, column: 5, scope: !5019)
!5026 = !DILocation(line: 1657, column: 34, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1657, column: 7)
!5028 = !DILocation(line: 1657, column: 7, scope: !5027)
!5029 = !DILocation(line: 1657, column: 7, scope: !4954)
!5030 = !DILocation(line: 1658, column: 42, scope: !5027)
!5031 = !DILocation(line: 1658, column: 5, scope: !5027)
!5032 = !DILocation(line: 1659, column: 71, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1659, column: 7)
!5034 = !DILocation(line: 1659, column: 20, scope: !5033)
!5035 = !DILocation(line: 1659, column: 41, scope: !5033)
!5036 = !DILocation(line: 1659, column: 7, scope: !4954)
!5037 = !DILocation(line: 1660, column: 45, scope: !5033)
!5038 = !DILocation(line: 1660, column: 5, scope: !5033)
!5039 = !DILocation(line: 1661, column: 13, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1661, column: 7)
!5041 = !DILocation(line: 1661, column: 7, scope: !5040)
!5042 = !DILocation(line: 1661, column: 7, scope: !4954)
!5043 = !DILocation(line: 1662, column: 35, scope: !5040)
!5044 = !DILocation(line: 1662, column: 5, scope: !5040)
!5045 = !DILocation(line: 1663, column: 13, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1663, column: 7)
!5047 = !DILocation(line: 1663, column: 7, scope: !5046)
!5048 = !DILocation(line: 1663, column: 7, scope: !4954)
!5049 = !DILocation(line: 1664, column: 5, scope: !5046)
!5050 = !DILocation(line: 1665, column: 13, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1665, column: 7)
!5052 = !DILocation(line: 1665, column: 7, scope: !5051)
!5053 = !DILocation(line: 1665, column: 7, scope: !4954)
!5054 = !DILocation(line: 1666, column: 5, scope: !5051)
!5055 = !DILocation(line: 1667, column: 18, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 1667, column: 12)
!5057 = !DILocation(line: 1667, column: 12, scope: !5056)
!5058 = !DILocation(line: 1667, column: 12, scope: !5051)
!5059 = !DILocation(line: 1668, column: 5, scope: !5056)
!5060 = !DILocation(line: 1669, column: 32, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1669, column: 7)
!5062 = !DILocation(line: 1669, column: 7, scope: !5061)
!5063 = !DILocation(line: 1669, column: 7, scope: !4954)
!5064 = !DILocation(line: 1670, column: 5, scope: !5061)
!5065 = !DILocation(line: 1671, column: 13, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1671, column: 7)
!5067 = !DILocation(line: 1671, column: 7, scope: !5066)
!5068 = !DILocation(line: 1671, column: 7, scope: !4954)
!5069 = !DILocation(line: 1672, column: 5, scope: !5066)
!5070 = !DILocation(line: 1673, column: 19, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1673, column: 7)
!5072 = !DILocation(line: 1673, column: 7, scope: !5071)
!5073 = !DILocation(line: 1673, column: 7, scope: !4954)
!5074 = !DILocation(line: 1674, column: 5, scope: !5071)
!5075 = !DILocation(line: 1675, column: 19, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1675, column: 7)
!5077 = !DILocation(line: 1675, column: 7, scope: !5076)
!5078 = !DILocation(line: 1675, column: 7, scope: !4954)
!5079 = !DILocation(line: 1676, column: 5, scope: !5076)
!5080 = !DILocation(line: 1677, column: 19, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1677, column: 7)
!5082 = !DILocation(line: 1677, column: 7, scope: !5081)
!5083 = !DILocation(line: 1677, column: 7, scope: !4954)
!5084 = !DILocation(line: 1678, column: 5, scope: !5081)
!5085 = !DILocation(line: 1679, column: 19, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1679, column: 7)
!5087 = !DILocation(line: 1679, column: 7, scope: !5086)
!5088 = !DILocation(line: 1679, column: 7, scope: !4954)
!5089 = !DILocation(line: 1680, column: 5, scope: !5086)
!5090 = !DILocation(line: 1681, column: 24, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 1681, column: 12)
!5092 = !DILocation(line: 1681, column: 12, scope: !5091)
!5093 = !DILocation(line: 1681, column: 12, scope: !5086)
!5094 = !DILocation(line: 1682, column: 5, scope: !5091)
!5095 = !DILocation(line: 1683, column: 19, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1683, column: 7)
!5097 = !DILocation(line: 1683, column: 7, scope: !5096)
!5098 = !DILocation(line: 1683, column: 7, scope: !4954)
!5099 = !DILocation(line: 1684, column: 5, scope: !5096)
!5100 = !DILocation(line: 1685, column: 7, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1685, column: 7)
!5102 = !DILocation(line: 1685, column: 7, scope: !4954)
!5103 = !DILocation(line: 1686, column: 5, scope: !5101)
!5104 = !DILocation(line: 1688, column: 3, scope: !4954)
!5105 = !DILocation(line: 1689, column: 21, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1689, column: 3)
!5107 = !DILocation(line: 1689, column: 8, scope: !5106)
!5108 = !DILocation(line: 0, scope: !5106)
!5109 = !DILocation(line: 1689, column: 3, scope: !5106)
!5110 = !DILocation(line: 1691, column: 53, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 1690, column: 5)
!5112 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 1689, column: 3)
!5113 = !DILocation(line: 1691, column: 29, scope: !5111)
!5114 = !DILocation(line: 1692, column: 15, scope: !5111)
!5115 = !DILocation(line: 1692, column: 23, scope: !5111)
!5116 = !DILocation(line: 1691, column: 7, scope: !5111)
!5117 = !DILocation(line: 1693, column: 17, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 1693, column: 11)
!5119 = !DILocation(line: 1693, column: 11, scope: !5118)
!5120 = !DILocation(line: 1693, column: 11, scope: !5111)
!5121 = !DILocation(line: 1694, column: 2, scope: !5118)
!5122 = !DILocation(line: 1696, column: 17, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 1696, column: 11)
!5124 = !DILocation(line: 1696, column: 11, scope: !5123)
!5125 = !DILocation(line: 1696, column: 11, scope: !5111)
!5126 = !DILocation(line: 1698, column: 4, scope: !5123)
!5127 = !DILocation(line: 1698, column: 20, scope: !5123)
!5128 = !DILocation(line: 1697, column: 2, scope: !5123)
!5129 = !DILocation(line: 1699, column: 18, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 1699, column: 11)
!5131 = !DILocation(line: 1699, column: 12, scope: !5130)
!5132 = !DILocation(line: 1699, column: 11, scope: !5111)
!5133 = !DILocation(line: 1700, column: 2, scope: !5130)
!5134 = !DILocation(line: 1701, column: 17, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 1701, column: 11)
!5136 = !DILocation(line: 1701, column: 11, scope: !5135)
!5137 = !DILocation(line: 1701, column: 11, scope: !5111)
!5138 = !DILocation(line: 1702, column: 2, scope: !5135)
!5139 = !DILocation(line: 1703, column: 17, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 1703, column: 11)
!5141 = !DILocation(line: 1703, column: 11, scope: !5140)
!5142 = !DILocation(line: 1703, column: 11, scope: !5111)
!5143 = !DILocation(line: 1704, column: 2, scope: !5140)
!5144 = !DILocation(line: 1689, column: 49, scope: !5112)
!5145 = !DILocation(line: 1689, column: 3, scope: !5112)
!5146 = distinct !{!5146, !5109, !5147}
!5147 = !DILocation(line: 1705, column: 5, scope: !5106)
!5148 = !DILocation(line: 1707, column: 3, scope: !4954)
!5149 = !DILocation(line: 1708, column: 21, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 1708, column: 3)
!5151 = !DILocation(line: 1708, column: 8, scope: !5150)
!5152 = !DILocation(line: 0, scope: !5150)
!5153 = !DILocation(line: 1708, column: 3, scope: !5150)
!5154 = !DILocation(line: 1710, column: 53, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 1709, column: 5)
!5156 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 1708, column: 3)
!5157 = !DILocation(line: 1710, column: 29, scope: !5155)
!5158 = !DILocation(line: 1711, column: 15, scope: !5155)
!5159 = !DILocation(line: 1711, column: 23, scope: !5155)
!5160 = !DILocation(line: 1710, column: 7, scope: !5155)
!5161 = !DILocation(line: 1712, column: 18, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 1712, column: 11)
!5163 = !DILocation(line: 1712, column: 12, scope: !5162)
!5164 = !DILocation(line: 1712, column: 11, scope: !5155)
!5165 = !DILocation(line: 1713, column: 2, scope: !5162)
!5166 = !DILocation(line: 1714, column: 17, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 1714, column: 11)
!5168 = !DILocation(line: 1714, column: 11, scope: !5167)
!5169 = !DILocation(line: 1714, column: 11, scope: !5155)
!5170 = !DILocation(line: 1715, column: 2, scope: !5167)
!5171 = !DILocation(line: 1716, column: 17, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 1716, column: 11)
!5173 = !DILocation(line: 1716, column: 11, scope: !5172)
!5174 = !DILocation(line: 1716, column: 11, scope: !5155)
!5175 = !DILocation(line: 1717, column: 2, scope: !5172)
!5176 = !DILocation(line: 1719, column: 17, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 1719, column: 11)
!5178 = !DILocation(line: 1719, column: 11, scope: !5177)
!5179 = !DILocation(line: 1719, column: 11, scope: !5155)
!5180 = !DILocation(line: 1721, column: 4, scope: !5177)
!5181 = !DILocation(line: 1721, column: 20, scope: !5177)
!5182 = !DILocation(line: 1720, column: 2, scope: !5177)
!5183 = !DILocation(line: 1722, column: 17, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 1722, column: 11)
!5185 = !DILocation(line: 1722, column: 11, scope: !5184)
!5186 = !DILocation(line: 1722, column: 11, scope: !5155)
!5187 = !DILocation(line: 1723, column: 39, scope: !5184)
!5188 = !DILocation(line: 1723, column: 2, scope: !5184)
!5189 = !DILocation(line: 1724, column: 17, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 1724, column: 11)
!5191 = !DILocation(line: 1724, column: 11, scope: !5190)
!5192 = !DILocation(line: 1724, column: 11, scope: !5155)
!5193 = !DILocation(line: 1725, column: 2, scope: !5190)
!5194 = !DILocation(line: 1708, column: 49, scope: !5156)
!5195 = !DILocation(line: 1708, column: 3, scope: !5156)
!5196 = distinct !{!5196, !5153, !5197}
!5197 = !DILocation(line: 1726, column: 5, scope: !5150)
!5198 = !DILocation(line: 1727, column: 3, scope: !4954)
!5199 = !DILocation(line: 1729, column: 13, scope: !4963)
!5200 = !DILocation(line: 1729, column: 7, scope: !4963)
!5201 = !DILocation(line: 1729, column: 7, scope: !4954)
!5202 = !DILocation(line: 1732, column: 7, scope: !4962)
!5203 = !DILocation(line: 1733, column: 12, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 1733, column: 7)
!5205 = !DILocation(line: 0, scope: !5204)
!5206 = !DILocation(line: 0, scope: !4962)
!5207 = !DILocation(line: 1733, column: 7, scope: !5204)
!5208 = !DILocation(line: 1735, column: 33, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 1734, column: 9)
!5210 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 1733, column: 7)
!5211 = !DILocation(line: 1735, column: 58, scope: !5209)
!5212 = !DILocation(line: 1735, column: 11, scope: !5209)
!5213 = !DILocation(line: 1736, column: 17, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 1736, column: 8)
!5215 = !DILocation(line: 1736, column: 8, scope: !5214)
!5216 = !DILocation(line: 1736, column: 8, scope: !5209)
!5217 = !DILocation(line: 1740, column: 27, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 1737, column: 6)
!5219 = !DILocation(line: 1740, column: 57, scope: !5218)
!5220 = !DILocation(line: 1740, column: 16, scope: !5218)
!5221 = !DILocation(line: 1741, column: 24, scope: !5218)
!5222 = !DILocation(line: 1741, column: 10, scope: !5218)
!5223 = !DILocation(line: 1742, column: 24, scope: !5218)
!5224 = !DILocation(line: 1742, column: 10, scope: !5218)
!5225 = !DILocation(line: 1743, column: 24, scope: !5218)
!5226 = !DILocation(line: 1743, column: 10, scope: !5218)
!5227 = !DILocation(line: 1738, column: 8, scope: !5218)
!5228 = !DILocation(line: 1744, column: 8, scope: !5218)
!5229 = !DILocation(line: 1745, column: 6, scope: !5218)
!5230 = !DILocation(line: 1733, column: 43, scope: !5210)
!5231 = !DILocation(line: 1733, column: 7, scope: !5210)
!5232 = distinct !{!5232, !5207, !5233}
!5233 = !DILocation(line: 1746, column: 2, scope: !5204)
!5234 = !DILocation(line: 1747, column: 7, scope: !4962)
!5235 = !DILocation(line: 1748, column: 5, scope: !4962)
!5236 = !DILocation(line: 1749, column: 1, scope: !4954)
!5237 = distinct !DISubprogram(name: "cgraph_function_body_availability", scope: !3, file: !3, line: 2068, type: !5238, scopeLine: 2069, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!597, !837}
!5240 = !{!5241, !5242}
!5241 = !DILocalVariable(name: "node", arg: 1, scope: !5237, file: !3, line: 2068, type: !837)
!5242 = !DILocalVariable(name: "avail", scope: !5237, file: !3, line: 2070, type: !597)
!5243 = !DILocation(line: 0, scope: !5237)
!5244 = !DILocation(line: 2071, column: 3, scope: !5237)
!5245 = !DILocation(line: 2072, column: 14, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 2072, column: 7)
!5247 = !DILocation(line: 2072, column: 8, scope: !5246)
!5248 = !DILocation(line: 2072, column: 7, scope: !5237)
!5249 = !DILocation(line: 2074, column: 24, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 2074, column: 12)
!5251 = !DILocation(line: 2074, column: 12, scope: !5250)
!5252 = !DILocation(line: 2074, column: 12, scope: !5246)
!5253 = !DILocation(line: 2076, column: 25, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 2076, column: 12)
!5255 = !DILocation(line: 2076, column: 13, scope: !5254)
!5256 = !DILocation(line: 2076, column: 12, scope: !5250)
!5257 = !DILocation(line: 2081, column: 12, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 2081, column: 12)
!5259 = !DILocation(line: 2081, column: 12, scope: !5254)
!5260 = !DILocation(line: 2094, column: 12, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 2094, column: 12)
!5262 = !DILocation(line: 2094, column: 44, scope: !5261)
!5263 = !DILocation(line: 2094, column: 48, scope: !5261)
!5264 = !DILocation(line: 2094, column: 12, scope: !5258)
!5265 = !DILocation(line: 0, scope: !5246)
!5266 = !DILocation(line: 2098, column: 3, scope: !5237)
!5267 = distinct !DISubprogram(name: "debug_cgraph_node", scope: !3, file: !3, line: 1755, type: !2350, scopeLine: 1756, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5268)
!5268 = !{!5269}
!5269 = !DILocalVariable(name: "node", arg: 1, scope: !5267, file: !3, line: 1755, type: !837)
!5270 = !DILocation(line: 0, scope: !5267)
!5271 = !DILocation(line: 1757, column: 21, scope: !5267)
!5272 = !DILocation(line: 1757, column: 3, scope: !5267)
!5273 = !DILocation(line: 1758, column: 1, scope: !5267)
!5274 = distinct !DISubprogram(name: "dump_cgraph", scope: !3, file: !3, line: 1764, type: !5275, scopeLine: 1765, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{null, !2646}
!5277 = !{!5278, !5279}
!5278 = !DILocalVariable(name: "f", arg: 1, scope: !5274, file: !3, line: 1764, type: !2646)
!5279 = !DILocalVariable(name: "node", scope: !5274, file: !3, line: 1766, type: !837)
!5280 = !DILocation(line: 0, scope: !5274)
!5281 = !DILocation(line: 1768, column: 3, scope: !5274)
!5282 = !DILocation(line: 1769, column: 8, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 1769, column: 3)
!5284 = !DILocation(line: 0, scope: !5283)
!5285 = !DILocation(line: 1769, column: 3, scope: !5283)
!5286 = !DILocation(line: 1770, column: 5, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 1769, column: 3)
!5288 = !DILocation(line: 1769, column: 48, scope: !5287)
!5289 = !DILocation(line: 1769, column: 3, scope: !5287)
!5290 = distinct !{!5290, !5285, !5291}
!5291 = !DILocation(line: 1770, column: 30, scope: !5283)
!5292 = !DILocation(line: 1771, column: 1, scope: !5274)
!5293 = distinct !DISubprogram(name: "debug_cgraph", scope: !3, file: !3, line: 1777, type: !2322, scopeLine: 1778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!5294 = !DILocation(line: 1779, column: 16, scope: !5293)
!5295 = !DILocation(line: 1779, column: 3, scope: !5293)
!5296 = !DILocation(line: 1780, column: 1, scope: !5293)
!5297 = distinct !DISubprogram(name: "change_decl_assembler_name", scope: !3, file: !3, line: 1786, type: !5298, scopeLine: 1787, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5300)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{null, !841, !841}
!5300 = !{!5301, !5302}
!5301 = !DILocalVariable(name: "decl", arg: 1, scope: !5297, file: !3, line: 1786, type: !841)
!5302 = !DILocalVariable(name: "name", arg: 2, scope: !5297, file: !3, line: 1786, type: !841)
!5303 = !DILocation(line: 0, scope: !5297)
!5304 = !DILocation(line: 1788, column: 3, scope: !5297)
!5305 = !DILocation(line: 1789, column: 8, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1789, column: 7)
!5307 = !DILocation(line: 1789, column: 7, scope: !5297)
!5308 = !DILocation(line: 1791, column: 7, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 1790, column: 5)
!5310 = !DILocation(line: 1792, column: 7, scope: !5309)
!5311 = !DILocation(line: 1794, column: 15, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1794, column: 7)
!5313 = !DILocation(line: 1794, column: 12, scope: !5312)
!5314 = !DILocation(line: 1794, column: 7, scope: !5297)
!5315 = !DILocation(line: 1797, column: 7, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1797, column: 7)
!5317 = !DILocation(line: 1798, column: 7, scope: !5316)
!5318 = !DILocation(line: 1798, column: 10, scope: !5316)
!5319 = !DILocation(line: 1797, column: 7, scope: !5297)
!5320 = !DILocation(line: 1799, column: 5, scope: !5316)
!5321 = !DILocation(line: 1801, column: 3, scope: !5297)
!5322 = !DILocation(line: 1802, column: 1, scope: !5297)
!5323 = distinct !DISubprogram(name: "cgraph_add_asm_node", scope: !3, file: !3, line: 1807, type: !5324, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5326)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!2517, !841}
!5326 = !{!5327, !5328}
!5327 = !DILocalVariable(name: "asm_str", arg: 1, scope: !5323, file: !3, line: 1807, type: !841)
!5328 = !DILocalVariable(name: "node", scope: !5323, file: !3, line: 1809, type: !2517)
!5329 = !DILocation(line: 0, scope: !5323)
!5330 = !DILocation(line: 1811, column: 10, scope: !5323)
!5331 = !DILocation(line: 1812, column: 9, scope: !5323)
!5332 = !DILocation(line: 1812, column: 17, scope: !5323)
!5333 = !DILocation(line: 1813, column: 29, scope: !5323)
!5334 = !DILocation(line: 1813, column: 9, scope: !5323)
!5335 = !DILocation(line: 1813, column: 15, scope: !5323)
!5336 = !DILocation(line: 1814, column: 9, scope: !5323)
!5337 = !DILocation(line: 1814, column: 14, scope: !5323)
!5338 = !DILocation(line: 1815, column: 7, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 1815, column: 7)
!5340 = !DILocation(line: 1815, column: 24, scope: !5339)
!5341 = !DILocation(line: 1815, column: 7, scope: !5323)
!5342 = !DILocation(line: 1816, column: 22, scope: !5339)
!5343 = !DILocation(line: 1816, column: 5, scope: !5339)
!5344 = !DILocation(line: 1818, column: 5, scope: !5339)
!5345 = !DILocation(line: 1818, column: 32, scope: !5339)
!5346 = !DILocation(line: 1819, column: 24, scope: !5323)
!5347 = !DILocation(line: 1820, column: 3, scope: !5323)
!5348 = distinct !DISubprogram(name: "cgraph_function_possibly_inlined_p", scope: !3, file: !3, line: 1825, type: !5349, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5351)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!814, !841}
!5351 = !{!5352}
!5352 = !DILocalVariable(name: "decl", arg: 1, scope: !5348, file: !3, line: 1825, type: !841)
!5353 = !DILocation(line: 0, scope: !5348)
!5354 = !DILocation(line: 1827, column: 8, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 1827, column: 7)
!5356 = !DILocation(line: 1827, column: 7, scope: !5348)
!5357 = !DILocation(line: 1828, column: 12, scope: !5355)
!5358 = !DILocation(line: 1828, column: 5, scope: !5355)
!5359 = !DILocation(line: 1829, column: 10, scope: !5348)
!5360 = !DILocation(line: 1829, column: 3, scope: !5348)
!5361 = !DILocation(line: 1830, column: 1, scope: !5348)
!5362 = distinct !DISubprogram(name: "cgraph_clone_edge", scope: !3, file: !3, line: 1834, type: !5363, scopeLine: 1837, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5365)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!830, !830, !837, !1163, !7, !834, !815, !815, !814}
!5365 = !{!5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376}
!5366 = !DILocalVariable(name: "e", arg: 1, scope: !5362, file: !3, line: 1834, type: !830)
!5367 = !DILocalVariable(name: "n", arg: 2, scope: !5362, file: !3, line: 1834, type: !837)
!5368 = !DILocalVariable(name: "call_stmt", arg: 3, scope: !5362, file: !3, line: 1835, type: !1163)
!5369 = !DILocalVariable(name: "stmt_uid", arg: 4, scope: !5362, file: !3, line: 1835, type: !7)
!5370 = !DILocalVariable(name: "count_scale", arg: 5, scope: !5362, file: !3, line: 1835, type: !834)
!5371 = !DILocalVariable(name: "freq_scale", arg: 6, scope: !5362, file: !3, line: 1836, type: !815)
!5372 = !DILocalVariable(name: "loop_nest", arg: 7, scope: !5362, file: !3, line: 1836, type: !815)
!5373 = !DILocalVariable(name: "update_original", arg: 8, scope: !5362, file: !3, line: 1836, type: !814)
!5374 = !DILocalVariable(name: "new_edge", scope: !5362, file: !3, line: 1838, type: !830)
!5375 = !DILocalVariable(name: "count", scope: !5362, file: !3, line: 1839, type: !834)
!5376 = !DILocalVariable(name: "freq", scope: !5362, file: !3, line: 1840, type: !834)
!5377 = !DILocation(line: 0, scope: !5362)
!5378 = !DILocation(line: 1839, column: 24, scope: !5362)
!5379 = !DILocation(line: 1839, column: 30, scope: !5362)
!5380 = !DILocation(line: 1839, column: 44, scope: !5362)
!5381 = !DILocation(line: 1843, column: 8, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 1843, column: 7)
!5383 = !DILocation(line: 1843, column: 7, scope: !5362)
!5384 = !DILocation(line: 1845, column: 13, scope: !5362)
!5385 = !DILocation(line: 1845, column: 10, scope: !5362)
!5386 = !DILocation(line: 1845, column: 25, scope: !5362)
!5387 = !DILocation(line: 1845, column: 23, scope: !5362)
!5388 = !DILocation(line: 1845, column: 48, scope: !5362)
!5389 = !DILocation(line: 1846, column: 7, scope: !5362)
!5390 = !DILocation(line: 1848, column: 40, scope: !5362)
!5391 = !DILocation(line: 1848, column: 66, scope: !5362)
!5392 = !DILocation(line: 1849, column: 11, scope: !5362)
!5393 = !DILocation(line: 1849, column: 8, scope: !5362)
!5394 = !DILocation(line: 1849, column: 21, scope: !5362)
!5395 = !DILocation(line: 1848, column: 14, scope: !5362)
!5396 = !DILocation(line: 1851, column: 32, scope: !5362)
!5397 = !DILocation(line: 1851, column: 13, scope: !5362)
!5398 = !DILocation(line: 1851, column: 27, scope: !5362)
!5399 = !DILocation(line: 1852, column: 32, scope: !5362)
!5400 = !DILocation(line: 1852, column: 13, scope: !5362)
!5401 = !DILocation(line: 1852, column: 27, scope: !5362)
!5402 = !DILocation(line: 1853, column: 13, scope: !5362)
!5403 = !DILocation(line: 1853, column: 26, scope: !5362)
!5404 = !DILocation(line: 1854, column: 7, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 1854, column: 7)
!5406 = !DILocation(line: 1854, column: 7, scope: !5362)
!5407 = !DILocation(line: 1856, column: 29, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 1855, column: 5)
!5409 = !DILocation(line: 1856, column: 16, scope: !5408)
!5410 = !DILocation(line: 1857, column: 20, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 1857, column: 11)
!5412 = !DILocation(line: 1857, column: 11, scope: !5408)
!5413 = !DILocation(line: 1858, column: 11, scope: !5411)
!5414 = !DILocation(line: 1858, column: 2, scope: !5411)
!5415 = !DILocation(line: 1860, column: 3, scope: !5362)
!5416 = !DILocation(line: 1861, column: 3, scope: !5362)
!5417 = distinct !DISubprogram(name: "cgraph_call_edge_duplication_hooks", scope: !3, file: !3, line: 348, type: !5418, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5420)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{null, !830, !830}
!5420 = !{!5421, !5422, !5423}
!5421 = !DILocalVariable(name: "cs1", arg: 1, scope: !5417, file: !3, line: 348, type: !830)
!5422 = !DILocalVariable(name: "cs2", arg: 2, scope: !5417, file: !3, line: 349, type: !830)
!5423 = !DILocalVariable(name: "entry", scope: !5417, file: !3, line: 351, type: !2495)
!5424 = !DILocation(line: 0, scope: !5417)
!5425 = !DILocation(line: 352, column: 3, scope: !5417)
!5426 = !DILocation(line: 354, column: 12, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 353, column: 3)
!5428 = !DILocation(line: 354, column: 35, scope: !5427)
!5429 = !DILocation(line: 354, column: 5, scope: !5427)
!5430 = !DILocation(line: 355, column: 20, scope: !5427)
!5431 = distinct !{!5431, !5425, !5432}
!5432 = !DILocation(line: 356, column: 3, scope: !5417)
!5433 = !DILocation(line: 357, column: 1, scope: !5417)
!5434 = distinct !DISubprogram(name: "cgraph_clone_node", scope: !3, file: !3, line: 1871, type: !5435, scopeLine: 1874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5449)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!837, !837, !834, !815, !815, !814, !5437}
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_heap", file: !6, line: 353, baseType: !5439)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_heap", file: !6, line: 353, size: 128, elements: !5440)
!5440 = !{!5441}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5439, file: !6, line: 353, baseType: !5442, size: 128)
!5442 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_base", file: !6, line: 352, baseType: !5443)
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_base", file: !6, line: 352, size: 128, elements: !5444)
!5444 = !{!5445, !5446, !5447}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5443, file: !6, line: 352, baseType: !7, size: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5443, file: !6, line: 352, baseType: !7, size: 32, offset: 32)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !5443, file: !6, line: 352, baseType: !5448, size: 64, offset: 64)
!5448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2532, size: 64, elements: !939)
!5449 = !{!5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459}
!5450 = !DILocalVariable(name: "n", arg: 1, scope: !5434, file: !3, line: 1871, type: !837)
!5451 = !DILocalVariable(name: "count", arg: 2, scope: !5434, file: !3, line: 1871, type: !834)
!5452 = !DILocalVariable(name: "freq", arg: 3, scope: !5434, file: !3, line: 1871, type: !815)
!5453 = !DILocalVariable(name: "loop_nest", arg: 4, scope: !5434, file: !3, line: 1872, type: !815)
!5454 = !DILocalVariable(name: "update_original", arg: 5, scope: !5434, file: !3, line: 1872, type: !814)
!5455 = !DILocalVariable(name: "redirect_callers", arg: 6, scope: !5434, file: !3, line: 1873, type: !5437)
!5456 = !DILocalVariable(name: "new_node", scope: !5434, file: !3, line: 1875, type: !837)
!5457 = !DILocalVariable(name: "e", scope: !5434, file: !3, line: 1876, type: !830)
!5458 = !DILocalVariable(name: "count_scale", scope: !5434, file: !3, line: 1877, type: !834)
!5459 = !DILocalVariable(name: "i", scope: !5434, file: !3, line: 1878, type: !7)
!5460 = !DILocation(line: 0, scope: !5434)
!5461 = !DILocation(line: 1875, column: 34, scope: !5434)
!5462 = !DILocation(line: 1876, column: 3, scope: !5434)
!5463 = !DILocation(line: 1880, column: 23, scope: !5434)
!5464 = !DILocation(line: 1880, column: 18, scope: !5434)
!5465 = !DILocation(line: 1881, column: 25, scope: !5434)
!5466 = !DILocation(line: 1881, column: 13, scope: !5434)
!5467 = !DILocation(line: 1881, column: 20, scope: !5434)
!5468 = !DILocation(line: 1882, column: 7, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 1882, column: 7)
!5470 = !DILocation(line: 1882, column: 7, scope: !5434)
!5471 = !DILocation(line: 1884, column: 49, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 1883, column: 5)
!5473 = !DILocation(line: 1884, column: 17, scope: !5472)
!5474 = !DILocation(line: 1884, column: 29, scope: !5472)
!5475 = !DILocation(line: 1885, column: 32, scope: !5472)
!5476 = !DILocation(line: 1886, column: 5, scope: !5472)
!5477 = !DILocation(line: 1887, column: 27, scope: !5434)
!5478 = !DILocation(line: 1887, column: 13, scope: !5434)
!5479 = !DILocation(line: 1887, column: 22, scope: !5434)
!5480 = !DILocation(line: 1888, column: 13, scope: !5434)
!5481 = !DILocation(line: 1888, column: 24, scope: !5434)
!5482 = !DILocation(line: 1889, column: 19, scope: !5434)
!5483 = !DILocation(line: 1889, column: 38, scope: !5434)
!5484 = !DILocation(line: 1890, column: 13, scope: !5434)
!5485 = !DILocation(line: 1890, column: 25, scope: !5434)
!5486 = !DILocation(line: 1891, column: 22, scope: !5434)
!5487 = !DILocation(line: 1892, column: 13, scope: !5434)
!5488 = !DILocation(line: 1892, column: 19, scope: !5434)
!5489 = !DILocation(line: 1893, column: 13, scope: !5434)
!5490 = !DILocation(line: 1893, column: 24, scope: !5434)
!5491 = !DILocation(line: 1894, column: 19, scope: !5434)
!5492 = !DILocation(line: 1894, column: 28, scope: !5434)
!5493 = !DILocation(line: 1895, column: 10, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 1895, column: 7)
!5495 = !DILocation(line: 1895, column: 7, scope: !5494)
!5496 = !DILocation(line: 1895, column: 7, scope: !5434)
!5497 = !DILocation(line: 1897, column: 27, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 1897, column: 11)
!5499 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 1896, column: 5)
!5500 = !DILocation(line: 1897, column: 11, scope: !5499)
!5501 = !DILocation(line: 1900, column: 39, scope: !5498)
!5502 = !DILocation(line: 1900, column: 58, scope: !5498)
!5503 = !DILocation(line: 0, scope: !5494)
!5504 = !DILocation(line: 1904, column: 7, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 1904, column: 7)
!5506 = !DILocation(line: 1904, column: 7, scope: !5434)
!5507 = !DILocation(line: 1906, column: 16, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 1905, column: 5)
!5509 = !DILocation(line: 1907, column: 20, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 1907, column: 11)
!5511 = !DILocation(line: 1907, column: 11, scope: !5508)
!5512 = !DILocation(line: 1908, column: 11, scope: !5510)
!5513 = !DILocation(line: 1908, column: 2, scope: !5510)
!5514 = !DILocation(line: 0, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 1911, column: 3)
!5516 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 1911, column: 3)
!5517 = !DILocation(line: 1911, column: 8, scope: !5516)
!5518 = !DILocation(line: 0, scope: !5516)
!5519 = !DILocation(line: 1911, column: 15, scope: !5515)
!5520 = !DILocation(line: 1911, column: 3, scope: !5516)
!5521 = !DILocation(line: 1915, column: 36, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 1912, column: 5)
!5523 = !DILocation(line: 1915, column: 7, scope: !5522)
!5524 = !DILocation(line: 1911, column: 69, scope: !5515)
!5525 = !DILocation(line: 1911, column: 3, scope: !5515)
!5526 = distinct !{!5526, !5520, !5527}
!5527 = !DILocation(line: 1916, column: 5, scope: !5516)
!5528 = !DILocation(line: 1919, column: 15, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 1919, column: 3)
!5530 = !DILocation(line: 1919, column: 10, scope: !5529)
!5531 = !DILocation(line: 1919, column: 8, scope: !5529)
!5532 = !DILocation(line: 1919, column: 23, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 1919, column: 3)
!5534 = !DILocation(line: 1919, column: 3, scope: !5529)
!5535 = !DILocation(line: 1920, column: 40, scope: !5533)
!5536 = !DILocation(line: 1920, column: 54, scope: !5533)
!5537 = !DILocation(line: 1920, column: 5, scope: !5533)
!5538 = !DILocation(line: 1919, column: 28, scope: !5533)
!5539 = !DILocation(line: 1919, column: 31, scope: !5533)
!5540 = !DILocation(line: 1919, column: 27, scope: !5533)
!5541 = !DILocation(line: 1919, column: 3, scope: !5533)
!5542 = distinct !{!5542, !5534, !5543}
!5543 = !DILocation(line: 1921, column: 55, scope: !5529)
!5544 = !DILocation(line: 1923, column: 37, scope: !5434)
!5545 = !DILocation(line: 1923, column: 13, scope: !5434)
!5546 = !DILocation(line: 1923, column: 32, scope: !5434)
!5547 = !DILocation(line: 1924, column: 10, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 1924, column: 7)
!5549 = !DILocation(line: 1924, column: 7, scope: !5548)
!5550 = !DILocation(line: 1924, column: 7, scope: !5434)
!5551 = !DILocation(line: 1925, column: 16, scope: !5548)
!5552 = !DILocation(line: 1925, column: 35, scope: !5548)
!5553 = !DILocation(line: 1925, column: 5, scope: !5548)
!5554 = !DILocation(line: 1926, column: 13, scope: !5434)
!5555 = !DILocation(line: 1927, column: 13, scope: !5434)
!5556 = !DILocation(line: 1927, column: 22, scope: !5434)
!5557 = !DILocation(line: 1929, column: 3, scope: !5434)
!5558 = !DILocation(line: 1931, column: 1, scope: !5434)
!5559 = !DILocation(line: 1930, column: 3, scope: !5434)
!5560 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_base_iterate", scope: !6, file: !6, line: 352, type: !5561, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5566)
!5561 = !DISubroutineType(types: !5562)
!5562 = !{!815, !5563, !7, !5565}
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5442)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!5566 = !{!5567, !5568, !5569}
!5567 = !DILocalVariable(name: "vec_", arg: 1, scope: !5560, file: !6, line: 352, type: !5563)
!5568 = !DILocalVariable(name: "ix_", arg: 2, scope: !5560, file: !6, line: 352, type: !7)
!5569 = !DILocalVariable(name: "ptr", arg: 3, scope: !5560, file: !6, line: 352, type: !5565)
!5570 = !DILocation(line: 0, scope: !5560)
!5571 = !DILocation(line: 352, column: 1, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5560, file: !6, line: 352, column: 1)
!5573 = !DILocation(line: 352, column: 1, scope: !5560)
!5574 = !DILocation(line: 352, column: 1, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5572, file: !6, line: 352, column: 1)
!5576 = !DILocation(line: 352, column: 1, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5572, file: !6, line: 352, column: 1)
!5578 = !DILocation(line: 0, scope: !5572)
!5579 = distinct !DISubprogram(name: "cgraph_call_node_duplication_hooks", scope: !3, file: !3, line: 390, type: !5580, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5582)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{null, !837, !837}
!5582 = !{!5583, !5584, !5585}
!5583 = !DILocalVariable(name: "node1", arg: 1, scope: !5579, file: !3, line: 390, type: !837)
!5584 = !DILocalVariable(name: "node2", arg: 2, scope: !5579, file: !3, line: 391, type: !837)
!5585 = !DILocalVariable(name: "entry", scope: !5579, file: !3, line: 393, type: !2505)
!5586 = !DILocation(line: 0, scope: !5579)
!5587 = !DILocation(line: 394, column: 3, scope: !5579)
!5588 = !DILocation(line: 396, column: 12, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 395, column: 3)
!5590 = !DILocation(line: 396, column: 39, scope: !5589)
!5591 = !DILocation(line: 396, column: 5, scope: !5589)
!5592 = !DILocation(line: 397, column: 20, scope: !5589)
!5593 = distinct !{!5593, !5587, !5594}
!5594 = !DILocation(line: 398, column: 3, scope: !5579)
!5595 = !DILocation(line: 399, column: 1, scope: !5579)
!5596 = distinct !DISubprogram(name: "cgraph_create_virtual_clone", scope: !3, file: !3, line: 1963, type: !5597, scopeLine: 1967, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5599)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!837, !837, !5437, !2421, !1810}
!5599 = !{!5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5613, !5614, !5615, !5616, !5617, !5620}
!5600 = !DILocalVariable(name: "old_node", arg: 1, scope: !5596, file: !3, line: 1963, type: !837)
!5601 = !DILocalVariable(name: "redirect_callers", arg: 2, scope: !5596, file: !3, line: 1964, type: !5437)
!5602 = !DILocalVariable(name: "tree_map", arg: 3, scope: !5596, file: !3, line: 1965, type: !2421)
!5603 = !DILocalVariable(name: "args_to_skip", arg: 4, scope: !5596, file: !3, line: 1966, type: !1810)
!5604 = !DILocalVariable(name: "old_decl", scope: !5596, file: !3, line: 1968, type: !841)
!5605 = !DILocalVariable(name: "new_node", scope: !5596, file: !3, line: 1969, type: !837)
!5606 = !DILocalVariable(name: "new_decl", scope: !5596, file: !3, line: 1970, type: !841)
!5607 = !DILocalVariable(name: "key", scope: !5596, file: !3, line: 1971, type: !838)
!5608 = !DILocalVariable(name: "slot", scope: !5596, file: !3, line: 1971, type: !2515)
!5609 = !DILocalVariable(name: "newi", scope: !5610, file: !3, line: 2007, type: !815)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 2006, column: 5)
!5611 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 2005, column: 12)
!5612 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 2003, column: 7)
!5613 = !DILocalVariable(name: "oldi", scope: !5610, file: !3, line: 2007, type: !815)
!5614 = !DILocalVariable(name: "arg", scope: !5610, file: !3, line: 2008, type: !841)
!5615 = !DILocalVariable(name: "new_args_to_skip", scope: !5610, file: !3, line: 2009, type: !1810)
!5616 = !DILocalVariable(name: "orig_node", scope: !5610, file: !3, line: 2010, type: !837)
!5617 = !DILocalVariable(name: "aslot", scope: !5618, file: !3, line: 2039, type: !1691)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 2038, column: 5)
!5619 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 2037, column: 7)
!5620 = !DILocalVariable(name: "name", scope: !5618, file: !3, line: 2040, type: !841)
!5621 = !DILocation(line: 0, scope: !5596)
!5622 = !DILocation(line: 1968, column: 29, scope: !5596)
!5623 = !DILocation(line: 1971, column: 3, scope: !5596)
!5624 = !DILocation(line: 1973, column: 3, scope: !5596)
!5625 = !DILocation(line: 1976, column: 8, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 1976, column: 7)
!5627 = !DILocation(line: 1976, column: 7, scope: !5596)
!5628 = !DILocation(line: 1977, column: 16, scope: !5626)
!5629 = !DILocation(line: 1977, column: 5, scope: !5626)
!5630 = !DILocation(line: 1979, column: 16, scope: !5626)
!5631 = !DILocation(line: 0, scope: !5626)
!5632 = !DILocation(line: 1980, column: 3, scope: !5596)
!5633 = !DILocation(line: 1980, column: 35, scope: !5596)
!5634 = !DILocation(line: 1983, column: 26, scope: !5596)
!5635 = !DILocation(line: 1983, column: 3, scope: !5596)
!5636 = !DILocation(line: 1983, column: 24, scope: !5596)
!5637 = !DILocation(line: 1984, column: 3, scope: !5596)
!5638 = !DILocation(line: 1985, column: 3, scope: !5596)
!5639 = !DILocation(line: 1987, column: 53, scope: !5596)
!5640 = !DILocation(line: 1987, column: 14, scope: !5596)
!5641 = !DILocation(line: 1990, column: 13, scope: !5596)
!5642 = !DILocation(line: 1990, column: 18, scope: !5596)
!5643 = !DILocation(line: 1996, column: 3, scope: !5596)
!5644 = !DILocation(line: 1996, column: 34, scope: !5596)
!5645 = !DILocation(line: 1997, column: 3, scope: !5596)
!5646 = !DILocation(line: 1997, column: 38, scope: !5596)
!5647 = !DILocation(line: 1998, column: 3, scope: !5596)
!5648 = !DILocation(line: 1998, column: 32, scope: !5596)
!5649 = !DILocation(line: 1999, column: 3, scope: !5596)
!5650 = !DILocation(line: 1999, column: 32, scope: !5596)
!5651 = !DILocation(line: 2000, column: 3, scope: !5596)
!5652 = !DILocation(line: 2000, column: 30, scope: !5596)
!5653 = !DILocation(line: 2001, column: 19, scope: !5596)
!5654 = !DILocation(line: 2001, column: 28, scope: !5596)
!5655 = !DILocation(line: 2002, column: 19, scope: !5596)
!5656 = !DILocation(line: 2002, column: 32, scope: !5596)
!5657 = !DILocation(line: 0, scope: !5612)
!5658 = !DILocation(line: 2003, column: 7, scope: !5596)
!5659 = !DILocation(line: 2004, column: 21, scope: !5612)
!5660 = !DILocation(line: 2004, column: 43, scope: !5612)
!5661 = !DILocation(line: 2004, column: 5, scope: !5612)
!5662 = !DILocation(line: 2005, column: 12, scope: !5611)
!5663 = !DILocation(line: 2005, column: 12, scope: !5612)
!5664 = !DILocation(line: 0, scope: !5610)
!5665 = !DILocation(line: 2009, column: 33, scope: !5610)
!5666 = !DILocation(line: 2011, column: 12, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 2011, column: 7)
!5668 = !DILocation(line: 0, scope: !5667)
!5669 = !DILocation(line: 2011, column: 45, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 2011, column: 7)
!5671 = !DILocation(line: 2011, column: 7, scope: !5667)
!5672 = !DILocation(line: 2011, column: 7, scope: !5670)
!5673 = distinct !{!5673, !5671, !5674}
!5674 = !DILocation(line: 2012, column: 9, scope: !5667)
!5675 = !DILocation(line: 2013, column: 18, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 2013, column: 7)
!5677 = !DILocation(line: 2013, column: 12, scope: !5676)
!5678 = !DILocation(line: 2007, column: 11, scope: !5610)
!5679 = !DILocation(line: 0, scope: !5676)
!5680 = !DILocation(line: 2013, column: 7, scope: !5676)
!5681 = !DILocation(line: 2015, column: 38, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 2015, column: 8)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 2014, column: 2)
!5684 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 2013, column: 7)
!5685 = !DILocation(line: 2015, column: 8, scope: !5682)
!5686 = !DILocation(line: 2015, column: 8, scope: !5683)
!5687 = !DILocation(line: 2017, column: 8, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 2016, column: 6)
!5689 = !DILocation(line: 2018, column: 8, scope: !5688)
!5690 = !DILocation(line: 2020, column: 8, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 2020, column: 8)
!5692 = !DILocation(line: 2020, column: 8, scope: !5683)
!5693 = !DILocation(line: 2021, column: 6, scope: !5691)
!5694 = !DILocation(line: 2022, column: 8, scope: !5683)
!5695 = !DILocation(line: 2023, column: 2, scope: !5683)
!5696 = !DILocation(line: 2013, column: 63, scope: !5684)
!5697 = !DILocation(line: 2013, column: 85, scope: !5684)
!5698 = !DILocation(line: 2013, column: 7, scope: !5684)
!5699 = distinct !{!5699, !5680, !5700}
!5700 = !DILocation(line: 2023, column: 2, scope: !5676)
!5701 = !DILocation(line: 2024, column: 23, scope: !5610)
!5702 = !DILocation(line: 2024, column: 45, scope: !5610)
!5703 = !DILocation(line: 2025, column: 5, scope: !5610)
!5704 = !DILocation(line: 2027, column: 21, scope: !5611)
!5705 = !DILocation(line: 2027, column: 43, scope: !5611)
!5706 = !DILocation(line: 2028, column: 19, scope: !5596)
!5707 = !DILocation(line: 2028, column: 38, scope: !5596)
!5708 = !DILocation(line: 2029, column: 25, scope: !5596)
!5709 = !DILocation(line: 2030, column: 13, scope: !5596)
!5710 = !DILocation(line: 2030, column: 21, scope: !5596)
!5711 = !DILocation(line: 2031, column: 23, scope: !5596)
!5712 = !DILocation(line: 2033, column: 7, scope: !5596)
!5713 = !DILocation(line: 2033, column: 12, scope: !5596)
!5714 = !DILocation(line: 2034, column: 50, scope: !5596)
!5715 = !DILocation(line: 2034, column: 34, scope: !5596)
!5716 = !DILocation(line: 2034, column: 10, scope: !5596)
!5717 = !DILocation(line: 2035, column: 3, scope: !5596)
!5718 = !DILocation(line: 2036, column: 9, scope: !5596)
!5719 = !DILocation(line: 2037, column: 7, scope: !5619)
!5720 = !DILocation(line: 2037, column: 7, scope: !5596)
!5721 = !DILocation(line: 2040, column: 19, scope: !5618)
!5722 = !DILocation(line: 0, scope: !5618)
!5723 = !DILocation(line: 2042, column: 41, scope: !5618)
!5724 = !DILocation(line: 2042, column: 62, scope: !5618)
!5725 = !DILocation(line: 2043, column: 6, scope: !5618)
!5726 = !DILocation(line: 2042, column: 15, scope: !5618)
!5727 = !DILocation(line: 2045, column: 7, scope: !5618)
!5728 = !DILocation(line: 2046, column: 14, scope: !5618)
!5729 = !DILocation(line: 2047, column: 5, scope: !5618)
!5730 = !DILocation(line: 2050, column: 1, scope: !5596)
!5731 = !DILocation(line: 2049, column: 3, scope: !5596)
!5732 = distinct !DISubprogram(name: "clone_function_name", scope: !3, file: !3, line: 1938, type: !5733, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5735)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{!841, !841}
!5735 = !{!5736, !5737, !5738, !5739, !5740, !5741, !5743}
!5736 = !DILocalVariable(name: "decl", arg: 1, scope: !5732, file: !3, line: 1938, type: !841)
!5737 = !DILocalVariable(name: "name", scope: !5732, file: !3, line: 1940, type: !841)
!5738 = !DILocalVariable(name: "len", scope: !5732, file: !3, line: 1941, type: !1309)
!5739 = !DILocalVariable(name: "tmp_name", scope: !5732, file: !3, line: 1942, type: !817)
!5740 = !DILocalVariable(name: "prefix", scope: !5732, file: !3, line: 1942, type: !817)
!5741 = !DILocalVariable(name: "name_", scope: !5742, file: !3, line: 1952, type: !2551)
!5742 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 1952, column: 3)
!5743 = !DILocalVariable(name: "output_", scope: !5742, file: !3, line: 1952, type: !5744)
!5744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!5745 = !DILocation(line: 0, scope: !5732)
!5746 = !DILocation(line: 1940, column: 15, scope: !5732)
!5747 = !DILocation(line: 1941, column: 16, scope: !5732)
!5748 = !DILocation(line: 1944, column: 12, scope: !5732)
!5749 = !DILocation(line: 1945, column: 19, scope: !5732)
!5750 = !DILocation(line: 1945, column: 3, scope: !5732)
!5751 = !DILocation(line: 1946, column: 18, scope: !5732)
!5752 = !DILocation(line: 1946, column: 3, scope: !5732)
!5753 = !DILocation(line: 1948, column: 15, scope: !5732)
!5754 = !DILocation(line: 0, scope: !5742)
!5755 = !DILocation(line: 1952, column: 3, scope: !5742)
!5756 = !DILocation(line: 1953, column: 10, scope: !5732)
!5757 = !DILocation(line: 1953, column: 3, scope: !5732)
!5758 = distinct !DISubprogram(name: "cgraph_unnest_node", scope: !3, file: !3, line: 2054, type: !2350, scopeLine: 2055, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5759)
!5759 = !{!5760, !5761}
!5760 = !DILocalVariable(name: "node", arg: 1, scope: !5758, file: !3, line: 2054, type: !837)
!5761 = !DILocalVariable(name: "node2", scope: !5758, file: !3, line: 2056, type: !2515)
!5762 = !DILocation(line: 0, scope: !5758)
!5763 = !DILocation(line: 2056, column: 39, scope: !5758)
!5764 = !DILocation(line: 2056, column: 47, scope: !5758)
!5765 = !DILocation(line: 2057, column: 3, scope: !5758)
!5766 = !DILocation(line: 2059, column: 3, scope: !5758)
!5767 = !DILocation(line: 2059, column: 10, scope: !5758)
!5768 = !DILocation(line: 2059, column: 17, scope: !5758)
!5769 = !DILocation(line: 2060, column: 24, scope: !5758)
!5770 = distinct !{!5770, !5766, !5769}
!5771 = !DILocation(line: 2061, column: 18, scope: !5758)
!5772 = !DILocation(line: 2061, column: 10, scope: !5758)
!5773 = !DILocation(line: 2062, column: 16, scope: !5758)
!5774 = !DILocation(line: 2063, column: 1, scope: !5758)
!5775 = distinct !DISubprogram(name: "cgraph_add_new_function", scope: !3, file: !3, line: 2114, type: !5776, scopeLine: 2115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5778)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{null, !841, !814}
!5778 = !{!5779, !5780, !5781}
!5779 = !DILocalVariable(name: "fndecl", arg: 1, scope: !5775, file: !3, line: 2114, type: !841)
!5780 = !DILocalVariable(name: "lowered", arg: 2, scope: !5775, file: !3, line: 2114, type: !814)
!5781 = !DILocalVariable(name: "node", scope: !5775, file: !3, line: 2116, type: !837)
!5782 = !DILocation(line: 0, scope: !5775)
!5783 = !DILocation(line: 2117, column: 11, scope: !5775)
!5784 = !DILocation(line: 2117, column: 3, scope: !5775)
!5785 = !DILocation(line: 2121, column: 9, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 2118, column: 5)
!5787 = !DILocation(line: 2122, column: 22, scope: !5786)
!5788 = !DILocation(line: 2122, column: 8, scope: !5786)
!5789 = !DILocation(line: 2122, column: 20, scope: !5786)
!5790 = !DILocation(line: 2123, column: 6, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 2123, column: 6)
!5792 = !DILocation(line: 2123, column: 6, scope: !5786)
!5793 = !DILocation(line: 2124, column: 10, scope: !5791)
!5794 = !DILocation(line: 2124, column: 18, scope: !5791)
!5795 = !DILocation(line: 2124, column: 4, scope: !5791)
!5796 = !DILocation(line: 2125, column: 19, scope: !5786)
!5797 = !DILocation(line: 2126, column: 9, scope: !5786)
!5798 = !DILocation(line: 2133, column: 9, scope: !5786)
!5799 = !DILocation(line: 2134, column: 14, scope: !5786)
!5800 = !DILocation(line: 2134, column: 20, scope: !5786)
!5801 = !DILocation(line: 2135, column: 24, scope: !5786)
!5802 = !DILocation(line: 2136, column: 26, scope: !5786)
!5803 = !DILocation(line: 2136, column: 33, scope: !5786)
!5804 = !DILocation(line: 2136, column: 18, scope: !5786)
!5805 = !DILocation(line: 2137, column: 7, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 2137, column: 6)
!5807 = !DILocation(line: 2137, column: 18, scope: !5806)
!5808 = !DILocation(line: 2137, column: 31, scope: !5806)
!5809 = !DILocation(line: 2137, column: 15, scope: !5806)
!5810 = !DILocation(line: 2139, column: 17, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 2138, column: 4)
!5812 = !DILocation(line: 2139, column: 6, scope: !5811)
!5813 = !DILocation(line: 2140, column: 28, scope: !5811)
!5814 = !DILocation(line: 2141, column: 6, scope: !5811)
!5815 = !DILocation(line: 2142, column: 6, scope: !5811)
!5816 = !DILocation(line: 2143, column: 6, scope: !5811)
!5817 = !DILocation(line: 2144, column: 28, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 2144, column: 10)
!5819 = !DILocation(line: 2144, column: 11, scope: !5818)
!5820 = !DILocation(line: 2144, column: 10, scope: !5811)
!5821 = !DILocation(line: 2145, column: 56, scope: !5818)
!5822 = !DILocation(line: 2145, column: 8, scope: !5818)
!5823 = !DILocation(line: 2146, column: 6, scope: !5811)
!5824 = !DILocation(line: 2147, column: 6, scope: !5811)
!5825 = !DILocation(line: 2148, column: 28, scope: !5811)
!5826 = !DILocation(line: 2151, column: 4, scope: !5811)
!5827 = !DILocation(line: 2152, column: 6, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 2152, column: 6)
!5829 = !DILocation(line: 2152, column: 6, scope: !5786)
!5830 = !DILocation(line: 2153, column: 18, scope: !5828)
!5831 = !DILocation(line: 2153, column: 4, scope: !5828)
!5832 = !DILocation(line: 2154, column: 22, scope: !5786)
!5833 = !DILocation(line: 2154, column: 8, scope: !5786)
!5834 = !DILocation(line: 2154, column: 20, scope: !5786)
!5835 = !DILocation(line: 2155, column: 19, scope: !5786)
!5836 = !DILocation(line: 2156, column: 9, scope: !5786)
!5837 = !DILocation(line: 2161, column: 13, scope: !5786)
!5838 = !DILocation(line: 2161, column: 2, scope: !5786)
!5839 = !DILocation(line: 2162, column: 24, scope: !5786)
!5840 = !DILocation(line: 2163, column: 2, scope: !5786)
!5841 = !DILocation(line: 2164, column: 7, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 2164, column: 6)
!5843 = !DILocation(line: 2164, column: 6, scope: !5786)
!5844 = !DILocation(line: 2165, column: 11, scope: !5842)
!5845 = !DILocation(line: 2166, column: 2, scope: !5786)
!5846 = !DILocation(line: 2167, column: 24, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 2167, column: 6)
!5848 = !DILocation(line: 2167, column: 7, scope: !5847)
!5849 = !DILocation(line: 2167, column: 6, scope: !5786)
!5850 = !DILocation(line: 2168, column: 52, scope: !5847)
!5851 = !DILocation(line: 2168, column: 4, scope: !5847)
!5852 = !DILocation(line: 2169, column: 2, scope: !5786)
!5853 = !DILocation(line: 2170, column: 2, scope: !5786)
!5854 = !DILocation(line: 2171, column: 2, scope: !5786)
!5855 = !DILocation(line: 2172, column: 24, scope: !5786)
!5856 = !DILocation(line: 2173, column: 2, scope: !5786)
!5857 = !DILocation(line: 2177, column: 7, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 2177, column: 7)
!5859 = !DILocation(line: 2178, column: 7, scope: !5858)
!5860 = !DILocation(line: 2178, column: 42, scope: !5858)
!5861 = !DILocation(line: 2178, column: 11, scope: !5858)
!5862 = !DILocation(line: 2179, column: 4, scope: !5858)
!5863 = !DILocation(line: 2177, column: 7, scope: !5775)
!5864 = !DILocation(line: 2180, column: 53, scope: !5858)
!5865 = !DILocation(line: 2180, column: 42, scope: !5858)
!5866 = !DILocation(line: 2180, column: 5, scope: !5858)
!5867 = !DILocation(line: 2180, column: 40, scope: !5858)
!5868 = !DILocation(line: 2181, column: 1, scope: !5775)
!5869 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !5870, file: !5870, line: 33, type: !5871, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5875)
!5870 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5871 = !DISubroutineType(types: !5872)
!5872 = !{!814, !5873}
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!5875 = !{!5876}
!5876 = !DILocalVariable(name: "fun", arg: 1, scope: !5869, file: !5870, line: 33, type: !5873)
!5877 = !DILocation(line: 0, scope: !5869)
!5878 = !DILocation(line: 35, column: 10, scope: !5869)
!5879 = !DILocation(line: 35, column: 14, scope: !5869)
!5880 = !DILocation(line: 35, column: 22, scope: !5869)
!5881 = !DILocation(line: 35, column: 17, scope: !5869)
!5882 = !DILocation(line: 35, column: 32, scope: !5869)
!5883 = !DILocation(line: 35, column: 51, scope: !5869)
!5884 = !DILocation(line: 35, column: 3, scope: !5869)
!5885 = distinct !DISubprogram(name: "cgraph_node_can_be_local_p", scope: !3, file: !3, line: 2188, type: !5886, scopeLine: 2189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5888)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!814, !837}
!5888 = !{!5889}
!5889 = !DILocalVariable(name: "node", arg: 1, scope: !5885, file: !3, line: 2188, type: !837)
!5890 = !DILocation(line: 0, scope: !5885)
!5891 = !DILocation(line: 2190, column: 18, scope: !5885)
!5892 = !DILocation(line: 2190, column: 12, scope: !5885)
!5893 = !DILocation(line: 2191, column: 4, scope: !5885)
!5894 = !DILocation(line: 2191, column: 9, scope: !5885)
!5895 = !DILocation(line: 2191, column: 34, scope: !5885)
!5896 = !DILocation(line: 2191, column: 44, scope: !5885)
!5897 = !DILocation(line: 2191, column: 38, scope: !5885)
!5898 = !DILocation(line: 2192, column: 8, scope: !5885)
!5899 = !DILocation(line: 2192, column: 24, scope: !5885)
!5900 = !DILocation(line: 2190, column: 3, scope: !5885)
!5901 = distinct !DISubprogram(name: "cgraph_make_decl_local", scope: !3, file: !3, line: 2198, type: !5902, scopeLine: 2199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5904)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{null, !841}
!5904 = !{!5905, !5906, !5907}
!5905 = !DILocalVariable(name: "decl", arg: 1, scope: !5901, file: !3, line: 2198, type: !841)
!5906 = !DILocalVariable(name: "rtl", scope: !5901, file: !3, line: 2200, type: !1015)
!5907 = !DILocalVariable(name: "symbol", scope: !5901, file: !3, line: 2200, type: !1015)
!5908 = !DILocation(line: 0, scope: !5901)
!5909 = !DILocation(line: 2202, column: 7, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 2202, column: 7)
!5911 = !DILocation(line: 2202, column: 24, scope: !5910)
!5912 = !DILocation(line: 2202, column: 7, scope: !5901)
!5913 = !DILocation(line: 2203, column: 5, scope: !5910)
!5914 = !DILocation(line: 2203, column: 24, scope: !5910)
!5915 = !DILocation(line: 2204, column: 29, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 2204, column: 12)
!5917 = !DILocation(line: 2204, column: 12, scope: !5910)
!5918 = !DILocation(line: 2206, column: 7, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 2205, column: 5)
!5920 = !DILocation(line: 2206, column: 26, scope: !5919)
!5921 = !DILocation(line: 2207, column: 7, scope: !5919)
!5922 = !DILocation(line: 2207, column: 32, scope: !5919)
!5923 = !DILocation(line: 2208, column: 24, scope: !5919)
!5924 = !DILocation(line: 2209, column: 7, scope: !5919)
!5925 = !DILocation(line: 2209, column: 28, scope: !5919)
!5926 = !DILocation(line: 2210, column: 5, scope: !5919)
!5927 = !DILocation(line: 2212, column: 5, scope: !5916)
!5928 = !DILocation(line: 2213, column: 22, scope: !5901)
!5929 = !DILocation(line: 2214, column: 8, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 2214, column: 7)
!5931 = !DILocation(line: 2214, column: 7, scope: !5901)
!5932 = !DILocation(line: 2218, column: 3, scope: !5901)
!5933 = !DILocation(line: 2220, column: 9, scope: !5901)
!5934 = !DILocation(line: 2221, column: 8, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 2221, column: 7)
!5936 = !DILocation(line: 2221, column: 7, scope: !5901)
!5937 = !DILocation(line: 2224, column: 12, scope: !5901)
!5938 = !DILocation(line: 2225, column: 7, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 2225, column: 7)
!5940 = !DILocation(line: 2225, column: 25, scope: !5939)
!5941 = !DILocation(line: 2225, column: 7, scope: !5901)
!5942 = !DILocation(line: 2228, column: 30, scope: !5901)
!5943 = !DILocation(line: 2228, column: 28, scope: !5901)
!5944 = !DILocation(line: 2229, column: 1, scope: !5901)
!5945 = distinct !DISubprogram(name: "cgraph_make_node_local", scope: !3, file: !3, line: 2233, type: !2350, scopeLine: 2234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5946)
!5946 = !{!5947, !5948}
!5947 = !DILocalVariable(name: "node", arg: 1, scope: !5945, file: !3, line: 2233, type: !837)
!5948 = !DILocalVariable(name: "alias", scope: !5949, file: !3, line: 2238, type: !837)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 2237, column: 5)
!5950 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 2236, column: 7)
!5951 = !DILocation(line: 0, scope: !5945)
!5952 = !DILocation(line: 2235, column: 3, scope: !5945)
!5953 = !DILocation(line: 2236, column: 7, scope: !5950)
!5954 = !DILocation(line: 2236, column: 32, scope: !5950)
!5955 = !DILocation(line: 2236, column: 35, scope: !5950)
!5956 = !DILocation(line: 2236, column: 7, scope: !5945)
!5957 = !DILocation(line: 2239, column: 7, scope: !5949)
!5958 = !DILocation(line: 2241, column: 26, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 2241, column: 7)
!5960 = !DILocation(line: 2241, column: 12, scope: !5959)
!5961 = !DILocation(line: 0, scope: !5959)
!5962 = !DILocation(line: 0, scope: !5949)
!5963 = !DILocation(line: 2241, column: 7, scope: !5959)
!5964 = !DILocation(line: 2242, column: 33, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 2241, column: 7)
!5966 = !DILocation(line: 2242, column: 2, scope: !5965)
!5967 = !DILocation(line: 2241, column: 59, scope: !5965)
!5968 = !DILocation(line: 2241, column: 7, scope: !5965)
!5969 = distinct !{!5969, !5963, !5970}
!5970 = !DILocation(line: 2242, column: 37, scope: !5959)
!5971 = !DILocation(line: 2244, column: 19, scope: !5949)
!5972 = !DILocation(line: 2244, column: 38, scope: !5949)
!5973 = !DILocation(line: 2245, column: 25, scope: !5949)
!5974 = !DILocation(line: 2246, column: 7, scope: !5949)
!5975 = !DILocation(line: 2248, column: 1, scope: !5945)
!5976 = distinct !DISubprogram(name: "cgraph_set_nothrow_flag", scope: !3, file: !3, line: 2254, type: !5977, scopeLine: 2255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5979)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{null, !837, !814}
!5979 = !{!5980, !5981, !5982}
!5980 = !DILocalVariable(name: "node", arg: 1, scope: !5976, file: !3, line: 2254, type: !837)
!5981 = !DILocalVariable(name: "nothrow", arg: 2, scope: !5976, file: !3, line: 2254, type: !814)
!5982 = !DILocalVariable(name: "alias", scope: !5976, file: !3, line: 2256, type: !837)
!5983 = !DILocation(line: 0, scope: !5976)
!5984 = !DILocation(line: 2257, column: 3, scope: !5976)
!5985 = !DILocation(line: 2257, column: 29, scope: !5976)
!5986 = !DILocation(line: 2258, column: 22, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 2258, column: 3)
!5988 = !DILocation(line: 2258, column: 8, scope: !5987)
!5989 = !DILocation(line: 0, scope: !5987)
!5990 = !DILocation(line: 2258, column: 3, scope: !5987)
!5991 = !DILocation(line: 2259, column: 5, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 2258, column: 3)
!5993 = !DILocation(line: 2259, column: 32, scope: !5992)
!5994 = !DILocation(line: 2258, column: 55, scope: !5992)
!5995 = !DILocation(line: 2258, column: 3, scope: !5992)
!5996 = distinct !{!5996, !5990, !5997}
!5997 = !DILocation(line: 2259, column: 34, scope: !5987)
!5998 = !DILocation(line: 2260, column: 1, scope: !5976)
!5999 = distinct !DISubprogram(name: "cgraph_set_readonly_flag", scope: !3, file: !3, line: 2266, type: !5977, scopeLine: 2267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6000)
!6000 = !{!6001, !6002, !6003}
!6001 = !DILocalVariable(name: "node", arg: 1, scope: !5999, file: !3, line: 2266, type: !837)
!6002 = !DILocalVariable(name: "readonly", arg: 2, scope: !5999, file: !3, line: 2266, type: !814)
!6003 = !DILocalVariable(name: "alias", scope: !5999, file: !3, line: 2268, type: !837)
!6004 = !DILocation(line: 0, scope: !5999)
!6005 = !DILocation(line: 2269, column: 3, scope: !5999)
!6006 = !DILocation(line: 2269, column: 30, scope: !5999)
!6007 = !DILocation(line: 2270, column: 22, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 2270, column: 3)
!6009 = !DILocation(line: 2270, column: 8, scope: !6008)
!6010 = !DILocation(line: 0, scope: !6008)
!6011 = !DILocation(line: 2270, column: 3, scope: !6008)
!6012 = !DILocation(line: 2271, column: 5, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 2270, column: 3)
!6014 = !DILocation(line: 2271, column: 33, scope: !6013)
!6015 = !DILocation(line: 2270, column: 55, scope: !6013)
!6016 = !DILocation(line: 2270, column: 3, scope: !6013)
!6017 = distinct !{!6017, !6011, !6018}
!6018 = !DILocation(line: 2271, column: 35, scope: !6008)
!6019 = !DILocation(line: 2272, column: 1, scope: !5999)
!6020 = distinct !DISubprogram(name: "cgraph_set_pure_flag", scope: !3, file: !3, line: 2278, type: !5977, scopeLine: 2279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6021 = !{!6022, !6023, !6024}
!6022 = !DILocalVariable(name: "node", arg: 1, scope: !6020, file: !3, line: 2278, type: !837)
!6023 = !DILocalVariable(name: "pure", arg: 2, scope: !6020, file: !3, line: 2278, type: !814)
!6024 = !DILocalVariable(name: "alias", scope: !6020, file: !3, line: 2280, type: !837)
!6025 = !DILocation(line: 0, scope: !6020)
!6026 = !DILocation(line: 2281, column: 3, scope: !6020)
!6027 = !DILocation(line: 2281, column: 28, scope: !6020)
!6028 = !DILocation(line: 2282, column: 22, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 2282, column: 3)
!6030 = !DILocation(line: 2282, column: 8, scope: !6029)
!6031 = !DILocation(line: 0, scope: !6029)
!6032 = !DILocation(line: 2282, column: 3, scope: !6029)
!6033 = !DILocation(line: 2283, column: 5, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 2282, column: 3)
!6035 = !DILocation(line: 2283, column: 31, scope: !6034)
!6036 = !DILocation(line: 2282, column: 55, scope: !6034)
!6037 = !DILocation(line: 2282, column: 3, scope: !6034)
!6038 = distinct !{!6038, !6032, !6039}
!6039 = !DILocation(line: 2283, column: 33, scope: !6029)
!6040 = !DILocation(line: 2284, column: 1, scope: !6020)
!6041 = distinct !DISubprogram(name: "cgraph_set_looping_const_or_pure_flag", scope: !3, file: !3, line: 2290, type: !5977, scopeLine: 2292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6042)
!6042 = !{!6043, !6044, !6045}
!6043 = !DILocalVariable(name: "node", arg: 1, scope: !6041, file: !3, line: 2290, type: !837)
!6044 = !DILocalVariable(name: "looping_const_or_pure", arg: 2, scope: !6041, file: !3, line: 2291, type: !814)
!6045 = !DILocalVariable(name: "alias", scope: !6041, file: !3, line: 2293, type: !837)
!6046 = !DILocation(line: 0, scope: !6041)
!6047 = !DILocation(line: 2294, column: 3, scope: !6041)
!6048 = !DILocation(line: 2294, column: 45, scope: !6041)
!6049 = !DILocation(line: 2295, column: 22, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 2295, column: 3)
!6051 = !DILocation(line: 2295, column: 8, scope: !6050)
!6052 = !DILocation(line: 0, scope: !6050)
!6053 = !DILocation(line: 2295, column: 3, scope: !6050)
!6054 = !DILocation(line: 2296, column: 5, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6050, file: !3, line: 2295, column: 3)
!6056 = !DILocation(line: 2296, column: 48, scope: !6055)
!6057 = !DILocation(line: 2295, column: 55, scope: !6055)
!6058 = !DILocation(line: 2295, column: 3, scope: !6055)
!6059 = distinct !{!6059, !6053, !6060}
!6060 = !DILocation(line: 2296, column: 50, scope: !6050)
!6061 = !DILocation(line: 2297, column: 1, scope: !6041)
!6062 = distinct !DISubprogram(name: "cgraph_allocate_node", scope: !3, file: !3, line: 424, type: !3364, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6063 = !{!6064}
!6064 = !DILocalVariable(name: "node", scope: !6062, file: !3, line: 426, type: !837)
!6065 = !DILocation(line: 428, column: 7, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 428, column: 7)
!6067 = !DILocation(line: 428, column: 7, scope: !6062)
!6068 = !DILocation(line: 0, scope: !6062)
!6069 = !DILocation(line: 431, column: 20, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 429, column: 5)
!6071 = !DILocation(line: 431, column: 18, scope: !6070)
!6072 = !DILocation(line: 432, column: 5, scope: !6070)
!6073 = !DILocation(line: 435, column: 14, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 434, column: 5)
!6075 = !DILocation(line: 436, column: 33, scope: !6074)
!6076 = !DILocation(line: 436, column: 13, scope: !6074)
!6077 = !DILocation(line: 436, column: 17, scope: !6074)
!6078 = !DILocation(line: 0, scope: !6066)
!6079 = !DILocation(line: 439, column: 3, scope: !6062)
!6080 = distinct !DISubprogram(name: "gimple_code", scope: !748, file: !748, line: 1052, type: !6081, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6083)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!747, !4328}
!6083 = !{!6084}
!6084 = !DILocalVariable(name: "g", arg: 1, scope: !6080, file: !748, line: 1052, type: !4328)
!6085 = !DILocation(line: 0, scope: !6080)
!6086 = !DILocation(line: 1054, column: 20, scope: !6080)
!6087 = !DILocation(line: 1054, column: 3, scope: !6080)
!6088 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !748, file: !748, line: 1954, type: !6089, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6091)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!841, !4328}
!6091 = !{!6092, !6093}
!6092 = !DILocalVariable(name: "gs", arg: 1, scope: !6088, file: !748, line: 1954, type: !4328)
!6093 = !DILocalVariable(name: "addr", scope: !6088, file: !748, line: 1956, type: !841)
!6094 = !DILocation(line: 0, scope: !6088)
!6095 = !DILocation(line: 1956, column: 15, scope: !6088)
!6096 = !DILocation(line: 1957, column: 7, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6088, file: !748, line: 1957, column: 7)
!6098 = !DILocation(line: 1957, column: 24, scope: !6097)
!6099 = !DILocation(line: 1957, column: 7, scope: !6088)
!6100 = !DILocation(line: 1958, column: 12, scope: !6097)
!6101 = !DILocation(line: 1958, column: 5, scope: !6097)
!6102 = !DILocation(line: 1960, column: 1, scope: !6088)
!6103 = distinct !DISubprogram(name: "gimple_bb", scope: !748, file: !748, line: 1112, type: !6104, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!1127, !4328}
!6106 = !{!6107}
!6107 = !DILocalVariable(name: "g", arg: 1, scope: !6103, file: !748, line: 1112, type: !4328)
!6108 = !DILocation(line: 0, scope: !6103)
!6109 = !DILocation(line: 1114, column: 20, scope: !6103)
!6110 = !DILocation(line: 1114, column: 3, scope: !6103)
!6111 = distinct !DISubprogram(name: "gimple_call_fn", scope: !748, file: !748, line: 1911, type: !6089, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6112)
!6112 = !{!6113}
!6113 = !DILocalVariable(name: "gs", arg: 1, scope: !6111, file: !748, line: 1911, type: !4328)
!6114 = !DILocation(line: 0, scope: !6111)
!6115 = !DILocation(line: 1914, column: 10, scope: !6111)
!6116 = !DILocation(line: 1914, column: 3, scope: !6111)
!6117 = distinct !DISubprogram(name: "gimple_op", scope: !748, file: !748, line: 1631, type: !6118, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6120)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{!841, !4328, !7}
!6120 = !{!6121, !6122}
!6121 = !DILocalVariable(name: "gs", arg: 1, scope: !6117, file: !748, line: 1631, type: !4328)
!6122 = !DILocalVariable(name: "i", arg: 2, scope: !6117, file: !748, line: 1631, type: !7)
!6123 = !DILocation(line: 0, scope: !6117)
!6124 = !DILocation(line: 1633, column: 7, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6117, file: !748, line: 1633, column: 7)
!6126 = !DILocation(line: 1633, column: 7, scope: !6117)
!6127 = !DILocation(line: 1638, column: 14, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6125, file: !748, line: 1634, column: 5)
!6129 = !DILocation(line: 1638, column: 7, scope: !6128)
!6130 = !DILocation(line: 0, scope: !6125)
!6131 = !DILocation(line: 1642, column: 1, scope: !6117)
!6132 = distinct !DISubprogram(name: "gimple_has_ops", scope: !748, file: !748, line: 1274, type: !4326, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6133)
!6133 = !{!6134}
!6134 = !DILocalVariable(name: "g", arg: 1, scope: !6132, file: !748, line: 1274, type: !4328)
!6135 = !DILocation(line: 0, scope: !6132)
!6136 = !DILocation(line: 1276, column: 10, scope: !6132)
!6137 = !DILocation(line: 1276, column: 26, scope: !6132)
!6138 = !DILocation(line: 1276, column: 41, scope: !6132)
!6139 = !DILocation(line: 1276, column: 44, scope: !6132)
!6140 = !DILocation(line: 1276, column: 60, scope: !6132)
!6141 = !DILocation(line: 1276, column: 3, scope: !6132)
!6142 = distinct !DISubprogram(name: "gimple_ops", scope: !748, file: !748, line: 1614, type: !6143, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6145)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!1198, !1163}
!6145 = !{!6146, !6147}
!6146 = !DILocalVariable(name: "gs", arg: 1, scope: !6142, file: !748, line: 1614, type: !1163)
!6147 = !DILocalVariable(name: "off", scope: !6142, file: !748, line: 1616, type: !1309)
!6148 = !DILocation(line: 0, scope: !6142)
!6149 = !DILocation(line: 1621, column: 28, scope: !6142)
!6150 = !DILocation(line: 1621, column: 9, scope: !6142)
!6151 = !DILocation(line: 1622, column: 3, scope: !6142)
!6152 = !DILocation(line: 1624, column: 20, scope: !6142)
!6153 = !DILocation(line: 1624, column: 32, scope: !6142)
!6154 = !DILocation(line: 1624, column: 10, scope: !6142)
!6155 = !DILocation(line: 1624, column: 3, scope: !6142)
!6156 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !748, file: !748, line: 1073, type: !6157, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!786, !1163}
!6159 = !{!6160}
!6160 = !DILocalVariable(name: "gs", arg: 1, scope: !6156, file: !748, line: 1073, type: !1163)
!6161 = !DILocation(line: 0, scope: !6156)
!6162 = !DILocation(line: 1075, column: 24, scope: !6156)
!6163 = !DILocation(line: 1075, column: 10, scope: !6156)
!6164 = !DILocation(line: 1075, column: 3, scope: !6156)
!6165 = distinct !DISubprogram(name: "gss_for_code", scope: !748, file: !748, line: 1061, type: !6166, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6168)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!786, !747}
!6168 = !{!6169}
!6169 = !DILocalVariable(name: "code", arg: 1, scope: !6165, file: !748, line: 1061, type: !747)
!6170 = !DILocation(line: 0, scope: !6165)
!6171 = !DILocation(line: 1066, column: 10, scope: !6165)
!6172 = !DILocation(line: 1066, column: 3, scope: !6165)
